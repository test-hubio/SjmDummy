class Order {
  static async create(orderData) {
    const { gig_id, seller_id, buyer_id } = orderData;
    
    const [result] = await global.db.execute(
      'INSERT INTO orders (gig_id, seller_id, buyer_id) VALUES (?, ?, ?)',
      [gig_id, seller_id, buyer_id]
    );

    const [order] = await global.db.execute(
      'SELECT * FROM orders WHERE id = ?',
      [result.insertId]
    );

    return order[0];
  }

  static async findById(orderId) {
    const [order] = await global.db.execute(
      'SELECT * FROM orders WHERE id = ?',
      [orderId]
    );
    return order[0];
  }

  static async findByBuyerId(buyerId) {
    const [orders] = await global.db.execute(
      'SELECT o.*, g.title as gig_title FROM orders o JOIN gigs g ON o.gig_id = g.id WHERE o.buyer_id = ?',
      [buyerId]
    );
    return orders;
  }

  static async findBySellerId(sellerId) {
    const [orders] = await global.db.execute(
      'SELECT o.*, g.title as gig_title FROM orders o JOIN gigs g ON o.gig_id = g.id WHERE o.seller_id = ?',
      [sellerId]
    );
    return orders;
  }

  static async updateStatus(orderId, isCompleted) {
    const [result] = await global.db.execute(
      'UPDATE orders SET is_completed = ? WHERE id = ?',
      [isCompleted, orderId]
    );
    return result.affectedRows > 0;
  }
}

module.exports = Order;
