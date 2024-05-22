import dbConfig from "../utils/dbConfig.js";
import { Sequelize, DataTypes } from "sequelize";
import patientModel from "./patientModel.js";
import hospitalModel from "./hospitalModel.js";
import psychiatristModel from "./psychiatristModel.js";

// Initialize the Sequelize instance
const sequelize = new Sequelize(
  dbConfig.database,
  dbConfig.username,
  dbConfig.password,
  {
    host: dbConfig.host,
    dialect: dbConfig.dialect,
    pool: {
      max: dbConfig.pool.max,
      min: dbConfig.pool.min,
      acquire: dbConfig.pool.acquire,
      idle: dbConfig.pool.idle,
    },
    logging: false, // It's generally a good idea to disable logging in production
  }
);

// Authenticate the Sequelize instance
sequelize
  .authenticate()
  .then(() => {
    console.log("Connected");
  })
  .catch((err) => {
    console.error("Unable to connect to the database:", err);
  });

// Initialize the db object
const db = {};

// Assigning patients property of db using patientModel function
db.patients = patientModel(sequelize, DataTypes);
db.hospitals = hospitalModel(sequelize, DataTypes);
db.psychiatrists = psychiatristModel(sequelize, DataTypes);

export default db;

//const Patient = require("./patient")(sequelize);
//const Hospital = require("./hospital")(sequelize);
//const Psychiatrist = require("./psychiatrist")(sequelize);
//const Patient = require("./patient")(sequelize);
//
//Hospital.hasMany(Psychiatrist);
//Psychiatrist.belongsTo(Hospital);
//Psychiatrist.hasMany(Patient);
//Patient.belongsTo(Psychiatrist);
