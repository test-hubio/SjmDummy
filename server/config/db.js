const mysql = require('mysql2/promise');

const connectDB = async () => {
  try {
    const pool = mysql.createPool({
      host: process.env.DB_HOST || "mysql-190585-0.cloudclusters.net",
      user: process.env.DB_USER || "admin",
      password: process.env.DB_PASSWORD || "M2Man1Hi",
      database: process.env.DB_NAME || "fiverr_clone",
      port: process.env.DB_PORT || 10036,
      waitForConnections: true,
      connectionLimit: 10000000000,
      queueLimit: 0,
    });

    // Test connection
    await pool.getConnection();
    console.log(`Database connected: ${process.env.DB_HOST} via port ${process.env.DB_PORT}`);
    return pool;
  } catch (err) {
    console.error('Database connection failed:', err);
    process.exit(1);
  }
};

module.exports = connectDB;