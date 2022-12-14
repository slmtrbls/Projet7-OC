const http = require("http"); 
const app = require("./app"); 
const db = require("./models/index");
require("dotenv").config();

const normalizePort = (val) => { // configuration du port
 
  const port = parseInt(val, 10);

  if (isNaN(port)) {
   
    return val;
  }
  if (port >= 0) {
    return port;
  }
  return false;
};

const port = normalizePort(process.env.PORT || "3000");
app.set(
  "port",
  port
); 

const errorHandler = (error) => { // gestion des erreurs
  
  if (error.syscall !== "listen") {
    throw error;
  }
  const address = server.address();
  const bind =
    typeof address === "string" ? "pipe " + address : "port: " + port;
  switch (error.code) {
    case "EACCES":
      console.error(bind + " requires elevated privileges.");
      process.exit(1);
      break;
    case "EADDRINUSE":
      console.error(bind + " is already in use.");
      process.exit(1);
      break;
    default:
      throw error;
  }
};

const main = async () => { // connexion et mise à jour de la bdd
  try {
    await db.sequelize.authenticate();
    await db.sequelize.sync({ alter: true }); // paramètre de développement à changer en prod, actualise les changement en temps réelle.


    const server = http.createServer(app); 

    server.on("error", errorHandler);
    server.on("listening", () => {
      const address = server.address();
      const bind =
        typeof address === "string" ? "pipe " + address : "port " + port;
      console.log("Listening on " + bind);
    });

    server.listen(port); 
    console.log('Connexion mysql réussie')
  }
    catch (error) {
    console.log('Erreur de connexion mysql')
  }
};

main();