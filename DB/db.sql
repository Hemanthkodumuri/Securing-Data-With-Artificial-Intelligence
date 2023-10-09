/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - mona
*********************************************************************
Server version : 5.0.22-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `mona`;

USE `mona`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `UserName` varchar(20) default NULL,
  `password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlogin` */

insert into `adminlogin` (`UserName`,`password`) values ('ADMIN','ADMIN');

/*Table structure for table `groupname` */

DROP TABLE IF EXISTS `groupname`;

CREATE TABLE `groupname` (
  `groupname` varchar(50) NOT NULL default '',
  `product` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `groupname` */

insert into `groupname` (`groupname`,`product`) values ('ran','thebestsecretkey');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `UserName` varchar(50) NOT NULL default '',
  `Password` varchar(50) default '',
  `Email` varchar(50) default '',
  `groupname` varchar(50) default '',
  PRIMARY KEY  (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert into `login` (`UserName`,`Password`,`Email`,`groupname`) values ('r','r','ranjith.triplen@gmail.com','ran');

/*Table structure for table `othergroup` */

DROP TABLE IF EXISTS `othergroup`;

CREATE TABLE `othergroup` (
  `UserName` varchar(25) default NULL,
  `groupname` varchar(25) default NULL,
  `Requestgroup` varchar(25) default NULL,
  `filename` varchar(50) default NULL,
  `Status` varchar(50) default NULL,
  `usercount` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `othergroup` */

/*Table structure for table `startable` */

DROP TABLE IF EXISTS `startable`;

CREATE TABLE `startable` (
  `UserName` varchar(50) default NULL,
  `share1` varchar(999) default '',
  `share2` varchar(999) default '',
  `share3` varchar(999) default '',
  `share4` varchar(999) default '',
  `share5` varchar(999) default '',
  `share6` varchar(999) default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `startable` */

/*Table structure for table `userprofile` */

DROP TABLE IF EXISTS `userprofile`;

CREATE TABLE `userprofile` (
  `UserName` varchar(50) default NULL,
  `groupname` varchar(30) default NULL,
  `filename` varchar(150) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userprofile` */

SET SQL_MODE=@OLD_SQL_MODE;