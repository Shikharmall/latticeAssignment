const dbConfig = {
  host: "localhost",
  database: "hospital_db",
  username: "root",
  password: "",
  dialect: "mysql",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000,
  },
};

export default dbConfig;
