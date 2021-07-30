-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: export_db
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Massachusetts',23,'Jack Smith'),(2,'New York',27,'Adam Johnson'),(3,'Washington DC',26,'Katherin Carter'),(4,'Nevada',33,'Jack London'),(5,'California',36,'Jason Bourne');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_trackings`
--

DROP TABLE IF EXISTS `status_trackings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_trackings` (
  `PROCESS_ID` varchar(8) NOT NULL,
  `PROCESS_STATUS` int DEFAULT '0',
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`PROCESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_trackings`
--

LOCK TABLES `status_trackings` WRITE;
/*!40000 ALTER TABLE `status_trackings` DISABLE KEYS */;
INSERT INTO `status_trackings` VALUES ('0101',1,'2021-07-22 04:58:17'),('0201',2,'2021-07-24 02:32:53'),('0301',2,'2021-07-22 15:16:43'),('0401',2,'2021-07-22 15:16:43'),('0442',9,NULL),('0501',0,'2021-07-22 05:03:27'),('0601',1,'2021-07-25 12:46:47'),('0701',1,'2021-07-22 05:03:30'),('1101',0,'2021-07-22 05:03:27'),('1191',1,'2021-07-21 13:54:03'),('1192',1,'2021-07-21 04:31:46'),('1193',1,'2021-07-21 05:30:02'),('1194',1,'2021-07-21 05:44:13'),('1201',0,'2021-07-22 05:03:27'),('1301',2,'2021-07-24 04:05:59'),('1391',2,'2021-07-23 18:50:53'),('1392',2,'2021-07-24 04:05:59'),('1393',2,'2021-07-23 18:31:14'),('1394',2,'2021-07-23 18:31:01'),('1401',0,'2021-07-22 05:03:27'),('1491',1,NULL),('1492',1,NULL),('1493',1,NULL),('1494',1,NULL),('1501',1,'2021-07-25 07:39:06'),('1601',1,'2021-07-25 07:44:32'),('1701',1,'2021-07-25 07:39:37'),('1801',2,'2021-07-25 13:41:59'),('1901',0,'2021-07-22 05:03:27'),('2001',2,'2021-07-23 20:12:40'),('2101',1,'2021-07-25 13:33:38'),('2201',1,'2021-07-25 13:41:06'),('2301',1,'2021-07-25 13:41:42'),('3001',0,'2021-07-22 05:03:27');
/*!40000 ALTER TABLE `status_trackings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-27 15:15:58
