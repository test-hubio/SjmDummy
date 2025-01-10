import React from "react";
import { Link } from "react-router-dom";
import "./GigCard.scss";

const GigCard = ({ item }) => {
  return (
    <Link to={`/gig/${item.id}`} className="link" key={item.id}>
      <div className="gig-card">
        <img src={item.cover_image} alt="" />
        <div className="info">
          <div className="user">
            <img src={item.user_img || "./img/noavatar.png"} alt="" />
            <span>{item.username}</span>
          </div>
          <p>{item.short_desc}</p>
          <div className="star">
            <img src="./img/star.png" alt="" />
            <span>{Math.round(item.total_stars / item.star_number) || 0}</span>
          </div>
        </div>
        <hr />
        <div className="details">
          <img src="./img/heart.png" alt="" />
          <div className="price">
            <span>STARTING AT</span>
            <h2>${item.price}</h2>
          </div>
        </div>
      </div>
    </Link>
  );
};

export default GigCard;
