import React from "react";
import { Link } from "react-router-dom";
import "./Message.scss";

const Message = () => {
  return (
    <div className="message">
      <div className="container">
        <span className="breadcrumbs">
          <Link to="/messages" className="link">
            MESSAGES
          </Link>
          &gt; Vighnesh M &gt;
        </span>
        <div className="messages">
          <div className="item">
            <img
              src="https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?auto=compress&cs=tinysrgb&w=1600"
              alt=""
            />
            <p>
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quam
              blanditiis quibusdam, magni corrupti earum, dicta animi quasi
              provident maxime, nobis soluta rem voluptatibus impedit quis
              asperiores natus facilis dolore inventore? Veniam in saepe magni
              ut molestiae recusandae praesentium, excepturi quidem natus nobis
              itaque dolorem, suscipit accusantium debitis quae ullam neque.
            </p>
          </div>
          <div className="item owner">
            <img
              src="https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?auto=compress&cs=tinysrgb&w=1600"
              alt=""
            />
            <p>
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quam
              blanditiis quibusdam, magni corrupti earum, dicta animi quasi
              provident maxime, nobis soluta rem voluptatibus impedit quis
              asperiores natus facilis dolore inventore? Veniam in saepe magni
              ut molestiae recusandae praesentium, excepturi quidem natus nobis
              itaque dolorem, suscipit accusantium debitis quae ullam neque.
            </p>
          </div>
          <div className="item">
            <img
              src="https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?auto=compress&cs=tinysrgb&w=1600"
              alt=""
            />
            <p>
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quam
              blanditiis quibusdam, magni corrupti earum, dicta animi quasi
              provident maxime, nobis soluta rem voluptatibus impedit quis
              asperiores natus facilis dolore inventore? Veniam in saepe magni
              ut molestiae recusandae praesentium, excepturi quidem natus nobis
              itaque dolorem, suscipit accusantium debitis quae ullam neque.
            </p>
          </div>
          <div className="item owner">
            <img
              src="https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?auto=compress&cs=tinysrgb&w=1600"
              alt=""
            />
            <p>
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quam
              blanditiis quibusdam, magni corrupti earum, dicta animi quasi
              provident maxime, nobis soluta rem voluptatibus impedit quis
              asperiores natus facilis dolore inventore? Veniam in saepe magni
              ut molestiae recusandae praesentium, excepturi quidem natus nobis
              itaque dolorem, suscipit accusantium debitis quae ullam neque.
            </p>
          </div>
          <div className="item">
            <img
              src="https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?auto=compress&cs=tinysrgb&w=1600"
              alt=""
            />
            <p>
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quam
              blanditiis quibusdam, magni corrupti earum, dicta animi quasi
              provident maxime, nobis soluta rem voluptatibus impedit quis
              asperiores natus facilis dolore inventore? Veniam in saepe magni
              ut molestiae recusandae praesentium, excepturi quidem natus nobis
              itaque dolorem, suscipit accusantium debitis quae ullam neque.
            </p>
          </div>
        </div>
        <hr />
        <div className="write">
          <textarea
            name=""
            placeholder="write a message..."
            id=""
            cols="30"
            rows="10"
          ></textarea>
          <button>Send</button>
        </div>
      </div>
    </div>
  );
};

export default Message;
