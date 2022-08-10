const { Model } = require("sequelize");
module.exports = (sequelize, dataTypes) => {
  class User extends Model {
    static associate(models) {
      models.User.hasMany(models.Post, {
        foreignKey: "userId",
        onDelete: "cascade",
        hooks: true,
      });
      models.User.hasMany(models.Like, {
        foreignKey: "userId",
        onDelete: "cascade",
        hooks: true,
      });
    }
  }
  User.init(
    {
      email: {
        type: dataTypes.STRING,
        allowNull: false,
        unique: "UNIQUE_EMAIL",
      },
      username: { type: dataTypes.STRING, allowNull: false },
      password: { type: dataTypes.STRING, allowNull: false },
      isAdmin: {
        type: dataTypes.BOOLEAN,
        allowNull: false,
        defaultValue: false,
      },
    },
    {
      sequelize,
      modelName: "User",
    }
  );
  return User;
};