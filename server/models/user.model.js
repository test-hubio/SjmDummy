const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

class User {
  static async findByUsername(username) {
    const [rows] = await global.db.execute(
      'SELECT * FROM users WHERE username = ?',
      [username]
    );
    return rows[0];
  }

  static async create(userData) {
    const { username, email, password, country, phone, desc, is_seller, img } = userData;
    
    try {
      const hashedPassword = await bcrypt.hash(password, 10);
      
      const [result] = await global.db.execute(
        'INSERT INTO users (username, email, password, country, phone, description, is_seller, img) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
        [username, email, hashedPassword, country, phone, desc, is_seller, img]
      );
      
      const [user] = await global.db.execute(
        'SELECT * FROM users WHERE id = ?',
        [result.insertId]
      );
      
      return user[0];
    } catch (err) {
      if (err.code === 'ER_DUP_ENTRY') {
        throw new Error('Username or email already exists');
      }
      throw err;
    }
  }

  static getSignToken(userId) {
    return jwt.sign({ id: userId }, process.env.JWT_SECRET, {
      expiresIn: process.env.JWT_EXPIRE,
    });
  }
}

module.exports = User;
