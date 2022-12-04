const express = require("express");
const User = require("../user");
const bcryptjs = require("bcryptjs");

const authRouter = express.Router();

authRouter.post("/admin/SignUp", async (req, res) => {
  try {
    const { name, email, password } = req.body;
    const existingUser = await User.findOne({ email });
    if (existingUser) {
      return res.status(400).json("this email is already exists");
    }
    const scriptedPw = await bcryptjs.hash(password, 8);
    let user = new User({
      email,
      password: scriptedPw,
      name,
    });
    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

authRouter.get("/admin/all", async (req, res) => {
  const { name, email, password } = req.body;
  let user = new User({
    email,
    password,
    name,
  });
  // user=await user.save();
  res.json(user);
});

module.exports = authRouter;
