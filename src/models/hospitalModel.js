export default (sequelize, DataTypes) => {
  const Hospital = sequelize.define("Hospital", {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  });
  return Hospital;
};
