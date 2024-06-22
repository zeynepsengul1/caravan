// HomePage.js

import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import connection from "../connection";
import Hero from "./Hero";
import MinimalPost from "./posts/MinimalPost";
import MinimalParkingArea from "./parkingarea/MinimalParkingArea";
import "./HomePage.css";
import "./parkingarea/MinimalParkingArea.css";
import "./posts/MinimalPost.css";


const HomePage = () => {
  const [postsList, setPostsList] = useState([]);
  const [parkingAreasList, setParkingAreasList] = useState([]);

  useEffect(() => {
    connection
      .get("posts/", { params: { recent: true } })
      .then((res) => setPostsList(res.data))
      .catch((err) => console.log(err.message));
  }, []);

  useEffect(() => {
    connection
      .get("parkingareas/", { params: { recent: true } })
      .then((res) => setParkingAreasList(res.data))
      .catch((err) => console.log(err.message));
  }, []);



  return (
    <>
      <Hero image_url={"/media/images/hero1.jpg"}>
        <h1>Welcome</h1>
        <span>
          This is caravan website.
          We are ready for our customers and will provide a good environment.
          Thank you.
        </span>
      </Hero>

      {postsList.length > 0 && (
        <div className="recent">
          <h3 className="recent-text">Recent caravans:</h3>
          <div className="container">
            {postsList.map((post) => (
              <Link to={`/post/${post.slug}/`} key={post.slug} className="minimal-post-link">
                <MinimalPost {...post} />
              </Link>
            ))}
          </div>
          <div className="recent-text">
            <Link className="animated-button" to="/posts">
              <span>
                <strong>See more</strong>
              </span>
            </Link>
          </div>
        </div>
      )}

      {parkingAreasList.length > 0 && (
        <div className="recent">
          <h3 className="recent-text">Recent parking areas:</h3>
          <div className="container">
            {parkingAreasList.map((parkingArea) => (
              <MinimalParkingArea key={parkingArea.slug} {...parkingArea} />
            ))}
          </div>
          <div className="recent-text">
            <Link className="animated-button" to="/parkingareas">
              <span>
                <strong>See more</strong>
              </span>
            </Link>
          </div>
        </div>
      )}

      <Hero image_url={"/media/images/hero1.jpg"}>
        <h1>About Me</h1>
        <span>
          This is caravan website.
          We are ready for our customers and will provide a good environment.
          Thank you.
        </span>
      </Hero>
    </>
  );
};

export default HomePage;
