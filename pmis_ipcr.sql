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

/*Table structure for table `pmis_ipcr` */

DROP TABLE IF EXISTS `pmis_ipcr`;

CREATE TABLE `pmis_ipcr` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(100) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
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

/*Data for the table `pmis_ipcr` */

insert  into `pmis_ipcr`(`objid`,`state`,`year`,`period`,`ipcrno`,`employee_PersonId`,`employee_Name_LastName`,`employee_Name_FirstName`,`employee_Name_MiddleName`,`employee_Name_NameExtension`,`employee_Name_PreNameTitle`,`employee_Name_PostNameTitle`,`orgid`,`org_name`,`org_code`,`dtfiled`,`reviewerid`,`reviewer_Name_LastName`,`reviewer_Name_FirstName`,`reviewer_Name_MiddleName`,`reviewer_Name_NameExtension`,`reviewer_Name_PreNameTitle`,`reviewer_Name_PostNameTitle`,`supervisorid`,`supervisor_Name_LastName`,`supervisor_Name_FirstName`,`supervisor_Name_MiddleName`,`supervisor_Name_NameExtension`,`supervisor_Name_PreNameTitle`,`supervisor_Name_PostNameTitle`,`approverid`,`approver_Name_LastName`,`approver_Name_FirstName`,`approver_Name_MiddleName`,`approver_Name_NameExtension`,`approver_Name_PreNameTitle`,`approver_Name_PostNameTitle`,`recordlog_datecreated`,`recordlog_createdbyuserid`,`recordlog_createdbyuser`,`recordlog_dateoflastupdate`,`recordlog_lastupdatedbyuserid`,`recordlog_lastupdatedbyuser`) values 
('IP-55b4a5ab:1617db1f575:-7df4','DRAFT','2017','2nd','PMIS20180200019','c9e2d8d0-2a51-4b4f-b064-4a4657086e54','CABATINGAN','DAVID PAUL','RUBIN','','','','bacb54b6-912e-4167-bd9b-7b361e83a8e7','Prov\'l. Information & Comm. Technology Division','PICTD','2017-06-13','ee8dcd4a-a9f2-40e8-b03c-89a5d2c52584','VICTORIA','JOEL','SARIT','','','','ee8dcd4a-a9f2-40e8-b03c-89a5d2c52584','VICTORIA','JOEL','SARIT','','','','223eb806-9d2c-4a04-9116-864e1e9b68e0','CAJES','NESTOR','ESTENZO','JR.',NULL,NULL,'2018-02-10 11:47:18','USR-30f29625:14e19261370:-79e5','RUFINO JOHN AGUILAR','2018-02-10 11:47:18','USR-30f29625:14e19261370:-79e5','RUFINO JOHN AGUILAR'),
('IP-55b4a5ab:1617db1f575:-7e8d','DRAFT','2017','2nd','PMIS20180200018','866fdb37-19b3-4f29-ba16-ea6307c8306d','HONCADA','AARON','BAYANG','','','','bacb54b6-912e-4167-bd9b-7b361e83a8e7','Prov\'l. Information & Comm. Technology Division','PICTD','2017-06-13','ee8dcd4a-a9f2-40e8-b03c-89a5d2c52584','VICTORIA','JOEL','SARIT','','','','ee8dcd4a-a9f2-40e8-b03c-89a5d2c52584','VICTORIA','JOEL','SARIT','','','','223eb806-9d2c-4a04-9116-864e1e9b68e0','CAJES','NESTOR','ESTENZO','JR.',NULL,NULL,'2018-02-10 11:33:49','USR-30f29625:14e19261370:-79e5','RUFINO JOHN AGUILAR','2018-02-10 11:33:49','USR-30f29625:14e19261370:-79e5','RUFINO JOHN AGUILAR'),
('IP-55b4a5ab:1617db1f575:-7f55','DRAFT','2017','2nd','PMIS20180200017','6569b49c-ec5f-48aa-8a7f-dcd656cc0ae3','MANGUBAT','JEFFREY','BARBANIDA','','','','bacb54b6-912e-4167-bd9b-7b361e83a8e7','Prov\'l. Information & Comm. Technology Division','PICTD','2017-06-14','ee8dcd4a-a9f2-40e8-b03c-89a5d2c52584','VICTORIA','JOEL','SARIT','','','','ee8dcd4a-a9f2-40e8-b03c-89a5d2c52584','VICTORIA','JOEL','SARIT','','','','223eb806-9d2c-4a04-9116-864e1e9b68e0','CAJES','NESTOR','ESTENZO','JR.',NULL,NULL,'2018-02-10 10:56:31','USR-30f29625:14e19261370:-79e5','RUFINO JOHN AGUILAR','2018-02-10 10:56:31','USR-30f29625:14e19261370:-79e5','RUFINO JOHN AGUILAR'),
('IP462cc9bc:16188a7ae2b:-79f9','DRAFT',NULL,'2nd','PMIS20180200013','97bc7bf9-d530-428b-8fa3-f6e09cf7f86c','PONTILLAS','JERRY LEO','ESPARAGOZA','','','','25ce79d7-ceb7-45dc-a816-e2b579d240d7','Provincial Detention and Rehabilitation Center','PGO - PDRC','2018-01-25','1e458498-9cd8-43b0-b408-608d26c9083d','GURREA','ALLAN','MERCADO','','','','1e458498-9cd8-43b0-b408-608d26c9083d','GURREA','ALLAN','MERCADO','','','','1e458498-9cd8-43b0-b408-608d26c9083d','GURREA','ALLAN','MERCADO','','','','2018-02-12 16:34:29','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN','2018-02-12 16:34:29','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN'),
('IP462cc9bc:16188a7ae2b:-7b72','DRAFT',NULL,'2nd','PMIS20180200010','4f59f303-2714-4803-9424-fccf475ea2c7','NICOR ','RINAH JANE','BEROY',NULL,NULL,NULL,'25ce79d7-ceb7-45dc-a816-e2b579d240d7','Provincial Detention and Rehabilitation Center','PGO - PDRC','2018-07-25','4c26ce51-15a6-4580-af1b-a33b89343548','RAVIDAS','NYMIA','MUÑEZ','','','','4c26ce51-15a6-4580-af1b-a33b89343548','RAVIDAS','NYMIA','MUÑEZ','','','','1e458498-9cd8-43b0-b408-608d26c9083d','GURREA','ALLAN','MERCADO','','','','2018-02-12 15:58:49','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN','2018-02-12 15:58:49','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN'),
('IP462cc9bc:16188a7ae2b:-7c93','DRAFT',NULL,'2nd','PMIS20180200009','4c26ce51-15a6-4580-af1b-a33b89343548','RAVIDAS','NYMIA','MUÑEZ','','','','25ce79d7-ceb7-45dc-a816-e2b579d240d7','Provincial Detention and Rehabilitation Center','PGO - PDRC','2018-01-25','1e458498-9cd8-43b0-b408-608d26c9083d','GURREA','ALLAN','MERCADO','','','','1e458498-9cd8-43b0-b408-608d26c9083d','GURREA','ALLAN','MERCADO','','','','223eb806-9d2c-4a04-9116-864e1e9b68e0','CAJES','NESTOR','ESTENZO','JR.',NULL,NULL,'2018-02-12 15:23:19','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN','2018-02-12 15:23:19','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN'),
('IP462cc9bc:16188a7ae2b:-7d29','DRAFT',NULL,'2nd','PMIS20180200008','79e7d6bf-3bbc-47fc-96ce-b97a4cb1c68d','BARQUEZ','MARIA LEAH','VILLANUEVA','','','','c2a5a3dc-0364-4401-99bf-3207a5ef78cc','Provincial Social Welfare & Development Office','PSWDO','2017-06-15','576d4f33-b2a4-4905-a389-b1294b941f61','VILLAHERMOSA','EFREN DOMICIANO','CAMOMOT','','','','576d4f33-b2a4-4905-a389-b1294b941f61','VILLAHERMOSA','EFREN DOMICIANO','CAMOMOT','','','','d62bdedc-f9b7-49f8-bfab-ae73cc2d0ea0','CAIÑA','CEFERINA','OBRE','','','','2018-02-12 15:12:02','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN','2018-02-12 15:12:02','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN'),
('IP462cc9bc:16188a7ae2b:-7dc0','DRAFT',NULL,'2nd','PMIS20180200006','9dfaa09c-f252-4e1c-b0b6-3aa75be491c8','AQUINO','HELEN','SAMPANI','','','','c2a5a3dc-0364-4401-99bf-3207a5ef78cc','Provincial Social Welfare & Development Office','PSWDO','2017-06-13','9dfaa09c-f252-4e1c-b0b6-3aa75be491c8','AQUINO','HELEN','SAMPANI','','','','4d23e0cf-fafc-4d9a-bb00-5bbe068a1535','MECISAMENTE','ROLANDO','PARINASAN','','','','4d23e0cf-fafc-4d9a-bb00-5bbe068a1535','MECISAMENTE','ROLANDO','PARINASAN','','','','2018-02-12 14:57:37','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN','2018-02-12 14:57:37','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN'),
('IP462cc9bc:16188a7ae2b:-7e7c','DRAFT',NULL,'2nd','PMIS20180200005','aa1d44c4-0ade-45d9-b053-5e71d33c77db','ARDINA','LORELIE','CASIPLE','','','','c2a5a3dc-0364-4401-99bf-3207a5ef78cc','Provincial Social Welfare & Development Office','PSWDO','2017-06-13','aa1d44c4-0ade-45d9-b053-5e71d33c77db','ARDINA','LORELIE','CASIPLE','','','','d62bdedc-f9b7-49f8-bfab-ae73cc2d0ea0','CAIÑA','CEFERINA','OBRE','','','','d62bdedc-f9b7-49f8-bfab-ae73cc2d0ea0','CAIÑA','CEFERINA','OBRE','','','','2018-02-12 14:32:39','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN','2018-02-12 14:32:39','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN'),
('IP462cc9bc:16188a7ae2b:-7f45','DRAFT',NULL,'2nd','PMIS20180200004','be803fe3-1673-41bc-b215-f831227f939a','ALIMA','MODESTO','PAIRAT','','','','c2a5a3dc-0364-4401-99bf-3207a5ef78cc','Provincial Social Welfare & Development Office','PSWDO','2017-06-15','be803fe3-1673-41bc-b215-f831227f939a','ALIMA','MODESTO','PAIRAT','','','','a38aad8a-cc30-40a0-b811-906397f091fc','RAMOS','DOMINADOR','CAHAPON','','','','a38aad8a-cc30-40a0-b811-906397f091fc','RAMOS','DOMINADOR','CAHAPON','','','','2018-02-12 14:16:43','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN','2018-02-12 14:16:43','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN'),
('IP462cc9bc:16188a7ae2b:-7feb','DRAFT',NULL,'2nd','PMIS20180200003','f17ecbba-c0c1-48d2-83db-775972ac0aa6','ABALOS, JR.','SOTERO','DAKO','','','','c2a5a3dc-0364-4401-99bf-3207a5ef78cc','Provincial Social Welfare & Development Office','PSWDO','2018-01-23','f17ecbba-c0c1-48d2-83db-775972ac0aa6','ABALOS, JR.','SOTERO','DAKO','','','','a38aad8a-cc30-40a0-b811-906397f091fc','RAMOS','DOMINADOR','CAHAPON','','','','a38aad8a-cc30-40a0-b811-906397f091fc','RAMOS','DOMINADOR','CAHAPON','','','','2018-02-12 14:05:03','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN','2018-02-12 14:05:03','USR-77cec7ee:16187a4e97a:-7e06','RAIN RAIN ULAN');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
