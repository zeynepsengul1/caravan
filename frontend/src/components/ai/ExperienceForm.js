import React, { useState, useEffect } from 'react';
import './MapDirections.css';
import connection from "../../connection";
import { useHistory } from "react-router-dom";
import MapDirections from './MapDirections';  // Adjust the import path as necessary

const ExperienceForm = () => {
  const [experienceDescription, setExperienceDescription] = useState('');
  const [startingAddress, setStartingAddress] = useState('');
  const [parkingAreas, setParkingAreas] = useState([]);
  const [route, setRoute] = useState(null);  // State to hold the route data
  useEffect(() => {
    fetchParkingAreas();
  }, []);
    const history = useHistory();

  const fetchParkingAreas = async () => {
    try {
      const response = await connection.get("parkingareas/");
      setParkingAreas(response.data);
    } catch (error) {
      console.error("Error fetching parking areas:", error);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    const csrfToken = getCsrfToken();

    try {
      const response = await connection.post('ai/get_route/',
        {
          experience_description: experienceDescription,
          starting_address: startingAddress
        },
        {
          headers: {
            'Content-Type': 'application/json',
            'X-CSRFToken': csrfToken, // Include the CSRF token in the headers
            'Authorization': `Bearer ${localStorage.getItem('token')}`
          }
        }
      );
      history.push('ai/get_route');
      console.log(response)
      setRoute(response);  // Store the route data
    } catch (error) {
      console.error(error);
      alert('Route hesaplama cagirilirken bir hata oluştu.');
    }
  };

  const getCsrfToken = () => {
    let cookieValue = null;
    if (document.cookie && document.cookie !== '') {
      const cookies = document.cookie.split(';');
      for (let i = 0; cookies.length; i++) {
        const cookie = cookies[i].trim();
        if (cookie.substring(0, 10) === 'csrftoken=') {
          cookieValue = decodeURIComponent(cookie.substring(10));
          break;
        }
      }
    }
    return cookieValue;
  };

  return (
    <div className="page-background">
      <div className="experience-form-container">
        <form onSubmit={handleSubmit}>
          <div>
            <label>Nasıl bir kamp deneyimi istersin? </label>
            <textarea
              value={experienceDescription}
              onChange={(e) => setExperienceDescription(e.target.value)}
            />
          </div>
          <div>
            <label>Nereden başlayacaksın? </label>
            <select
              value={startingAddress}
              onChange={(e) => setStartingAddress(e.target.value)}
            >
              <option value="">Bir başlangıç noktası seçin</option>
              {parkingAreas.map((area) => (
                <option key={area.slug} value={area.address}>{area.slug}</option>
              ))}
            </select>
          </div>
          <button type="submit">Rota Oluştur</button>
        </form>
      </div>
      {route && <MapDirections route={route} />} {/* Render the MapDirections component if route data is available */}
    </div>
  );
};

export default ExperienceForm;
