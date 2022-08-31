const express = require("express");
const router = express.Router();
const likeCtrl = require("../controllers/like");
const auth = require("../middleware/auth");

router.get("/:postId/likecount", auth, likeCtrl.getLikesCount);
router.get("/:postId/like", auth, likeCtrl.getOneLike);
router.post("/:postId/like", auth, likeCtrl.createLike);
router.put("/:postId/like", auth, likeCtrl.manageLikes);

module.exports = router;