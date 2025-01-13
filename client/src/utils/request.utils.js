import axios from "axios";

// Determine the environment (production or development)
const API_URL = import.meta.env.MODE === 'production' 
  ? import.meta.env.VITE_API_URL // Use the production API URL if in production
  : "https://server-production-30d4.up.railway.app//api";  // Use localhost if in development


console.log('API URL from env:', import.meta.env.VITE_API_URL);


const request = axios.create({
  baseURL: API_URL,
  withCredentials: true,
  headers: {
    'Content-Type': 'application/json'
  }
});

export default request;
