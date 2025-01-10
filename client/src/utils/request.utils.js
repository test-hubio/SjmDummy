import axios from "axios";

const request = axios.create({
    baseURL: import.meta.env.VITE_API_URL || "http://localhost:7800/api",
    withCredentials: true,
    headers: {
        'Content-Type': 'application/json'
    }
});

export default request;