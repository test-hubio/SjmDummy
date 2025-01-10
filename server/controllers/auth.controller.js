const bcrypt = require("bcrypt");
const User = require("../models/user.model");
const createError = require("../utils/createError");

const sendToken = (user, res, statusCode) => {
  const token = User.getSignToken(user.id);
  delete user.password;
  
  const options = {
    expires: new Date(
      Date.now() + process.env.JWT_COOKIE_EXPIRE * 24 * 60 * 60 * 1000
    ),
    httpOnly: true,
  };

  res.status(statusCode).cookie("token", token, options).json({
    success: true,
    data: {
      token,
      user,
    },
  });
};

exports.register = async (req, res, next) => {
  try {
    const user = await User.create(req.body);
    sendToken(user, res, 201);
  } catch (err) {
    next(createError(400, err.message));
  }
};

exports.login = async (req, res, next) => {
  try {
    const { username, password } = req.body;
    
    // Check if username and password exist
    if (!username || !password) {
      return next(createError(400, "Please provide username and password"));
    }

    // Check if user exists
    const user = await User.findByUsername(username);
    if (!user) {
      return next(createError(401, "Invalid username or password"));
    }

    // Check if password is correct
    const isPasswordCorrect = await bcrypt.compare(password, user.password);
    if (!isPasswordCorrect) {
      return next(createError(401, "Invalid username or password"));
    }

    sendToken(user, res, 200);
  } catch (err) {
    next(err);
  }
};

exports.logout = async (req, res, next) => {
  res.cookie("token", "none", {
    expires: new Date(Date.now() + 10 * 1000),
    httpOnly: true,
  });

  res.status(200).json({
    success: true,
    data: {},
  });
};