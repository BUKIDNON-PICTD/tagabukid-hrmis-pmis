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

/*Table structure for table `pmis_ratings` */

DROP TABLE IF EXISTS `pmis_ratings`;

CREATE TABLE `pmis_ratings` (
  `objid` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `siid` varchar(50) DEFAULT NULL,
  `title` text,
  `rating` int(10) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pmis_ratings` */

insert  into `pmis_ratings`(`objid`,`type`,`state`,`siid`,`title`,`rating`) values 
('ESI-32127dff:1607145d263:-7a88','E','DRAFT','SI2200dba1:1607273eab4:-7d7e',NULL,1),
('ESI-32127dff:1607145d263:-7a89','E','DRAFT','SI2200dba1:1607273eab4:-7d7e',NULL,2),
('ESI-32127dff:1607145d263:-7a8a','E','DRAFT','SI2200dba1:1607273eab4:-7d7e',NULL,3),
('ESI-32127dff:1607145d263:-7a8b','E','DRAFT','SI2200dba1:1607273eab4:-7d7e',NULL,4),
('ESI-32127dff:1607145d263:-7a8c','E','DRAFT','SI2200dba1:1607273eab4:-7d7e',NULL,5),
('ESI-32127dff:1607145d263:-7d81','E','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TET',1),
('ESI-32127dff:1607145d263:-7d82','E','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TEST',2),
('ESI-32127dff:1607145d263:-7d83','E','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TET',3),
('ESI-32127dff:1607145d263:-7d84','E','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TEST',4),
('ESI-32127dff:1607145d263:-7d85','E','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TEST',5),
('ESI-32127dff:1607145d263:-7fce','E','DRAFT','SI7ce7cfb7:16071462859:-7b7e','TEST',1),
('ESI-32127dff:1607145d263:-7fcf','E','DRAFT','SI7ce7cfb7:16071462859:-7b7e','TEST',2),
('ESI-32127dff:1607145d263:-7fd0','E','DRAFT','SI7ce7cfb7:16071462859:-7b7e','TEST',3),
('ESI-32127dff:1607145d263:-7fd1','E','DRAFT','SI7ce7cfb7:16071462859:-7b7e','TEST',4),
('ESI-32127dff:1607145d263:-7fd2','E','DRAFT','SI7ce7cfb7:16071462859:-7b7e','TEST',5),
('ESI-553f27e2:160be8caa7e:-7fd3','E','DRAFT','SI-4658a457:160be8ceae5:-7c6f',NULL,1),
('ESI-553f27e2:160be8caa7e:-7fd4','E','DRAFT','SI-4658a457:160be8ceae5:-7c6f',NULL,2),
('ESI-553f27e2:160be8caa7e:-7fd5','E','DRAFT','SI-4658a457:160be8ceae5:-7c6f',NULL,3),
('ESI-553f27e2:160be8caa7e:-7fd6','E','DRAFT','SI-4658a457:160be8ceae5:-7c6f',NULL,4),
('ESI-553f27e2:160be8caa7e:-7fd7','E','DRAFT','SI-4658a457:160be8ceae5:-7c6f',NULL,5),
('ESI-7a96f3f7:160b961bda9:-7e59','E','DRAFT','SI861c0b6:160b9a90d8e:-7be8',NULL,1),
('ESI-7a96f3f7:160b961bda9:-7e5a','E','DRAFT','SI861c0b6:160b9a90d8e:-7be8',NULL,2),
('ESI-7a96f3f7:160b961bda9:-7e5b','E','DRAFT','SI861c0b6:160b9a90d8e:-7be8',NULL,3),
('ESI-7a96f3f7:160b961bda9:-7e5c','E','DRAFT','SI861c0b6:160b9a90d8e:-7be8',NULL,4),
('ESI-7a96f3f7:160b961bda9:-7e5d','E','DRAFT','SI861c0b6:160b9a90d8e:-7be8',NULL,5),
('ESI-7a96f3f7:160b961bda9:-7ec8','E','DRAFT','SI2b2d0c91:160b98ef364:-768c',NULL,1),
('ESI-7a96f3f7:160b961bda9:-7ec9','E','DRAFT','SI2b2d0c91:160b98ef364:-768c',NULL,2),
('ESI-7a96f3f7:160b961bda9:-7eca','E','DRAFT','SI2b2d0c91:160b98ef364:-768c',NULL,3),
('ESI-7a96f3f7:160b961bda9:-7ecb','E','DRAFT','SI2b2d0c91:160b98ef364:-768c',NULL,4),
('ESI-7a96f3f7:160b961bda9:-7ecc','E','DRAFT','SI2b2d0c91:160b98ef364:-768c',NULL,5),
('ESI-7a96f3f7:160b961bda9:-7eee','E','DRAFT','SI2b2d0c91:160b98ef364:-7bb3',NULL,1),
('ESI-7a96f3f7:160b961bda9:-7eef','E','DRAFT','SI2b2d0c91:160b98ef364:-7bb3',NULL,2),
('ESI-7a96f3f7:160b961bda9:-7ef0','E','DRAFT','SI2b2d0c91:160b98ef364:-7bb3',NULL,3),
('ESI-7a96f3f7:160b961bda9:-7ef1','E','DRAFT','SI2b2d0c91:160b98ef364:-7bb3',NULL,4),
('ESI-7a96f3f7:160b961bda9:-7ef2','E','DRAFT','SI2b2d0c91:160b98ef364:-7bb3',NULL,5),
('QSI-32127dff:1607145d263:-7a92','Q','DRAFT','SI2200dba1:1607273eab4:-7d7e','TSET',1),
('QSI-32127dff:1607145d263:-7a93','Q','DRAFT','SI2200dba1:1607273eab4:-7d7e','TSET',2),
('QSI-32127dff:1607145d263:-7a94','Q','DRAFT','SI2200dba1:1607273eab4:-7d7e','TSET',3),
('QSI-32127dff:1607145d263:-7a95','Q','DRAFT','SI2200dba1:1607273eab4:-7d7e','TEST',4),
('QSI-32127dff:1607145d263:-7a96','Q','DRAFT','SI2200dba1:1607273eab4:-7d7e','TSET',5),
('QSI-32127dff:1607145d263:-7d8b','Q','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TEST',1),
('QSI-32127dff:1607145d263:-7d8c','Q','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TEST',2),
('QSI-32127dff:1607145d263:-7d8d','Q','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TSET',3),
('QSI-32127dff:1607145d263:-7d8e','Q','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TEST',4),
('QSI-32127dff:1607145d263:-7d8f','Q','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TEST',5),
('QSI-32127dff:1607145d263:-7fd8','Q','DRAFT','SI7ce7cfb7:16071462859:-7b7e','TESTS',1),
('QSI-32127dff:1607145d263:-7fd9','Q','DRAFT','SI7ce7cfb7:16071462859:-7b7e','TEST',2),
('QSI-32127dff:1607145d263:-7fda','Q','DRAFT','SI7ce7cfb7:16071462859:-7b7e','TEST',3),
('QSI-32127dff:1607145d263:-7fdb','Q','DRAFT','SI7ce7cfb7:16071462859:-7b7e','TEST',4),
('QSI-32127dff:1607145d263:-7fdc','Q','DRAFT','SI7ce7cfb7:16071462859:-7b7e','TEST',5),
('QSI-553f27e2:160be8caa7e:-7fdd','Q','DRAFT','SI-4658a457:160be8ceae5:-7c6f','TEST',1),
('QSI-553f27e2:160be8caa7e:-7fde','Q','DRAFT','SI-4658a457:160be8ceae5:-7c6f','TET',2),
('QSI-553f27e2:160be8caa7e:-7fdf','Q','DRAFT','SI-4658a457:160be8ceae5:-7c6f','TEST',3),
('QSI-553f27e2:160be8caa7e:-7fe0','Q','DRAFT','SI-4658a457:160be8ceae5:-7c6f','TEST',4),
('QSI-553f27e2:160be8caa7e:-7fe1','Q','DRAFT','SI-4658a457:160be8ceae5:-7c6f','TEST',5),
('QSI-7a96f3f7:160b961bda9:-7e63','Q','DRAFT','SI861c0b6:160b9a90d8e:-7be8',NULL,1),
('QSI-7a96f3f7:160b961bda9:-7e64','Q','DRAFT','SI861c0b6:160b9a90d8e:-7be8','1',2),
('QSI-7a96f3f7:160b961bda9:-7e65','Q','DRAFT','SI861c0b6:160b9a90d8e:-7be8','1',3),
('QSI-7a96f3f7:160b961bda9:-7e66','Q','DRAFT','SI861c0b6:160b9a90d8e:-7be8','1',4),
('QSI-7a96f3f7:160b961bda9:-7e67','Q','DRAFT','SI861c0b6:160b9a90d8e:-7be8','1',5),
('QSI-7a96f3f7:160b961bda9:-7ed2','Q','DRAFT','SI2b2d0c91:160b98ef364:-768c',NULL,1),
('QSI-7a96f3f7:160b961bda9:-7ed3','Q','DRAFT','SI2b2d0c91:160b98ef364:-768c','SET',2),
('QSI-7a96f3f7:160b961bda9:-7ed4','Q','DRAFT','SI2b2d0c91:160b98ef364:-768c','TET',3),
('QSI-7a96f3f7:160b961bda9:-7ed5','Q','DRAFT','SI2b2d0c91:160b98ef364:-768c','TEST',4),
('QSI-7a96f3f7:160b961bda9:-7ed6','Q','DRAFT','SI2b2d0c91:160b98ef364:-768c','TEST',5),
('QSI-7a96f3f7:160b961bda9:-7ef8','Q','DRAFT','SI2b2d0c91:160b98ef364:-7bb3','1',1),
('QSI-7a96f3f7:160b961bda9:-7ef9','Q','DRAFT','SI2b2d0c91:160b98ef364:-7bb3','TESTS',2),
('QSI-7a96f3f7:160b961bda9:-7efa','Q','DRAFT','SI2b2d0c91:160b98ef364:-7bb3','SETES',3),
('QSI-7a96f3f7:160b961bda9:-7efb','Q','DRAFT','SI2b2d0c91:160b98ef364:-7bb3','TEST',4),
('QSI-7a96f3f7:160b961bda9:-7efc','Q','DRAFT','SI2b2d0c91:160b98ef364:-7bb3','TEST',5),
('TSI-32127dff:1607145d263:-7a8d','T','DRAFT','SI2200dba1:1607273eab4:-7d7e',NULL,1),
('TSI-32127dff:1607145d263:-7a8e','T','DRAFT','SI2200dba1:1607273eab4:-7d7e',NULL,2),
('TSI-32127dff:1607145d263:-7a8f','T','DRAFT','SI2200dba1:1607273eab4:-7d7e',NULL,3),
('TSI-32127dff:1607145d263:-7a90','T','DRAFT','SI2200dba1:1607273eab4:-7d7e',NULL,4),
('TSI-32127dff:1607145d263:-7a91','T','DRAFT','SI2200dba1:1607273eab4:-7d7e',NULL,5),
('TSI-32127dff:1607145d263:-7d86','T','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TSET',1),
('TSI-32127dff:1607145d263:-7d87','T','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TEST',2),
('TSI-32127dff:1607145d263:-7d88','T','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TEST',3),
('TSI-32127dff:1607145d263:-7d89','T','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TSET',4),
('TSI-32127dff:1607145d263:-7d8a','T','DRAFT','SI-7ac1b0ff:16071c5415b:-7d7e','TES',5),
('TSI-32127dff:1607145d263:-7fd3','T','DRAFT','SI7ce7cfb7:16071462859:-7b7e',NULL,1),
('TSI-32127dff:1607145d263:-7fd4','T','DRAFT','SI7ce7cfb7:16071462859:-7b7e',NULL,2),
('TSI-32127dff:1607145d263:-7fd5','T','DRAFT','SI7ce7cfb7:16071462859:-7b7e',NULL,3),
('TSI-32127dff:1607145d263:-7fd6','T','DRAFT','SI7ce7cfb7:16071462859:-7b7e',NULL,4),
('TSI-32127dff:1607145d263:-7fd7','T','DRAFT','SI7ce7cfb7:16071462859:-7b7e',NULL,5),
('TSI-553f27e2:160be8caa7e:-7fd8','T','DRAFT','SI-4658a457:160be8ceae5:-7c6f',NULL,1),
('TSI-553f27e2:160be8caa7e:-7fd9','T','DRAFT','SI-4658a457:160be8ceae5:-7c6f',NULL,2),
('TSI-553f27e2:160be8caa7e:-7fda','T','DRAFT','SI-4658a457:160be8ceae5:-7c6f',NULL,3),
('TSI-553f27e2:160be8caa7e:-7fdb','T','DRAFT','SI-4658a457:160be8ceae5:-7c6f',NULL,4),
('TSI-553f27e2:160be8caa7e:-7fdc','T','DRAFT','SI-4658a457:160be8ceae5:-7c6f',NULL,5),
('TSI-7a96f3f7:160b961bda9:-7e5e','T','DRAFT','SI861c0b6:160b9a90d8e:-7be8',NULL,1),
('TSI-7a96f3f7:160b961bda9:-7e5f','T','DRAFT','SI861c0b6:160b9a90d8e:-7be8',NULL,2),
('TSI-7a96f3f7:160b961bda9:-7e60','T','DRAFT','SI861c0b6:160b9a90d8e:-7be8',NULL,3),
('TSI-7a96f3f7:160b961bda9:-7e61','T','DRAFT','SI861c0b6:160b9a90d8e:-7be8',NULL,4),
('TSI-7a96f3f7:160b961bda9:-7e62','T','DRAFT','SI861c0b6:160b9a90d8e:-7be8',NULL,5),
('TSI-7a96f3f7:160b961bda9:-7ecd','T','DRAFT','SI2b2d0c91:160b98ef364:-768c',NULL,1),
('TSI-7a96f3f7:160b961bda9:-7ece','T','DRAFT','SI2b2d0c91:160b98ef364:-768c',NULL,2),
('TSI-7a96f3f7:160b961bda9:-7ecf','T','DRAFT','SI2b2d0c91:160b98ef364:-768c',NULL,3),
('TSI-7a96f3f7:160b961bda9:-7ed0','T','DRAFT','SI2b2d0c91:160b98ef364:-768c',NULL,4),
('TSI-7a96f3f7:160b961bda9:-7ed1','T','DRAFT','SI2b2d0c91:160b98ef364:-768c',NULL,5),
('TSI-7a96f3f7:160b961bda9:-7ef3','T','DRAFT','SI2b2d0c91:160b98ef364:-7bb3',NULL,1),
('TSI-7a96f3f7:160b961bda9:-7ef4','T','DRAFT','SI2b2d0c91:160b98ef364:-7bb3',NULL,2),
('TSI-7a96f3f7:160b961bda9:-7ef5','T','DRAFT','SI2b2d0c91:160b98ef364:-7bb3',NULL,3),
('TSI-7a96f3f7:160b961bda9:-7ef6','T','DRAFT','SI2b2d0c91:160b98ef364:-7bb3',NULL,4),
('TSI-7a96f3f7:160b961bda9:-7ef7','T','DRAFT','SI2b2d0c91:160b98ef364:-7bb3',NULL,5);

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
('2017','SYSTEM','PMIS 2017','2017',NULL,NULL,NULL,NULL,'pmis',1,232),
('SI-4658a457:160be8ceae5:-7c6f','DRAFT','TEST','TEST',NULL,'test	','test	','SI2b2d0c91:160b98ef364:-76ce','ip',13,14),
('SI2b2d0c91:160b98ef364:-768c','DRAFT','IP','IP',1.00,'test','test','SI2b2d0c91:160b98ef364:-76ce','ip',15,16),
('SI2b2d0c91:160b98ef364:-76ce','DRAFT','DP','DP',10.00,'test','test','SI2b2d0c91:160b98ef364:-771e','dp',12,17),
('SI2b2d0c91:160b98ef364:-771e','DRAFT','OP','OP',9.00,'test','test','SI2b2d0c91:160b98ef364:-775e','op',11,18),
('SI2b2d0c91:160b98ef364:-775e','DRAFT','MFO','MFO',10.00,'test','test','2017','mfo',10,19),
('SI861c0b6:160b9a90d8e:-7be8','DRAFT','TSET','TEST',13.00,'test	test','test','SI861c0b6:160b9a90d8e:-7ccf','ip',5,6),
('SI861c0b6:160b9a90d8e:-7ccf','DRAFT','TEST','TEST',13.00,'test	','test	','SI861c0b6:160b9a90d8e:-7d0d','dp',4,7),
('SI861c0b6:160b9a90d8e:-7d0d','DRAFT','TSET','TEST',123.00,'tests	test','test	','SI861c0b6:160b9a90d8e:-7d39','op',3,8),
('SI861c0b6:160b9a90d8e:-7d39','DRAFT','TEST','TEST',10.00,'test	test	','tsete','2017','mfo',2,9);

/*Table structure for table `pmis_successindicators_org` */

DROP TABLE IF EXISTS `pmis_successindicators_org`;

CREATE TABLE `pmis_successindicators_org` (
  `siid` varchar(50) NOT NULL,
  `orgid` varchar(100) NOT NULL,
  PRIMARY KEY (`siid`,`orgid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pmis_successindicators_org` */

insert  into `pmis_successindicators_org`(`siid`,`orgid`) values 
('SI-1e2073bb:160b97187ba:-7c22','ff6936db-9692-4d0f-98a0-63c1ceda0f2f'),
('SI-34c93280:160687210e5:-7d8e','c9de1d79-c083-49d1-a07a-386db92d26c4'),
('SI-39cfa1c8:1606841b22d:-7d0a','cf36ee99-c52b-4d20-92fd-e8f78f39f622'),
('SI-42ebcabd:1606d5f3615:-7d3b','a3315bc5-5559-4037-b389-b825857a591c'),
('SI-5641d599:1604d9b7dbc:-7d9f','d13c1232-1126-4326-9d93-376bd43f6311'),
('SI-57dac735:1604e4c1549:-7d86','e7a2ebc0-b590-4e3a-9d1e-15b30aaf3c7a'),
('SI-57dac735:1604e4c1549:-7d86','T51a314fe:16067c4b40a:-7dc1'),
('SI-669515b1:1604dfac5e9:-7c46','2eb5a902-8a0b-4dd2-8391-29e389304d77'),
('SI-669515b1:1604dfac5e9:-7c46','38ea5c58-0386-48cd-8a90-bfb2cdf2ce34'),
('SI-670a813c:1604e0101c2:-7d05','ee27d911-3a99-458e-bedf-705d8ed075c2'),
('SI-74c3da69:1606855b182:-7d6b','T36bca281:160686df5d0:-7d15'),
('SI27b2c8fd:160683eee60:-7c8b','daef4532-b02f-492f-b403-12680e5c8997'),
('SI2b2d0c91:160b98ef364:-771e','2673d2e1-0b6c-4c5a-904d-a63109bbfbc3'),
('SI2b2d0c91:160b98ef364:-7a1a','-7a96f3f7:160b961bda9:-7ee6'),
('SI2b2d0c91:160b98ef364:-7c5f','-7a96f3f7:160b961bda9:-7f00'),
('SI2b2d0c91:160b98ef364:-7ccc','99ab60a7-b694-4718-9f1e-567a6ede56d2'),
('SI2d9cf08e:1604d812fe9:-7dbe','3e9b0513-3406-4869-bd53-4c05c68a76c4'),
('SI44f86f56:160b984a3fe:-7d3c','99ab60a7-b694-4718-9f1e-567a6ede56d2'),
('SI6a70165e:1604ed9aa76:-7d3e','b69be8d2-54fa-45f8-a2b6-0ae4006e49a8'),
('SI861c0b6:160b9a90d8e:-7ccf','2673d2e1-0b6c-4c5a-904d-a63109bbfbc3'),
('SI861c0b6:160b9a90d8e:-7d0d','99ab60a7-b694-4718-9f1e-567a6ede56d2'),
('SIe70d270:1604e46ff21:-7b8d','38ea5c58-0386-48cd-8a90-bfb2cdf2ce34'),
('SIe70d270:1604e46ff21:-7b8d','c7da0331-fe41-49d0-8fe4-5cc9e2af87e4'),
('SIe70d270:1604e46ff21:-7d1d','38ea5c58-0386-48cd-8a90-bfb2cdf2ce34'),
('SIe70d270:1604e46ff21:-7d9a','d13c1232-1126-4326-9d93-376bd43f6311');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
