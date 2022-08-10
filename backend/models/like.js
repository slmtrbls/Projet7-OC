const { Model } = require("sequelize");
module.exports = (sequelize, dataTypes) => {
  class Like extends Model {
    static associate(models) {
      models.Like.belongsTo(models.User, {
        foreignKey: {
          name: "userId",
          allowNull: false,
        },
      });
      models.Like.belongsTo(models.Post, {
        foreignKey: {
          name: "postId",
          allowNull: false,
        },
      });
    }
  }
  Like.init(
    {
      userId: dataTypes.INTEGER,
      postId: dataTypes.INTEGER,
      isLiked: {
        type: dataTypes.BOOLEAN,
        allowNull: false,
        defaultValue: false,
      },
    },
    {
      sequelize,
      modelName: "Like",
    }
  );
  return Like;
};