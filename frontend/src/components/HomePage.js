import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import connection from "../connection";
import Hero from "./Hero";
import MinimalPost from "./posts/MinimalPost";
import MinimalParkingArea from "./parkingarea/MinimalParkingArea";

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
  const showPosts = (post) => {
    return <MinimalPost key={post.slug} {...post} />;
  };
  const showParkingAreas = (parkingarea) => {
    return <MinimalParkingArea key={parkingarea.slug} {...parkingarea} />;
  };
  return (
    <>
      <Hero image_url={"/media/images/hero1.jpg"}>
        <h1>Welcome</h1>
        <span>
          This is caravan website.
          We are ready for our customers and will provide good enviroment.
          Thank you.
        </span>
      </Hero>

      {postsList.length > 0 && (
        <div className="recent">
          <h3 className="recent-text">Recent posts:</h3>
          <div className="container">{postsList.map(showPosts)}</div>
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
          <div className="container">{parkingAreasList.map(showParkingAreas)}</div>
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
          We are ready for our customers and will provide good enviroment.
          Thank you.
        </span>
      </Hero>
    </>
  );
};

export default HomePage;
