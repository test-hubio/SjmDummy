const Conversation = require("../models/conversation.model");
const createError = require("../utils/createError");

// Replace MongoDB save() with MySQL insert
exports.createConversation = async (req, res, next) => {
  try {
    const conversation = await Conversation.create({
      id: isSeller ? from + to : to + from,
      seller_id: isSeller ? from : to,
      buyer_id: isSeller ? to : from
    });
    res.status(200).json({
      success: true,
      data: conversation
    });
  } catch (err) {
    next(err);
  }
};

exports.getConversations = async (req, res, next) => {
  try {
    const conversations = await Conversation.find(
      req.user.isSeller ? { sellerId: req.user.id } : { buyerId: req.user.id }
    )
      .populate("sellerId", "username isSeller")
      .populate("buyerId", "username isSeller");
    res.status(200).json({ success: true, data: conversations });
  } catch (err) {
    next(err);
  }
};

exports.getConversation = async (req, res, next) => {
  try {
    const conversation = await Conversation.findOne({ id: req.params.id });
    if (!conversation || conversation?.length == 0)
      return next(createError(404, "Conversation not found"));
    res.status(200).json({ success: true, data: conversation });
  } catch (err) {
    next(err);
  }
};

exports.updateConversation = async (req, res, next) => {
  try {
    const isSeller = req.user.isSeller;
    const conversation = await Conversation.findOneAndUpdate(
      { id: req.params.id },
      {
        // seller reads buyer's message and vice versa
        ...(isSeller ? { readBySeller: true } : { readByBuyer: true }),
      },
      { new: true }
    );
    res.status(200).json({ success: true, data: conversation });
  } catch (err) {
    next(err);
  }
};
