const express = require("express");
const router = express.Router();
const likeCtrl = require("../controllers/like");
const auth = require("../middleware/auth");

router.get("/:postId/likes", auth, likeCtrl.getLikesCount);
router.post("/:postId/", auth, likeCtrl.createLike);
router.put("/:postId/like/:id", auth, likeCtrl.manageLikes);

module.exports = router;