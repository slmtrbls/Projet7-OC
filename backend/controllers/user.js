const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const passwordValidator = require("password-validator");
require("dotenv").config();
const { User, Post } = require("../models");
//----------------------------------------------------------------------------------------------------------------------
//creation du schema
let schema = new passwordValidator();
schema
  .is()
  .min(8) //au moins 8 caractères
  .is()
  .max(20) // pas plus de 20 caractères
  .has()
  .uppercase() // au moins une minuscule
  .has()
  .lowercase() // au moins une majuscule
  .has()
  .digits(1) // au moins un chiffre
  .has()
  .not()
  .spaces() //pas d'espaces
  .is()
  .not()
  .oneOf(["Passw0rd", "Password123"]);

const regexEmail =
  /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;


exports.signup = async (req, res, next) => { 
  const { email, username, password } = req.body;
  if (!regexEmail.test(email)) {
    return res.status(400).json({ error: "Email incorrect" });
  }
  if (!schema.validate(password)) {
    res.status(400).json({
      error:
        "le mot de passe doit contenir au moins 8 caractères dont 1 chiffre, 1 lettre majuscule et 1 minuscule",
    });
    return;
  }
  const isFieldsEmpty = !email || !username || !password;

  if (isFieldsEmpty) {
    res.status(400).json({ error: "Merci de remplir tous les champs !" });
    return;
  }
  try {
    const hash = await bcrypt.hash(password, 10);
    const user = await User.create({ 
      email: email,
      username: username,
      password: hash,
    });
    res.status(201).json({
      userId: user.id,
      isAdmin: user.isAdmin,
    });
  } catch (error) {
    res.status(500).json({ error });
  }
};

exports.login = async (req, res, next) => {
  const { email, password } = req.body;
  if (!email || !password) {
    return res
      .status(400)
      .json({ error: "Merci de remplir tous les champs !" });
  }
  try {
    const user = await User.findOne({ where: { email } }  );
    const isValid = await bcrypt.compare(password, user.password);
    if (!isValid) {
      res.status(401).json({ error: "Utilisateur non trouvé !" });
      return;
    }
    res.status(200).json({
      userId: user.id,
      isAdmin: user.isAdmin,
      username: user.username,
      token: jwt.sign(

        {
          userId: user.id,
          isAdmin: user.isAdmin,
        } ,
        process.env.TOKEN ,
        { expiresIn: "24h" }
      ),
    });
  } catch (error) {
    res.status(500).json({ error });
  }
};



//----------------------------------------------------------------------------------------------------------------------
exports.deleteProfile = async (req, res, next) => {
  try {
    const user = await User.findOne({ where: { id: req.params.id } });
    if (!user) {
      res.status(404).json({
        message: "user not found",
      });
      return;
    }
    if (user.id !== res.locals.userId && res.locals.isAdmin) {
      res.status(403).json({
        message: "Not authorized",
      });
      return;
    }
    await user.destroy();
    res.status(200).json({
      message: "user deleted",
    });
  } catch (error) {
    res.status(400).json({
      error: error.message,
    });
  }
};