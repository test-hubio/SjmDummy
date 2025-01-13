require("dotenv").config();

const mysql = require("mysql2");
const express = require("express");
const cookieParser = require("cookie-parser");
const cors = require("cors");
const morgan = require("morgan");
const path = require("path");
const fs = require("fs");

const connectDB = require("./config/db");
const ENV = process.env;
const DB_URI = ENV.DB_URI;

// Create MySQL connection pool
const pool = mysql.createPool({
  host: ENV.DB_HOST || "localhost",
  user: ENV.DB_USER,
  password: ENV.DB_PASSWORD,
  database: ENV.DB_NAME,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

// Export promise-based pool for async/await usage
const promisePool = pool.promise();
global.db = promisePool;

// Import routes
const authRouter = require("./routes/auth.route");
const userRouter = require("./routes/user.route");
const gigRouter = require("./routes/gig.route");
const sjmRouter = require("./routes/sjm.route");
const conversationRouter = require("./routes/conversation.route");

const app = express();

// CORS configuration
app.use(
  cors({
    origin: `${ENV.CLIENT_URL}:5173` || "http://localhost:5173",
    credentials: true,
    methods: ["GET", "POST", "PUT", "DELETE", "PATCH"],
    allowedHeaders: ["Content-Type", "Authorization"],
  })
);

if (ENV.NODE_ENV === "development") {
  app.use(morgan("dev"));
}

app.use(express.json());
app.use(cookieParser());

// Mount routes
app.use("/api/auth", authRouter);
app.use("/api/user", userRouter);
app.use("/api/gigs", gigRouter);
app.use("/api/conversation", conversationRouter);
app.use("/ai/sjm/", sjmRouter);

// Serve the static files from the dist directory
app.use(express.static(path.join(__dirname, ENV.DIR || '/client')));

app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'dist', 'index.html'));
});

// Error handling middleware
app.use((err, req, res, next) => {
  const errorStatus = err.status || 500;
  const errorMessage = err.message || "Internal Server Error";
  console.error(err);
  return res.status(errorStatus).json({ success: false, error: errorMessage });
});

const PORT = ENV.PORT || 7800;
app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running on port ${PORT}`);
  connectDB(DB_URI);
});
