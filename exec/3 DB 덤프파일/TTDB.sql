-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: i7a809.p.ssafy.io    Database: TTDB
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `share_comment_code` bigint NOT NULL AUTO_INCREMENT,
  `created_date` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `modified_date` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `share_comment_author` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `share_comment_content` text COLLATE utf8mb3_bin,
  `share_code` bigint DEFAULT NULL,
  PRIMARY KEY (`share_comment_code`),
  KEY `FKecmdpctqgrmis43rkb8855mbm` (`share_code`),
  CONSTRAINT `FKecmdpctqgrmis43rkb8855mbm` FOREIGN KEY (`share_code`) REFERENCES `share` (`share_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting`
--

DROP TABLE IF EXISTS `meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting` (
  `meet_code` bigint NOT NULL AUTO_INCREMENT,
  `meet_author` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `meet_content` text COLLATE utf8mb3_bin,
  `meet_date` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `meet_game_is_start` bit(1) DEFAULT NULL,
  `meet_py_num` int DEFAULT NULL,
  `meet_py_time` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `meet_title` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `room_code` bigint DEFAULT NULL,
  PRIMARY KEY (`meet_code`),
  KEY `FKnthmb0v02b1uubwf80yqba0o4` (`room_code`),
  CONSTRAINT `FKnthmb0v02b1uubwf80yqba0o4` FOREIGN KEY (`room_code`) REFERENCES `room_info` (`room_code`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting`
--

LOCK TABLES `meeting` WRITE;
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
INSERT INTO `meeting` VALUES (1,'lich','????????? ???????????? ?????????','2022-08-18T00:11',_binary '',3,'2022-08-18T00:08','????????? ?????????',1),(2,'minseok','dasd','2022-08-18T09:14',_binary '',3,'2022-08-17T09:14','test',2),(3,'?????????','??????!','2022-08-18T09:27',_binary '',6,'2022-08-18T09:27','?????????',3),(4,'?????????','TEST','2022-08-18T10:06',_binary '',6,'2022-08-18T10:07','?????? ?????????',4),(5,'coachAn','???????????? ????????? ????????? ?????? ????????? ????????? ??? ?????? ???????????????...!!\n\n????????? ??? ?????? ????????? ??? ??????????','2022-08-18T10:44',_binary '\0',6,'2022-08-19T13:46','?????? ?????? ?????? ?????? ?????? ??????~~',6),(6,'coachAn','???????????? ????????? ????????? ?????? ????????? ????????? ??? ?????? ???????????????...!!\n\n????????? ??? ?????? ????????? ??? ??????????','2022-08-18T10:44',_binary '\0',6,'2022-08-19T13:46','?????? ?????? ?????? ?????? ?????? ??????~~',7),(7,'coachAn','???????????? ????????? ????????? ?????? ????????? ????????? ??? ?????? ???????????????...!!\n\n????????? ??? ?????? ????????? ??? ??????????','2022-08-18T10:44',_binary '\0',6,'2022-08-19T13:46','?????? ?????? ?????? ?????? ?????? ??????~~',5),(8,'minseok','adsds','2022-08-18T12:51',_binary '',3,'2022-08-17T12:51','testwqew',8),(9,'minseok','dasd','2022-08-18T12:59',_binary '',3,'2022-08-17T12:59','testgm',9),(10,'minseok','dasd','2022-08-18T13:39',_binary '',3,'2022-08-17T13:39','playertest',10),(11,'aaaaaa','aasd','2022-08-18T14:21',_binary '',2,'2022-08-18T14:21','aaaaaa',11),(12,'minseok','dad','2022-08-18T14:47',_binary '',4,'2022-08-18T16:47','pagination test',12),(13,'?????????','????????????','2022-08-18T15:26',_binary '',2,'2022-08-18T15:26','?????? ?????????2',13),(14,'?????????','????????????','2022-08-18T15:27',_binary '',2,'2022-08-18T15:29','?????? ?????????3',14),(15,'?????????','????????????','2022-08-18T15:27',_binary '',5,'2022-08-18T15:28','?????? ?????????4',15),(16,'?????????','????????????','2022-08-18T15:27',_binary '',5,'2022-08-18T15:29','?????? ?????????5',16),(17,'?????????','????????????','2022-08-18T15:27',_binary '',5,'2022-08-18T19:31','?????? ?????????6',17),(18,'?????????','test','2022-08-18T15:35',_binary '',5,'2022-08-18T15:36','?????? ?????????7',18),(19,'?????????','test','2022-08-18T15:35',_binary '',3,'2022-08-18T15:36','?????? ?????????8',19),(20,'?????????','?????????','2022-08-18T16:15',_binary '',2,'2022-08-18T16:15','???????????????9',20),(21,'?????????','??????','2022-08-18T16:20',_binary '',3,'2022-08-18T16:20','???????????????10',21),(22,'?????????','????????????','2022-08-18T16:34',_binary '',5,'2022-08-18T16:34','???????????????21',22),(23,'?????????','????????????','2022-08-18T16:42',_binary '',4,'2022-08-18T16:39','???????????????11',23),(24,'?????????','??????','2022-08-18T16:50',_binary '',3,'2022-08-18T16:50','???????????????12',24),(25,'?????????','????????????','2022-08-18T16:56',_binary '',2,'2022-08-18T16:55','???????????????13',25),(26,'?????????','?????????','2022-08-18T17:00',_binary '',3,'2022-08-18T17:00','??????????????? 14',26),(27,'memetata','???????????? ?????????','2022-08-18T17:20',_binary '',6,'2022-08-18T17:18','??????????????????',27),(28,'?????????','???????????????.','2022-08-18T23:23',_binary '',6,'2022-08-18T23:23','?????????????????????',28),(29,'?????????','??????','2022-08-18T23:38',_binary '',6,'2022-08-18T23:38','??? ?????? ??????',29),(30,'?????????','??????','2022-08-18T23:44',_binary '',6,'2022-08-18T23:44','????????? ??????',30),(31,'?????????','??????','2022-08-19T00:37',_binary '',6,'2022-08-19T00:37','????????? ??????',31),(32,'?????????','ewq','2022-08-19T03:39',_binary '',6,'2022-08-19T03:38','?????? ?????????',32),(33,'lich','?????? TRPG ????????? ??? ???????????????!\n\n?????? ?????? ???????????? ??? ????????????, \n?????? ???????????? ?????? ????????? ???????????????!\n\nTRPG ?????????????????? ??????????????????~~','2022-08-19T10:00',_binary '',4,'2022-08-19T09:00','?????? TRPG ????????? ???!',33),(34,'TT?????????','TT ????????? ???????????? ?????? TRPG ?????? ?????? ?????? ?????????!!','2022-08-19T10:29',_binary '\0',6,'2022-08-19T18:00','???????????? ???????????? TRPG',34),(35,'?????????','?????? ????????? ?????????~!','2022-08-19T10:29',_binary '\0',6,'2022-08-19T14:29','?????? ?????? ????????? ??? ???????????????!',35),(36,'?????????','????????? GM??? ???????????? ????????? ????????? ?????? ?????????~','2022-08-19T10:30',_binary '\0',6,'2022-08-20T13:30','GM ????????? ????????????.. ',36),(37,'beckhem960810@gmail.com','?????? ???????????? ????????????????????? ?????? ?????? ?????????????????? ????????????.','2022-08-19T10:31',_binary '\0',6,'2022-08-20T10:31','TRPG ??????????????? ?????? ?????? ??? ?????????',37),(38,'?????????????????????','????????? ?????? ???????????????!!','2022-08-19T10:32',_binary '\0',5,'2022-08-19T15:36','?????? ????????? ?????????~',38),(39,'??????','Player??? ????????? ???????????? GM??? ????????????????????? ?????? ???????????? ?????????.\n??????????????? ???????????? ?????? ?????? ?????? ??????????????????!!','2022-08-19T10:33',_binary '\0',5,'2022-08-19T16:39','GM ?????? ????????? ???????????? ???????????? ??????...',39),(40,'????????????','?????? ????????? ??? ????????? ????????? ?????? ?????????????????? ????????? ?????????! ?????? ??????!','2022-08-19T10:36',_binary '\0',6,'2022-08-20T14:36','?????? ?????????????????? ??? ?????? ?????? ?????? ???~!',40),(41,'?????????','?????? TRPG ?????? ????????? ???????????????!!\n?????? ?????? ????????? ???????????????!!','2022-08-19T10:39',_binary '',6,'2022-08-19T10:38','?????? ?????? ?????? ?????? ??? ?????????????????',41),(42,'???????????????','????????? enroll time??? ?????????????????????!!','2022-08-19T10:41',_binary '',6,'2022-08-19T10:30','???????????? ????????? ?????? ??? ?????????',42),(43,'metamong','?????????','2022-08-19T11:06',_binary '',6,'2022-08-19T11:05','?????? ?????? ?????? ???',43),(47,'?????????','?????????','2022-08-19T11:13',_binary '',6,'2022-08-18T11:13','??????',47);
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `notice_code` bigint NOT NULL AUTO_INCREMENT,
  `notice_article` text COLLATE utf8mb3_bin,
  `notice_author` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `notice_date` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `notice_title` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`notice_code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'TT ???????????? ???????????? ?????????\n\n1. Meeting ??????????????? ?????? TRPG??? ????????? ??? ????????? ????????????.\n\n2. GM or Player??? ??? ??? ????????? ????????????.\n - GM??? 1??? Player??? ?????? ????????? ????????????.\n\n3. ?????? ?????? ????????? ????????? ????????? ?????? ??? ?????? ????????? ????????? ?????? ????????????.\n\n4. Player?????? ?????? ????????? ??? ???????????? ???????????? Gm??? ??? ?????? ??? ????????? ????????? ??? ?????? ?????? ??????????????? ????????????.\n\n5. Gm??? ????????? ?????? Player?????? ????????? ???????????? ???????????? ???????????? ????????? ?????????.','TT?????????','2022-08-19 09:42','[??????] ????????? ?????? ??????'),(2,'1. ????????? ????????? ex) ???????????? ????????? ??????????????? ???????????? ?????????, ???????????? ??????????????? ????????? ?????? ????????????. ?????? ???????????? ????????? ???????????? ??? ????????? ????????? ?????????. ?????? ?????? ????????? ????????? ???????????????. 2. ????????? ????????????. ex) ??????????????? ?????? ????????? ????????? ?????? ?????? ?????? ?????? ?????? ???????????? ??? ?????? ????????? ????????? ??? ????????????. ????????? ???????????? ??????????????? ????????? ????????? ??? ????????? ????????? ????????? ???????????? ?????? ???????????? ????????????. ??????????????? ?????? ???????????? ?????? ????????? ?????????, ?????? ?????????????????? ??? ????????? ????????? ?????? ????????? ????????? ???????????? ???????????? ???????????? ??????????????????. ???????????? ??????????????? ??? ?????? ????????? ???????????? ????????? ???????????? ????????????. 3. ???????????? ????????????. ex) ???????????? ????????? ???????????? ???????????? ??????????????? ????????? ????????? ???????????? ???????????? ?????? ????????????. ????????? ??????????????? ???????????????, ????????? ??????????????? ?????????. 4. ???????????? ????????????. ex) ???????????? ????????? ???????????????! ????????????, ????????? ??? ?????? ?????? ????????? ?????? ????????? ?????? ?????????, ?????? ????????? ???????????? ?????? ????????? ????????? ????????????. ????????? ???????????? ??? ????????? ?????? ???????????? ????????? ????????? ???????????? ????????????.???','TT?????????','2022-08-19 09:50','[??????] ????????? ????????? ???'),(3,'?????? ???????????? ???????????? ????????? ??? ???????????? ?????? ?????? + ????????? -?????? ???????????? ????????? ??????????????????. 1~3: -3, 4~5: -2, 6~8: -1, 9~12:0, 13~15: +1, 16~17: +2, 18: +3??? ???????????? ???????????? ????????? ????????????.','TT?????????','2022-08-19 09:52','[??????] ?????? ???????????? ?????????'),(5,'TRPG??? ???????????? ????????? ???????????? ??????, ??????, ???????????? ???????????? ????????????. ????????? ???????????? ??? ????????? ?????? ???????????????. ????????? ????????? ???????????? ??? ????????? ??? ????????? ???????????? ???????????????. ????????? ???????????? ???????????? ??????????????? ?????? ???????????? ???????????? ???????????????. ??????????????? ????????? 6-??? ????????? ???, ????????? ????????? ???, ????????? ?????? ????????? ?????? ????????? ?????? ???????????? ????????? ???, ???????????? ????????? ??????????????????.\n\n???????????? ??????, ??????, ????????? ????????? ????????? HP??? ????????? ????????????. ???????????? ??????????????? ???????????? ?????? ???????????? ????????? ????????? ?????? ????????? ??? ?????? ????????? ???????????? ????????? ?????? ????????? ????????? ???????????? ?????????.','TT?????????','2022-08-19 09:57','[??????] ???????????? ?????? ???'),(6,'?????? ?????? - ?????? ????????? ????????? ?????? ????????????. ?????? 1D6??? ???????????? ????????? ?????? ?????? ???????????? ??????, 1D6, 1 ~ 2??? 1??????, 3 ~ 4??? 2??????,			5 ~ 6??? 3?????? ????????? ?????????.????????????????????????????????????????????????????????????                                         \n?????? ????????? ?????? - ???/??????/??????/??? ??????: ????????? + 2????????????????????????         \n             	\n????????? ??? - ????????? ?????? ????????? ?????? ????????? ?????? ?????? ??? ????????? ?????? ????????? ????????? ????????????,?????? ?????? 2D6, 10+ - ????????? ??????, 7 ~ 9 - ???????????? ??????\n			','TT?????????','2022-08-19 10:02','[??????] ?????? ?????? ?????? ??????'),(7,'?????? ??????,	???,	????????? ?????? ???????????? ?????? ????????? ?????? ??????		\n	?????????	????????? ????????? ???. ????????? ?????? ??????????????? ??? ????????? ??????		?????????????????????\n?????????????????????????????????????????????????????????????????????????????????????????????	1.????????????	\"?????? ?????? ??? ????????? ?????????\n* ????????? ????????? 2?????? ?????????\n* ????????? ????????? 2?????? ?????????\"	,2D6,	10+ ?????????(GM??????) ????????? ?????? ????????? ????????? ?????????.????????????????????????????????????????????????????????????\n	2. ?????????	???????????? ???????????? ???????????? ??????	?????? ?????? ,2D6,	10+: ?????? ????????? ?????? ???????????? ??????\n				\"7 ~ 9: ????????? ???????????? ?????? ????????? ??????\n           ????????? ???????????? 1 ~ 2 : 1 / 3~4 : 2 / 5 ~ 6: 3??? ??????\"\n				6 ????????? 6?????? 1??? ?????????.\n	???????????????????????????????????????????????????????????????????????????????????? ??????	????????? + 2		','TT?????????','2022-08-19 10:06','[??????] ????????? ?????? ?????? ??????'),(8,'?????????,	????????? ??? ??? ????????? ????????? ?????? ?????? ????????? ????????????.,	?????? ?????? 2D6,	10+ ????????? ????????? ?????? ??????????????? ????????? ???????????? ??????.\n			7 ~ 9 ????????? ????????? ?????? ??????????????? ?????????.?????????????????????????????????\n????????? ??????,	????????? ?????? ???????????? ????????? ????????? ??? ??? ?????? ?????????.???		\n?????????,	?????? ???,	\"1. ?????? ??????: ?????? ?????? 2D6,\n2. ?????????: ?????? ?????? 2D6\"	\"10+:?????? ?????? ??????\n1. ???????????? 2???\n2. 2????????? ??? ??????\"\n			7 ~9: 2????????? ??? ??????.\n			6-: 1???????????? ??? ???','TT?????????','2022-08-19 10:09','[??????]  ????????? ?????? ?????? ??????'),(9,'??????,	\"????????? ????????? ???????????? ????????????,\n???????????? ?????? +1D6??? ?????????.\n????????? ????????? ????????? ????????? ???????????? -1??? ????????????.\"	,?????? ?????? 2D6,	\"10+ 2??? ??????,\n7 ~ 9 1??? ??????\"??????????????????????????????????????????\n????????? ??????,	???????????? ????????? ??????????????? ????????? ?????? ????????? ??? 	,?????? ?????? 2D6,	10+ ??????,\n			7 ~ 9 ????????? ????????? ????????? ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\n??? ?????????,	\"?????? ????????? ?????? ????????? ????????? ????????? ????????? ????????? ????????? ??? ??????,\n* ?????? ?????? ?????????, ????????? ????????? ???????????????\n* ???????????? ?????? ?????? ???????????????\n* ????????? ?????? ?????????\"	,?????? ?????? 2D6,	10+: ?????? 2???','TT?????????','2022-08-19 10:21','[??????] ?????? ?????? ?????? ??????'),(10,'??? + ??????	\"?????? ??? ?????? ??????\n??????: ????????????(????????? ??????),\n         ????????? ?????????(????????? ?????? ??????),\n         ?????????(????????? ????????? ??????),\n????????? ????????? ?????? ?????? ???????????? ????????? ????????? ????????? ????????? ????????? ?????????. GM ??????\"	?????????????????????????????????????????????????????????????????????????????????????????????\n??????,	?????? ?????? ????????? 1?????? ?????????,	?????? ????????? 1D6??????????????????????????????????????????????????????????????????????????????????????????????????????????????????\n??????,	????????? ?????? ????????? ????????????. ????????? 6?????? 2?????? ?????????, ???????????? 6?????? 1?????? ??????	\"???: ?????? ????????? 2D6\n??????: ?????? ????????? 1D6\"','TT?????????','2022-08-19 10:22','[??????] ?????? ?????? ?????? ??????'),(11,'?????? ?????? ????????? ??? ??? ??? - https://sites.google.com/site/dungeonworldkr/ ???????????????????????????????????????????????????????????????????????????????????????????????????????????????\nD & D ????????? ??? ??? ??? - https://www.dndkr.com/support','TT?????????','2022-08-19 10:27','[??????] TRPG ????????? ?????? ??? ???????????? ?????????');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_char_info`
--

DROP TABLE IF EXISTS `player_char_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_char_info` (
  `py_char_code` bigint NOT NULL AUTO_INCREMENT,
  `py_armor` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `py_class` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `py_curr_hp` int DEFAULT NULL,
  `py_look` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `py_max_hp` int DEFAULT NULL,
  `py_name` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `py_skill_one` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `py_skill_two` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `py_skill_three` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `py_species` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `py_stat_one` int DEFAULT NULL,
  `py_stat_two` int DEFAULT NULL,
  `py_stat_three` int DEFAULT NULL,
  `py_stat_four` int DEFAULT NULL,
  `py_stat_five` int DEFAULT NULL,
  `py_stat_six` int DEFAULT NULL,
  `py_sup_one` int DEFAULT NULL,
  `py_sup_two` int DEFAULT NULL,
  `py_sup_three` int DEFAULT NULL,
  `py_code` bigint DEFAULT NULL,
  `py_value` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `py_weapon` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`py_char_code`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_char_info`
--

LOCK TABLES `player_char_info` WRITE;
/*!40000 ALTER TABLE `player_char_info` DISABLE KEYS */;
INSERT INTO `player_char_info` VALUES (60,'','priest',17,'aaa',17,'aaa','??? + ??????','??????','??????','aaa',11,13,9,8,9,9,0,0,0,12,'good','????????? ?????????'),(62,'','warrior',27,'asd',27,'asd','?????? ??????','?????? ????????? ??????','????????? ???','asd',12,8,17,15,11,6,0,0,0,16,'good','????????? ?????? ??????'),(80,'','hunter',18,'???????????? ???????????? ??????. ?????? ?????? ???????????? ????????? ?????? ??????.',18,'Minseok','?????????','????????? ??????','?????????','??????',11,8,10,10,9,12,0,0,0,3,'good','????????? ???'),(89,'','warrior',23,'???????????? ?????????????????? ????????????.\n?????? ????????? ????????? ?????? ????????? ????????? ??????????????????.',23,'????????????','?????? ??????','?????? ????????? ??????','????????? ???','??????',15,11,13,9,8,7,0,0,0,17,'evil','????????? ?????? ??????'),(93,'','wizard',13,'????????? ?????? ?????? ?????? ?????? ??????. ????????? ????????? ?????? ????????????, ????????? ???????????? ???????????? ?????????',13,'lich','????????????','?????????','????????? ??????','??????',7,13,9,11,9,11,0,0,0,1,'neutral','????????? ??????'),(96,'','thief',14,'asd',14,'asd','??????','????????? ??????','??? ?????????','asd',15,5,8,15,3,5,0,0,0,4,'good','????????? ??????'),(97,'','warrior',26,'beauty',26,'choi','?????? ??????','?????? ????????? ??????','????????? ???','male',10,9,16,7,9,12,0,0,0,7,'evil','????????? ?????? ??????'),(98,'','',6,'??????',6,'??????','','','','??????',12,6,6,7,5,11,0,0,0,15,'good','');
/*!40000 ALTER TABLE `player_char_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_info`
--

DROP TABLE IF EXISTS `room_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_info` (
  `room_code` bigint NOT NULL AUTO_INCREMENT,
  `room_gm_user_code` bigint DEFAULT NULL,
  `room_py1_user_code` bigint DEFAULT NULL,
  `room_py2_user_code` bigint DEFAULT NULL,
  `room_py3_user_code` bigint DEFAULT NULL,
  `room_py4_user_code` bigint DEFAULT NULL,
  `room_py5_user_code` bigint DEFAULT NULL,
  PRIMARY KEY (`room_code`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_info`
--

LOCK TABLES `room_info` WRITE;
/*!40000 ALTER TABLE `room_info` DISABLE KEYS */;
INSERT INTO `room_info` VALUES (1,1,3,4,0,0,0),(2,3,4,9,0,0,0),(3,4,5,1,6,16,0),(4,6,9,1,4,3,0),(5,9,6,6,0,0,0),(6,9,12,6,3,3,3),(7,9,4,4,3,0,0),(8,3,0,0,0,0,0),(9,3,12,6,0,0,0),(10,7,3,4,0,0,0),(11,6,12,0,0,0,0),(12,3,0,0,0,0,0),(13,4,6,0,0,0,0),(14,0,6,0,0,0,0),(15,0,6,16,0,0,0),(16,1,6,0,0,0,0),(17,6,4,16,0,0,0),(18,6,4,0,0,0,0),(19,6,1,7,0,0,0),(20,6,1,0,0,0,0),(21,6,1,4,0,0,0),(22,6,1,0,0,0,0),(23,6,1,4,0,0,0),(24,6,1,0,0,0,0),(25,6,1,0,0,0,0),(26,6,1,7,0,0,0),(27,14,15,3,12,7,6),(28,0,4,6,1,17,0),(29,6,4,1,15,17,0),(30,6,1,4,15,17,3),(31,6,3,15,1,17,4),(32,6,4,1,15,17,0),(33,1,20,5,7,0,0),(34,5,6,0,0,0,0),(35,4,6,23,0,0,0),(36,0,6,0,0,0,0),(37,16,21,7,6,0,0),(38,23,21,0,0,0,0),(39,22,6,0,0,0,0),(40,23,7,22,6,0,0),(41,0,6,0,0,0,0),(42,24,6,15,0,0,0),(43,25,26,6,0,0,0),(47,26,0,0,0,0,0);
/*!40000 ALTER TABLE `room_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share`
--

DROP TABLE IF EXISTS `share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `share` (
  `share_code` bigint NOT NULL AUTO_INCREMENT,
  `created_date` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `modified_date` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `share_author` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `share_content` text COLLATE utf8mb3_bin NOT NULL,
  `share_like` int DEFAULT '0',
  `share_title` varchar(500) COLLATE utf8mb3_bin NOT NULL,
  `share_view` int DEFAULT '0',
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`share_code`),
  KEY `FKhwfan84wqm1mflkf4dp8wcic0` (`user_id`),
  CONSTRAINT `FKhwfan84wqm1mflkf4dp8wcic0` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_code`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share`
--

LOCK TABLES `share` WRITE;
/*!40000 ALTER TABLE `share` DISABLE KEYS */;
INSERT INTO `share` VALUES (3,'2022.08.18 10:47','2022.08.18 10:47','coachAn','???????????????',0,'?????? ????????? ??????????',0,NULL),(6,'2022.08.18 23:17','2022.08.18 23:17','Ssalmon','?????? ?????????',0,'?????? ????????? ????????? ???????',0,NULL),(8,'2022.08.18 23:24','2022.08.18 23:24','Ssalmon','????????? ?????? ?????????',0,'????????? ????????????',0,NULL),(12,'2022.08.19 10:16','2022.08.19 10:16','lich','???????????? ????????? TRPG??? ????????? ??????????????????.\n?????????????????? ???????????? ????????????, ????????? ????????? ?????????????????????...\n????????? ??? ???????????? ????????? ?????? ????????? ?????? ??????????????????!\n?????? ????????? ????????? ????????? ??? ?????????',0,'TRPG ????????? ??????~',0,NULL),(13,'2022.08.19 10:42','2022.08.19 10:42','?????????','?????? ??????????????? ????????? ???????????? ?????? ????????? ????????? ?????? ????????? ???????????? ???????????? ?????????... ???????????? ?????? ???????????????!',0,'TRPG ????????????..',0,NULL);
/*!40000 ALTER TABLE `share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_code` bigint NOT NULL AUTO_INCREMENT,
  `user_authority` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `user_gender` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `user_nickname` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `user_pw` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`user_code`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'','icll@naver.com','male','chung5072','lich','010-9457-5072','$2a$10$xrfJsDKhfj6kThOlNR9tB.OWcdHFZWb59KyeFatVGw.3YdpgE2m6m'),(3,'','ejlieb@hafs.kr','male','chris980','minseok','010-3122-3629','$2a$10$EGX5vtERQcLFXBIw2CsaYuzwUYyOE7hoqMCGBaBlHcB6276UM2VMG'),(4,'','beckhem96@naver.com','male','beckhem96','?????????','010-3916-0639','$2a$10$w5nDIkKRbJEtnftFJ7mH7uKxn162r/gensD4GW1FUPmqiJ4d25GoG'),(5,'rule_admin','jisoo@naver.com','female','adminTT','TT?????????','010-4077-3909','$2a$10$4RGz4gyCcyx/Dd48w18iFu4MOU0e/qPtMlg7/.6G/vdCQgo2rzT92'),(6,'','rover48@hanmail.net','male','rover48','?????????','010-4651-4793','$2a$10$f402D/TwrHvGUBHKfzQiHefWcYeaQAmpin0uZ2kcwZ2FoBmRSMrmW'),(7,'','ssafycon@ssafy.com','male','ssafycon','ssafycon','010-0000-0000','$2a$10$pnotlJZs3P7/GgTju4o6I.s3ZiC9TAZ8x1XHxgorKX2vBYbxTCDdC'),(8,'rule_admin','adminssafycon@ssafy.com','none','adminssafycon','adminssafy','010-1111-1111','$2a$10$t2PsFdHk1o.oXYqHzl9RWOvfapTXD8Kfc2Fs2xqHzjO2Zg0o1/sIC'),(9,'','ssafyAn@ssafy.com','male','ssafycoachAn','coachAn','010-2222-2222','$2a$10$QaMPoxfUcEkTXasSVlvUP.C5Fbd2DqBUmu5Dz75y4gxz5nTjhjM6q'),(10,'','ssafyChoi@ssafy.com','female','ssafycoachChoi','coachChoi','010-3333-3333','$2a$10$uM5LIFlfnrSc3RmtzjlMZO9UeSplvo29Fr.LVepJ0Sytf6N3jloBi'),(11,'rule_admin','ssafycoach@ssafy.com','none','adminssafycoach','admincoach','010-5555-5555','$2a$10$f8iUc4kuJDENAzvX8EpDBedeBPdibvI.KZLPByttveYC7O/i/stG.'),(12,'','aaaaa@aaaa.com','male','aaaaaa','aaaaaa','01012348514','$2a$10$40Izj1.Rbwn/2fijpLvN2eJrCWm7e3dvDb5CJoUXijNEE40YFI1.u'),(13,'','coryonronda@gmail.com','','108094751922524763502','?????????','','$2a$10$3ggVY.bmldrUuOSbPW4PCe4Cm7bW8B32cVY4cO0t0Cmnx4Kguiup6'),(14,'','12312gg@naver.com','male','test5','memetata','01012345677','$2a$10$sBPr85FOM5zLRQfKkNaV7ebHnjZ3hSuyt8/XHWaLP2o/pskXbYYpO'),(15,'','12312gg@naver.com','female','jisoo','memetata','01012345677','$2a$10$MjDn6qMMZilu90XpUqma/.Ih6Bjy312/VHsLqi.BTSar1PhskQX36'),(16,'','beckhem960810@gmail.com',NULL,'beckhem960810@gmail.com','beckhem960810@gmail.com',NULL,NULL),(17,'','yeonstar1@gmail.com','male','ysy','Ssalmon','010-2236-2110','$2a$10$fEkdaQEyKP0llHxG2gGZLePelAxx9jj7ctJwkTpWyJMM//4KTiFgu'),(18,'','metamong@ssafy.com','female','jisoolee','jisoo','010-1234-5678','$2a$10$jZcwfkwzS9BLTK78jWwjKOglyQJQUaodyK3njyXX71F7EQduy8gMS'),(19,'','takajii98@gmail.com',NULL,'takajii98@gmail.com','takajii98@gmail.com',NULL,NULL),(20,'','icll5072@gmail.com',NULL,'icll5072@gmail.com','icll5072@gmail.com',NULL,NULL),(21,'','ssafy@naver.com','none','ssafy123','?????????????????????','010-1234-4567','$2a$10$jo0Sj6aaCRIVWh9YTNVqcO8fBDf8Oqpxd3nwe0Ky5zWbjoKB.uzze'),(22,'','dlguscd@naver.com','male','dlguscd','??????','010-4651-4793','$2a$10$utcn1DOKseeteuk/V8zxyugdkX5fkrFhvDuS5tCtLP8/tIYIFzQ9.'),(23,'','17a809@naver.com','female','beckhem996','????????????','01039160639','$2a$10$a/vIS2oXPauFcGPgcA2lieE6ibznY/cXn4tXSPaFCLZga2ZX2qJ8O'),(24,'','lwt1996@naver.com','','beckhem966','???????????????','01039160639','$2a$10$EkIgEy/eDNQZCmvoHBLemOoWbC7Q1MNs0zufS9wDb1NyluUAE1yF6'),(25,'','ssafyzzang@ssafy.com','none','ssafyzzang','metamong','010-1234-5678','$2a$10$aO/Ztx4mqKMh4FPKfiGiaeQc3AtENvUicuAiRwSvWAPiaNgDo19xm'),(26,'','ssafy123@ssafy.com','female','jisoo2','?????????','010-1234-5678','$2a$10$q.O6sczXvtJnwXSfeBZyUe0AElVm0vKS4bPPDCxIApikJHlNmunCa');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-19 11:39:30
