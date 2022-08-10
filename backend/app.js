const express = require("express");
const app = express(); 
const path = require("path"); 
const helmet = require("helmet"); //sécurise les appli Express en définissant divers en-têtes HTTP


const postRoutes = require("./routes/post");
const userRoutes = require("./routes/user"); 
const likeRoutes = require("./routes/like");

app.use((req, res, next) => {
  res.setHeader(
    "Access-Control-Allow-Origin",
    "*"
  ); 
  res.setHeader(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content, Accept, Content-Type, Authorization"
  ); 
  res.setHeader(
    "Access-Control-Allow-Methods",
    "GET, POST, PUT, DELETE, PATCH, OPTIONS"
  ); 
  next();
});

app.use(express.json()); 

app.use(helmet());

app.use("/images", express.static(path.join(__dirname, "images")));
app.use("/api/auth", userRoutes);
app.use("/api/post", postRoutes);
app.use("/api/post", likeRoutes);

module.exports = app; 