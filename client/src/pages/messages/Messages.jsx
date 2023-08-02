import React from "react";
import { Link } from "react-router-dom";
import "./Messages.scss";

const Messages = () => {
  const msg =
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, sapiente.";
  return (
    <div className="messages">
      <div className="container">
        <div className="title">
          <h1>Orders</h1>
        </div>
        <table>
          <tbody>
            <tr>
              <th>Buyer</th>
              <th>Last Message</th>
              <th>Date</th>
              <th>Action</th>
            </tr>
            <tr className="active">
              <td>John Doe</td>

              <td>
                <Link to="/message/123" className="link">
                  {msg.substring(0, 100)}...
                </Link>
              </td>
              <td>1 day ago</td>
              <td>
                <button>Mark as read</button>
              </td>
            </tr>
            <tr className="active">
              <td>John Doe</td>

              <td>
                <Link to="/message/123" className="link">
                  {msg.substring(0, 100)}...
                </Link>
              </td>
              <td>1 day ago</td>
              <td>
                <button>Mark as read</button>
              </td>
            </tr>
            <tr>
              <td>John Doe</td>

              <td>
                <Link to="/message/123" className="link">
                  {msg.substring(0, 100)}...
                </Link>
              </td>
              <td>1 day ago</td>
            </tr>
            <tr>
              <td>John Doe</td>

              <td>
                <Link to="/message/123" className="link">
                  {msg.substring(0, 100)}...
                </Link>
              </td>
              <td>1 day ago</td>
            </tr>
            <tr>
              <td>John Doe</td>

              <td>
                <Link to="/message/123" className="link">
                  {msg.substring(0, 100)}...
                </Link>
              </td>
              <td>1 day ago</td>
            </tr>
            <tr>
              <td>John Doe</td>

              <td>
                <Link to="/message/123" className="link">
                  {msg.substring(0, 100)}...
                </Link>
              </td>
              <td>1 day ago</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Messages;
