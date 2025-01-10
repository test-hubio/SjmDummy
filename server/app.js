require("dotenv").config();

const mysql = require('mysql2');
const express = require("express");
const cookieParser = require("cookie-parser");
const cors = require("cors");
const morgan = require("morgan");

const connectDB = require("./config/db");
const ENV = process.env;
const DB_URI = ENV.DB_URI;

// Create MySQL connection pool
const pool = mysql.createPool({
  host: ENV.DB_HOST || 'localhost',
  user: ENV.DB_USER,
  password: ENV.DB_PASSWORD,
  database: ENV.DB_NAME,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

// Export promise-based pool for async/await usage
const promisePool = pool.promise();
global.db = promisePool;

// import routes
const authRouter = require("./routes/auth.route");
const userRotuer = require("./routes/user.route");
const gigRouter = require("./routes/gig.route");
const sjmRouter = require("./routes/sjm.route")
const conversationRouter = require("./routes/conversation.route");

const app = express();

app.use(
  cors({
    origin: ENV.CLIENT_URL || "http://localhost:5173",
    credentials: true,
    methods: ["GET", "POST", "PUT", "DELETE", "PATCH"],
    allowedHeaders: ["Content-Type", "Authorization"]
  })
);

ENV.NODE_ENV === "development" && app.use(morgan("dev"));
app.use(express.json());
app.use(cookieParser());

// mount routes
app.use("/api/auth", authRouter);
app.use("/api/user", userRotuer);
app.use("/api/gigs", gigRouter);
app.use("/api/conversation", conversationRouter);
app.use("/ai/sjm/", sjmRouter);

app.use((err, req, res, next) => {
  const errorStatus = err.status || 500;
  const errorMessage = err.message || "Internal Server Error";
  console.log(err);
  return res.status(errorStatus).json({ success: false, error: errorMessage });
});

const PORT = ENV.PORT || 7800;
app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running on port ${PORT}`);
  connectDB(DB_URI);
});