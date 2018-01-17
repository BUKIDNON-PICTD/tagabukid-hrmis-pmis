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
  `objid` varchar(200) NOT NULL,
  `ipcrid` varchar(200) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `commentandremarks` text,
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

/*Table structure for table `pmis_ipcr_behavioral_masterfile` */

DROP TABLE IF EXISTS `pmis_ipcr_behavioral_masterfile`;

CREATE TABLE `pmis_ipcr_behavioral_masterfile` (
  `objid` varchar(100) NOT NULL,
  `sortorder` int(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `behavior` text,
  `definition` text,
  `successindicator` text,
  `remarks` text,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pmis_ipcr_behavioral_masterfile` */

insert  into `pmis_ipcr_behavioral_masterfile`(`objid`,`sortorder`,`type`,`behavior`,`definition`,`successindicator`,`remarks`) values 
('b-3481e9fd:160fe07b2f3:-7fa3',7,'Peer','PUNCTUALITY AND ATTENDANCE','Behvior of the Employee/Official in coming to office on the or be present at work to complete assigned responsiblities','Please refer to the description below.','test'),
('b-3481e9fd:160fe07b2f3:-7fad',6,'Peer','CUSTOMER SERVICE EXCELLENCE','Identifying and responding to current and future customer(client, constituents) needs; providing service excellence to internal and external customers, and extend excellent service experience for the customer beyond their expectations.','Does he/she elicis positive feedback from customers; Does he/she goes out of his way to assist a customer and ensures customer satisfaction in every tasks performed howker small it is?','test'),
('b-3481e9fd:160fe07b2f3:-7fb5',5,'Peer','COOMMITMENT AND DEDICATION','Perom assigned functions/tasks with passion to inspire and create an environment that encourages positive interaction and callaborateion among employees/talents of the organization and guides emebers towards the accomplishments of the agency straegic goals.','Does he/she inspires others to work hard and perform their tasks to the best of their ability? Does he/she encourages copperation and teamwork among co-workers?','test'),
('b-3481e9fd:160fe07b2f3:-7fbc',4,'Peer','CONDUCT AND ETHICAL STANDARDS','Performing the duties with utmost responsibility, integrity, competence and loyalty, act with patriotism and justice, lead modest lives, and uphold public interest over personal interest','Does the employee shows proper conduct in the performance oh his/her duty and in dealing with customers?','test'),
('b-3481e9fd:160fe07b2f3:-7fc6',3,'Peer','INITIATIVE','Has the ability to assess and initaite things independently; The power or opportunity to act or take charge before others do','Is he/she a self-starter or waits the be told what to do; Does he/she come up with constructive ideas or methods to improve hs/her work? Can he/she work with minimal supervision?','test'),
('b-3481e9fd:160fe07b2f3:-7fcd',2,'Peer','DILIGENCE','Persistent and hard working in the performance of his/her tasks and responsibilities.','Does he/she look for ways to continue working/finish his/her task een in difficult situations?','test'),
('b-3481e9fd:160fe07b2f3:-7fd5',1,'Peer','DEPENDABILITY/RELIABILITY','The extent of which the employee can be relied upon in the exection of assigned tasks and his ability to follow instructions and resolve problems with minimal supervision.','Does he/she deliver what is asked?','test');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
