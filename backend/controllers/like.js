const { Like } = require("../models");


exports.createLike = (req, res, next) => { // permet de créer le like
    Like.create({
    userId: res.locals.userId,
    postId: req.params.postId,
    isLiked: true,
    likeKey: `${res.locals.userId}/${req.params.postId}`,
  })
    .then(() => res.status(200).json({ message: "Post liké !" }))
    .catch((error) => res.status(500).json(error));
};

exports.getOneLike = async (req, res, next) => { // permet de récupérer les informations du like
  try {
    const like = await Like.findOne({
      attributes: [
        "id",
        "userId",
        "postId",
        "isLiked",
        "likeKey",
        "createdAt",
        "updatedAt",
      ],
      where: { postId: req.params.postId, userId: res.locals.userId },
    });
    if (!like) {
      res.status(404).json({
        message: "like not found",
      });
      return;
    }
    res.status(200).json(like);
  } catch (error) {
    res.status(404).json({
      error: error,
    });
  }
};


exports.getLikesCount = async (req, res, next) => { // permet d'obtenir le nombre de like pour un post
  try {
  const likeCount = await Like.count({
    where: { postId: req.params.postId, isLiked: true },
  })
      res.status(200).json(likeCount);
  }
  catch {(error) => {
      res.status(400).json({
        message: error
      });
    };
  };
}


exports.manageLikes = async (req, res, next) => { // permet de liker ou d'unliker un post
  try {
    const like = await Like.findOne({ where: { postId: req.params.postId, userId: res.locals.userId } });
    if (!like) {
      res.status(404).json({
        message: "erreur like non créé",
      });
      return;
    }

    if (like.userId !== res.locals.userId && !res.locals.isAdmin) {
      res.status(401).json({
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