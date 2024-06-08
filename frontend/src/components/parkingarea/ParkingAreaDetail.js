import React, { useState, useEffect } from "react";
import { useHistory, useLocation } from "react-router-dom";
import moment from "moment";
import NotFound from "../errors/NotFound";
import Tags from "./Tags";
import connection from "../../connection";
import DatePicker, { registerLocale } from "react-datepicker";
import ro from 'date-fns/locale/ro';
import { GoogleMap, LoadScript, Marker } from '@react-google-maps/api'; // Google Maps bileşenlerini ekliyoruz

import CommentForm from './CommentForm';
import CommentsList from './CommentsList';

registerLocale('ro', ro);

const ParkingAreaDetail = () => {
  const [parkingArea, setParkingArea] = useState({});
  const [formattedAddress, setFormattedAddress] = useState('');
  const [startDate, setStartDate] = useState(new Date());
  const [endDate, setEndDate] = useState(new Date());
  const [error, setError] = useState(null);
  const [loading, setLoading] = useState(true);
  const location = useLocation();
  const slug = location.pathname.split("/")[2];
  const history = useHistory();

  const googleMapsApiKey = "AIzaSyBdj3YegSVEUImmkWeD1b24MqyYYdAH5qE"; // API anahtarınızı buraya ekleyin

  useEffect(() => {
    setError(null);
    setLoading(true);

    connection
      .get(`parkingareas/${slug}/`)
      .then((res) => {
        setParkingArea(res.data);
        setLoading(false);

        // Geocoding API'yi kullanarak adresi almak
        const [lat, lng] = res.data.address.split(',');
        fetch(`https://maps.googleapis.com/maps/api/geocode/json?latlng=${lat},${lng}&key=${googleMapsApiKey}`)
          .then(response => response.json())
          .then(data => {
            if (data.results && data.results[0]) {
              setFormattedAddress(data.results[0].formatted_address);
            }
          })
          .catch(err => {
            console.error(err);
          });
      })
      .catch((err) => {
        console.error(err.message);
        setError(err.message);
        setLoading(false);
      });
  }, [slug, googleMapsApiKey]);

  const handleSubmit = (e) => {
    e.preventDefault();
    if(startDate >= endDate)
    {
      alert("Please choose dates correctly!");
    }
    else{
      connection
        .post(`parkingareas/${slug}/rent`,{
          startDate: startDate,
          endDate: endDate,
        })
        .then(() => {
          history.push("/");
        })
        .catch((err) => {
          console.error(err.message);
          setError(err.message);
        });
    }
  };

  const formatDate = (date) => {
    return moment(date).fromNow();
  };

  const handleMarkerClick = () => {
    const [lat, lng] = parkingArea.address.split(',');
    const googleMapsUrl = `https://www.google.com/maps/search/?api=1&query=${lat},${lng}`;
    window.open(googleMapsUrl, '_blank');
  };

  if (loading) {
    return null;
  }

  if (error) {
    return <NotFound />;
  }

  const mapContainerStyle = {
    width: '100%',
    height: '400px'
  };

  const center = {
    lat: parseFloat(parkingArea.address.split(',')[0]),
    lng: parseFloat(parkingArea.address.split(',')[1])
  };

  return (
    <div className="parking-area-detail">
      <img src={parkingArea.thumbnail} alt="Parking Area Thumbnail" style={{ width: "100%", height: "100%" }} />
      <h1>{parkingArea.title}</h1>
      <Tags values={parkingArea.tags} />
      <h3>Per day from: <span style={{ color: "blue" }}>$ {parkingArea.price}</span></h3>
      <div className="parking-area-info">
        <img src={parkingArea.author.avatar} alt="Author Avatar" className="avatar-medium" />
        <p>{parkingArea.author.first_name} {parkingArea.author.last_name}</p>
        {parkingArea.author.title && <span>{parkingArea.author.title}</span>}
        <span>{formatDate(parkingArea.created_at)}</span>
      </div>
      <fieldset style={{ borderRadius: "5px", marginTop: "20px" }}>
        <legend>Description:</legend>
        <div className="parking-area-description" dangerouslySetInnerHTML={{ __html: parkingArea.description }}></div>
      </fieldset>
      <fieldset style={{ borderRadius: "5px", marginTop: "20px" }}>
        <legend>Address:</legend>
        <p>{formattedAddress}</p>
        <LoadScript googleMapsApiKey={googleMapsApiKey}>
          <GoogleMap
            mapContainerStyle={mapContainerStyle}
            center={center}
            zoom={15}
          >
            <Marker position={center} onClick={handleMarkerClick} />
          </GoogleMap>
        </LoadScript>
      </fieldset>
      <CommentForm slug={slug} />
      <CommentsList slug={slug} />
      <form className="rent-form" onSubmit={handleSubmit} noValidate>
        <div className="rent-form-row">
          <div className="rent-form-col">
            <span>Start Date:</span>
            <DatePicker
              onChange={(date) => setStartDate(date)}
              selected={startDate}
              showTimeSelect
              dateFormat="MM/dd/yyyy  EE hh:mm a"
              minDate={new Date()}
            />
          </div>
          <div className="rent-form-col">
            <span>End Date:</span>
            <DatePicker
              onChange={(date) => setEndDate(date)}
              selected={endDate}
              showTimeSelect
              dateFormat="MM/dd/yyyy  EE hh:mm a"
              minDate={startDate}
            />
          </div>
        </div>
        <button className="animated-button" type="submit" style={{ borderRadius: "5px", padding: "0:30px", width: "200px" }}>
          <span><strong>Rent</strong></span>
        </button>
      </form>
    </div>
  );
};

export default ParkingAreaDetail;
