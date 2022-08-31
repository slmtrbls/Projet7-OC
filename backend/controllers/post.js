const { Post, User } = require("../models");
const fs = require("fs-extra");

exports.createPost = (req, res, next) => {
  if (req.body.text === "") {
    return res.status(400).json({ error: "Merci d'écrire votre texte avant d'envoyer." });
  }

  Post.create({
    userId: res.locals.userId,
    text: req.body.text,
    imageUrl:
      req.body.text && req.file
        ? `${req.protocol}://${req.get("host")}/images/${req.file.filename}`
        : null,
  })
    .then(() => {
        res.status(201).json({ message: "Post enregistré!" });
        if(!res.locals.userId){
          console.log('il n\y a pas d\'userId dans la requête');
        }
    })
    .catch((error) => res.status(400).json({ error }));
};


exports.getAllPosts = (req, res, next) => {
  
  Post.findAll({
    order: [["createdAt", "DESC"]],
    attributes: [
      "id",
      "userId",
      "text",
      "imageUrl",
      "createdAt",
      "updatedAt",
    ],
    include: [{ model: User, attributes: ["username"] }],
  })
    .then((posts) => {
      res.status(200).json(posts);
    })
    .catch((error) => {
      res.status(400).json({
        error: error,
      });
    });
};


exports.getOnePost = async (req, res, next) => {
  try {
    const post = await Post.findOne({
      attributes: [
        "id",
        "userId",
        "text",
        "imageUrl",
        "createdAt",
        "updatedAt",
      ],
      where: { id: req.params.id },
    });
    if (!post) {
      res.status(404).json({
        message: "post not found",
      });
      return;
    }
    res.status(200).json(post);
  } catch (error) {
    res.status(404).json({
      error: error,
    });
  }
};

exports.deletePost = async (req, res, next) => {
  try {
    const post = await Post.findOne({ where: { id: req.params.id } });
    if (!post) {
      res.status(404).json({
        message: "Post not found",
      });
      return;
    }

    if (post.userId !== res.locals.userId && !res.locals.isAdmin) {
      res.status(401).json({
        message: "Not authorized",
      });
      return;
    }

    if (post.imageUrl !== null) {
      const filename = post.imageUrl.split("/images/")[1];
      await fs.unlink(`images/${filename}`);
      await post.update({
        imageUrl: null       
      });

    }

    await post.destroy();
    res.status(200).json({
      message: "Post deleted",
    });
  } catch (error) {
    res.status(400).json({
      message: error.message,
    });
  }
};

exports.updatePost = async (req, res, next) => {
  try {
    const post = await Post.findOne({ where: { id: req.params.id } });
    if (!post) {
      res.status(404).json({
        message: "Post not found",
      });
      return;
    }

    if (post.userId !== res.locals.userId || !res.locals.isAdmin) {
      res.status(401).json({
        message: "Not authorized",
      });
      return;
    }

    if (post.imageUrl !== null && req.file) {
      const filename = post.imageUrl.split("/images/")[1];
      await fs.unlink(`images/${filename}`);
      await post.update({
      text: req.body.text,
      imageUrl:
      req.body.text && req.file
        ? `${req.protocol}://${req.get("host")}/images/${req.file.filename}`
        : null,     
      });

    }
    res.status(200).json({
      message: "Post modifié",
    });
  } catch (error) {
    res.status(400).json({
      message: error.message,
    });
  }
};