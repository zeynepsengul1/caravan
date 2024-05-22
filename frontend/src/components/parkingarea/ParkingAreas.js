import React, { useState, useEffect } from "react";
import MinimalParkingArea from "./MinimalParkingArea";
import SearchBar from "../SearchBar";
import Pagination from "../Pagination";
import connection from "../../connection";

const ParkingAreas = () => {
  const [parkingareasList, setParkingAreasList] = useState([]);
  const [maxPages, setMaxPages] = useState(0);
  const [currentPage, setCurrentPage] = useState(0);
  const [search, setSearch] = useState("");

  const parkingareasPerPage = 4;

  useEffect(() => {
    connection
      .get("parkingareas/")
      .then((res) => {
        console.log(res.data);
        setParkingAreasList(res.data);
        setMaxPages(Math.ceil(res.data.length / parkingareasPerPage));
      })
      .catch((err) => console.log(err.message));
  }, []);

  useEffect(() => {
    let query = parkingareasList.filter((e) => e.title.match(search));
    setMaxPages(Math.ceil(query.length / parkingareasPerPage));
    // Swap to first page to make sure we won't be stuck on any page without items
    setCurrentPage(0);
  }, [search]);

  const queryFilter = (value) => {
    return value.title.toLowerCase().match(search);
  };

  if (parkingareasList.length === 0) {
    return <h1 className="error">There are currently no public parkingareas</h1>;
  }

  return (
    <div className="full-height">
      <SearchBar callback={setSearch} />
      <Pagination
        page={currentPage}
        maxPages={maxPages}
        handleChange={setCurrentPage}
      />
      <div className="container">
        {parkingareasList
          .filter(queryFilter)
          .slice(
            currentPage * parkingareasPerPage,
            currentPage * parkingareasPerPage + parkingareasPerPage
          )
          .map((parkingarea) => (
            <MinimalParkingArea key={parkingarea.slug} {...parkingarea} />
          ))}
      </div>
    </div>
  );
};

export default ParkingAreas;
