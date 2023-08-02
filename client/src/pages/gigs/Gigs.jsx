import React, { useState } from "react";
import { gigs } from "../../data";
import "./Gigs.scss";
import GigCard from "../../components/gigCard/GigCard";

const Gigs = () => {
  const [sort, setSort] = useState("createdAt");

  const sortChangeHandler = (e) => setSort(e.target.value);

  return (
    <div className="gigs">
      <div className="container">
        <span className="breadcrumbs">FIVERR &gt; GRAPHICS & DESIGN &gt; </span>
        <h1>AI Artists</h1>
        <p>
          Explore te boundaries of art and technology with Fiverr&apos;s AI
          artists
        </p>
        <div className="menu">
          <div className="left">
            <span>Budget</span>
            <input type="number" placeholder="min" />
            <input type="number" placeholder="max" />
            <button>Apply</button>
          </div>
          <div className="right">
            <span>Sort By</span>
            <select onChange={sortChangeHandler}>
              <option value="createdAt">Newest</option>
              <option value="sale">Best Selling</option>
            </select>
          </div>
        </div>
        <div className="cards">
          {gigs && gigs.map((gig) => <GigCard item={gig} key={gig.id} />)}
        </div>
      </div>
    </div>
  );
};

export default Gigs;
