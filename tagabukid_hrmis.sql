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

/*Table structure for table `pmis_ipcr_behavioral` */

DROP TABLE IF EXISTS `pmis_ipcr_behavioral`;

CREATE TABLE `pmis_ipcr_behavioral` (
  `objid` varchar(50) NOT NULL,
  `ipcrid` varchar(50) NOT NULL,
  `behavioralid` varchar(50) NOT NULL,
  `order` varchar(10) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `behavior` varchar(100) DEFAULT NULL,
  `definition` varchar(100) DEFAULT NULL,
  `successindicator` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pmis_ipcr_behavioral` */

/*Table structure for table `pmis_ipcr_behavioral_items` */

DROP TABLE IF EXISTS `pmis_ipcr_behavioral_items`;

CREATE TABLE `pmis_ipcr_behavioral_items` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `behavioralid` varchar(50) NOT NULL,
  `ratings` int(10) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pmis_ipcr_behavioral_items` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
