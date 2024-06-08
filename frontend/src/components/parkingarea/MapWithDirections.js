import React, { useState, useEffect, useCallback } from 'react';
import { GoogleMap, LoadScript, Marker, DirectionsService, DirectionsRenderer } from '@react-google-maps/api';
import connection from "../../connection";
import './MapWithDirections.css'; // CSS dosyanızı ekleyin

const MapWithDirections = () => {
    const [currentPosition, setCurrentPosition] = useState(null);
    const [parkingAreas, setParkingAreas] = useState([]);
    const [selectedParkingArea, setSelectedParkingArea] = useState(null);
    const [directionsResponse, setDirectionsResponse] = useState(null);
    const [directionsRequest, setDirectionsRequest] = useState(false);

    const googleMapsApiKey = "AIzaSyBdj3YegSVEUImmkWeD1b24MqyYYdAH5qE";

    useEffect(() => {
        const fetchCurrentPosition = () => {
            navigator.geolocation.getCurrentPosition((position) => {
                setCurrentPosition({
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                });
            });
        };

        const getParkingAreas = async () => {
            try {
                const res = await connection.get('parkingareas/');
                setParkingAreas(res.data);
            } catch (err) {
                console.error(err);
            }
        };

        fetchCurrentPosition();
        getParkingAreas();
    }, []);

    useEffect(() => {
        if (currentPosition && parkingAreas.length > 0) {
            findClosestParkingArea();
        }
    }, [currentPosition, parkingAreas]);

    const findClosestParkingArea = useCallback(() => {
        let closest = null;
        let minDistance = Infinity;

        parkingAreas.forEach(parkingArea => {
            const [lat, lng] = parkingArea.address.split(',').map(Number);
            const distance = Math.sqrt(
                Math.pow(lat - currentPosition.lat, 2) + Math.pow(lng - currentPosition.lng, 2)
            );

            if (distance < minDistance) {
                closest = parkingArea;
                minDistance = distance;
            }
        });

        setSelectedParkingArea(closest);
        setDirectionsRequest(true);
    }, [currentPosition, parkingAreas]);

    const handleDirectionsCallback = useCallback((response) => {
        if (response !== null) {
            if (response.status === 'OK') {
                setDirectionsResponse(response);
                setDirectionsRequest(false);
            } else {
                console.log('response: ', response);
            }
        }
    }, []);

    const handleMarkerClick = (parkingArea) => {
        setSelectedParkingArea(parkingArea);
        setDirectionsRequest(true);
    };

    const navigateToGoogleMaps = () => {
        if (currentPosition && selectedParkingArea) {
            const origin = `${currentPosition.lat},${currentPosition.lng}`;
            const destination = selectedParkingArea.address;
            const googleMapsUrl = `https://www.google.com/maps/dir/?api=1&origin=${origin}&destination=${destination}&travelmode=driving`;
            window.open(googleMapsUrl, "_blank");
        }
    };

    return (
        <div className="map-container">
            <button className="find-parking-btn" onClick={findClosestParkingArea}>En Yakın Park Alanı </button>
            <button className="view-on-maps-btn" onClick={navigateToGoogleMaps}>Google Maps'te Gör</button>
            <LoadScript googleMapsApiKey={googleMapsApiKey}>
                <GoogleMap
                    mapContainerStyle={{ width: '100%', height: '100%' }}
                    center={currentPosition || { lat: 41.0082, lng: 28.9784 }}
                    zoom={10}
                >
                    {currentPosition && (
                        <Marker position={currentPosition} label="Siz"  />
                    )}
                    {parkingAreas.map((parkingArea, index) => (
                        <Marker
                            key={`${parkingArea.address}_${index}`} // Benzersiz bir "key" oluşturmak için adres ve index kullanıldı
                            position={{
                                lat: parseFloat(parkingArea.address.split(',')[0]),
                                lng: parseFloat(parkingArea.address.split(',')[1])
                            }}
                            onClick={() => handleMarkerClick(parkingArea)}
                        />
                    ))}
                    {selectedParkingArea && currentPosition && directionsRequest && (
                        <DirectionsService
                            options={{
                                destination: {
                                    lat: parseFloat(selectedParkingArea.address.split(',')[0]),
                                    lng: parseFloat(selectedParkingArea.address.split(',')[1])
                                },
                                origin: currentPosition,
                                travelMode: 'DRIVING'
                            }}
                            callback={handleDirectionsCallback}

                        />
                    )}
                    {directionsResponse && (
                        <DirectionsRenderer
                            options={{
                                directions: directionsResponse
                            }}

                        />
                    )}
                </GoogleMap>
            </LoadScript>
        </div>
    );
};

export default MapWithDirections;
