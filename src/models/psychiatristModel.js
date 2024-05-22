export default (sequelize, DataTypes) => {
  return sequelize.define("Psychiatrist", {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    hospitalId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: "hospitals",
        key: "id",
      },
    },
  });
};
