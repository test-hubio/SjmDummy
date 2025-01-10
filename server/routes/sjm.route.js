const router = require("express").Router();
const axios = require("axios");
const isAuth = require("../middleware/jwt");

const PYTHON_API = process.env.PYTHON_API_URL || "http://localhost:7900";

router.post("/find-matches", isAuth, async (req, res) => {
  try {
    const response = await axios.post(`${PYTHON_API}/find-matches`, {
      ...req.body,
      userId: req.user.id
    });
    res.json(response.data);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

router.post("/start-interview", isAuth, async (req, res) => {
  try {
    const response = await axios.post(`${PYTHON_API}/start-interview`, {
      ...req.body,
      userId: req.user.id  
    });
    res.json(response.data);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

module.exports = router;