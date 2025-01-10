class Review {
  static async create(reviewData) {
    const { gig_id, user_id, star, description } = reviewData;
    
    if (star < 1 || star > 5) {
      throw new Error('Star rating must be between 1 and 5');
    }

    const [result] = await global.db.execute(
      'INSERT INTO reviews (gig_id, user_id, star, description) VALUES (?, ?, ?, ?)',
      [gig_id, user_id, star, description]
    );

    const [review] = await global.db.execute(
      'SELECT * FROM reviews WHERE id = ?',
      [result.insertId]
    );

    return review[0];
  }

  static async findByGigId(gigId) {
    const [reviews] = await global.db.execute(
      'SELECT r.*, u.username, u.img as userImg FROM reviews r JOIN users u ON r.user_id = u.id WHERE r.gig_id = ?',
      [gigId]
    );
    return reviews;
  }

  static async findByUserId(userId) {
    const [reviews] = await global.db.execute(
      'SELECT * FROM reviews WHERE user_id = ?',
      [userId]
    );
    return reviews;
  }

  static async deleteReview(reviewId, userId) {
    const [result] = await global.db.execute(
      'DELETE FROM reviews WHERE id = ? AND user_id = ?',
      [reviewId, userId]
    );
    return result.affectedRows > 0;
  }
}

module.exports = Review;
