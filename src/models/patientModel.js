export default (sequelize, DataTypes) => {
  const Patient = sequelize.define("Patient", {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    address: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [10, 255], // Minimum 10 characters
      },
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        isEmail: true,
      },
    },
    phoneNumber: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [10, 20], // Minimum 10 characters (including country code)
      },
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [8, 15], // Minimum 8, Maximum 15 characters
        isStrongPassword(value) {
          if (!/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/.test(value)) {
            throw new Error(
              "Password must contain at least one uppercase letter, one lowercase letter, and one number"
            );
          }
        },
      },
    },
    photo: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    psychiatristId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: "psychiatrists",
        key: "id",
      },
    },
  });

  return Patient;
};
