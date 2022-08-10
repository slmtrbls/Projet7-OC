const jwt = require('jsonwebtoken');

require('dotenv').config();
 
module.exports = (req, res, next) => {
   try {
        const token = req.headers.authorization.split(' ')[1];
        const decodedToken = jwt.verify(token, `${process.env.TOKEN}`);
        res.locals.userId = decodedToken.userId;
        res.locals.isAdmin = decodedToken.isAdmin;
        next();
   } catch(error) {
       res.status(403).json({  message : '403 : unauthorized request.' });
   }
};