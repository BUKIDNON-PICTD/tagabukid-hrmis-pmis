-- MySQL dump 10.13  Distrib 5.6.37, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tagabukid_hrmis
-- ------------------------------------------------------
-- Server version	5.6.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pmis_successindicators`
--

DROP TABLE IF EXISTS `pmis_successindicators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmis_successindicators` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(100) NOT NULL,
  `title` text NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `allotedbudget` decimal(10,2) DEFAULT NULL,
  `actualaccomplishment` text,
  `remarks` text,
  `parentid` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmis_successindicators`
--

LOCK TABLES `pmis_successindicators` WRITE;
/*!40000 ALTER TABLE `pmis_successindicators` DISABLE KEYS */;
INSERT INTO `pmis_successindicators` VALUES ('ROOT','SYSTEM','ROOT','ROOT',NULL,NULL,NULL,NULL,'root',1,14),('SI32730db3:160d0d14d7b:-7c0a','DRAFT','DPCR','DPCR',NULL,NULL,NULL,'SI32730db3:160d0d14d7b:-7c52','dp',7,8),('SI32730db3:160d0d14d7b:-7c52','DRAFT','OPCR','OPCR',NULL,NULL,NULL,'SI32730db3:160d0d14d7b:-7c80','op',6,9),('SI32730db3:160d0d14d7b:-7c80','DRAFT','MFO','MFO',NULL,'MFO','MFO','SI32730db3:160d0d14d7b:-7d74','mfo',5,10),('SI32730db3:160d0d14d7b:-7d74','DRAFT','2019','2019',NULL,NULL,'test','ROOT','pmis',4,11),('SI32730db3:160d0d14d7b:-7d8d','DRAFT','2018','2018',NULL,NULL,'test','ROOT','pmis',12,13),('SI3bf4caa3:160d31ad1ae:-7d73','DRAFT','2020','2020',NULL,NULL,'asdf','ROOT','pmis',2,3);
/*!40000 ALTER TABLE `pmis_successindicators` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-08  8:57:59
