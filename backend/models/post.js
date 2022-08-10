const { Model } = require("sequelize");
module.exports = (sequelize, dataTypes) => {
  class Post extends Model {
    static associate(models) {
      models.Post.belongsTo(models.User, {
        foreignKey: {
          name: "userId",
          allowNull: false,
        },
      });
      models.Post.hasMany(models.Like, {
        foreignKey: {
          name: "postId",
          allowNull: false,
        },
      onDelete: "cascade",
      hooks: true, 
      });
    }
  }

  Post.init(
    {
      userId: dataTypes.INTEGER,
      text: dataTypes.TEXT,
      imageUrl: dataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Post",
    }
  );
  return Post;
};