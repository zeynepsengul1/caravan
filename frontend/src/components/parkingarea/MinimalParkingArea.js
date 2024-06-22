import React from "react";
import { Link } from "react-router-dom";
import Tags from "./Tags";
import PropTypes from "prop-types";
import "./MinimalParkingArea.css";


const MinimalParkingArea = (props) => {
  const date = new Date(props.created_at).toLocaleDateString();
  return (
  <Link to={`/parkingarea/${props.slug}/`} className="minimal-parking-area-link">
    <div className="minimal-parking-area-container">
      <img src={props.thumbnail} alt={props.title} />
      <div className="minimal-parking-area-content">
        <h2>{props.title}</h2>
        <span>
          by {props.author.first_name} {props.author.last_name}
        </span>
      </div>
      <span className="minimal-parking-area-date">{date}</span>
    </div>
  </Link>
);

};

MinimalParkingArea.propTypes = {
  slug: PropTypes.string,
  thumbnail: PropTypes.string,
  title: PropTypes.string,
  created_at: PropTypes.string,
  author: PropTypes.object,
};

export default MinimalParkingArea;
