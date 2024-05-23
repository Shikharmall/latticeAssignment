import dbConfig from "../utils/dbConfig.js";
import { Sequelize, DataTypes } from "sequelize";
import patientModel from "./patientModel.js";
import hospitalModel from "./hospitalModel.js";
import psychiatristModel from "./psychiatristModel.js";

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
    logging: false,
  }
);

sequelize
  .authenticate()
  .then(() => {
    console.log("Connected");
  })
  .catch((err) => {
    console.error("Unable to connect to the database:", err);
  });

const db = {};

db.patients = patientModel(sequelize, DataTypes);
db.hospitals = hospitalModel(sequelize, DataTypes);
db.psychiatrists = psychiatristModel(sequelize, DataTypes);

db.hospitals.hasMany(db.psychiatrists, { foreignKey: 'hospitalId' });
db.psychiatrists.belongsTo(db.hospitals, { foreignKey: 'hospitalId' });
db.psychiatrists.hasMany(db.patients, { foreignKey: 'psychiatristId' });
db.patients.belongsTo(db.psychiatrists, { foreignKey: 'psychiatristId' });

export default db;

