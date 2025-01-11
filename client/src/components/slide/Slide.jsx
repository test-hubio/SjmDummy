import React from "react";
import Slider from "react-slick"; // Import Slider from react-slick
import "./Slide.scss";

const Slide = ({ children, slidesToShow, arrowsScroll }) => {
  const settings = {
    slidesToShow: slidesToShow || 1,
    arrowsScroll: arrowsScroll || 1,
    infinite: true, // To enable infinite scrolling
    speed: 500,
    slidesToScroll: 1,
  };

  return (
    <div className="slide">
      <div className="container">
        <Slider {...settings}> {/* Use Slider from react-slick */}
          {children}
        </Slider>
      </div>
    </div>
  );
};

export default Slide;
