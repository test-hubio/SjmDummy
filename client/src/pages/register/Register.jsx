import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import "./Register.scss";
import upload from "../../utils/upload.utils";
import request from "../../utils/request.utils";

const Register = () => {
  const navigate = useNavigate();
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);
  
  const [user, setUser] = useState({
    username: "",
    email: "",
    password: "",
    country: "",
    phone: "",
    description: "", 
    img: null,      
    is_seller: false
  });
  
  const [file, setFile] = useState(null);

  const validateForm = () => {
    if (!user.username || !user.email || !user.password) {
      setError("Please fill in all required fields");
      return false;
    }
    if (user.password.length < 6) {
      setError("Password must be at least 6 characters");
      return false;
    }
    if (!user.email.includes('@')) {
      setError("Please enter a valid email");
      return false; 
    }
    return true;
  };

  const handleChange = (e) => {
    setError(null);
    setUser({ ...user, [e.target.name]: e.target.value });
  };

  const handleSeller = () => {
    setUser({ ...user, is_seller: !user.is_seller });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
      
    if (!validateForm()) return;
  
    try {
      setLoading(true);
      setError(null);
  
      let imageUrl = null;
      if (file) {
        try {
          imageUrl = await upload(file);
        } catch (err) {
          console.error("Upload failed:", err);
          setError("Image upload failed");
          setLoading(false);
          return;
        }
      }
  
      // Format data to match MySQL structure
      const userData = {
        username: user.username,
        email: user.email,
        password: user.password,
        country: user.country || "",
        phone: user.phone || "",
        desc: user.description || "", // Changed to desc to match backend
        img: imageUrl || "",
        is_seller: user.is_seller
      };
  
      const response = await request.post("/auth/register", userData);
      
      if (response.data.success) {
        navigate("/login");
      }
    } catch (err) {
      console.error("Registration error:", err);
      setError(err.response?.data?.error || "Registration failed");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="register">
      <form onSubmit={handleSubmit}>
        <div className="left">
          <h1>Create a new account</h1>
          {error && <div className="error">{error}</div>}
          
          <label htmlFor="username">Username *</label>
          <input
            id="username"
            name="username"
            type="text"
            placeholder="johndoe"
            onChange={handleChange}
            disabled={loading}
            required
          />

          <label htmlFor="email">Email *</label> 
          <input
            id="email"
            name="email"
            type="email"
            placeholder="email@example.com"
            onChange={handleChange}
            disabled={loading}
            required
          />

          <label htmlFor="password">Password *</label>
          <input 
            id="password"
            name="password"
            type="password"
            onChange={handleChange}
            disabled={loading}
            required
          />

          <label htmlFor="image">Profile Picture</label>
          <input
            id="image" 
            type="file"
            onChange={(e) => setFile(e.target.files[0])}
            disabled={loading}
          />

          <label htmlFor="country">Country</label>
          <input
            id="country"
            name="country"
            type="text"
            placeholder="United States"
            onChange={handleChange}
            disabled={loading}
          />

          <button 
            type="submit"
            disabled={loading}
          >
            {loading ? "Creating Account..." : "Register"}
          </button>

          <div className="login-link">
            <span>Already have an account?</span>
            <Link to="/login">Login</Link>
          </div>
        </div>

        <div className="right">
          <h1>I want to become a seller</h1>
          <div className="toggle">
            <label htmlFor="seller">Activate seller account</label>
            <label className="switch">
              <input
                id="seller"
                type="checkbox"
                onChange={handleSeller}
                disabled={loading}
              />
              <span className="slider round"></span>
            </label>
          </div>

          <label htmlFor="phone">Phone Number</label>
          <input
            id="phone"
            name="phone"
            type="tel"
            placeholder="+1 234 567 8900"
            onChange={handleChange}
            disabled={loading}
          />

          <label htmlFor="desc">Description</label>
          <textarea
            id="desc"
            name="desc"
            placeholder="A short description of yourself"
            onChange={handleChange}
            disabled={loading}
            rows="5"
          />
        </div>
      </form>
    </div>
  );
};

export default Register;