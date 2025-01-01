-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: football_platform
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

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
-- Table structure for table `Match`
--

DROP TABLE IF EXISTS `Match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Match` (
  `match_id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  `opponent_id` varchar(64) NOT NULL,
  `outcome` int NOT NULL,
  `ownScore` int NOT NULL,
  `opponentScore` int NOT NULL,
  `side` int NOT NULL,
  `coach_id` varchar(64) NOT NULL,
  `home_name` varchar(64) NOT NULL,
  PRIMARY KEY (`match_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Match`
--

LOCK TABLES `Match` WRITE;
/*!40000 ALTER TABLE `Match` DISABLE KEYS */;
INSERT INTO `Match` VALUES (1,'当前赛季','Opponent1',0,1,0,0,'Coach1','Huskies'),(2,'当前赛季','Opponent2',2,1,1,1,'Coach1','Huskies'),(3,'当前赛季','Opponent3',1,0,2,1,'Coach1','Huskies'),(4,'当前赛季','Opponent4',1,0,3,0,'Coach1','Huskies'),(5,'当前赛季','Opponent5',1,0,4,1,'Coach1','Huskies'),(6,'当前赛季','Opponent6',0,2,1,0,'Coach1','Huskies'),(7,'当前赛季','Opponent7',1,0,1,0,'Coach1','Huskies'),(8,'当前赛季','Opponent8',2,1,1,1,'Coach1','Huskies'),(9,'当前赛季','Opponent9',1,2,5,0,'Coach1','Huskies'),(10,'当前赛季','Opponent10',1,0,2,1,'Coach2','Huskies'),(11,'当前赛季','Opponent11',0,3,2,0,'Coach2','Huskies'),(12,'当前赛季','Opponent12',2,2,2,1,'Coach2','Huskies'),(13,'当前赛季','Opponent13',1,1,4,1,'Coach2','Huskies'),(14,'当前赛季','Opponent14',0,4,0,0,'Coach2','Huskies'),(15,'当前赛季','Opponent15',0,2,0,0,'Coach3','Huskies'),(16,'当前赛季','Opponent16',2,1,1,1,'Coach3','Huskies'),(17,'当前赛季','Opponent17',0,1,0,1,'Coach3','Huskies'),(18,'当前赛季','Opponent18',0,3,1,0,'Coach3','Huskies'),(19,'当前赛季','Opponent3',2,0,0,0,'Coach3','Huskies'),(20,'当前赛季','Opponent19',2,0,0,1,'Coach3','Huskies'),(21,'当前赛季','Opponent6',1,1,2,1,'Coach3','Huskies'),(22,'当前赛季','Opponent5',1,0,2,0,'Coach3','Huskies'),(23,'当前赛季','Opponent4',1,0,4,1,'Coach3','Huskies'),(24,'当前赛季','Opponent19',2,1,1,0,'Coach3','Huskies'),(25,'当前赛季','Opponent10',0,2,1,0,'Coach3','Huskies'),(26,'当前赛季','Opponent9',1,1,5,1,'Coach3','Huskies'),(27,'当前赛季','Opponent12',0,3,1,0,'Coach3','Huskies'),(28,'当前赛季','Opponent11',1,0,1,1,'Coach3','Huskies'),(29,'当前赛季','Opponent7',1,1,2,1,'Coach3','Huskies'),(30,'当前赛季','Opponent8',0,2,0,0,'Coach3','Huskies'),(31,'当前赛季','Opponent1',0,2,1,1,'Coach3','Huskies'),(32,'当前赛季','Opponent2',1,1,3,0,'Coach3','Huskies'),(33,'当前赛季','Opponent16',2,0,0,0,'Coach3','Huskies'),(34,'当前赛季','Opponent18',2,1,1,1,'Coach3','Huskies'),(35,'当前赛季','Opponent17',0,1,0,0,'Coach3','Huskies'),(36,'当前赛季','Opponent3',0,2,0,1,'Coach3','Huskies'),(37,'当前赛季','Opponent2',2,1,1,0,'Coach3','Huskies'),(38,'当前赛季','Opponent1',0,1,0,0,'Coach1','Huskies');
/*!40000 ALTER TABLE `Match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewUser`
--

DROP TABLE IF EXISTS `NewUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NewUser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `roles` int NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL,
  `age` int DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `stature` double DEFAULT NULL,
  `position` varchar(32) DEFAULT NULL,
  `pass_football` double NOT NULL,
  `hotshot` double NOT NULL,
  `football_tream` varchar(64) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `join_time` double NOT NULL,
  `run_distance` double NOT NULL,
  `speed_num` double NOT NULL,
  `sprint_distance` double NOT NULL,
  `heart_avg` double NOT NULL,
  `sprint_num` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewUser`
--

LOCK TABLES `NewUser` WRITE;
/*!40000 ALTER TABLE `NewUser` DISABLE KEYS */;
INSERT INTO `NewUser` VALUES (4,'pbkdf2_sha256$390000$euMoN4Yvi8pDjYb9XyuhL5$YE7c9V3E3dYKMGL5BNKGLqd7SG9HHIV7U46g2BBsbVc=',0,'Huskies_D4','','','15016299762@163.com',0,1,'2022-11-08 12:54:00.000000',1,'2022-11-20 07:06:19.368170','default.jpg',21,'15016299762','1',67,183,'7',84,69,'Huskies','2022-11-08 12:54:37.593609',0,0,0,0,70,0),(5,'pbkdf2_sha256$390000$ktCTKGplaMTFgtfuIFEzeu$vZf8HtYYdJr1Kag1s56io0tTuKXzSdnS3h3N6SPBV8o=',0,'詹姆斯','姆斯','詹','15016299762@163.com',0,1,'2022-11-09 08:11:00.000000',2,'2023-09-02 14:45:38.681347','default.jpg',40,'15016299762','1',79,182,'8',0,0,'Opponent','2022-11-09 08:11:35.046830',0,0,0,0,70,0),(7,'pbkdf2_sha256$390000$lL2HcYBkc24ouOMrUOuyTj$ludm1D4YTiQtP2EqwR4yW2PCoItzQYXLLfy3GhCIuUI=',0,'zhang3','','','15016299762@163.com',0,1,'2022-11-09 09:23:00.000000',2,'2023-09-03 13:33:24.763045','avatar/head.jpg',20,'15016299762','1',79,183,'0',0,0,'Huskies','2022-11-09 09:23:13.950152',0,0,0,0,70,0),(8,'pbkdf2_sha256$390000$yCG98hu3VRwFORaQKExEx2$WRV+mCYK8XIObO+xeDJQZtxinJbzXzsz1e5L5aYHUdM=',0,'zhang4','','','15016299762@163.com',0,1,'2022-11-09 09:52:00.000000',1,'2022-11-16 07:17:46.052274','avatar/head.jpg',20,'15016299762','1',70,179,'1',0,0,'Opponent','2022-11-09 09:52:38.631034',0,0,0,0,70,0),(17,'pbkdf2_sha256$390000$inWNuT7PI4jviQ0jHOiSWF$DcDMVb3YlZFYg1grnsjLAumz5tIPO4dDh7b6PZmo8so=',0,'Huskies_D2','Huskies','D2','15016299762@163.com',0,1,'2022-11-14 12:24:00.000000',1,'2022-11-20 07:38:33.517117','avatar/91_18hG0Jw.jpg',24,'15016299762','1',70,178,'8',9854,250,'Huskies','2022-11-14 12:24:30.088418',3000,400,10001,40,75,1900),(18,'pbkdf2_sha256$390000$H4nT9weLBRfQioGeEsSdHW$CoNr0K/afCYaT0fppjU3hw/flOAx6Ie3FyeBCnSFERU=',0,'Huskies_D3','Huskies','D3','15016299762@163.com',0,1,'2022-11-14 12:25:00.000000',1,'2022-11-15 06:51:59.605072','default.jpg',25,'15016299762','1',67,181,'7',0,0,'Huskies','2022-11-14 12:25:45.635026',0,0,0,0,70,0),(19,'pbkdf2_sha256$390000$VzzGDx7UztzTFZrHDxTmmF$GoCmPv985UBJSykoXLuFf0QFsKPPjR+GVJztf8s8sdo=',0,'Huskies_M1','','','15016299762@163.com',0,1,'2022-11-14 12:28:00.000000',1,'2022-11-20 07:07:52.154712','default.jpg',23,'15016299762','1',67,178,'4',0,0,'Huskies','2022-11-14 12:28:15.456341',0,0,0,0,70,0),(20,'pbkdf2_sha256$390000$7OJ5EY76fPyoTlBOG4BYXo$fTj0TWQklq1c8f18SvCMngxNybTlfWe+2pHFEM+UG8w=',0,'Huskies_M2','','','15016299762@163.com',0,1,'2022-11-14 12:51:00.000000',1,'2022-11-20 07:08:17.061794','default.jpg',24,'15016299762','1',67,177,'5',0,0,'Huskies','2022-11-14 12:51:47.447917',0,0,0,0,70,0),(21,'pbkdf2_sha256$390000$xlsoFYW2P0RVknAoAMN4cB$gdUycNJEcC5HzV3m+xPFApsiYTiVXU0skWIj/rvnGrs=',0,'Huskies_M3','','','15016299762@163.com',0,1,'2022-11-14 12:52:00.000000',1,'2022-11-14 12:53:14.512627','default.jpg',22,'15016299762','1',64,177,'6',0,0,'Huskies','2022-11-14 12:52:38.309294',0,0,0,0,70,0),(22,'pbkdf2_sha256$390000$QfgdtFK74bNtWZwzC0XXJm$KG9I6EUizOFOSeQXLwn+CrigK5L0VVmcUkQsaFVwi9U=',0,'Huskies_F1','','','15016299762@163.com',0,1,'2022-11-14 12:53:00.000000',1,'2022-11-20 07:06:54.453632','default.jpg',21,'15016299762','1',64,182,'0',0,0,'Huskies','2022-11-14 12:53:30.648100',0,0,0,0,70,0),(23,'pbkdf2_sha256$390000$RlQsJyKF3HQXI4iBMaQH9y$MIt20QvWnf11IbprRWy//+LCW/DNmb+/Np0eMFLf0Ho=',0,'Huskies_F2','','','15016299762@163.com',0,1,'2022-11-14 12:54:00.000000',1,'2022-11-20 07:07:06.788848','default.jpg',20,'15016299762','1',64,183,'1',0,0,'Huskies','2022-11-14 12:54:17.841525',0,0,0,0,70,0),(24,'pbkdf2_sha256$390000$UDhF69E0ltkfuEZzYuxBU7$D4GIXzdg2XDjCtwV+xtBoyHrCgfcOBZL8RGaGnHFfTw=',0,'Huskies_F3','','','15016299762@163.com',0,1,'2022-11-14 12:55:00.000000',1,'2022-11-14 12:56:01.359747','default.jpg',22,'15016299762','1',70,177,'1',0,0,'Huskies','2022-11-14 12:55:21.395711',0,0,0,0,70,0),(25,'pbkdf2_sha256$390000$HJLiZgQYEMlcOinFsUzZeB$a/0wGr4IjS5ZLMz/zH4BOWGtNNd16WW04qDvDdqv2TA=',0,'Huskies_G1','','','15016299762@163.com',0,1,'2022-11-15 03:46:00.000000',1,'2022-11-15 03:47:42.842453','default.jpg',23,'15016299762','1',80,180,'10',0,0,'Huskies','2022-11-15 03:46:52.092306',0,0,0,0,70,0),(26,'pbkdf2_sha256$390000$HCOAbt1dm2rDErF38HYdcb$caKRlPI7jGRmsEUqBHuCbHRuBvAihDxDE6wwJDRlTLY=',0,'Huskies_D1','','','15016299762@163.com',0,1,'2022-11-16 07:22:00.000000',1,'2023-09-03 15:20:01.967952','avatar/head.jpg',22,'15016299762','1',70,180,'9',11038,235,'Huskies','2022-11-16 07:22:49.665024',3400,381,9017,57,76,1995),(27,'pbkdf2_sha256$390000$YILMWvMzqjn2ZWeir3qX1x$U6lFsptmU9i6ti5nNC67mNJIhModYbXzXA+oP4aGcqM=',0,'Huskies_D5_替补','','','15016299762@163.com',0,1,'2022-11-20 05:48:00.000000',1,'2022-11-20 07:06:38.411679','default.jpg',23,'15016299762','1',78,181,'8',0,0,'Huskies','2022-11-20 05:48:36.749739',0,0,0,0,70,0),(28,'pbkdf2_sha256$390000$ntD08WNcKGqaKIr2R74Wj3$QKeginY3d6Ebobtp/MyifxrUEo8kLfCLN58ThhuWDiI=',0,'Huskies_M4_替补','','','15016299762@163.com',0,1,'2022-11-20 06:21:00.000000',1,'2022-11-20 07:07:37.747709','default.jpg',21,'15016299762','1',76,180,'5',0,0,'Huskies','2022-11-20 06:21:39.352231',0,0,0,0,70,0),(30,'pbkdf2_sha256$390000$eFZ71RYl70aJOPycSDrIFC$1K4b1KRA70dxmGAq3Xa21cYWp8+TGRH8Yxr+ToCSWGM=',0,'Huskies_F5_替补','','','15016299762@163.com',0,1,'2022-11-20 09:38:00.000000',1,'2022-11-20 10:55:40.526593','default.jpg',22,'15016299762','1',67,187,'1',0,0,'Huskies','2022-11-20 09:38:30.530264',0,0,0,0,70,0),(31,'pbkdf2_sha256$390000$wzJ3jYeOYXLkRaukZGzoXq$WEfBxwyEhesQcoaX7dJg/WnfhVCkvjgu0gEIqfuIV5E=',1,'admin1','','','15016299762@163.com',1,1,'2023-03-07 12:11:18.723985',1,'2023-03-07 12:27:49.374352','default.jpg',NULL,'',NULL,NULL,NULL,NULL,0,0,NULL,'2023-03-07 12:11:18.724036',0,0,0,0,70,0),(32,'pbkdf2_sha256$390000$vxkzUplVVUHrkwt9TwFLKa$CGhyXjMogw9edimtkrgkXZFgM4ptVB4uKA7TdIv3svg=',1,'zhang99','','','15016299762@163.com',1,1,'2023-05-13 09:27:32.614726',1,'2023-05-13 09:27:44.535607','default.jpg',NULL,'',NULL,NULL,NULL,NULL,0,0,NULL,'2023-05-13 09:27:32.614752',0,0,0,0,70,0),(33,'pbkdf2_sha256$390000$6Ga0k98CMZNIVJqHnRudNo$WqlL5Swgf2mSxSffR9BRrbp8YIEqn1T88DLfAWhdvGA=',0,'张仕禹','肖','加深','11@qq.com',0,1,'2023-05-13 09:29:00.000000',1,'2023-06-01 06:56:44.476287','avatar/head_TZC08wK.jpg',21,'15016299762','1',70,180,'7',11038,235,'嘉应学院','2023-05-13 09:29:03.202124',3400,381,9017,57,76,1995),(34,'pbkdf2_sha256$390000$QJNDkyjuc8pywwTymmpg9l$x40FqGSNE3pA4TvOMS3kIz13H95fpTXwrCQn1iSN4lI=',0,'徐健强','徐','健强','12@163.com',0,1,'2023-05-13 09:31:00.000000',1,'2023-05-13 11:31:59.144626','default.jpg',21,'15016299762','1',71,181,'8',0,0,'嘉应学院','2023-05-13 09:31:43.591173',0,0,0,0,70,0),(35,'pbkdf2_sha256$390000$jdVIAXQMPDl890TqC1e7yH$eM2hI109E50lwP8KN0zpaiu64i5TgGGRLFGbQdqaVo8=',0,'翁永基','','','11@qq.com',0,1,'2023-05-13 09:37:00.000000',1,'2023-05-13 11:31:13.282912','default.jpg',21,'15016299762','1',71,179,'7',0,0,'嘉应学院','2023-05-13 09:37:36.082812',0,0,0,0,70,0),(36,'pbkdf2_sha256$390000$btEkSTBzo7YXK4ZXyxVnvM$tf4ZJiwfe7GVC1Egr1YHMSqx/hD6kKsw/DFoib+JCq0=',0,'王钟敏','','','15016299762@163.com',0,1,'2023-05-13 09:39:00.000000',1,'2023-09-02 14:20:10.287056','avatar/91_VkGVrfU.jpg',21,'15016299762','1',70,180,'4',9854,250,'嘉应学院','2023-05-13 09:39:06.984895',3000,400,10001,40,75,1900),(37,'pbkdf2_sha256$390000$g8TDZrSwIC1suAmqeb6QJH$MPk1BguBzDqtDMmS2nJCIzYcADnAeNspUtW6y0p4rGA=',0,'庄申杰','','','11@qq.com',0,1,'2023-05-13 09:40:00.000000',1,'2023-05-13 11:32:23.666733','default.jpg',20,'15016299762','1',70,181,'5',0,0,'嘉应学院','2023-05-13 09:40:29.262212',0,0,0,0,70,0),(38,'pbkdf2_sha256$390000$wGrleFvtRsMCSl4WVRjhfU$waXOyqVu4N74kp9C/tDrLqdxiPjckm47DbsKIED8BkE=',0,'潘康迪','','','11@qq.com',0,1,'2023-05-13 09:41:00.000000',1,'2023-05-13 11:31:40.822007','default.jpg',21,'15016299762','1',70,181,'6',0,0,'嘉应学院','2023-05-13 09:41:34.187003',0,0,0,0,70,0),(39,'pbkdf2_sha256$390000$vN3x52lhWpYs2y9Hsu0lxN$ZnamuPupPidCx2INAjyxiLTkvzRv4l+op1V5IDP/Sgw=',0,'赖文彬','','','11@qq.com',0,1,'2023-05-13 09:42:00.000000',1,'2023-05-13 11:30:13.850094','default.jpg',21,'15016299762','1',70,181,'0',0,0,'嘉应学院','2023-05-13 09:42:33.677228',0,0,0,0,70,0),(40,'pbkdf2_sha256$390000$JivtZQpZoMqpESn4aCguS1$j/jjPID48AvyJA66H66ATF6wgeuLGJWrRQDCFB6Qx0g=',0,'胡宗棋','','','11@qq.com',0,1,'2023-05-13 09:43:00.000000',1,'2023-05-13 11:30:51.097754','default.jpg',21,'15016299762','1',70,181,'1',0,0,'嘉应学院','2023-05-13 09:43:42.989457',0,0,0,0,70,0),(41,'pbkdf2_sha256$390000$IjUA5iy8UbZMnIbQLlW01g$pW86JQiiL3prXABr3bC4ZCOASaBal8FeMQ1gA+e3O9Q=',0,'张敏','','','11@qq.com',0,1,'2023-05-13 09:44:00.000000',1,'2023-05-13 11:32:11.793961','default.jpg',21,'15016299762','1',70,181,'1',0,0,'嘉应学院','2023-05-13 09:44:37.896901',0,0,0,0,70,0),(42,'pbkdf2_sha256$390000$5mBUde3RYKybIDa4AbsuGZ$jDMNwW0jc86o63pzZhDGdWFl1llMTyQTyL+AUica9+o=',0,'梁永康','','','11@qq.com',0,1,'2023-05-13 09:45:00.000000',1,'2023-05-13 11:31:50.369626','default.jpg',21,'15016299762','1',70,181,'10',0,0,'嘉应学院','2023-05-13 09:45:32.686442',0,0,0,0,70,0),(43,'pbkdf2_sha256$390000$xdfUA3DoNTzWIo8xRoQFSO$D/WpxnR5BnAlca8aUmegUi4f91huo6s4iT1LHVMusHI=',0,'谢绍强','','','11@qq.com',0,1,'2023-05-13 09:46:00.000000',1,'2023-05-13 11:30:35.338478','default.jpg',21,'15016299762','1',70,181,'9',0,0,'嘉应学院','2023-05-13 09:46:30.808150',0,0,0,0,70,0),(44,'pbkdf2_sha256$390000$tnMkk0a3aimth0cdSWpF27$HZ28auJbr6oh5jl1FjY0RKBjIhhBN7VDEwOnUMNv7Qc=',0,'赖宇辉','','','11@qq.com',0,1,'2023-05-13 11:24:00.000000',2,'2023-05-25 12:50:03.580838','avatar/coach.jpg',40,'15016299762','1',70,181,'0',0,0,'嘉应学院','2023-05-13 11:24:00.928872',0,0,0,0,70,0),(45,'pbkdf2_sha256$390000$tvlolwrIq8aysRNBPxuRRJ$yOIINShQaM/tugMsAx1NyJtWnMddOhPXVS9tWTps2KA=',0,'惠','','','11@qq.com',0,1,'2023-05-13 12:03:00.000000',2,'2023-05-17 10:06:04.029758','default.jpg',45,'15016299762','1',70,181,'0',0,0,'x1大学','2023-05-13 12:03:24.663112',0,0,0,0,70,0),(46,'pbkdf2_sha256$390000$RKzVUOFcuG8I8woitxZBRs$23pvvmeUGoGluyqZTT24XlSEIVY97WiMCs2nEvXG3K4=',0,'韶','','','11@qq.com',0,1,'2023-05-13 12:04:00.000000',2,'2023-05-17 10:06:39.395441','default.jpg',22,'15016299762','1',70,181,'0',0,0,'x3学院','2023-05-13 12:04:53.932101',0,0,0,0,70,0),(47,'pbkdf2_sha256$390000$0zDqMM8XCL9mwMWaPntmB0$i4qC7zBFyvGlpajR5pVoxPmA4+lt9YZaWYDlNBGxbLo=',0,'暨','','','11@qq.com',0,1,'2023-05-13 12:05:00.000000',2,'2023-05-17 10:07:11.094622','default.jpg',23,'15016299762','1',70,181,'0',0,0,'x2大学','2023-05-13 12:05:50.508462',0,0,0,0,70,0),(48,'pbkdf2_sha256$390000$7drSIzLwzLj9nXhDmys2J9$64YpxAAVhtznu7x2f4UERwVePO7NaOhwLqOBthwrCP8=',1,'zhangshiyu','','','15016299762@163.com',1,1,'2023-05-25 07:33:36.415128',1,'2023-05-25 07:33:51.922228','default.jpg',NULL,'',NULL,NULL,NULL,NULL,0,0,NULL,'2023-05-25 07:33:36.415152',0,0,0,0,70,0),(49,'pbkdf2_sha256$390000$QIRde5yBlHthHgtWM3VvZy$fYPO+DDSi+WfaoXWrdPE0wkwOLTIA/X1kAs3ntZKCsM=',1,'zhe','','','15016299762@163.com',1,1,'2023-09-02 14:36:14.664983',1,'2023-09-02 14:36:35.710481','default.jpg',NULL,'',NULL,NULL,NULL,NULL,0,0,NULL,'2023-09-02 14:36:14.665008',0,0,0,0,70,0),(57,'pbkdf2_sha256$390000$DFtcTNqS4gP6huVtvgkcwm$SxYLbs08TD4uAeS7lGkkMhB8r/gQTtSHD1+Nj5Cw/lo=',0,'Opponent2_D1','','','15016299762@163.com',0,1,'2023-09-03 16:04:39.034408',1,'2023-09-03 16:05:21.037831','avatar/91.jpg',21,'15016299762','1',71,181,'5',10000,200,'Opponent2','2023-09-03 16:04:39.034434',2000,300,5000,50,70,1000);
/*!40000 ALTER TABLE `NewUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewUser_groups`
--

DROP TABLE IF EXISTS `NewUser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NewUser_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `newuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewUser_groups_newuser_id_group_id_8f91bf01_uniq` (`newuser_id`,`group_id`),
  KEY `NewUser_groups_group_id_ed5abec8_fk_auth_group_id` (`group_id`),
  CONSTRAINT `NewUser_groups_group_id_ed5abec8_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `NewUser_groups_newuser_id_175f240f_fk_NewUser_id` FOREIGN KEY (`newuser_id`) REFERENCES `NewUser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewUser_groups`
--

LOCK TABLES `NewUser_groups` WRITE;
/*!40000 ALTER TABLE `NewUser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewUser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewUser_user_permissions`
--

DROP TABLE IF EXISTS `NewUser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NewUser_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `newuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewUser_user_permissions_newuser_id_permission_id_5ba84b5c_uniq` (`newuser_id`,`permission_id`),
  KEY `NewUser_user_permiss_permission_id_ca431de8_fk_auth_perm` (`permission_id`),
  CONSTRAINT `NewUser_user_permiss_permission_id_ca431de8_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `NewUser_user_permissions_newuser_id_24ec3080_fk_NewUser_id` FOREIGN KEY (`newuser_id`) REFERENCES `NewUser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewUser_user_permissions`
--

LOCK TABLES `NewUser_user_permissions` WRITE;
/*!40000 ALTER TABLE `NewUser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewUser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tream`
--

DROP TABLE IF EXISTS `Tream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tream` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `tream_emblem` varchar(100) NOT NULL,
  `area` varchar(256) NOT NULL,
  `chairman` varchar(256) NOT NULL,
  `famous_person` varchar(1024) NOT NULL,
  `founding_time` varchar(256) NOT NULL,
  `home_hall` varchar(256) NOT NULL,
  `main_honor` varchar(1024) NOT NULL,
  `owner` varchar(256) NOT NULL,
  `tream_history` longtext NOT NULL DEFAULT (_utf8mb3'1'),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tream`
--

LOCK TABLES `Tream` WRITE;
/*!40000 ALTER TABLE `Tream` DISABLE KEYS */;
INSERT INTO `Tream` VALUES (1,'Huskies','tream/Huskies_fsK9daq_8yqUnBw.jpg','纽约(美国)','卡尔杜恩','孔帕尼　图雷　席尔瓦　德布劳内','1880年','伊蒂哈德球场','１次联赛冠军 8次足总杯冠军 8次联赛杯冠军','城市足球集团','<span style=\"font-size:20px;margin-left: 500px;font-weight: bolder;text-align: center;\"><br/>发展历史</span>\r\n              <div style=\"margin-top:20px;margin-bottom: 20px;\">\r\n                <p\r\n                  v-html=\"\'&nbsp;&nbsp;&nbsp;足球起源于中国，早在2300多年前的战国时期，一些城市已经非常流行蹴鞠活动，蹴鞠当时已经作为国家军队训练士兵的重要体能和技巧训练项目。战国以来，蹴鞠历经千年发展，在唐宋时期达到顶峰，直至清代中期最终在中国逐渐消亡。\'\">\r\n                </p>\r\n                <h4 style=\"margin-bottom:5px;\">民国时期</h4>\r\n                <p\r\n                  v-html=\"\'&nbsp;&nbsp;&nbsp;&nbsp;1913年，第一届远东运动会（亚运会前身）在菲律宾首都马尼拉举行，这是中国足球队第一次参加正式国际比赛，最终获得亚军。从此，中国足球在亚洲鲜遇对手。1913年至1934年，远东运动会一共召开了10届，第一届获得亚军，21年间，中国队蝉联9届远东国家足球冠军。<br/>\'\">\r\n                </p>\r\n                <p\r\n                  v-html=\"\'&nbsp;&nbsp;&nbsp;当时的远东运动会，每逢中国足球队与日本队交战，动辄打出5比1，4比0的大比分。上海远东运动会，中国队5比0大胜日本队获得冠军，在日本举行的远东运动会上，中国队5比1战胜日本队再次获得冠军。为此，日本报纸的号外标题为，“中国足球铁军，堂堂十年连胜”。从此，“中国铁军”的赞誉不胫而走。<br/>\'\">\r\n                </p>\r\n                <p\r\n                  v-html=\"\'&nbsp;&nbsp;&nbsp;1936年8月，中国足球队参加第11届德国柏林奥运会，当时的中华全国体育协进会成立了足球选拔委员会，考察全国各地的顶尖足球选手。经过3个月的选拔，1936年4月，中国足球队22人名单正式公布，“亚洲球王”李惠堂、香港歌星谭咏麟的父亲谭江柏名列其中。然而，中国足球队的奥运之行却充满艰辛，差点儿因5万元而难以成行……为解燃眉之急，中华全国体育协进会的所有工作人员集体出动，分别向国民政府中央各院部、全国各省市地方政府寻求支持。经过一番在全国从上到下、铺天盖地式的“化缘行动”共筹集资金17万元，但仍缺5万元。又是一番紧急讨论，注定了中国足球队的第一次走向世界之旅多灾多难。协进会决定，足球队自筹资金，提前两个月到东南亚各国进行表演赛，以门票收入作为参加奥运会的费用。1936年5月，中国队从上海出发，转战越南、印尼、缅甸、印度等国，在两个月的27场比赛中，24胜3平，不少当地华侨甚至焚香拜佛，欢迎中国队的到来。<br/>\'\">\r\n                </p>\r\n                <p\r\n                  v-html=\"\'&nbsp;&nbsp;&nbsp;为了节约经费，在两个月的旅途中，乘船时选择最低等的舱位，住宿则找最便宜的旅馆里最便宜的房间，有时床位不够还需打地铺。到达“卖艺地点”后，大家不是担心强队不与中国队比赛，就是害怕天公不作美，导致雨天无法比赛，因为这样都难以吸引大量观众，减少门票收入。更滑稽的是，为了防止当地主办单位从中作弊，比赛时，替补球员都要到赛场的各个入口处“监票”。当时，还有个不成文的规定，获胜一方可获得更多的门票收入，所以，主力队员一场不落地把27场比赛踢完，即使有伤病或体力难支，也要咬牙坚持。整个东南亚之旅，中国队共获得近20万港币的收入。到达印度孟买后，中国队给因经费短缺而滞留国内的中国奥运会代表团汇去5万元，解决了整个中国奥运会代表团的经费问题。双方在孟买会合后，一起前往德国首都柏林。 德国柏林奥运会足球赛制一开始就直接抽签踢淘汰赛，若首场告负便打道回府。一路历尽磨难，中国队首场便对阵英国队。不过，英国人的情报工作做得好，中国队东南亚之行的骄人战绩，他们早有耳闻，李惠堂的名声，也早已传至英伦三岛，为此英国王室特地给英国足球队发来专电以资鼓励。<br/>\'\">\r\n                </p>\r\n                <p\r\n                  v-html=\"\'&nbsp;&nbsp;&nbsp;1936年8月6日下午5点半，中国队第一次亮相世界赛场，与英国队在柏林康姆逊球场狭路相逢。当时的比赛观众多达万人。比赛一开始，早已洞悉中国队虚实的英国队便严密看防李惠堂，使其纵有绝技也难以施展。上半场，中国队攻势凌厉，一次下底传中后的破门，可惜被裁判吹为越位。两队以0比0结束上半场后，中场休息时，在场的西方记者纷纷在广播中感叹，中国队出人意料，不同凡响。下半场，双方易地再战，由于在东南亚连续征战，再加上抵达柏林后舟车劳顿，中国队逐渐体力不支，最终以0比2告负，就此结束了中国足球在世界赛场的“首演”。尽管输给英国队，但脚下技术、战术素养丝毫不弱。赛后，中国队的表现引起欧洲各足球强国的关注，英国报纸也对中国队评价极高，于是，欧洲各国邀请中国队前去比赛的电报接连飞来。在法国巴黎，中国队战平法国职业联赛中的强队巴黎红星队，李惠堂技惊四座。赛后的晚宴上，红星队的总经理拿着工作合同直接找到李惠堂，让他留在巴黎，并许以优厚待遇。当时，国际奥委会禁止职业球员参加奥运会。李惠堂一口回绝道：“我还要继续代表中国参加奥运会。”<br/>在英国伦敦，中国队战平英国职业联赛冠军球队哥灵顿队，观战的阿森纳队主教练指着李惠堂惋惜地说道：“要是你再年轻10岁就好了，我一定把你留在阿森纳队，无论如何也不让你回中国。”　\'\">\r\n                </p>\r\n              </div>\r\n              <h4>现代发展</h4>\r\n              <div>\r\n                <p\r\n                  v-html=\"\'&nbsp;&nbsp;&nbsp;中国队长期以来一直在争取在亚洲地区获得锦标，在亚洲杯、亚运会等亚洲级别的赛事中取得过不错的成绩，在世界杯亚洲区预选赛中出线过一次。足球运动在中国很受欢迎，大约有3千万观众收看了2002年世界杯足球赛里中国参加的比赛。收看2004年亚洲杯足球赛决赛的观众甚至超过了这个数字。<br/>\'\">\r\n                </p>\r\n                <p v-html=\"\'&nbsp;&nbsp;&nbsp;2005年，中国赢得了2005年东亚足球锦标赛的男子组冠军和澳门东亚运动会的男子足球项目金牌。<br/>\'\"></p>\r\n                <p\r\n                  v-html=\"\'&nbsp;&nbsp;&nbsp;在2010年2月10日的东亚四强赛上，中国3-0完胜韩国，打破32年逢韩不胜的魔咒。2010年2月14日，2010年第4届东亚锦标赛在日本东京国立霞丘竞技场鸣金收兵。经过三轮共六场比赛的激烈争夺，最终中国队以2胜1平且“零失球”的不败战绩，夺得了本届赛事的冠军。<br/>\'\">\r\n                </p>\r\n                <p v-html=\"\'&nbsp;&nbsp;&nbsp;2022年2月6日，中国女足在2022印度女足亚洲杯决赛中3-2击败韩国队，时隔16年再夺女足亚洲杯冠军。\'\"></p>\r\n              </div>'),(6,'Opponent3','tream/Opponent3_O30tg21.jpg','1','1','1','1','1','1','11','1'),(7,'Opponent2','tream/Opponent2.jpeg','1','1','1','1','1','1','11','1'),(8,'x3学院','tream/521113b158bd96e8abf382720bec3d6b_uRvKwrx.jpg','1','1','1','1','1','1','11','1'),(9,'Opponent4','tream/Opponent4.jpg','1','1','1','1','1','1','11','1'),(10,'Opponent14','tream/Opponent1_E0gsPpV.jpg','东莞','张三','詹姆斯','1978','东莞体育场','１次联赛冠军 8次足总杯冠军 8次联赛杯冠军','东莞足球俱乐部','11'),(11,'x2大学','tream/cffe8532a5265058cd65d2ad6d34b0be_ryh8yQU.jpeg','河北','王六','王四','1978','河北体育场','1次联赛冠军','河北足球俱乐部','11'),(12,'Opponent1','tream/62b5e928eff31f6f7f0a7a2074bae477_6tZZgOO.jpg','新疆','刘六','刘四','1978','新疆体育场','1次联赛冠军','新疆足球俱乐部','11'),(13,'嘉应学院','tream/jiaying.jpg','梅州(广东)','赖炳森','谭茹殷　钟秀东 叶楚贵','1996年','嘉应学院中和足球场','3次广东省冠军 4次全国大学生锦标赛前八','嘉应学院','11');
/*!40000 ALTER TABLE `Tream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add coach',6,'add_coach'),(22,'Can change coach',6,'change_coach'),(23,'Can delete coach',6,'delete_coach'),(24,'Can view coach',6,'view_coach'),(25,'Can add user',7,'add_newuser'),(26,'Can change user',7,'change_newuser'),(27,'Can delete user',7,'delete_newuser'),(28,'Can view user',7,'view_newuser'),(29,'Can add notification',8,'add_notification'),(30,'Can change notification',8,'change_notification'),(31,'Can delete notification',8,'delete_notification'),(32,'Can view notification',8,'view_notification'),(33,'Can add match',9,'add_match'),(34,'Can change match',9,'change_match'),(35,'Can delete match',9,'delete_match'),(36,'Can view match',9,'view_match'),(37,'Can add football tream',10,'add_footballtream'),(38,'Can change football tream',10,'change_footballtream'),(39,'Can delete football tream',10,'delete_footballtream'),(40,'Can view football tream',10,'view_footballtream');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_NewUser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_NewUser_id` FOREIGN KEY (`user_id`) REFERENCES `NewUser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (162,'2023-03-07 12:22:34.233772','16','admin',3,'',7,31),(163,'2023-03-07 12:33:47.535915','5','詹姆斯',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',7,31),(164,'2023-03-07 12:33:51.813677','5','詹姆斯',2,'[]',7,31),(165,'2023-03-07 12:34:51.964636','26','Huskies_D1',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',7,31),(166,'2023-03-07 12:34:54.810843','26','Huskies_D1',2,'[]',7,31),(167,'2023-05-13 09:29:03.352349','33','肖嘉深',1,'[{\"added\": {}}]',7,32),(168,'2023-05-13 09:31:13.740415','33','肖嘉深',2,'[{\"changed\": {\"fields\": [\"Email address\", \"First name\", \"Last name\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u5934\\u50cf\", \"\\u7403\\u961f\", \"\\u52a0\\u901f\\u6b21\\u6570\", \"\\u51b2\\u523a\\u6b21\\u6570\", \"\\u51b2\\u523a\\u8ddd\\u79bb(\\u516c\\u91cc)\", \"\\u5c04\\u95e8\", \"\\u8dd1\\u52a8\\u8ddd\\u79bb(\\u516c\\u91cc)\", \"\\u624b\\u673a\\u53f7\", \"\\u4f20\\u7403\"]}}]',7,32),(169,'2023-05-13 09:31:43.738211','34','徐健强',1,'[{\"added\": {}}]',7,32),(170,'2023-05-13 09:33:06.881227','34','徐健强',2,'[{\"changed\": {\"fields\": [\"Email address\", \"First name\", \"Last name\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\"]}}]',7,32),(171,'2023-05-13 09:34:52.829880','34','徐健强',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(172,'2023-05-13 09:35:11.048778','33','肖嘉深',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(173,'2023-05-13 09:36:55.773332','33','肖嘉深',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u573a\\u65f6\\u957f(\\u5206\\u949f)\", \"\\u52a0\\u901f\\u6b21\\u6570\", \"\\u5e73\\u5747\\u5fc3\\u7387\", \"\\u51b2\\u523a\\u6b21\\u6570\", \"\\u51b2\\u523a\\u8ddd\\u79bb(\\u516c\\u91cc)\", \"\\u5c04\\u95e8\", \"\\u8dd1\\u52a8\\u8ddd\\u79bb(\\u516c\\u91cc)\", \"\\u4f20\\u7403\"]}}]',7,32),(174,'2023-05-13 09:37:36.228404','35','翁永基',1,'[{\"added\": {}}]',7,32),(175,'2023-05-13 09:38:31.767898','35','翁永基',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\"]}}]',7,32),(176,'2023-05-13 09:39:07.122773','36','王钟敏',1,'[{\"added\": {}}]',7,32),(177,'2023-05-13 09:39:50.133524','36','王钟敏',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\"]}}]',7,32),(178,'2023-05-13 09:40:29.419853','37','庄申杰',1,'[{\"added\": {}}]',7,32),(179,'2023-05-13 09:41:12.862892','37','庄申杰',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\"]}}]',7,32),(180,'2023-05-13 09:41:34.332858','38','潘康迪',1,'[{\"added\": {}}]',7,32),(181,'2023-05-13 09:42:14.031031','38','潘康迪',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\"]}}]',7,32),(182,'2023-05-13 09:42:33.823182','39','赖文彬',1,'[{\"added\": {}}]',7,32),(183,'2023-05-13 09:43:17.698462','39','赖文彬',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\"]}}]',7,32),(184,'2023-05-13 09:43:43.139361','40','胡宗棋',1,'[{\"added\": {}}]',7,32),(185,'2023-05-13 09:44:25.890310','40','胡宗棋',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\"]}}]',7,32),(186,'2023-05-13 09:44:38.041937','41','张敏',1,'[{\"added\": {}}]',7,32),(187,'2023-05-13 09:45:17.454211','41','张敏',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\"]}}]',7,32),(188,'2023-05-13 09:45:32.822147','42','梁永康',1,'[{\"added\": {}}]',7,32),(189,'2023-05-13 09:46:10.892535','42','梁永康',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\"]}}]',7,32),(190,'2023-05-13 09:46:30.942095','43','谢绍强',1,'[{\"added\": {}}]',7,32),(191,'2023-05-13 09:47:11.582782','43','谢绍强',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\"]}}]',7,32),(192,'2023-05-13 09:53:16.319613','13','FootballTream object (13)',1,'[{\"added\": {}}]',10,32),(193,'2023-05-13 11:24:01.089307','44','赖宇辉',1,'[{\"added\": {}}]',7,32),(194,'2023-05-13 11:25:19.673719','44','赖宇辉',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\", \"\\u89d2\\u8272\"]}}]',7,32),(195,'2023-05-13 11:25:46.302534','44','赖宇辉',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',7,32),(196,'2023-05-13 11:30:13.854790','39','赖文彬',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(197,'2023-05-13 11:30:23.334510','44','赖宇辉',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(198,'2023-05-13 11:30:35.344559','43','谢绍强',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(199,'2023-05-13 11:30:51.102800','40','胡宗棋',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(200,'2023-05-13 11:31:00.137858','33','肖嘉深',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(201,'2023-05-13 11:31:13.287266','35','翁永基',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(202,'2023-05-13 11:31:28.415250','36','王钟敏',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(203,'2023-05-13 11:31:40.826556','38','潘康迪',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(204,'2023-05-13 11:31:50.375480','42','梁永康',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(205,'2023-05-13 11:31:59.150033','34','徐健强',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(206,'2023-05-13 11:32:11.805626','41','张敏',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(207,'2023-05-13 11:32:23.670019','37','庄申杰',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(208,'2023-05-13 11:34:35.798480','13','FootballTream object (13)',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\\u540d\\u79f0\"]}}]',10,32),(209,'2023-05-13 11:37:20.718329','8','FootballTream object (8)',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\\u540d\\u79f0\"]}}]',10,32),(210,'2023-05-13 11:37:55.574537','11','FootballTream object (11)',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\\u540d\\u79f0\"]}}]',10,32),(211,'2023-05-13 11:38:20.763650','12','FootballTream object (12)',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\\u540d\\u79f0\"]}}]',10,32),(212,'2023-05-13 11:40:05.473154','38','Match object (38)',2,'[{\"changed\": {\"fields\": [\"\\u5df1\\u65b9\\u7403\\u961f\\u961f\\u4f0d\", \"\\u5bf9\\u65b9\\u961f\\u4f0dID\"]}}]',9,32),(213,'2023-05-13 11:41:02.262472','37','Match object (37)',2,'[{\"changed\": {\"fields\": [\"\\u5df1\\u65b9\\u7403\\u961f\\u961f\\u4f0d\", \"\\u5bf9\\u65b9\\u961f\\u4f0dID\"]}}]',9,32),(214,'2023-05-13 11:41:44.500154','36','Match object (36)',2,'[{\"changed\": {\"fields\": [\"\\u5df1\\u65b9\\u7403\\u961f\\u961f\\u4f0d\", \"\\u5bf9\\u65b9\\u961f\\u4f0dID\"]}}]',9,32),(215,'2023-05-13 11:43:14.330625','8','FootballTream object (8)',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\\u540d\\u79f0\"]}}]',10,32),(216,'2023-05-13 11:43:35.716281','38','Match object (38)',2,'[{\"changed\": {\"fields\": [\"\\u5bf9\\u65b9\\u961f\\u4f0dID\"]}}]',9,32),(217,'2023-05-13 12:03:24.800132','45','惠',1,'[{\"added\": {}}]',7,32),(218,'2023-05-13 12:04:00.758996','45','惠',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\", \"\\u89d2\\u8272\"]}}]',7,32),(219,'2023-05-13 12:04:54.117949','46','韶',1,'[{\"added\": {}}]',7,32),(220,'2023-05-13 12:05:27.032526','46','韶',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\", \"\\u89d2\\u8272\"]}}]',7,32),(221,'2023-05-13 12:05:50.663254','47','暨',1,'[{\"added\": {}}]',7,32),(222,'2023-05-13 12:06:36.140251','47','暨',2,'[{\"changed\": {\"fields\": [\"Email address\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u4f53\\u91cd\", \"\\u8eab\\u9ad8\", \"\\u4f4d\\u7f6e\", \"\\u7403\\u961f\", \"\\u624b\\u673a\\u53f7\", \"\\u89d2\\u8272\"]}}]',7,32),(223,'2023-05-13 12:12:00.684150','36','王钟敏',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u573a\\u65f6\\u957f(\\u5206\\u949f)\", \"\\u52a0\\u901f\\u6b21\\u6570\", \"\\u5e73\\u5747\\u5fc3\\u7387\", \"\\u51b2\\u523a\\u6b21\\u6570\", \"\\u51b2\\u523a\\u8ddd\\u79bb(\\u516c\\u91cc)\", \"\\u5c04\\u95e8\", \"\\u8dd1\\u52a8\\u8ddd\\u79bb(\\u516c\\u91cc)\", \"\\u4f20\\u7403\"]}}]',7,32),(224,'2023-05-13 12:13:07.000770','36','王钟敏',2,'[{\"changed\": {\"fields\": [\"\\u5934\\u50cf\"]}}]',7,32),(225,'2023-05-17 09:41:53.094060','12','FootballTream object (12)',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\\u540d\\u79f0\"]}}]',10,32),(226,'2023-05-17 09:42:05.121123','11','FootballTream object (11)',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\\u540d\\u79f0\"]}}]',10,32),(227,'2023-05-17 09:42:14.715243','12','FootballTream object (12)',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\\u540d\\u79f0\"]}}]',10,32),(228,'2023-05-17 09:42:22.483279','11','FootballTream object (11)',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\\u540d\\u79f0\"]}}]',10,32),(229,'2023-05-17 09:42:35.442002','8','FootballTream object (8)',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\\u540d\\u79f0\"]}}]',10,32),(230,'2023-05-17 09:43:34.017813','38','Match object (38)',2,'[{\"changed\": {\"fields\": [\"\\u5bf9\\u65b9\\u961f\\u4f0dID\"]}}]',9,32),(231,'2023-05-17 09:43:43.448270','37','Match object (37)',2,'[{\"changed\": {\"fields\": [\"\\u5bf9\\u65b9\\u961f\\u4f0dID\"]}}]',9,32),(232,'2023-05-17 09:43:56.708886','36','Match object (36)',2,'[{\"changed\": {\"fields\": [\"\\u5bf9\\u65b9\\u961f\\u4f0dID\"]}}]',9,32),(233,'2023-05-17 09:44:41.269554','45','惠',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(234,'2023-05-17 09:45:00.271337','47','暨',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(235,'2023-05-17 09:45:20.939654','46','韶',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\"]}}]',7,32),(236,'2023-05-25 07:34:26.640877','33','张仕禹',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',7,48),(237,'2023-09-02 14:39:44.769261','12','FootballTream object (12)',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\\u540d\\u79f0\"]}}]',10,49),(238,'2023-09-02 14:40:21.327148','12','FootballTream object (12)',2,'[{\"changed\": {\"fields\": [\"\\u7403\\u961f\\u540d\\u79f0\"]}}]',10,49),(239,'2023-09-02 14:42:35.674082','38','Match object (38)',2,'[{\"changed\": {\"fields\": [\"\\u5df1\\u65b9\\u7403\\u961f\\u961f\\u4f0d\", \"\\u5bf9\\u65b9\\u961f\\u4f0dID\"]}}]',9,49),(240,'2023-09-02 14:42:54.688002','37','Match object (37)',2,'[{\"changed\": {\"fields\": [\"\\u5df1\\u65b9\\u7403\\u961f\\u961f\\u4f0d\", \"\\u5bf9\\u65b9\\u961f\\u4f0dID\"]}}]',9,49),(241,'2023-09-02 14:43:14.594143','36','Match object (36)',2,'[{\"changed\": {\"fields\": [\"\\u5df1\\u65b9\\u7403\\u961f\\u961f\\u4f0d\", \"\\u5bf9\\u65b9\\u961f\\u4f0dID\"]}}]',9,49),(242,'2023-09-03 13:31:23.400272','7','zhang3',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',7,49),(243,'2023-09-03 13:33:03.859908','7','zhang3',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',7,49),(244,'2023-09-03 14:37:07.556027','26','Huskies_D1',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',7,49),(245,'2023-09-03 14:43:09.265551','26','Huskies_D1',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',7,49),(246,'2023-09-03 14:53:26.377868','26','Huskies_D1',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',7,49),(247,'2023-09-03 14:56:16.349499','26','Huskies_D1',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',7,49),(248,'2023-09-03 15:14:24.913323','26','Huskies_D1',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',7,49),(249,'2023-09-03 15:19:11.174391','26','Huskies_D1',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',7,49),(250,'2023-09-03 15:27:14.630509','50','Oppenent1_D3',3,'',7,49),(251,'2023-09-03 15:27:53.072892','51','zhang0',3,'',7,49),(252,'2023-09-03 15:44:26.263833','52','Opponent2_D1',2,'[{\"changed\": {\"fields\": [\"\\u89d2\\u8272\"]}}]',7,49),(253,'2023-09-03 15:51:11.791632','52','Opponent2_D1',3,'',7,49),(254,'2023-09-03 15:51:11.799024','53','zhang0',3,'',7,49),(255,'2023-09-03 15:54:33.957142','54','Opponent2_D1',3,'',7,49),(256,'2023-09-03 15:58:30.630195','55','Opponent2_D2',3,'',7,49),(257,'2023-09-03 16:02:04.674035','56','Opponent2_D1',3,'',7,49);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(10,'tream','footballtream'),(9,'tream','match'),(6,'user','coach'),(7,'user','newuser'),(8,'user','notification');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-11-08 12:43:49.776600'),(2,'contenttypes','0002_remove_content_type_name','2022-11-08 12:43:49.886274'),(3,'auth','0001_initial','2022-11-08 12:43:50.220182'),(4,'auth','0002_alter_permission_name_max_length','2022-11-08 12:43:50.307993'),(5,'auth','0003_alter_user_email_max_length','2022-11-08 12:43:50.320464'),(6,'auth','0004_alter_user_username_opts','2022-11-08 12:43:50.331086'),(7,'auth','0005_alter_user_last_login_null','2022-11-08 12:43:50.346368'),(8,'auth','0006_require_contenttypes_0002','2022-11-08 12:43:50.363089'),(9,'auth','0007_alter_validators_add_error_messages','2022-11-08 12:43:50.375994'),(10,'auth','0008_alter_user_username_max_length','2022-11-08 12:43:50.389943'),(11,'auth','0009_alter_user_last_name_max_length','2022-11-08 12:43:50.407350'),(12,'auth','0010_alter_group_name_max_length','2022-11-08 12:43:50.436403'),(13,'auth','0011_update_proxy_permissions','2022-11-08 12:43:50.451386'),(14,'auth','0012_alter_user_first_name_max_length','2022-11-08 12:43:50.467443'),(15,'user','0001_initial','2022-11-08 12:43:51.382447'),(16,'admin','0001_initial','2022-11-08 12:43:51.603151'),(17,'admin','0002_logentry_remove_auto_add','2022-11-08 12:43:51.615805'),(18,'admin','0003_logentry_add_action_flag_choices','2022-11-08 12:43:51.631926'),(19,'notifications','0001_initial','2022-11-08 12:43:51.646617'),(20,'notifications','0002_auto_20150224_1134','2022-11-08 12:43:51.675539'),(21,'notifications','0003_notification_data','2022-11-08 12:43:51.691200'),(22,'notifications','0004_auto_20150826_1508','2022-11-08 12:43:51.705811'),(23,'notifications','0005_auto_20160504_1520','2022-11-08 12:43:51.721839'),(24,'notifications','0006_indexes','2022-11-08 12:43:51.764231'),(25,'notifications','0007_add_timestamp_index','2022-11-08 12:43:51.780961'),(26,'notifications','0008_index_together_recipient_unread','2022-11-08 12:43:51.803960'),(27,'sessions','0001_initial','2022-11-08 12:43:51.872570'),(28,'tream','0001_initial','2022-11-08 12:43:51.997975'),(29,'tream','0002_fullevents','2022-11-08 12:43:52.093143'),(30,'tream','0003_remove_passingevents_match_id_delete_fullevents_and_more','2022-11-08 12:43:52.237352'),(31,'user','0002_alter_newuser_coa','2022-11-08 12:46:34.873464'),(32,'user','0003_alter_coach_phone','2022-11-08 12:57:52.227746'),(33,'user','0004_remove_newuser_coa_newuser_tream_emblem_and_more','2022-11-09 08:09:29.826575'),(34,'user','0005_remove_newuser_tream_emblem','2022-11-10 11:04:38.266255'),(35,'tream','0004_footballtream','2022-11-10 11:09:53.026356'),(36,'tream','0005_match_home_name','2022-11-11 08:42:46.431179'),(37,'user','0006_alter_newuser_position','2022-11-14 12:38:27.389235'),(38,'tream','0006_footballtream_area_footballtream_chairman_and_more','2022-11-15 08:49:04.415486'),(39,'tream','0007_footballtream_tream_history','2022-11-15 10:45:36.870580'),(40,'user','0007_remove_newuser_body_remove_newuser_control_and_more','2022-11-17 06:59:04.863635'),(41,'user','0008_alter_newuser_join_time_alter_newuser_run_distance_and_more','2022-11-17 07:02:24.293871'),(42,'user','0009_newuser_heart_avg_newuser_sprint_num','2022-11-17 11:32:36.410661');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('66uvvw8x5w1phpt8saqd3y3m0bu0jrbm','.eJy9VE2PmzAU_CsR5yTY2MZmj7332FNZRc9fwS3gig_1sMp_rx1SKUtJg5LVnp54M4zfzDO8JQcYh-ow9qY7OJ28JCRLttdNCeqnaSOif0B79Hvl26Fzch8p-wva7796beovF-47gQr6KrzNGTIkp4XAlNKMSYOsVpQXVijELMaEZahQhmlOIBNISZYZLnPKsLGFABJFG9OOfdD6_lYmLTSmTF42ZVKWI2eZCCXPCC-Tbei5MOWEWug2FnbKdao2E9jEWfsIPyk0dvWEpaAb16bRb9qa3-c6UUDrb_9jBfzClJ0Brbqxkc-Odtpunnj5NcLG6YhihLIFtQJhiKLcsIdT8oOzTsHgfHsvqmvqJ-W13uE8LzJv4AV5IYGei8KhMCpUnJSI88Cckn_P7OOZfeVMrXdQD_cvslH0hkoMtd8pf1xeT_xy02Pnx1-393LFWb-QDzC9dLNXGZ0vhc0bdOkS5NiGQi3Sz_1VcqnPzjWTD3wvQ8i1SRsYVHV7I9ek9StZ73AhnvWu5mHzpT1SRP5O9GhG1vtBQl1PT3eyek_-pMzWu5xnJuaN_PSanP4A-SxoXQ:1pzDga:flSwKun7BM3urti9nKvnx6-4OUxPwg3Y00b007awuiw','2023-05-31 09:43:08.176758'),('bcl2bgvkvq3j8gvcxaq044d61i6ml6gq','.eJy9VMtu2zAQ_BWDZ9t6kBLJHHvvsacoMJYvi60kFnogh8D_HlJyAEeVa8EOclpoZzTamSX1hg4w9OVh6HR7sAo9IcLR9rIpQP7RTUDUb2iObi9d07dW7ANlf0a7_U-ndPXjzP0kUEJX-reZIZiplFEmgKuYaooxVzhLeQI0IYYaQY3MmTAcS0yxUMB1rAkHSLHio2itm6HzWs9vBWqg1gV62hSoKAaapcyXPMW0QFvfs37KCTXQbgzspG1lpSewDrN2AX5QaGirCYtA1baJgt-o0a9jnSig1K__sTx-ZopWg5LtUItHRzttNw-8_BJgbVVAkzhOF9R4nEAQpTq7OyXXW2Ml9NY1t6K6pH5TXusdzvPC80ayIO_vABmLTHzJCJNhUszGgSnB_36zC9_sSqsrtYOqv32QtSRXVEKo3U664_J6ws2Njq0b_l7fywVn_UK-wPTSyV5ldL6UbN4gS4cgT4wvxMTqsb9KLtToXGXijvvS-1zrqIZeltc3cklav5L1DhfiWe9qHjZd2iOJ8cdE92ZknOsFVNX0dCOrz-Rvymy9y3lmbN7ITy_o9A6472lw:1qcpXr:fLsIP4t0iA4eISnzf7wdiTKOFN_mxnptiHt6qcgBs7k','2023-09-17 16:01:51.781818'),('bi6xsz6dz5rcix7vrojmts5zddgcldm3','.eJy9VE2PmzAQ_SuRz0nAwcZkj7332FNZRWPPOLgFXPGhHlb578UhlbKUNChZ7WnEvMfzvDeGN3aAvisOfUvNwSF7YQln6-umBvOT6oDgD6iPfmt83TVObwNle0Hb7VePVH65cN8JFNAWw9t7vUclrRJAMo4FCI0WeYJCpIKjiLm2WoKyRipNYIGAzA45N5IkKaGCaEV13w5a399yVkNFOXtZ5SzPeyV32VDSXaJyth56bphyRC00Kwsb4xpT0ghWYdY2wE8K9U05YhFg5eoo-I1q-n2uIwUQv_2PNeAXpm4I0DR9pZ8d7bRePfHya4DJYUB5HO9m1PYxhyCqSD6cku-cdQY65-t7UV1TPymv5Q6neSXTBp-RzzSIczF8KFJkJkyaZOeBlUj-PbMNZ7aFoxI3UHb3LzIZcUMlhNpujD_Oryd8udGx8f2v23u54ixfyAeYnrvZi4xOlyKnDTF3CVJuhyJsjM_9VVKNZ-co9QPfSzfkWkUVdKa4vZFr0vKVLHc4E89yV9Ow1dweRZz8nejRjKz3nYayHJ_uZPWe_EmZLXc5zSybNtLTKzv9AT5talc:1pZWWq:lCbJFEVPb49S6qPfAYwpzDw_iV6fefAyEkgvAOPL1Ks','2023-03-21 12:34:52.005711'),('c5ddx0t7yfukgbkgelwebtshvr1hc77e','.eJy9VMuOozAQ_JXI5yRgsLGZ49znOKclitqv4F3AIx7aQ5R_XztkpQxLNigZzalFV1HuqjYc0R6GvtwPnW73VqEXhDO0vm4KkL90ExD1E5qD20rX9K0V20DZXtBu--aUrl4v3E8CJXSlf5sA4bnkkmKRKaZyxjNIIeeSJ5lgKsGCGEMV6FiZmOUpZiaRVAijcaopzYNorZuh81o_jgVqoNYFelkVqCgGRhPuS5akrEBr37N-yhE10K4MbKRtZaVHsA6zdgF-UmhoqxGLQNW2iYLfqNG_z3WkgFLv_2N5_MIUrQYl26EWz452Wq-eeHkXYG1VQHEcJzNqeYwhiDJNH07J9dZYCb11zb2orqnflNdyh9O80mkDz8hzAeRcJPaFEi7DpCk_D8xI-u-ZXTizK62u1Aaq_v5F1pLcUAmhdhvpDvPrCV9udGjd8HF7L1ec5Qv5AtNzN3uR0elS6LRB5i5Bho0vxMTqub9KJtTZuaLige-l97nWUQ29LG9v5Jq0fCXLHc7Es9zVNGw2t0cSp38nejQj41wvoKrGpztZfSZ_U2bLXU4z49NGdtqh0x-oNmmQ:1owwf9:zQrPgKaUqpeUgZYCUgCcT67iORFJT8tBw6EupjtXAxs','2022-12-05 02:35:59.700258'),('on7kadsklh3mhon7gfhd7wb3ruh4dr4t','.eJy9VE1vozAQ_SuRz0nA2MZuj3vfY0-ligaPCW4BV3yohyr_fe2QlVKWbFBS9TRi3uN53hvDJ9nB0Je7oTPtziJ5JFyR9XkzB_1mmoDgKzR7t9Wu6VubbwNle0K77W-Hpvp14n4RKKEr_duSxkCZ0QIQGEqBhVQikQWnKCGlMk0ZppQy0GniO0aoBwTJecwxUbGiQbQ2zdB5refPjDRQm4w8rjKSZYMUifIlTZjMyNr3rJ9yRAtoVwVstG11ZUawDrN2Ab5TaGirEYsAa9tEwW_UmI9jHSmA-PQ_lsdPzLw1gLod6vze0Q7r1R0vvwTYWAwojeNkRu0hphBEpRE3p-R6W1gNvXXNtajOqT-U13KH07zYtEFn5FUO_Fg09UVwpcOkTB0Hlpz9e2YXzuxKayrcQNVfv8hG8wsqIdRuo91-fj3hy432rRveL-_ljLN8Id9geu5mLzI6XYqYNvjcJUhp4QsvYrzvr5LmeHSOIr_he-l9rnVUQ6_Lyxs5Jy1fyXKHM_EsdzUNW87tkcfs70S3ZlQ41-dQVePTlay-kn8os-Uup5mpaSM9vJDDH0dPaIc:1q4cyC:wwEulYdoFP4JoHGJhuoU7VNTk9WWPFoSbQK-g5gLEDM','2023-06-15 07:43:40.484566');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notification`
--

DROP TABLE IF EXISTS `user_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `level` varchar(20) NOT NULL,
  `unread` tinyint(1) NOT NULL,
  `actor_object_id` varchar(255) NOT NULL,
  `verb` varchar(255) NOT NULL,
  `description` longtext,
  `target_object_id` varchar(255) DEFAULT NULL,
  `action_object_object_id` varchar(255) DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `emailed` tinyint(1) NOT NULL,
  `data` longtext,
  `action_object_content_type_id` int DEFAULT NULL,
  `actor_content_type_id` int NOT NULL,
  `recipient_id` bigint NOT NULL,
  `target_content_type_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_notification_action_object_conten_d5982ee1_fk_django_co` (`action_object_content_type_id`),
  KEY `user_notification_actor_content_type_i_48d92e5b_fk_django_co` (`actor_content_type_id`),
  KEY `user_notification_target_content_type__cbea6356_fk_django_co` (`target_content_type_id`),
  KEY `user_notification_unread_38ace3a4` (`unread`),
  KEY `user_notification_timestamp_4a105777` (`timestamp`),
  KEY `user_notification_public_c5ed2e68` (`public`),
  KEY `user_notification_deleted_c0f46976` (`deleted`),
  KEY `user_notification_emailed_608349d0` (`emailed`),
  KEY `user_notification_recipient_id_unread_2de716b0_idx` (`recipient_id`,`unread`),
  CONSTRAINT `user_notification_action_object_conten_d5982ee1_fk_django_co` FOREIGN KEY (`action_object_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_notification_actor_content_type_i_48d92e5b_fk_django_co` FOREIGN KEY (`actor_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_notification_recipient_id_c9620f7c_fk_NewUser_id` FOREIGN KEY (`recipient_id`) REFERENCES `NewUser` (`id`),
  CONSTRAINT `user_notification_target_content_type__cbea6356_fk_django_co` FOREIGN KEY (`target_content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notification`
--

LOCK TABLES `user_notification` WRITE;
/*!40000 ALTER TABLE `user_notification` DISABLE KEYS */;
INSERT INTO `user_notification` VALUES (8,'info',1,'16','平台用户通知','尊敬的用户:\r\n   欢迎您使用足球训练分析平台',NULL,NULL,'2023-03-07 12:07:46.245741',1,0,0,NULL,NULL,7,7,NULL);
/*!40000 ALTER TABLE `user_notification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-04 21:34:31
