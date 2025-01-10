const Gig = require("../models/gig.model");
const createError = require("../utils/createError");

exports.addGig = async (req, res, next) => {
  try {
    if (!req.user.isSeller)
      return next(createError(401, "Only sellers can create a gig"));
    const gig = await Gig.create({ ...req.body, userId: req.user.id });
    return res.status(201).json({ success: true, data: gig });
  } catch (err) {
    next(err);
  }
};

exports.getAllGigs = async (req, res, next) => {
  try {
    let query = 'SELECT g.*, u.username, u.img FROM gigs g JOIN users u ON g.user_id = u.id WHERE 1=1';
    let params = [];

    if (req.query.search) {
      query += ' AND g.title LIKE ?';
      params.push(`%${req.query.search}%`);
    }
    if (req.query.max) {
      query += ' AND g.price <= ?';
      params.push(req.query.max);
    }
    if (req.query.min) {
      query += ' AND g.price >= ?';
      params.push(req.query.min);
    }
    if (req.query.cat) {
      query += ' AND g.category = ?';
      params.push(req.query.cat);
    }
    if (req.query.userId) {
      query += ' AND g.user_id = ?';
      params.push(req.query.userId);
    }

    const [gigs] = await global.db.execute(query, params);
    res.status(200).json({ success: true, data: gigs });
  } catch (err) {
    next(err);
  }
};

exports.getGig = async (req, res, next) => {
  try {
    console.log(req.params.id);
    const gig = await Gig.findById(req.params.id).populate(
      "userId",
      "username img country desc createdAt"
    );
    if (!gig) return next(createError(404, "Gig not found"));
    res.status(200).json({ success: true, data: gig });
  } catch (err) {
    next(err);
  }
};

exports.deleteGig = async (req, res, next) => {
  try {
    const gig = await Gig.findById(req.params.id);
    if (!gig) return next(createError(404, "Gig not found"));
    if (gig.userId.toString() !== req.user.id.toString())
      return next(
        createError(403, "You are not authorized to delete this gig")
      );
    await Gig.findByIdAndDelete(req.params.id);
    return res.status(200).json({ success: true, data: {} });
  } catch (err) {
    next(err);
  }
};
