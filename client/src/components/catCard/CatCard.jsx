import React from "react";
import { Link } from "react-router-dom";
import "./CatCard.scss";

const CatCard = ({ item }) => {
  return (
    <Link to={`/gigs?cat=${item.category}`}>
      <div className="cat-card">
        <img src={item.image} alt={item.title} /> {/* Changed from img to image */}
        <span className="title">{item.title}</span>
        <span className="desc">{item.description}</span> {/* Changed from desc to description */}
      </div>
    </Link>
  );
};

export default CatCard;
