/*
SQLyog Community v12.4.3 (64 bit)
MySQL - 5.1.73-community : Database - tagabukid_hrmis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tagabukid_hrmis` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tagabukid_hrmis`;

/*Table structure for table `pmis_majorfinaloutputs` */

DROP TABLE IF EXISTS `pmis_majorfinaloutputs`;

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

/*Data for the table `pmis_majorfinaloutputs` */

insert  into `pmis_majorfinaloutputs`(`objid`,`state`,`code`,`name`,`description`,`sortorder`,`spmsperiod`) values 
('9a554444-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','HEALTH AND SOCIAL SERVICES','HEALTH AND SOCIAL SERVICES','HEALTH AND SOCIAL SERVICES',0,NULL),
('9a610104-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','PEACE AND ORDER','PEACE AND ORDER','PEACE AND ORDER',0,NULL),
('9a8e80d3-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','EDUCATION FOR ALL','EDUCATION FOR ALL','EDUCATION FOR ALL',0,NULL),
('9a9f4e5b-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','INSERT INTO PMIS_MAJORFINALOUTPUT ECONOMIC SERVICES THROUGH LIVELIHOOD OF FAMILIES','INSERT INTO PMIS_MAJORFINALOUTPUT ECONOMIC SERVICES THROUGH LIVELIHOOD OF FAMILIES','INSERT INTO PMIS_MAJORFINALOUTPUT ECONOMIC SERVICES THROUGH LIVELIHOOD OF FAMILIES',0,NULL),
('9aacf21e-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','INFRASTRUCTURE PROGRAM','INFRASTRUCTURE PROGRAM','INFRASTRUCTURE PROGRAM',0,NULL),
('9ab67b7c-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','INSERT INTO PMIS_MAJORFINALOUTPUT ENVIRONMENTAL PROTECTION AND NATURAL RESOURCES MANAGEMENT','INSERT INTO PMIS_MAJORFINALOUTPUT ENVIRONMENTAL PROTECTION AND NATURAL RESOURCES MANAGEMENT','INSERT INTO PMIS_MAJORFINALOUTPUT ENVIRONMENTAL PROTECTION AND NATURAL RESOURCES MANAGEMENT',0,NULL),
('9abf3d94-d674-11e7-bbe8-6c3be57ff6e7','DRAFT','GENERAL ADMINISTRATION','GENERAL ADMINISTRATION','GENERAL ADMINISTRATION',0,NULL);

/*Table structure for table `pmis_orgsuccessindicators` */

DROP TABLE IF EXISTS `pmis_orgsuccessindicators`;

CREATE TABLE `pmis_orgsuccessindicators` (
  `objid` varbinary(50) NOT NULL,
  `orgid` varchar(50) NOT NULL,
  `successindicatorid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pmis_orgsuccessindicators` */

/*Table structure for table `pmis_performance_categorys` */

DROP TABLE IF EXISTS `pmis_performance_categorys`;

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

/*Data for the table `pmis_performance_categorys` */

insert  into `pmis_performance_categorys`(`objid`,`code`,`name`,`description`,`recordlog_datecreated`,`recordlog_createdbyuserid`,`recordlog_createdbyuser`,`recordlog_dateoflastupdate`,`recordlog_lastupdatedbyuserid`,`recordlog_lastupdatedbyuser`) values 
('PC-248d7a51:16006d6b6e6:-7e11','TEST','TEST','test','2017-11-29 16:14:14','USR-30f29625:14e19261370:-79e5','RUFINO JOHN AGUILAR','2017-11-29 16:14:14','USR-30f29625:14e19261370:-79e5','RUFINO JOHN AGUILAR');

/*Table structure for table `pmis_spms_periods` */

DROP TABLE IF EXISTS `pmis_spms_periods`;

CREATE TABLE `pmis_spms_periods` (
  `objid` varchar(50) NOT NULL,
  `year` varchar(100) NOT NULL,
  `remarks` text,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pmis_spms_periods` */

insert  into `pmis_spms_periods`(`objid`,`year`,`remarks`) values 
('PSP2e953c1a:1601130851a:-7e11','2017','test	');

/*Table structure for table `pmis_successindicators` */

DROP TABLE IF EXISTS `pmis_successindicators`;

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

/*Data for the table `pmis_successindicators` */

insert  into `pmis_successindicators`(`objid`,`state`,`title`,`code`,`allotedbudget`,`actualaccomplishment`,`remarks`,`parentid`,`type`,`lft`,`rgt`) values 
('2017','SYSTEM','PMIS 2017','2017',NULL,NULL,NULL,NULL,'pmis',1,132),
('SI-2b7f9c2a:16068984ea5:-7d3c','DRAFT','DP','DP',NULL,NULL,NULL,'SI-3c1f1674:16068968202:-7d0f','dp',4,13),
('SI-3c1f1674:16068968202:-7d0f','DRAFT','OP','OP',NULL,NULL,NULL,'SI-4e0289f4:160689300b0:-7d08','op',3,16),
('SI-4e0289f4:160689300b0:-7d08','DRAFT','MFO','MFO',NULL,NULL,NULL,'2017','mfo',2,21),
('SI-7eda091b:16068a2da1b:-7d3a','DRAFT','IP','IP',NULL,NULL,NULL,'SI-2b7f9c2a:16068984ea5:-7d3c','ip',11,12);

/*Table structure for table `pmis_successindicators_org` */

DROP TABLE IF EXISTS `pmis_successindicators_org`;

CREATE TABLE `pmis_successindicators_org` (
  `siid` varchar(50) NOT NULL,
  `orgid` varchar(100) NOT NULL,
  PRIMARY KEY (`siid`,`orgid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pmis_successindicators_org` */

insert  into `pmis_successindicators_org`(`siid`,`orgid`) values 
('SI-34c93280:160687210e5:-7d8e','c9de1d79-c083-49d1-a07a-386db92d26c4'),
('SI-39cfa1c8:1606841b22d:-7d0a','cf36ee99-c52b-4d20-92fd-e8f78f39f622'),
('SI-5641d599:1604d9b7dbc:-7d9f','d13c1232-1126-4326-9d93-376bd43f6311'),
('SI-57dac735:1604e4c1549:-7d86','e7a2ebc0-b590-4e3a-9d1e-15b30aaf3c7a'),
('SI-57dac735:1604e4c1549:-7d86','T51a314fe:16067c4b40a:-7dc1'),
('SI-669515b1:1604dfac5e9:-7c46','2eb5a902-8a0b-4dd2-8391-29e389304d77'),
('SI-669515b1:1604dfac5e9:-7c46','38ea5c58-0386-48cd-8a90-bfb2cdf2ce34'),
('SI-670a813c:1604e0101c2:-7d05','ee27d911-3a99-458e-bedf-705d8ed075c2'),
('SI-74c3da69:1606855b182:-7d6b','T36bca281:160686df5d0:-7d15'),
('SI27b2c8fd:160683eee60:-7c8b','daef4532-b02f-492f-b403-12680e5c8997'),
('SI2d9cf08e:1604d812fe9:-7dbe','3e9b0513-3406-4869-bd53-4c05c68a76c4'),
('SI6a70165e:1604ed9aa76:-7d3e','b69be8d2-54fa-45f8-a2b6-0ae4006e49a8'),
('SIe70d270:1604e46ff21:-7b8d','38ea5c58-0386-48cd-8a90-bfb2cdf2ce34'),
('SIe70d270:1604e46ff21:-7b8d','c7da0331-fe41-49d0-8fe4-5cc9e2af87e4'),
('SIe70d270:1604e46ff21:-7d1d','38ea5c58-0386-48cd-8a90-bfb2cdf2ce34'),
('SIe70d270:1604e46ff21:-7d9a','d13c1232-1126-4326-9d93-376bd43f6311');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
