class Message {
  static async create(messageData) {
    const { conversation_id, sender_id, description } = messageData;
    
    const [result] = await global.db.execute(
      'INSERT INTO messages (conversation_id, sender_id, description) VALUES (?, ?, ?)',
      [conversation_id, sender_id, description]
    );

    const [message] = await global.db.execute(
      'SELECT * FROM messages WHERE id = ?',
      [result.insertId]
    );

    return message[0];
  }

  static async findByConversationId(conversationId) {
    const [messages] = await global.db.execute(
      'SELECT m.*, u.username FROM messages m JOIN users u ON m.sender_id = u.id WHERE m.conversation_id = ? ORDER BY m.created_at ASC',
      [conversationId]
    );
    return messages;
  }

  static async deleteMessage(messageId, userId) {
    const [result] = await global.db.execute(
      'DELETE FROM messages WHERE id = ? AND sender_id = ?',
      [messageId, userId]
    );
    return result.affectedRows > 0;
  }
}

module.exports = Message;
