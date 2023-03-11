/*
SQLyog Trial v13.1.8 (64 bit)
MySQL - 5.7.25-log : Database - mybatis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mybatis` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mybatis`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminId` int(16) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(16) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`adminId`,`adminName`,`password`) values 
(1,'pang','123'),
(2,'ad','1'),
(3,'a','1'),
(4,'ramin','123'),
(5,'ha','1');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cusId` int(16) NOT NULL AUTO_INCREMENT,
  `cusName` varchar(16) DEFAULT NULL,
  `address` varchar(16) DEFAULT NULL,
  `cusPhone` varchar(16) DEFAULT NULL,
  `cusType` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`cusId`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`cusId`,`cusName`,`address`,`cusPhone`,`cusType`) values 
(117,'哈','北4','123','包月'),
(120,'明','南7','北四','包年'),
(121,'明1','北四','1234','包年');

/*Table structure for table `order1` */

DROP TABLE IF EXISTS `order1`;

CREATE TABLE `order1` (
  `orderId` int(16) NOT NULL AUTO_INCREMENT,
  `orderCus` varchar(32) DEFAULT NULL,
  `orderUser` varchar(32) DEFAULT NULL,
  `orderTime` date DEFAULT NULL,
  `dueTime` date DEFAULT NULL,
  `orderType` varchar(16) DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Data for the table `order1` */

insert  into `order1`(`orderId`,`orderCus`,`orderUser`,`orderTime`,`dueTime`,`orderType`,`total`) values 
(27,'哈','管理员：pang','2022-06-11','2022-07-11','包月',30),
(30,'明','管理员：pang','2022-06-12','2022-08-12','包月',60),
(32,'啦啦','管理员：pang','2022-06-12','2022-07-12','包年',300);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int(16) NOT NULL AUTO_INCREMENT,
  `userName` varchar(16) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userId`,`userName`,`password`,`state`) values 
(19,'raminpang','1234','已禁');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
