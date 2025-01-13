const mysql = require('mysql2/promise');

const connectDB = async () => {
  try {
    const pool = mysql.createPool({
      host: process.env.DB_HOST,
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_NAME,
      waitForConnections: true,
      connectionLimit: 10,
      queueLimit: 0,
      port: process.env.DB_PORT
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