class Conversation {
  static async create(conversationData) {
    const { id, seller_id, buyer_id } = conversationData;

    const [result] = await global.db.execute(
      'INSERT INTO conversations (id, seller_id, buyer_id) VALUES (?, ?, ?)',
      [id, seller_id, buyer_id]
    );

    return this.findById(id);
  }

  static async findById(id) {
    const [conversation] = await global.db.execute(
      'SELECT * FROM conversations WHERE id = ?', 
      [id]
    );
    return conversation[0];
  }

  static async updateReadStatus(id, isSeller, status) {
    const field = isSeller ? 'read_by_seller' : 'read_by_buyer';
    await global.db.execute(
      `UPDATE conversations SET ${field} = ? WHERE id = ?`,
      [status, id]
    );
  }

  static async updateLastMessage(id, message) {
    await global.db.execute(
      'UPDATE conversations SET last_message = ? WHERE id = ?',
      [message, id]
    );
  }
}

module.exports = Conversation;
