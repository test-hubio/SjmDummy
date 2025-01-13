const mysql = require('mysql2/promise');

const connectDB = async () => {
  try {
    const pool = mysql.createPool({
      host: process.env.DB_HOST,
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_NAME,
      port: parseInt(process.env.DB_PORT),
      waitForConnections: true,
      connectionLimit: 10,
      queueLimit: 0,
      connectTimeout: 100000, // Increase timeout to 100 seconds
      acquireTimeout: 60000,
      timeout: 60000
  });

    // Test connection
    await pool.getConnection();
    console.log('Connection details:', {
      host: process.env.DB_HOST,
      port: process.env.DB_PORT,
      database: process.env.DB_NAME
    });
    return pool;
  } catch (err) {
    console.error('Database connection failed:', err);
    process.exit(1);
  }
};

module.exports = connectDB;