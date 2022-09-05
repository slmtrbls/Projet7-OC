-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: dbtest
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `postId` int NOT NULL,
  `isLiked` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `likeKey` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `likeKey` (`likeKey`),
  UNIQUE KEY `likeKey_2` (`likeKey`),
  UNIQUE KEY `likeKey_3` (`likeKey`),
  UNIQUE KEY `likeKey_4` (`likeKey`),
  UNIQUE KEY `likeKey_5` (`likeKey`),
  UNIQUE KEY `likeKey_6` (`likeKey`),
  UNIQUE KEY `likeKey_7` (`likeKey`),
  UNIQUE KEY `likeKey_8` (`likeKey`),
  UNIQUE KEY `likeKey_9` (`likeKey`),
  UNIQUE KEY `likeKey_10` (`likeKey`),
  UNIQUE KEY `likeKey_11` (`likeKey`),
  UNIQUE KEY `likeKey_12` (`likeKey`),
  UNIQUE KEY `likeKey_13` (`likeKey`),
  UNIQUE KEY `likeKey_14` (`likeKey`),
  UNIQUE KEY `likeKey_15` (`likeKey`),
  UNIQUE KEY `likeKey_16` (`likeKey`),
  UNIQUE KEY `likeKey_17` (`likeKey`),
  UNIQUE KEY `likeKey_18` (`likeKey`),
  UNIQUE KEY `likeKey_19` (`likeKey`),
  UNIQUE KEY `likeKey_20` (`likeKey`),
  UNIQUE KEY `likeKey_21` (`likeKey`),
  UNIQUE KEY `likeKey_22` (`likeKey`),
  UNIQUE KEY `likeKey_23` (`likeKey`),
  UNIQUE KEY `likeKey_24` (`likeKey`),
  UNIQUE KEY `likeKey_25` (`likeKey`),
  UNIQUE KEY `likeKey_26` (`likeKey`),
  UNIQUE KEY `likeKey_27` (`likeKey`),
  UNIQUE KEY `likeKey_28` (`likeKey`),
  UNIQUE KEY `likeKey_29` (`likeKey`),
  UNIQUE KEY `likeKey_30` (`likeKey`),
  UNIQUE KEY `likeKey_31` (`likeKey`),
  UNIQUE KEY `likeKey_32` (`likeKey`),
  UNIQUE KEY `likeKey_33` (`likeKey`),
  UNIQUE KEY `likeKey_34` (`likeKey`),
  UNIQUE KEY `likeKey_35` (`likeKey`),
  UNIQUE KEY `likeKey_36` (`likeKey`),
  UNIQUE KEY `likeKey_37` (`likeKey`),
  UNIQUE KEY `likeKey_38` (`likeKey`),
  UNIQUE KEY `likeKey_39` (`likeKey`),
  UNIQUE KEY `likeKey_40` (`likeKey`),
  UNIQUE KEY `likeKey_41` (`likeKey`),
  UNIQUE KEY `likeKey_42` (`likeKey`),
  UNIQUE KEY `likeKey_43` (`likeKey`),
  UNIQUE KEY `likeKey_44` (`likeKey`),
  UNIQUE KEY `likeKey_45` (`likeKey`),
  UNIQUE KEY `likeKey_46` (`likeKey`),
  KEY `userId` (`userId`),
  KEY `postId` (`postId`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_10` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_100` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_101` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_102` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_103` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_104` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_105` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_106` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_107` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_108` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_109` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_11` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_110` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_111` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_112` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_113` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_114` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_115` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_116` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_117` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_118` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_119` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_12` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_120` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_121` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_122` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_123` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_124` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_125` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_126` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_127` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_128` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_129` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_13` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_130` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_131` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_132` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_133` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_134` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_135` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_136` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_137` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_138` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_139` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_14` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_140` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_141` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_142` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_143` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_144` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_145` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_146` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_147` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_148` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_149` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_15` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_150` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_151` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_152` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_153` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_154` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_155` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_156` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_157` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_158` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_159` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_16` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_160` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_161` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_162` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_163` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_164` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_165` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_166` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_167` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_168` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_169` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_17` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_170` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_171` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_172` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_173` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_174` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_175` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_176` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_177` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_178` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_179` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_18` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_180` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_181` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_182` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_183` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_184` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_185` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_186` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_187` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_188` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_189` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_19` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_190` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_191` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_192` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_193` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_194` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_195` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_196` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_197` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_198` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_20` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_21` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_22` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_23` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_24` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_25` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_26` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_27` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_28` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_29` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_30` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_31` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_32` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_33` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_34` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_35` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_36` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_37` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_38` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_39` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_4` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_40` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_41` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_42` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_43` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_44` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_45` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_46` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_47` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_48` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_49` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_5` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_50` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_51` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_52` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_53` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_54` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_55` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_56` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_57` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_58` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_59` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_6` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_60` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_61` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_62` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_63` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_64` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_65` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_66` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_67` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_68` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_69` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_7` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_70` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_71` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_72` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_73` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_74` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_75` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_76` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_77` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_78` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_79` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_8` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_80` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_81` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_82` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_83` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_84` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_85` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_86` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_87` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_88` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_89` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_9` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_90` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_91` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_92` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_93` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_94` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_95` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_96` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_97` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_98` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_99` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (73,2,41,0,'2022-09-02 15:44:03','2022-09-04 14:33:03','2/41'),(103,2,47,1,'2022-09-05 12:51:32','2022-09-05 12:51:32','2/47'),(104,3,48,1,'2022-09-05 12:58:02','2022-09-05 12:58:02','3/48'),(105,3,47,1,'2022-09-05 12:58:04','2022-09-05 12:58:04','3/47'),(106,4,47,1,'2022-09-05 12:59:32','2022-09-05 12:59:32','4/47'),(107,4,49,1,'2022-09-05 13:07:17','2022-09-05 13:07:17','4/49');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `text` text,
  `imageUrl` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_10` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_100` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_101` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_102` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_103` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_104` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_105` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_11` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_12` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_13` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_14` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_15` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_16` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_17` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_18` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_19` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_20` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_21` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_22` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_23` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_24` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_25` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_26` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_27` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_28` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_29` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_30` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_31` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_32` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_33` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_34` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_35` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_36` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_37` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_38` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_39` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_40` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_41` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_42` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_43` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_44` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_45` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_46` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_47` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_48` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_49` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_5` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_50` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_51` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_52` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_53` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_54` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_55` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_56` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_57` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_58` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_59` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_6` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_60` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_61` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_62` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_63` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_64` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_65` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_66` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_67` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_68` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_69` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_7` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_70` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_71` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_72` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_73` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_74` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_75` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_76` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_77` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_78` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_79` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_8` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_80` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_81` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_82` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_83` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_84` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_85` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_86` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_87` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_88` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_89` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_9` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_90` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_91` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_92` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_93` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_94` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_95` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_96` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_97` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_98` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_99` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (41,2,'test ','http://localhost:3000/images/icon-left-font-monochrome-black.png1662133441861.png','2022-09-02 15:28:20','2022-09-02 15:44:45'),(47,2,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','http://localhost:3000/images/icon-left-font.png1662382271186.png','2022-09-05 12:51:00','2022-09-05 12:51:11'),(48,3,'Hello','http://localhost:3000/images/error.png1662382538430.png','2022-09-05 12:55:38','2022-09-05 12:55:38'),(49,4,'Hello',NULL,'2022-09-05 13:07:14','2022-09-05 13:07:14');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_EMAIL` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'test@test.fr','test','$2b$10$FhUjuwEhR65HolxFWiUFFeEHwb2x.2AHkC5qEuaL/8/W1wiymXoMK',0,'2022-08-24 14:38:15','2022-08-24 14:38:15'),(3,'test2@test.fr','test2','$2b$10$ik/6R2Py4miERDyNenb2kO4j2YSq6..q78PDs.NIRxrCfnoz9h6y2',0,'2022-08-25 14:05:06','2022-08-25 14:05:06'),(4,'test3@test.fr','test3','$2b$10$Dgo5GzaBJDgCFPfSX2LTNu/ZaJB5nibbo9F7AjwUGFYb2s.VIw99S',0,'2022-08-26 10:08:03','2022-08-26 10:08:03'),(5,'admin@admin.fr','Admin','$2b$10$Hk1Oo9.WOV1DnGiqKWN8OeRPBzgEgpJpf/zYZX4Tpwt.KitAWJdfS',1,'2022-09-02 12:03:26','2022-09-02 12:03:26');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-05 15:45:37
