import React, { useState } from 'react';
import PropTypes from 'prop-types';
import { GoogleMap, LoadScript, Marker } from '@react-google-maps/api';

const MapComponent = ({ onMapClick }) => {
    const [selectedLocation, setSelectedLocation] = useState(null);

    const handleMapClick = (event) => {
        const location = {
            lat: event.latLng.lat(),
            lng: event.latLng.lng()
        };
        setSelectedLocation(location);
        onMapClick(location);
    };

    return (
        <LoadScript googleMapsApiKey="AIzaSyBdj3YegSVEUImmkWeD1b24MqyYYdAH5qE">
            <GoogleMap
                mapContainerStyle={{ width: '100%', height: '400px' }}
                center={{ lat: 41.0082, lng: 28.9784 }} // İstanbul merkez
                zoom={10}
                onClick={handleMapClick}
            >
                {selectedLocation && (
                    <Marker position={selectedLocation} />
                )}
            </GoogleMap>
        </LoadScript>
    );
};

MapComponent.propTypes = {
    onMapClick: PropTypes.func.isRequired,
};

export default MapComponent;
