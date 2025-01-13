require("dotenv").config();

const express = require("express");
const cookieParser = require("cookie-parser");
const cors = require("cors");
const morgan = require("morgan");
const connectDB = require("./config/db"); // Import the database pool

const ENV = process.env;

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
    origin: ENV.CLIENT_URL || "http://localhost:5173",
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

// Attach the database pool globally (if needed)
global.db = connectDB;

// Mount routes
app.use("/api/auth", authRouter);
app.use("/api/user", userRouter);
app.use("/api/gigs", gigRouter);
app.use("/api/conversation", conversationRouter);
app.use("/ai/sjm/", sjmRouter);

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
});
