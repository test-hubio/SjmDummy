class Gig {
  static async create(gigData) {
    const { user_id, title, description, category, price, cover_image, images, 
            short_title, short_desc, delivery_time, revision_number, features } = gigData;

    const [result] = await global.db.execute(
      `INSERT INTO gigs (user_id, title, description, category, price, cover_image, 
        images, short_title, short_desc, delivery_time, revision_number, features) 
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      [user_id, title, description, category, price, cover_image, 
       JSON.stringify(images), short_title, short_desc, delivery_time, 
       revision_number, JSON.stringify(features)]
    );

    return this.findById(result.insertId);
  }

  static async findById(id) {
    const [gig] = await global.db.execute('SELECT * FROM gigs WHERE id = ?', [id]);
    return gig[0];
  }

  static async updateStars(gigId, totalStars, starNumber) {
    await global.db.execute(
      'UPDATE gigs SET total_stars = ?, star_number = ? WHERE id = ?',
      [totalStars, starNumber, gigId]
    );
  }
}

module.exports = Gig;
