-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: strata-prod-cluster-do-user-13428204-0.b.db.ondigitalocean.com    Database: strata
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '65863379-9f15-11ed-b053-eebf6496f9f2:1-334';

--
-- Current Database: `strata`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `strata` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `strata`;

--
-- Table structure for table `mgr_agent_xref`
--

DROP TABLE IF EXISTS `mgr_agent_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mgr_agent_xref` (
  `S_NO` int NOT NULL AUTO_INCREMENT,
  `FIELD_AGENT_ID` int NOT NULL,
  `MANAGER_ID` int DEFAULT NULL,
  `CREATED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`S_NO`,`FIELD_AGENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mgr_agent_xref`
--

LOCK TABLES `mgr_agent_xref` WRITE;
/*!40000 ALTER TABLE `mgr_agent_xref` DISABLE KEYS */;
INSERT INTO `mgr_agent_xref` VALUES (1,111213123,1115,NULL),(2,1234,1115,'2022-02-11 00:00:00');
/*!40000 ALTER TABLE `mgr_agent_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_dtl`
--

DROP TABLE IF EXISTS `ticket_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_dtl` (
  `TICKET_ID` bigint NOT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `CUSTOMER` varchar(45) DEFAULT NULL,
  `JOB_SITE` varchar(45) DEFAULT NULL,
  `START_MI` int DEFAULT NULL,
  `END_MI` int DEFAULT NULL,
  `TOTAL_MI` int DEFAULT NULL,
  `TOTAL_HRS` int DEFAULT NULL,
  `TICKET_STATUS` varchar(45) DEFAULT NULL,
  `FIELD_AGENT_ID` int NOT NULL,
  `MANAGER_ID` int DEFAULT NULL,
  `CREATED_DT` datetime DEFAULT NULL,
  `WORK_DESC` varchar(255) DEFAULT NULL,
  `perdiem` varchar(7) DEFAULT 'false',
  PRIMARY KEY (`TICKET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_dtl`
--

LOCK TABLES `ticket_dtl` WRITE;
/*!40000 ALTER TABLE `ticket_dtl` DISABLE KEYS */;
INSERT INTO `ticket_dtl` VALUES (17209,'2023-02-15 02:57:05','9999-12-31 05:30:00','asdf','Sdf',12345,0,0,69924123,'warning',111213123,1115,'2023-02-03 02:57:28','dfgh','false'),(17230,'2023-02-16 02:57:05','9999-12-31 05:30:00','asdf','Sdf',12345,0,0,69924123,'warning',111213123,1115,'2023-02-16 02:57:28','dfgh','false'),(777777,'2023-02-02 21:27:05','9999-12-31 00:00:00','Seinfield','CT',12345,0,0,69924123,'warning',111213123,1115,'2023-02-02 21:27:28','Testing Netapp','false'),(888888,'2023-02-02 21:27:05','9999-12-31 00:00:00','Seinfield','CT',12345,0,0,69924123,'warning',111213123,NULL,'2023-02-02 21:27:28','Testing Netapp','false'),(999999,'2023-02-02 21:27:05','9999-12-31 00:00:00','Seinfield','CT',12345,0,0,69924123,'warning',111213123,NULL,'2023-02-02 21:27:28','Testing Netapp','false'),(222728000,'2023-02-15 22:27:05','9999-12-31 00:00:00','Seinfield','CT',12345,0,0,69924123,'warning',111213123,1115,'2023-02-15 22:27:28','Testing Netapp','false'),(1675373247693,'2023-02-03 02:57:05','9999-12-31 05:30:00','asdf','Sdf',12345,0,0,69924123,'warning',111213123,NULL,'2023-02-03 02:57:28','dfgh','false'),(1675429888231,'2023-02-04 01:11:14','9999-12-31 00:00:00','Ryan','CT',1300,0,0,69924095,'NEW',111213123,NULL,'2023-02-03 13:11:28','Check status','false'),(1675452064086,'2023-02-03 16:50:40','9999-12-30 18:30:00','Noam','AZ',10000,10100,100,69924098,'COMPLETED',111213123,NULL,'2023-02-03 19:21:04','Test refresh','false'),(1675452379457,'2023-02-03 19:26:02','9999-12-31 00:00:00','Fred','NY',1000,0,0,69924101,'NEW',111213123,NULL,'2023-02-03 19:26:19','Check refresh','false'),(1675452573831,'2023-02-03 19:29:15','9999-12-31 00:00:00','Hulk','NW',1200,0,0,69924101,'NEW',111213123,NULL,'2023-02-03 19:29:34','Tesr refresh','false'),(1675452967603,'2023-02-03 19:35:50','9999-12-31 00:00:00','Paul','CT',1000,0,0,69924101,'NEW',111213123,NULL,'2023-02-03 19:36:08','Test refresh','false'),(1675453355458,'2023-02-03 19:42:20','9999-12-31 00:00:00','Martin','MA',1200,0,0,69924101,'NEW',111213123,NULL,'2023-02-03 19:42:35','Test','false'),(1675453965098,'2023-02-03 19:52:31','9999-12-31 00:00:00','Harley','CT',1200,0,0,69924101,'NEW',111213123,NULL,'2023-02-03 19:52:45','Test','false'),(1675486914532,'2023-02-04 05:01:17','9999-12-31 00:00:00','Test','Che',130,0,0,69924091,'NEW',111213123,NULL,'2023-02-04 05:01:55','Test','false'),(1675495321013,'2023-02-04 10:21:46','9999-12-31 00:00:00','dye','ryrud',1235,0,0,69924086,'NEW',111213123,NULL,'2023-02-04 07:22:01','chdue','false'),(1675499088507,'2023-02-04 09:24:07','2023-02-04 11:25:12','sgs','shsh',1234,1245,11,8,'COMPLETED',111213123,NULL,'2023-02-04 08:24:49','etebs','false'),(1675499089851,'2023-02-04 09:24:07','2023-02-04 09:26:14','sgs','shsh',1234,12343,11109,6,'COMPLETED',111213123,NULL,'2023-02-04 08:24:50','etebs','false'),(1675509410812,'2023-02-04 12:16:21','9999-12-31 00:00:00','hdhx','hdxh',1234,0,0,69924084,'NEW',111213123,NULL,'2023-02-04 11:16:51','wery','false'),(1676662426264,'2023-02-17 14:03:13','9999-12-30 18:30:00','Hahwh','Bbsh',52,12,-40,69923765,'COMPLETED',1234,1115,'2023-02-17 19:33:46','Gagga\nBehehhehe\n\n','false'),(1676662664967,'2023-02-17 22:36:58','9999-12-31 00:00:00','Aravibd','Dallas',1234,0,0,69923762,'NEW',1234,1115,'2023-02-17 19:37:45','Hahaha hahahaha\nHh hahaha h\n\nHeheh\n','true'),(1676662666494,'2023-02-17 22:36:58','9999-12-31 00:00:00','Aravibd','Dallas',1234,0,0,69923762,'NEW',1234,1115,'2023-02-17 19:37:47','Hahaha hahahaha\nHh hahaha h\n\nHeheh\n','true'),(1676817865251,'2023-02-19 09:14:13','9999-12-30 18:30:00','fajfafau','ngzgjs',654624,456456,-198168,69923722,'COMPLETED',1234,1115,'2023-02-19 14:44:25','gndkydyk','true'),(1676818360319,'2023-02-19 14:52:04','9999-12-31 00:00:00','kakakakak','kakakakaka',465465,0,0,69923722,'NEW',1234,1115,'2023-02-19 14:52:40','asgdhdjdhs bsbsjsj njsjsbsbsnsnsnsnsnshshsh\nshsjdhdjdhdjdj\nwhsjdjdj\nshshsh','true'),(1676818494405,'2023-02-19 14:54:23','9999-12-31 00:00:00','kakakakakak','kakakakak',456,0,0,69923722,'NEW',1234,1115,'2023-02-19 14:54:54','hmsgkdkya is the only gckvkncjfk you can do this but you can’t just leave the \n\n\n\n\n','true'),(1676818495910,'2023-02-19 14:54:23','9999-12-31 00:00:00','kakakakakak','kakakakak',456,0,0,69923722,'NEW',1234,1115,'2023-02-19 14:54:56','hmsgkdkya is the only gckvkncjfk you can do this but you can’t just leave the \n\n\n\n\n','true'),(1676818647060,'2023-02-19 09:27:05','9999-12-30 18:30:00','tagag','tagaag',456456,123456,-333000,69923722,'COMPLETED',1234,1115,'2023-02-19 14:57:27','gatshshs is so cute i can’t wait for him and the other two are going on the trip to trip too soon to get married lol but he deserves the best in life he has a \n','true'),(1676818691757,'2023-02-19 09:27:52','9999-12-30 18:30:00','agshsgs','hashshh',756456,1245,-755211,69923722,'COMPLETED',1234,1115,'2023-02-19 14:58:12','gahshs you have to go back and look for it again and i think i found the right place to post this pic but im so confused by it ','true'),(1676818694963,'2023-02-19 14:57:52','9999-12-31 00:00:00','agshsgs','hashshh',756456,0,0,69923722,'NEW',1234,1115,'2023-02-19 14:58:15','gahshs you have to go back and look for it again and i think i found the right place to post this pic but im so confused by it ','true'),(1676818734587,'2023-02-19 14:58:33','9999-12-31 00:00:00','ouurujrhr','ishdhxhd',456,0,0,69923722,'NEW',1234,1115,'2023-02-19 14:58:55','stsndhshshdhdhdhdhdhdhdhdhdhdhdhdhdhdjdhdhdhdhd','true'),(1676818735811,'2023-02-19 14:58:33','9999-12-31 00:00:00','ouurujrhr','ishdhxhd',456,0,0,69923722,'NEW',1234,1115,'2023-02-19 14:58:56','stsndhshshdhdhdhdhdhdhdhdhdhdhdhdhdhdjdhdhdhdhd','true'),(1676818801600,'2023-02-19 14:59:49','9999-12-31 00:00:00','chdjxhfjdjfj','incjfi',456456,0,0,69923722,'NEW',1234,1115,'2023-02-19 15:00:02','kgitudiff','true'),(1676818803143,'2023-02-19 14:59:49','9999-12-31 00:00:00','chdjxhfjdjfj','incjfi',456456,0,0,69923722,'NEW',1234,1115,'2023-02-19 15:00:03','kgitudiff','true'),(1676899805137,'2023-02-20 13:28:42','9999-12-31 00:00:00','hxufyudu','chjffhfu',5556565,0,0,69923699,'NEW',1234,1115,'2023-02-20 13:30:05','gszhdhhdhdhhdhfj\n\n\n\n\n\n\n\n\n\n','true'),(1676899806534,'2023-02-20 07:58:42','9999-12-30 18:30:00','hxufyudu','chjffhfu',5556565,12,-5556553,69923699,'COMPLETED',1234,1115,'2023-02-20 13:30:07','gszhdhhdhdhhdhfj\n\n\n\n\n\n\n\n\n\n','true'),(1677003827473,'2023-02-21 18:23:19','9999-12-31 00:00:00','123456','Qwert',1234,0,0,69923670,'NEW',1234,1115,'2023-02-21 18:23:47','1234','true'),(1677003929715,'2023-02-21 18:24:58','9999-12-31 00:00:00','jucyfy','fuf',123,0,0,69923670,'NEW',1234,1115,'2023-02-21 18:25:30','vhcu\nkvivivu\nvufuguig\ngivugugu\nfucuguvu','true'),(1677003930920,'2023-02-21 12:54:58','9999-12-30 18:30:00','jucyfy','fuf',123,5555,5432,69923670,'COMPLETED',1234,1115,'2023-02-21 18:25:31','vhcu\nkvivivu\nvufuguig\ngivugugu\nfucuguvu','true'),(1677044448693,'2023-02-22 00:10:21','9999-12-30 18:30:00','eyuh','dryuh',4555,12,-4543,69923659,'COMPLETED',1234,1115,'2023-02-22 05:40:49','dfggvv\nasdhk\nasdfg\nasdfg','false'),(1677603599529,'2023-02-28 16:58:59','9999-12-31 00:00:00','sgsgdh','geshdhs',456,0,0,69923504,'NEW',1234,1115,'2023-02-28 17:00:00','yyeuhdhdjdjd\nhdhdududus\nfududusud\nfududdjdudus\n \n\n\n\n\n\n','true'),(1677603600483,'2023-02-28 16:58:59','9999-12-31 00:00:00','sgsgdh','geshdhs',456,0,0,69923504,'NEW',1234,1115,'2023-02-28 17:00:00','yyeuhdhdjdjd\nhdhdududus\nfududusud\nfududdjdudus\n \n\n\n\n\n\n','true'),(1677603601166,'2023-02-28 11:28:59','9999-12-30 18:30:00','sgsgdh','geshdhs',456,123,-333,69923504,'COMPLETED',1234,1115,'2023-02-28 17:00:01','yyeuhdhdjdjd\nhdhdududus\nfududusud\nfududdjdudus\n \n\n\n\n\n\n','true'),(1678088664246,'2023-03-06 07:43:22','9999-12-31 00:00:00','John','CT',12000,0,0,69923369,'NEW',1234,1115,'2023-03-06 07:44:24','Test\nMulti line\nCharacters\nWith\nNumber of lines','true'),(1678100071676,'2023-03-06 10:53:58','9999-12-31 00:00:00','Bebbebe','Bavan wv',2500,0,0,69923366,'NEW',1234,1115,'2023-03-06 10:54:32','Bebe be e Eve ','true'),(1678525058732,'2023-03-11 08:57:30','9999-12-31 00:00:00','hxch','fucu',456,0,0,69923248,'NEW',1234,1115,'2023-03-11 08:57:39','gdhxxhhc','true'),(1678525059594,'2023-03-11 08:57:30','9999-12-31 00:00:00','hxch','fucu',456,0,0,69923248,'NEW',1234,1115,'2023-03-11 08:57:40','gdhxxhhc','true'),(1678525060228,'2023-03-11 08:57:30','9999-12-31 00:00:00','hxch','fucu',456,0,0,69923248,'NEW',1234,1115,'2023-03-11 08:57:40','gdhxxhhc','true');
/*!40000 ALTER TABLE `ticket_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_dtl`
--

DROP TABLE IF EXISTS `user_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_dtl` (
  `S_NO` int NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(45) DEFAULT NULL,
  `USER_ID` int NOT NULL,
  `ROLE` varchar(45) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `CREATED_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`S_NO`,`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_dtl`
--

LOCK TABLES `user_dtl` WRITE;
/*!40000 ALTER TABLE `user_dtl` DISABLE KEYS */;
INSERT INTO `user_dtl` VALUES (1,'Venkatesh',111213123,'AGENT','Arcash@01',NULL),(2,'Admin',1115,'MGR','1qazZaq1',NULL),(3,'Muruga',1234,'AGENT','1234','2023-02-06 00:00:00');
/*!40000 ALTER TABLE `user_dtl` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-02 21:57:19
