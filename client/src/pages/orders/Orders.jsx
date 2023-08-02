import React from "react";
import "./Orders.scss";

const Orders = () => {
  const currentUser = {
    id: 1,
    name: "Vighnesh M",
    isSeller: true,
  };
  return (
    <div className="orders">
      <div className="container">
        <div className="title">
          <h1>Orders</h1>
        </div>
        <table>
          <tbody>
            <tr>
              <th>Image</th>
              <th>Title</th>
              <th>Price</th>
              <th>{currentUser.isSeller ? "Buyer" : "Seller"}</th>
              <th>Contact</th>
            </tr>
            <tr>
              <td>
                <img
                  className="image"
                  src="https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?auto=compress&cs=tinysrgb&w=1600"
                  alt=""
                />
              </td>
              <td>Stunning concept art</td>
              <td>
                59.<sup>99</sup>
              </td>
              <td>13</td>
              <td>
                <img className="msg" src="./img/message.png" alt="" />
              </td>
            </tr>

            <tr>
              <td>
                <img
                  className="image"
                  src="https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?auto=compress&cs=tinysrgb&w=1600"
                  alt=""
                />
              </td>
              <td>Stunning concept art</td>
              <td>
                59.<sup>99</sup>
              </td>
              <td>13</td>
              <td>
                <img className="msg" src="./img/message.png" alt="" />
              </td>
            </tr>
            <tr>
              <td>
                <img
                  className="image"
                  src="https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?auto=compress&cs=tinysrgb&w=1600"
                  alt=""
                />
              </td>
              <td>Stunning concept art</td>
              <td>
                59.<sup>99</sup>
              </td>
              <td>13</td>
              <td>
                <img className="msg" src="./img/message.png" alt="" />
              </td>
            </tr>
            <tr>
              <td>
                <img
                  className="image"
                  src="https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?auto=compress&cs=tinysrgb&w=1600"
                  alt=""
                />
              </td>
              <td>Stunning concept art</td>
              <td>
                59.<sup>99</sup>
              </td>
              <td>13</td>
              <td>
                <img className="msg" src="./img/message.png" alt="" />
              </td>
            </tr>
            <tr>
              <td>
                <img
                  className="image"
                  src="https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?auto=compress&cs=tinysrgb&w=1600"
                  alt=""
                />
              </td>
              <td>Stunning concept art</td>
              <td>
                59.<sup>99</sup>
              </td>
              <td>13</td>
              <td>
                <img className="msg" src="./img/message.png" alt="" />
              </td>
            </tr>
            <tr>
              <td>
                <img
                  className="image"
                  src="https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?auto=compress&cs=tinysrgb&w=1600"
                  alt=""
                />
              </td>
              <td>Stunning concept art</td>
              <td>
                59.<sup>99</sup>
              </td>
              <td>13</td>
              <td>
                <img className="msg" src="./img/message.png" alt="" />
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Orders;
