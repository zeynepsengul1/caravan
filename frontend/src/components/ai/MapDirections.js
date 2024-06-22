import React, { useEffect, useState } from 'react';
import PropTypes from 'prop-types';
import { GoogleMap, LoadScript, DirectionsRenderer } from '@react-google-maps/api';

const MapDirections = ({ route }) => {
    const [directionsResponse, setDirectionsResponse] = useState(null);

    useEffect(() => {
        if (route) {
            calculateRoute();
        }
    }, [route]);

    const calculateRoute = () => {
        const directionsService = new window.google.maps.DirectionsService();
        const directionsRequest = {
            origin: route.starting_address,
            destination: route.destination,
            travelMode: 'DRIVING'
        };

        directionsService.route(directionsRequest, (result, status) => {
            if (status === 'OK' && result) {
                setDirectionsResponse(result);
            }
        });
    };

    return (
        <LoadScript googleMapsApiKey="AIzaSyBdj3YegSVEUImmkWeD1b24MqyYYdAH5qE">
            <GoogleMap
                mapContainerStyle={{ width: '100%', height: '400px' }}
                center={{ lat: 41.0082, lng: 28.9784 }}
                zoom={10}
            >
                {directionsResponse && (
                    <DirectionsRenderer
                        directions={directionsResponse}
                    />
                )}
            </GoogleMap>
        </LoadScript>
    );
};

MapDirections.propTypes = {
    route: PropTypes.shape({
        starting_address: PropTypes.string.isRequired,
        destination: PropTypes.string.isRequired
    })
};

export default MapDirections;
