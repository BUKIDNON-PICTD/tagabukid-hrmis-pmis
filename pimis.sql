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
-- Table structure for table `pmis_ipcr`
--

DROP TABLE IF EXISTS `pmis_ipcr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmis_ipcr` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(100) DEFAULT NULL,
  `period` varchar(10) DEFAULT NULL,
  `ipcrno` varchar(100) DEFAULT NULL,
  `employee_PersonId` varchar(100) NOT NULL,
  `employee_Name_LastName` varchar(200) NOT NULL,
  `employee_Name_FirstName` varchar(200) NOT NULL,
  `employee_Name_MiddleName` varchar(200) NOT NULL,
  `employee_Name_NameExtension` varchar(50) DEFAULT NULL,
  `employee_Name_PreNameTitle` varchar(50) DEFAULT NULL,
  `employee_Name_PostNameTitle` varchar(50) DEFAULT NULL,
  `orgid` varchar(100) NOT NULL,
  `org_name` varchar(200) NOT NULL,
  `org_code` varchar(50) DEFAULT NULL,
  `dtfiled` date NOT NULL,
  `reviewerid` varchar(100) DEFAULT NULL,
  `reviewer_Name_LastName` varchar(200) DEFAULT NULL,
  `reviewer_Name_FirstName` varchar(200) DEFAULT NULL,
  `reviewer_Name_MiddleName` varchar(50) DEFAULT NULL,
  `reviewer_Name_NameExtension` varchar(200) NOT NULL,
  `reviewer_Name_PreNameTitle` varchar(50) DEFAULT NULL,
  `reviewer_Name_PostNameTitle` varchar(50) DEFAULT NULL,
  `supervisorid` varchar(100) DEFAULT NULL,
  `supervisor_Name_LastName` varchar(200) NOT NULL,
  `supervisor_Name_FirstName` varchar(200) NOT NULL,
  `supervisor_Name_MiddleName` varchar(200) NOT NULL,
  `supervisor_Name_NameExtension` varchar(200) NOT NULL,
  `supervisor_Name_PreNameTitle` varchar(50) DEFAULT NULL,
  `supervisor_Name_PostNameTitle` varchar(50) DEFAULT NULL,
  `approverid` varchar(100) DEFAULT NULL,
  `approver_Name_LastName` varchar(200) NOT NULL,
  `approver_Name_FirstName` varchar(200) NOT NULL,
  `approver_Name_MiddleName` varchar(200) NOT NULL,
  `approver_Name_NameExtension` varchar(200) NOT NULL,
  `approver_Name_PreNameTitle` varchar(50) DEFAULT NULL,
  `approver_Name_PostNameTitle` varchar(50) DEFAULT NULL,
  `recordlog_datecreated` datetime NOT NULL,
  `recordlog_createdbyuserid` varchar(50) NOT NULL,
  `recordlog_createdbyuser` varchar(100) NOT NULL,
  `recordlog_dateoflastupdate` datetime NOT NULL,
  `recordlog_lastupdatedbyuserid` varchar(50) NOT NULL,
  `recordlog_lastupdatedbyuser` varchar(100) NOT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmis_ipcr`
--

LOCK TABLES `pmis_ipcr` WRITE;
/*!40000 ALTER TABLE `pmis_ipcr` DISABLE KEYS */;
INSERT INTO `pmis_ipcr` VALUES ('IP-4eecdf8:160e3f8af0f:-7e76','DRAFT','1st','PMIS20180100011','fb27fd74-e9ec-4454-ac01-21de81a5f795','AGUILAR','RUFINO JOHN','ECALDRE','','','','bacb54b6-912e-4167-bd9b-7b361e83a8e7','Prov\'l. Information & Comm. Technology Division','PICTD','2018-01-11','b4c41a96-c589-4450-85cc-59d37d2e99ee','ABAD','EDMELYN','PEREZ','','','','b4c41a96-c589-4450-85cc-59d37d2e99ee','ABAD','EDMELYN','PEREZ','','','','b4c41a96-c589-4450-85cc-59d37d2e99ee','ABAD','EDMELYN','PEREZ','','','','2018-01-11 15:25:33','USR-30f29625:14e19261370:-79e5','RUFINO JOHN AGUILAR','2018-01-11 15:25:33','USR-30f29625:14e19261370:-79e5','RUFINO JOHN AGUILAR');
/*!40000 ALTER TABLE `pmis_ipcr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmis_ipcr_details`
--

DROP TABLE IF EXISTS `pmis_ipcr_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmis_ipcr_details` (
  `objid` varchar(50) NOT NULL,
  `ipcrid` varchar(50) NOT NULL,
  `successindicatorid` varchar(50) NOT NULL,
  `qid` varchar(50) DEFAULT NULL,
  `eid` varchar(50) DEFAULT NULL,
  `tid` varchar(50) DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`objid`),
  KEY `ipcrid` (`ipcrid`),
  KEY `successindicatorid` (`successindicatorid`),
  CONSTRAINT `pmis_ipcr_details_ibfk_1` FOREIGN KEY (`ipcrid`) REFERENCES `pmis_ipcr` (`objid`),
  CONSTRAINT `pmis_ipcr_details_ibfk_2` FOREIGN KEY (`successindicatorid`) REFERENCES `pmis_successindicators` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmis_ipcr_details`
--

LOCK TABLES `pmis_ipcr_details` WRITE;
/*!40000 ALTER TABLE `pmis_ipcr_details` DISABLE KEYS */;
INSERT INTO `pmis_ipcr_details` VALUES ('IPD-4eecdf8:160e3f8af0f:-7e74','IP-4eecdf8:160e3f8af0f:-7e76','SI-7250bdb1:160e076fb9b:-7bb5','QSI77a89911:160d8bd2e8b:-7624','ESI77a89911:160d8bd2e8b:-7619','TSI77a89911:160d8bd2e8b:-7620',NULL),('IPD-4eecdf8:160e3f8af0f:-7e75','IP-4eecdf8:160e3f8af0f:-7e76','SI-7250bdb1:160e076fb9b:-760d','QSI279b10d8:160e081ce57:-7cff','ESI279b10d8:160e081ce57:-7cf6','TSI279b10d8:160e081ce57:-7cfb',NULL);
/*!40000 ALTER TABLE `pmis_ipcr_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmis_majorfinaloutputs`
--

DROP TABLE IF EXISTS `pmis_majorfinaloutputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmis_majorfinaloutputs` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text,
  `sortorder` int(11) NOT NULL,
  `spmsperiod` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmis_majorfinaloutputs`
--

LOCK TABLES `pmis_majorfinaloutputs` WRITE;
/*!40000 ALTER TABLE `pmis_majorfinaloutputs` DISABLE KEYS */;
INSERT INTO `pmis_majorfinaloutputs` VALUES ('9a554444-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','HEALTH AND SOCIAL SERVICES','HEALTH AND SOCIAL SERVICES','HEALTH AND SOCIAL SERVICES',0,NULL),('9a610104-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','PEACE AND ORDER','PEACE AND ORDER','PEACE AND ORDER',0,NULL),('9a8e80d3-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','EDUCATION FOR ALL','EDUCATION FOR ALL','EDUCATION FOR ALL',0,NULL),('9a9f4e5b-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','INSERT INTO PMIS_MAJORFINALOUTPUT ECONOMIC SERVICES THROUGH LIVELIHOOD OF FAMILIES','INSERT INTO PMIS_MAJORFINALOUTPUT ECONOMIC SERVICES THROUGH LIVELIHOOD OF FAMILIES','INSERT INTO PMIS_MAJORFINALOUTPUT ECONOMIC SERVICES THROUGH LIVELIHOOD OF FAMILIES',0,NULL),('9aacf21e-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','INFRASTRUCTURE PROGRAM','INFRASTRUCTURE PROGRAM','INFRASTRUCTURE PROGRAM',0,NULL),('9ab67b7c-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','INSERT INTO PMIS_MAJORFINALOUTPUT ENVIRONMENTAL PROTECTION AND NATURAL RESOURCES MANAGEMENT','INSERT INTO PMIS_MAJORFINALOUTPUT ENVIRONMENTAL PROTECTION AND NATURAL RESOURCES MANAGEMENT','INSERT INTO PMIS_MAJORFINALOUTPUT ENVIRONMENTAL PROTECTION AND NATURAL RESOURCES MANAGEMENT',0,NULL),('9abf3d94-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','GENERAL ADMINISTRATION','GENERAL ADMINISTRATION','GENERAL ADMINISTRATION',0,NULL);
/*!40000 ALTER TABLE `pmis_majorfinaloutputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmis_orgsuccessindicators`
--

DROP TABLE IF EXISTS `pmis_orgsuccessindicators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmis_orgsuccessindicators` (
  `objid` varbinary(50) NOT NULL,
  `orgid` varchar(50) NOT NULL,
  `successindicatorid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmis_orgsuccessindicators`
--

LOCK TABLES `pmis_orgsuccessindicators` WRITE;
/*!40000 ALTER TABLE `pmis_orgsuccessindicators` DISABLE KEYS */;
/*!40000 ALTER TABLE `pmis_orgsuccessindicators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmis_performance_categorys`
--

DROP TABLE IF EXISTS `pmis_performance_categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmis_performance_categorys` (
  `objid` varchar(50) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `recordlog_datecreated` datetime NOT NULL,
  `recordlog_createdbyuserid` varchar(50) NOT NULL,
  `recordlog_createdbyuser` varchar(100) NOT NULL,
  `recordlog_dateoflastupdate` datetime NOT NULL,
  `recordlog_lastupdatedbyuserid` varchar(50) NOT NULL,
  `recordlog_lastupdatedbyuser` varchar(100) NOT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmis_performance_categorys`
--

LOCK TABLES `pmis_performance_categorys` WRITE;
/*!40000 ALTER TABLE `pmis_performance_categorys` DISABLE KEYS */;
INSERT INTO `pmis_performance_categorys` VALUES ('PC-248d7a51:16006d6b6e6:-7e11','TEST','TEST','test','2017-11-29 16:14:14','USR-30f29625:14e19261370:-79e5','RUFINO JOHN AGUILAR','2017-11-29 16:14:14','USR-30f29625:14e19261370:-79e5','RUFINO JOHN AGUILAR');
/*!40000 ALTER TABLE `pmis_performance_categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmis_ratings`
--

DROP TABLE IF EXISTS `pmis_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmis_ratings` (
  `objid` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `siid` varchar(50) DEFAULT NULL,
  `title` text,
  `rating` int(10) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmis_ratings`
--

LOCK TABLES `pmis_ratings` WRITE;
/*!40000 ALTER TABLE `pmis_ratings` DISABLE KEYS */;
INSERT INTO `pmis_ratings` VALUES ('ESI-1269f605:160d981c711:-7fd3','E','DRAFT','SI44e8b2ca:160d9827951:-7c2f',NULL,1),('ESI-1269f605:160d981c711:-7fd4','E','DRAFT','SI44e8b2ca:160d9827951:-7c2f',NULL,2),('ESI-1269f605:160d981c711:-7fd5','E','DRAFT','SI44e8b2ca:160d9827951:-7c2f',NULL,3),('ESI-1269f605:160d981c711:-7fd6','E','DRAFT','SI44e8b2ca:160d9827951:-7c2f',NULL,4),('ESI-1269f605:160d981c711:-7fd7','E','DRAFT','SI44e8b2ca:160d9827951:-7c2f',NULL,5),('ESI279b10d8:160e081ce57:-7cf3','E','DRAFT','SI-7250bdb1:160e076fb9b:-760d','E31',1),('ESI279b10d8:160e081ce57:-7cf4','E','DRAFT','SI-7250bdb1:160e076fb9b:-760d','E32',2),('ESI279b10d8:160e081ce57:-7cf5','E','DRAFT','SI-7250bdb1:160e076fb9b:-760d','E33',3),('ESI279b10d8:160e081ce57:-7cf6','E','DRAFT','SI-7250bdb1:160e076fb9b:-760d','E34',4),('ESI279b10d8:160e081ce57:-7cf7','E','DRAFT','SI-7250bdb1:160e076fb9b:-760d','E35',5),('ESI279b10d8:160e081ce57:-7e83','E','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','E21',1),('ESI279b10d8:160e081ce57:-7e84','E','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','E22',2),('ESI279b10d8:160e081ce57:-7e85','E','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','E23',3),('ESI279b10d8:160e081ce57:-7e86','E','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','E24',4),('ESI279b10d8:160e081ce57:-7e87','E','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','E25',5),('ESI77a89911:160d8bd2e8b:-7617','E','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','E1',1),('ESI77a89911:160d8bd2e8b:-7618','E','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','E2',2),('ESI77a89911:160d8bd2e8b:-7619','E','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','E3',3),('ESI77a89911:160d8bd2e8b:-761a','E','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','E4',4),('ESI77a89911:160d8bd2e8b:-761b','E','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','E5',5),('QSI-1269f605:160d981c711:-7fdd','Q','DRAFT','SI44e8b2ca:160d9827951:-7c2f','TEST',1),('QSI-1269f605:160d981c711:-7fde','Q','DRAFT','SI44e8b2ca:160d9827951:-7c2f','TEST',2),('QSI-1269f605:160d981c711:-7fdf','Q','DRAFT','SI44e8b2ca:160d9827951:-7c2f','TEST',3),('QSI-1269f605:160d981c711:-7fe0','Q','DRAFT','SI44e8b2ca:160d9827951:-7c2f','TEST',4),('QSI-1269f605:160d981c711:-7fe1','Q','DRAFT','SI44e8b2ca:160d9827951:-7c2f','TEST',5),('QSI279b10d8:160e081ce57:-7cfd','Q','DRAFT','SI-7250bdb1:160e076fb9b:-760d','Q31',1),('QSI279b10d8:160e081ce57:-7cfe','Q','DRAFT','SI-7250bdb1:160e076fb9b:-760d','Q32',2),('QSI279b10d8:160e081ce57:-7cff','Q','DRAFT','SI-7250bdb1:160e076fb9b:-760d','Q33',3),('QSI279b10d8:160e081ce57:-7d00','Q','DRAFT','SI-7250bdb1:160e076fb9b:-760d','Q34',4),('QSI279b10d8:160e081ce57:-7d01','Q','DRAFT','SI-7250bdb1:160e076fb9b:-760d','Q35',5),('QSI279b10d8:160e081ce57:-7e8d','Q','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','Q21',1),('QSI279b10d8:160e081ce57:-7e8e','Q','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','Q22',2),('QSI279b10d8:160e081ce57:-7e8f','Q','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','Q23',3),('QSI279b10d8:160e081ce57:-7e90','Q','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','Q24',4),('QSI279b10d8:160e081ce57:-7e91','Q','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','Q25',5),('QSI77a89911:160d8bd2e8b:-7621','Q','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','Q1',1),('QSI77a89911:160d8bd2e8b:-7622','Q','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','Q2',2),('QSI77a89911:160d8bd2e8b:-7623','Q','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','Q3',3),('QSI77a89911:160d8bd2e8b:-7624','Q','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','Q4',4),('QSI77a89911:160d8bd2e8b:-7625','Q','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','Q5',5),('TSI-1269f605:160d981c711:-7fd8','T','DRAFT','SI44e8b2ca:160d9827951:-7c2f',NULL,1),('TSI-1269f605:160d981c711:-7fd9','T','DRAFT','SI44e8b2ca:160d9827951:-7c2f',NULL,2),('TSI-1269f605:160d981c711:-7fda','T','DRAFT','SI44e8b2ca:160d9827951:-7c2f',NULL,3),('TSI-1269f605:160d981c711:-7fdb','T','DRAFT','SI44e8b2ca:160d9827951:-7c2f',NULL,4),('TSI-1269f605:160d981c711:-7fdc','T','DRAFT','SI44e8b2ca:160d9827951:-7c2f',NULL,5),('TSI279b10d8:160e081ce57:-7cf8','T','DRAFT','SI-7250bdb1:160e076fb9b:-760d','T31',1),('TSI279b10d8:160e081ce57:-7cf9','T','DRAFT','SI-7250bdb1:160e076fb9b:-760d','T32',2),('TSI279b10d8:160e081ce57:-7cfa','T','DRAFT','SI-7250bdb1:160e076fb9b:-760d','T33',3),('TSI279b10d8:160e081ce57:-7cfb','T','DRAFT','SI-7250bdb1:160e076fb9b:-760d','T34',4),('TSI279b10d8:160e081ce57:-7cfc','T','DRAFT','SI-7250bdb1:160e076fb9b:-760d','T35',5),('TSI279b10d8:160e081ce57:-7e88','T','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','T21',1),('TSI279b10d8:160e081ce57:-7e89','T','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','T22',2),('TSI279b10d8:160e081ce57:-7e8a','T','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','T23',3),('TSI279b10d8:160e081ce57:-7e8b','T','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','T24',4),('TSI279b10d8:160e081ce57:-7e8c','T','DRAFT','SI-7250bdb1:160e076fb9b:-78c6','T25',5),('TSI77a89911:160d8bd2e8b:-761c','T','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','T1',1),('TSI77a89911:160d8bd2e8b:-761d','T','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','T2',2),('TSI77a89911:160d8bd2e8b:-761e','T','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','T3',3),('TSI77a89911:160d8bd2e8b:-761f','T','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','T4',4),('TSI77a89911:160d8bd2e8b:-7620','T','DRAFT','SI-7250bdb1:160e076fb9b:-7bb5','T5',5);
/*!40000 ALTER TABLE `pmis_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmis_spms_periods`
--

DROP TABLE IF EXISTS `pmis_spms_periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmis_spms_periods` (
  `objid` varchar(50) NOT NULL,
  `year` varchar(100) NOT NULL,
  `remarks` text,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmis_spms_periods`
--

LOCK TABLES `pmis_spms_periods` WRITE;
/*!40000 ALTER TABLE `pmis_spms_periods` DISABLE KEYS */;
INSERT INTO `pmis_spms_periods` VALUES ('PSP2e953c1a:1601130851a:-7e11','2017','test	');
/*!40000 ALTER TABLE `pmis_spms_periods` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `pmis_successindicators` VALUES ('ROOT','SYSTEM','ROOT','ROOT',NULL,NULL,NULL,NULL,'root',1,24),('SI-7250bdb1:160e076fb9b:-760d','DRAFT','IPCR3','IPCR3',NULL,NULL,NULL,'SI-7250bdb1:160e076fb9b:-7660','ip',6,7),('SI-7250bdb1:160e076fb9b:-7660','DRAFT','DPCR3','DPCR3',NULL,NULL,NULL,'SI-7250bdb1:160e076fb9b:-7703','dp',5,8),('SI-7250bdb1:160e076fb9b:-7703','DRAFT','OPCR3','OPCR3',NULL,NULL,NULL,'SI-7250bdb1:160e076fb9b:-7db6','op',4,9),('SI-7250bdb1:160e076fb9b:-78c6','DRAFT','IPCR2','IPCR2',NULL,NULL,NULL,'SI-7250bdb1:160e076fb9b:-791b','ip',12,13),('SI-7250bdb1:160e076fb9b:-791b','DRAFT','DPCR2','DPCR2',NULL,NULL,NULL,'SI-7250bdb1:160e076fb9b:-7993','dp',11,14),('SI-7250bdb1:160e076fb9b:-7993','DRAFT','OPCR2','OPCR2',NULL,NULL,NULL,'SI-7250bdb1:160e076fb9b:-7db6','op',10,15),('SI-7250bdb1:160e076fb9b:-7bb5','DRAFT','IPCR','IPCR',NULL,NULL,NULL,'SI-7250bdb1:160e076fb9b:-7d45','ip',18,19),('SI-7250bdb1:160e076fb9b:-7d45','DRAFT','DPCR','DPCR',NULL,NULL,NULL,'SI-7250bdb1:160e076fb9b:-7d88','dp',17,20),('SI-7250bdb1:160e076fb9b:-7d88','DRAFT','OPCR','OPCR',NULL,NULL,NULL,'SI-7250bdb1:160e076fb9b:-7db6','op',16,21),('SI-7250bdb1:160e076fb9b:-7db6','DRAFT','MFO','MFO',NULL,NULL,NULL,'SI32730db3:160d0d14d7b:-7d74','mfo',3,22),('SI32730db3:160d0d14d7b:-7d74','DRAFT','2018','2018',NULL,NULL,'test','ROOT','pmis',2,23);
/*!40000 ALTER TABLE `pmis_successindicators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmis_successindicators_org`
--

DROP TABLE IF EXISTS `pmis_successindicators_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmis_successindicators_org` (
  `siid` varchar(50) NOT NULL,
  `orgid` varchar(100) NOT NULL,
  PRIMARY KEY (`siid`,`orgid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmis_successindicators_org`
--

LOCK TABLES `pmis_successindicators_org` WRITE;
/*!40000 ALTER TABLE `pmis_successindicators_org` DISABLE KEYS */;
INSERT INTO `pmis_successindicators_org` VALUES ('SI-1e2073bb:160b97187ba:-7c22','ff6936db-9692-4d0f-98a0-63c1ceda0f2f'),('SI-30abc040:160d860b47f:-7c17','99ab60a7-b694-4718-9f1e-567a6ede56d2'),('SI-34c93280:160687210e5:-7d8e','c9de1d79-c083-49d1-a07a-386db92d26c4'),('SI-39cfa1c8:1606841b22d:-7d0a','cf36ee99-c52b-4d20-92fd-e8f78f39f622'),('SI-42ebcabd:1606d5f3615:-7d3b','a3315bc5-5559-4037-b389-b825857a591c'),('SI-5641d599:1604d9b7dbc:-7d9f','d13c1232-1126-4326-9d93-376bd43f6311'),('SI-57dac735:1604e4c1549:-7d86','e7a2ebc0-b590-4e3a-9d1e-15b30aaf3c7a'),('SI-57dac735:1604e4c1549:-7d86','T51a314fe:16067c4b40a:-7dc1'),('SI-669515b1:1604dfac5e9:-7c46','2eb5a902-8a0b-4dd2-8391-29e389304d77'),('SI-669515b1:1604dfac5e9:-7c46','38ea5c58-0386-48cd-8a90-bfb2cdf2ce34'),('SI-670a813c:1604e0101c2:-7d05','ee27d911-3a99-458e-bedf-705d8ed075c2'),('SI-7250bdb1:160e076fb9b:-7660','bacb54b6-912e-4167-bd9b-7b361e83a8e7'),('SI-7250bdb1:160e076fb9b:-7703','3e9b0513-3406-4869-bd53-4c05c68a76c4'),('SI-7250bdb1:160e076fb9b:-7703','b69be8d2-54fa-45f8-a2b6-0ae4006e49a8'),('SI-7250bdb1:160e076fb9b:-791b','e470ff49-ea89-4fef-90cc-34901746e48d'),('SI-7250bdb1:160e076fb9b:-7993','67ec5f1c-722a-424a-8002-62ec6ca43815'),('SI-7250bdb1:160e076fb9b:-7993','9b80e363-30da-4c27-921f-5438afa4b72c'),('SI-7250bdb1:160e076fb9b:-7d45','bacb54b6-912e-4167-bd9b-7b361e83a8e7'),('SI-7250bdb1:160e076fb9b:-7d88','3e9b0513-3406-4869-bd53-4c05c68a76c4'),('SI-7250bdb1:160e076fb9b:-7d88','b69be8d2-54fa-45f8-a2b6-0ae4006e49a8'),('SI-74c3da69:1606855b182:-7d6b','T36bca281:160686df5d0:-7d15'),('SI27b2c8fd:160683eee60:-7c8b','daef4532-b02f-492f-b403-12680e5c8997'),('SI2b2d0c91:160b98ef364:-771e','2673d2e1-0b6c-4c5a-904d-a63109bbfbc3'),('SI2b2d0c91:160b98ef364:-7a1a','-7a96f3f7:160b961bda9:-7ee6'),('SI2b2d0c91:160b98ef364:-7c5f','-7a96f3f7:160b961bda9:-7f00'),('SI2b2d0c91:160b98ef364:-7ccc','99ab60a7-b694-4718-9f1e-567a6ede56d2'),('SI2d9cf08e:1604d812fe9:-7dbe','3e9b0513-3406-4869-bd53-4c05c68a76c4'),('SI32730db3:160d0d14d7b:-7c52','99ab60a7-b694-4718-9f1e-567a6ede56d2'),('SI44f86f56:160b984a3fe:-7d3c','99ab60a7-b694-4718-9f1e-567a6ede56d2'),('SI6a70165e:1604ed9aa76:-7d3e','b69be8d2-54fa-45f8-a2b6-0ae4006e49a8'),('SI861c0b6:160b9a90d8e:-7ccf','2673d2e1-0b6c-4c5a-904d-a63109bbfbc3'),('SI861c0b6:160b9a90d8e:-7d0d','99ab60a7-b694-4718-9f1e-567a6ede56d2'),('SIe70d270:1604e46ff21:-7b8d','38ea5c58-0386-48cd-8a90-bfb2cdf2ce34'),('SIe70d270:1604e46ff21:-7b8d','c7da0331-fe41-49d0-8fe4-5cc9e2af87e4'),('SIe70d270:1604e46ff21:-7d1d','38ea5c58-0386-48cd-8a90-bfb2cdf2ce34'),('SIe70d270:1604e46ff21:-7d9a','d13c1232-1126-4326-9d93-376bd43f6311');
/*!40000 ALTER TABLE `pmis_successindicators_org` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-11 15:34:36
