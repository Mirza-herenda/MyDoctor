const express = require("express");
const mongoose = require("mongoose");
const Port = 44300;
const db = "mongodb://localhost:27017/flutterApp";
const mongoosePort = 2022;

const app = express();
const authRouter = require("../server/routes/auth");

app.use(express.json());
app.use(authRouter);
app.listen(Port, "0.0.0.0", () => {
  console.log(`connected at port  ${Port}`);
});

mongoose
  .connect(db)
  .then(() => {
    console.log("database connected");
  })
  .catch(console.log("ss"));
