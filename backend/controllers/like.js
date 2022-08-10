const { Like, User } = require("../models");
const like = require("../models/like");


exports.createLike = (req, res, next) => {
    Like.create({
    userId: res.locals.userId,
    postId: req.params.postId,
    isLiked: true,
  })
    .then(() => res.status(200).json({ message: "Post liké !" }))
    .catch((error) => res.status(500).json(error));
};

exports.getLikesCount = async (req, res, next) => {
  let likeCount = await Like.count({
    where: { idPost: req.params.postId, isLiked: true },
  })
    .then(() => {
      res.status(200).json(likeCount);
    })
    .catch((error) => {
      res.status(400).json({
        error: error,
      });
    });
};


exports.manageLikes = async (req, res, next) => {
  try {
    const like = await Comment.findOne({ where: { id: req.params.id } });
    if (!like) {
      res.status(404).json({
        message: "erreur like non créé",
      });
      return;
    }

    if (like.userId !== res.locals.userId || !res.locals.isAdmin) {
      res.status(403).json({
        message: "Not authorized",
      });
      return;
    }

    if (like.isLiked) { 
      await like.update({isLiked: false})
      res.status(200).json({
      message: "post unliké",
    }); } else if (!like.isLiked) {
      await like.update({isLiked: true})
      res.status(200).json({message: "post liké"})
    }
  } catch (error) {
    res.status(400).json({
      message: error.message,
    });
  }
};