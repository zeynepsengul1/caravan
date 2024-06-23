import React, {useCallback, useState} from 'react';
import {GoogleMap, LoadScript, DirectionsRenderer, DirectionsService} from '@react-google-maps/api';

// eslint-disable-next-line react/prop-types
const MapDirections = ({ route }) => {
    const [directionsResponse, setDirectionsResponse] = useState(null);
    const googleMapsApiKey = "AIzaSyBdj3YegSVEUImmkWeD1b24MqyYYdAH5qE";

    console.log(route)
    const navigateToGoogleMaps = () => {

        // eslint-disable-next-line react/prop-types
            const googleMapsUrl = `https://www.google.com/maps/dir/?api=1&origin=${route.starting_address}&destination=${route.destination}&travelmode=driving`;
            window.open(googleMapsUrl, "_blank");

    };
    const handleDirectionsCallback = useCallback((response) => {
        if (response !== null) {
            if (response.status === 'OK') {
                setDirectionsResponse(response);
            } else {
                console.log('response: ', response);
            }
        }
    }, []);
    return (
        <div className="map-container">
            <button className="view-on-maps-btn" onClick={navigateToGoogleMaps}>Google Maps'te Gör</button>
            {/* eslint-disable-next-line no-undef */}

        </div>
    );
};



export default MapDirections;
