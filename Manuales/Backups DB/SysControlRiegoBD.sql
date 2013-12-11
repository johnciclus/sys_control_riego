/*
SQLyog Enterprise - MySQL GUI v6.03
Host - 5.0.67-community-nt : Database - basesystemteleco
*********************************************************************
Server version : 5.0.67-community-nt
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `basesystemteleco`;

USE `basesystemteleco`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `aplicacion_riego` */

CREATE TABLE `aplicacion_riego` (
  `id` int(11) NOT NULL auto_increment,
  `maczigbee` varchar(50) NOT NULL,
  `estado` int(1) default NULL,
  `fecha` date default NULL,
  `hora` time default NULL,
  PRIMARY KEY  (`id`),
  KEY `maczigbee` (`maczigbee`),
  CONSTRAINT `aplicacion_riego_ibfk_1` FOREIGN KEY (`maczigbee`) REFERENCES `registro_zigbee` (`maczigbee`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

/*Data for the table `aplicacion_riego` */

insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (1,'0013A200407C5596',0,'2013-04-27','08:00:00');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (2,'0013A200407C5596',1,'2013-04-27','08:15:00');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (3,'0013A200407C5596',1,'2013-04-27','08:30:00');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (4,'0013A200407C5596',0,'2013-04-27','08:45:00');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (5,'0013A200407C5596',1,'2013-04-28','11:15:28');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (6,'0013A200407C5596',1,'2013-04-28','11:16:19');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (7,'0013A200407C5596',0,'2013-04-28','11:20:22');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (8,'0013A200407C5596',0,'2013-04-28','11:21:36');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (9,'0013A200407C5596',0,'2013-04-28','11:22:00');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (10,'0013A200407C5596',0,'2013-04-28','11:24:56');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (11,'0013A200407C5596',0,'2013-04-28','11:26:05');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (12,'0013A200407C5596',0,'2013-04-28','11:27:33');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (13,'0013A200407C5596',0,'2013-04-28','11:28:33');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (14,'0013A200407C5596',0,'2013-04-28','11:29:35');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (15,'0013A200407C5596',0,'2013-04-28','11:30:02');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (16,'0013A200407C5596',0,'2013-04-28','11:31:19');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (17,'0013A200407C5596',0,'2013-04-28','11:33:08');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (18,'0013A200407C5596',0,'2013-04-28','11:33:33');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (19,'0013A200407C5596',0,'2013-04-28','11:35:11');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (20,'0013A200407C5596',0,'2013-04-28','11:44:50');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (21,'0013A200407C5596',0,'2013-04-28','11:46:11');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (22,'0013A200407C5596',0,'2013-04-28','12:09:32');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (23,'0013A200407C5596',0,'2013-04-28','12:10:41');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (24,'0013A200407C5596',0,'2013-04-28','12:12:56');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (25,'0013A200407C5596',1,'2013-04-28','12:13:26');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (26,'0013A200407C5596',1,'2013-04-28','12:16:40');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (27,'0013A200407C5596',1,'2013-04-28','12:22:38');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (28,'0013A200407C5596',1,'2013-04-28','12:26:22');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (29,'0013A200407C5596',1,'2013-04-28','12:26:53');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (30,'0013A200407C5596',1,'2013-04-28','12:28:16');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (31,'0013A200407C5596',1,'2013-04-28','12:28:51');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (32,'0013A200407C5596',1,'2013-04-28','12:29:54');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (33,'0013A200407C5596',1,'2013-04-28','12:30:26');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (34,'0013A200407C5596',1,'2013-04-28','12:31:36');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (35,'0013A200407C5596',1,'2013-04-28','12:31:49');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (36,'0013A200407C5596',1,'2013-04-28','12:31:59');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (37,'0013A200407C5596',1,'2013-04-28','12:32:37');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (38,'0013A200407C5596',1,'2013-04-28','12:32:46');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (39,'0013A200407C5596',1,'2013-04-28','12:33:13');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (40,'0013A200407C5596',1,'2013-04-28','12:34:13');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (41,'0013A200407C5596',1,'2013-04-28','12:34:57');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (42,'0013A200407C5596',1,'2013-04-28','12:39:29');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (43,'0013A200407C5596',0,'2013-04-28','12:40:05');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (44,'0013A200407C5596',1,'2013-04-28','12:40:25');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (45,'0013A200407C5596',1,'2013-04-28','12:41:20');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (46,'0013A200407C5596',0,'2013-04-28','12:42:01');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (47,'0013A200407C5596',0,'2013-04-28','12:42:36');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (48,'0013A200407C5596',0,'2013-04-28','13:52:44');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (49,'0013A200407C5596',0,'2013-04-28','13:53:43');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (50,'0013A200407C5596',0,'2013-04-28','13:54:36');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (51,'0013A200407C5596',0,'2013-04-28','13:54:49');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (52,'0013A200407C5596',0,'2013-04-28','13:55:06');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (53,'0013A200407C5596',0,'2013-04-28','13:55:22');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (54,'0013A200407C5596',0,'2013-04-28','13:58:23');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (55,'0013A200407C5596',0,'2013-04-28','14:05:09');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (56,'0013A200407C5596',0,'2013-04-28','14:05:40');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (57,'0013A200407C5596',0,'2013-04-28','14:08:08');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (58,'0013A200407C5596',0,'2013-04-28','14:09:05');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (59,'0013A200407C5596',0,'2013-04-28','14:09:22');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (60,'0013A200407C5596',0,'2013-04-28','14:14:56');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (61,'0013A200407C5596',0,'2013-04-28','14:16:12');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (62,'0013A200407C5596',0,'2013-04-28','14:18:54');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (63,'0013A200407C5596',0,'2013-04-28','14:19:35');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (64,'0013A200407C5596',0,'2013-04-28','14:20:44');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (65,'0013A200407C5596',0,'2013-04-28','14:21:20');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (66,'0013A200407C5596',0,'2013-04-28','14:21:40');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (67,'0013A200407C5596',1,'2013-04-28','14:23:25');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (68,'0013A200407C5596',1,'2013-04-28','14:27:38');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (69,'0013A200407C5596',1,'2013-04-28','14:28:42');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (70,'0013A200407C5596',0,'2013-04-28','14:29:07');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (71,'0013A200407C5596',0,'2013-04-28','14:30:19');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (72,'0013A200407C5596',0,'2013-04-28','14:35:10');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (73,'0013A200407C5596',0,'2013-04-28','14:35:24');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (74,'0013A200407C5596',0,'2013-04-28','14:36:35');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (75,'0013A200407C5596',0,'2013-04-28','14:38:20');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (76,'0013A200407C5596',0,'2013-04-28','14:40:01');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (77,'0013A200407C5596',0,'2013-04-28','14:44:35');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (78,'0013A200407C5596',0,'2013-04-28','14:52:09');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (79,'0013A200407C5596',0,'2013-04-28','14:54:39');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (80,'0013A200407C5596',0,'2013-04-28','14:56:05');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (81,'0013A200407C5596',0,'2013-04-28','14:56:40');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (82,'0013A200407C5596',0,'2013-04-28','14:57:16');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (83,'0013A200407C5596',1,'2013-04-28','14:58:09');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (84,'0013A200407C5596',0,'2013-04-28','16:22:27');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (85,'0013A200407C5596',0,'2013-04-28','16:22:57');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (86,'0013A200407C5596',0,'2013-04-28','16:24:39');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (87,'0013A200407C5596',0,'2013-04-28','16:26:51');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (88,'0013A200407C5596',0,'2013-04-28','16:27:51');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (89,'0013A200407C5596',0,'2013-04-28','16:30:02');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (90,'0013A200407C5596',0,'2013-04-28','16:31:48');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (91,'0013A200407C5596',0,'2013-04-28','16:32:29');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (92,'0013A200407C5596',0,'2013-04-28','16:34:02');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (93,'0013A200407C5596',0,'2013-04-28','16:35:44');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (94,'0013A200407C5596',0,'2013-04-28','16:36:19');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (95,'0013A200407C5596',0,'2013-04-28','16:41:04');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (96,'0013A200407C5596',0,'2013-04-28','16:41:45');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (97,'0013A200407C5596',0,'2013-04-28','16:42:18');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (98,'0013A200407C5596',0,'2013-04-28','16:43:33');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (99,'0013A200407C5596',0,'2013-04-28','16:44:04');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (100,'0013A200407C5596',0,'2013-04-28','16:45:39');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (101,'0013A200407C5596',0,'2013-04-28','16:46:12');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (102,'0013A200407C5596',0,'2013-04-28','16:46:51');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (103,'0013A200407C5596',0,'2013-04-28','16:48:54');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (104,'0013A200407C5596',0,'2013-04-28','16:49:17');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (105,'0013A200407C5596',0,'2013-04-28','16:51:52');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (106,'0013A200407C5596',0,'2013-04-28','16:52:26');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (107,'0013A200407C5596',0,'2013-05-08','11:09:47');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (108,'0013A200407C5596',0,'2013-06-21','05:16:01');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (109,'0013A200407C5596',0,'2013-06-21','05:28:22');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (110,'0013A200407C5596',0,'2013-06-21','05:30:03');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (111,'0013A200407C5596',0,'2013-06-21','05:31:50');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (112,'0013A200407C5596',1,'2013-06-21','05:32:23');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (113,'0013A200407C5596',1,'2013-06-21','05:39:09');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (114,'0013A200407C5596',1,'2013-06-21','06:08:17');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (115,'0013A200407C5596',0,'2013-06-21','06:08:34');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (116,'0013A200407C5596',0,'2013-06-21','06:08:49');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (117,'0013A200407C5596',1,'2013-06-21','06:09:08');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (118,'0013A200407C5596',0,'2013-06-21','06:09:48');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (119,'0013A200407C5596',0,'2013-06-21','06:09:55');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (120,'0013A200407C5596',0,'2013-06-21','06:10:04');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (121,'0013A200407C5596',1,'2013-06-21','06:10:12');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (122,'0013A200407C5596',0,'2013-06-21','06:14:38');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (123,'0013A200407C5596',1,'2013-06-21','06:14:50');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (124,'0013A200407C5596',1,'2013-06-21','07:26:30');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (125,'0013A200407C5596',1,'2013-06-21','07:29:33');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (126,'0013A200407C5596',1,'2013-06-21','07:29:47');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (127,'0013A200407C5596',1,'2013-06-21','07:31:26');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (128,'0013A200407C5596',1,'2013-06-21','07:34:37');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (129,'0013A200407C5596',1,'2013-06-21','09:46:05');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (130,'0013A200407C5596',1,'2013-06-21','09:47:34');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (131,'0013A200407C5596',1,'2013-06-21','09:48:41');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (132,'0013A200407C5596',1,'2013-06-21','09:52:38');
insert  into `aplicacion_riego`(`id`,`maczigbee`,`estado`,`fecha`,`hora`) values (133,'0013A200407C5596',1,'2013-06-21','09:54:52');

/*Table structure for table `cultivo` */

CREATE TABLE `cultivo` (
  `codcult` int(11) NOT NULL auto_increment,
  `nomcult` varchar(25) default NULL,
  `denspoblacion` int(25) default NULL,
  `fechacult` date default NULL,
  `areacult` int(25) default NULL,
  `docus` int(11) NOT NULL,
  `idtiposiembra` int(11) NOT NULL,
  PRIMARY KEY  (`codcult`),
  KEY `docus` (`docus`),
  KEY `idtiposiembra` (`idtiposiembra`),
  CONSTRAINT `cultivo_ibfk_1` FOREIGN KEY (`docus`) REFERENCES `usuario` (`docus`),
  CONSTRAINT `cultivo_ibfk_2` FOREIGN KEY (`idtiposiembra`) REFERENCES `tipo_siembra` (`idtiposiembra`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `cultivo` */

insert  into `cultivo`(`codcult`,`nomcult`,`denspoblacion`,`fechacult`,`areacult`,`docus`,`idtiposiembra`) values (1,'AJI',34,'2011-01-02',213,91542170,2);
insert  into `cultivo`(`codcult`,`nomcult`,`denspoblacion`,`fechacult`,`areacult`,`docus`,`idtiposiembra`) values (2,'Tomate',23,'2013-05-08',34,91542170,1);

/*Table structure for table `etapa_crecimiento` */

CREATE TABLE `etapa_crecimiento` (
  `idetapa` int(11) NOT NULL auto_increment,
  `codcult` int(11) NOT NULL default '0',
  `nometapa` varchar(25) default NULL,
  `limhum` int(50) default NULL,
  `duracion` int(11) default NULL,
  `fechaIni` date default NULL,
  `fechaFin` date default NULL,
  PRIMARY KEY  (`idetapa`,`codcult`),
  KEY `codcult` (`codcult`),
  CONSTRAINT `etapa_crecimiento_ibfk_1` FOREIGN KEY (`codcult`) REFERENCES `cultivo` (`codcult`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `etapa_crecimiento` */

insert  into `etapa_crecimiento`(`idetapa`,`codcult`,`nometapa`,`limhum`,`duracion`,`fechaIni`,`fechaFin`) values (1,1,'Vegetativa',60,30,NULL,NULL);
insert  into `etapa_crecimiento`(`idetapa`,`codcult`,`nometapa`,`limhum`,`duracion`,`fechaIni`,`fechaFin`) values (2,1,'Productiva',40,60,NULL,NULL);

/*Table structure for table `medicion_variables` */

CREATE TABLE `medicion_variables` (
  `idregvar` int(11) NOT NULL auto_increment,
  `idtipovar` int(11) NOT NULL,
  `maczigbee` varchar(50) NOT NULL,
  `varhum` int(50) default NULL,
  `fechamedicion` date default NULL,
  `HoraRegistro` time default NULL,
  PRIMARY KEY  (`idregvar`),
  KEY `idtipovar` (`idtipovar`),
  KEY `maczigbee` (`maczigbee`),
  CONSTRAINT `medicion_variables_ibfk_1` FOREIGN KEY (`idtipovar`) REFERENCES `tipo_variables` (`idtipovar`),
  CONSTRAINT `medicion_variables_ibfk_2` FOREIGN KEY (`maczigbee`) REFERENCES `registro_zigbee` (`maczigbee`)
) ENGINE=InnoDB AUTO_INCREMENT=880 DEFAULT CHARSET=latin1;

/*Data for the table `medicion_variables` */

insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (1,1,'0013A200406BF818',67,'2013-04-19','09:45:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (2,1,'0013A200406BF818',66,'2013-04-19','09:45:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (3,1,'0013A200406BF818',67,'2013-04-19','09:46:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (4,1,'0013A200406BF818',66,'2013-04-19','09:46:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (5,1,'0013A200406BF818',67,'2013-04-19','09:46:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (6,1,'0013A200406BF818',67,'2013-04-19','09:46:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (7,1,'0013A200406BF818',67,'2013-04-19','09:46:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (8,1,'0013A200406BF818',66,'2013-04-19','09:46:51');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (9,1,'0013A200406BF818',67,'2013-04-19','09:47:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (10,1,'0013A200406BF818',66,'2013-04-19','09:47:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (11,1,'0013A200406BF818',67,'2013-04-19','09:47:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (12,1,'0013A200406BF818',66,'2013-04-19','09:47:30');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (13,1,'0013A200406BF818',67,'2013-04-19','09:47:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (14,1,'0013A200406BF818',66,'2013-04-19','09:47:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (15,1,'0013A200406BF818',67,'2013-04-19','09:48:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (16,1,'0013A200406BF818',66,'2013-04-19','09:48:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (17,1,'0013A200406BF818',67,'2013-04-19','09:48:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (18,1,'0013A200406BF818',66,'2013-04-19','09:48:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (19,1,'0013A200406BF818',67,'2013-04-19','09:48:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (20,1,'0013A200406BF818',66,'2013-04-19','09:48:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (21,1,'0013A200406BF818',67,'2013-04-19','09:49:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (22,1,'0013A200406BF818',66,'2013-04-19','09:49:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (23,1,'0013A200406BF818',67,'2013-04-19','09:49:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (24,1,'0013A200406BF818',66,'2013-04-19','09:49:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (25,1,'0013A200406BF818',67,'2013-04-19','09:49:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (26,1,'0013A200406BF818',66,'2013-04-19','09:49:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (27,1,'0013A200406BF818',67,'2013-04-19','09:50:03');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (28,1,'0013A200406BF818',66,'2013-04-19','09:50:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (29,1,'0013A200406BF818',67,'2013-04-19','09:50:23');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (30,1,'0013A200406BF818',66,'2013-04-19','09:50:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (31,1,'0013A200406BF818',67,'2013-04-19','09:50:43');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (32,1,'0013A200406BF818',66,'2013-04-19','09:50:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (33,1,'0013A200406BF818',67,'2013-04-19','09:51:03');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (34,1,'0013A200406BF818',66,'2013-04-19','09:51:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (35,1,'0013A200406BF818',67,'2013-04-19','09:51:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (36,1,'0013A200406BF818',66,'2013-04-19','09:51:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (37,1,'0013A200406BF818',67,'2013-04-19','09:51:42');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (38,1,'0013A200406BF818',66,'2013-04-19','09:51:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (39,1,'0013A200406BF818',67,'2013-04-19','09:52:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (40,1,'0013A200406BF818',66,'2013-04-19','09:52:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (41,1,'0013A200406BF818',67,'2013-04-19','09:52:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (42,1,'0013A200406BF818',66,'2013-04-19','09:52:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (43,1,'0013A200406BF818',67,'2013-04-19','09:52:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (44,1,'0013A200406BF818',66,'2013-04-19','09:52:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (45,1,'0013A200406BF818',67,'2013-04-19','09:53:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (46,1,'0013A200406BF818',66,'2013-04-19','09:53:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (47,1,'0013A200406BF818',67,'2013-04-19','09:53:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (48,1,'0013A200406BF818',66,'2013-04-19','09:53:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (49,1,'0013A200406BF818',67,'2013-04-19','09:53:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (50,1,'0013A200406BF818',66,'2013-04-19','09:53:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (51,1,'0013A200406BF818',67,'2013-04-19','09:54:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (52,1,'0013A200406BF818',66,'2013-04-19','09:54:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (53,1,'0013A200406BF818',67,'2013-04-19','09:54:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (54,1,'0013A200406BF818',66,'2013-04-19','09:54:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (55,1,'0013A200406BF818',67,'2013-04-19','09:54:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (56,1,'0013A200406BF818',66,'2013-04-19','09:54:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (57,1,'0013A200406BF818',67,'2013-04-19','09:55:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (58,1,'0013A200406BF818',66,'2013-04-19','09:55:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (59,1,'0013A200406BF818',67,'2013-04-19','09:55:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (60,1,'0013A200406BF818',66,'2013-04-19','09:55:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (61,1,'0013A200406BF818',67,'2013-04-19','09:55:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (62,1,'0013A200406BF818',66,'2013-04-19','09:55:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (63,1,'0013A200406BF818',67,'2013-04-19','09:55:59');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (64,1,'0013A200406BF818',66,'2013-04-19','09:56:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (65,1,'0013A200406BF818',67,'2013-04-19','09:56:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (66,1,'0013A200406BF818',66,'2013-04-19','09:56:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (67,1,'0013A200406BF818',67,'2013-04-19','09:56:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (68,1,'0013A200406BF818',66,'2013-04-19','09:56:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (69,1,'0013A200406BF818',67,'2013-04-19','09:56:58');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (70,1,'0013A200406BF818',66,'2013-04-19','09:57:03');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (71,1,'0013A200406BF818',67,'2013-04-19','09:57:18');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (72,1,'0013A200406BF818',66,'2013-04-19','09:57:23');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (73,1,'0013A200406BF818',67,'2013-04-19','09:57:38');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (74,1,'0013A200406BF818',66,'2013-04-19','09:57:43');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (75,1,'0013A200406BF818',67,'2013-04-19','09:57:58');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (76,1,'0013A200406BF818',66,'2013-04-19','09:58:03');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (77,1,'0013A200406BF818',67,'2013-04-19','09:58:17');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (78,1,'0013A200406BF818',66,'2013-04-19','09:58:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (79,1,'0013A200406BF818',67,'2013-04-19','09:58:37');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (80,1,'0013A200406BF818',66,'2013-04-19','09:58:42');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (81,1,'0013A200406BF818',67,'2013-04-19','09:58:57');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (82,1,'0013A200406BF818',66,'2013-04-19','09:59:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (83,1,'0013A200406BF818',67,'2013-04-19','09:59:17');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (84,1,'0013A200406BF818',66,'2013-04-19','09:59:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (85,1,'0013A200406BF818',67,'2013-04-19','09:59:37');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (86,1,'0013A200406BF818',66,'2013-04-19','09:59:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (87,1,'0013A200406BF818',67,'2013-04-19','09:59:56');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (88,1,'0013A200406BF818',66,'2013-04-19','10:00:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (89,1,'0013A200406BF818',67,'2013-04-19','10:00:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (90,1,'0013A200406BF818',67,'2013-04-19','10:00:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (91,1,'0013A200406BF818',67,'2013-04-19','10:00:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (92,1,'0013A200406BF818',66,'2013-04-19','10:00:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (93,1,'0013A200406BF818',67,'2013-04-19','10:00:56');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (94,1,'0013A200406BF818',66,'2013-04-19','10:01:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (95,1,'0013A200406BF818',67,'2013-04-19','10:01:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (96,1,'0013A200406BF818',66,'2013-04-19','10:01:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (97,1,'0013A200406BF818',67,'2013-04-19','10:01:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (98,1,'0013A200406BF818',66,'2013-04-19','10:01:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (99,1,'0013A200406BF818',67,'2013-04-19','10:01:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (100,1,'0013A200406BF818',66,'2013-04-19','10:02:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (101,1,'0013A200406BF818',67,'2013-04-19','10:02:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (102,1,'0013A200406BF818',66,'2013-04-19','10:02:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (103,1,'0013A200406BF818',67,'2013-04-19','10:02:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (104,1,'0013A200406BF818',66,'2013-04-19','10:02:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (105,1,'0013A200406BF818',67,'2013-04-19','10:02:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (106,1,'0013A200406BF818',66,'2013-04-19','10:02:59');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (107,1,'0013A200406BF818',67,'2013-04-19','10:03:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (108,1,'0013A200406BF818',66,'2013-04-19','10:03:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (109,1,'0013A200406BF818',67,'2013-04-19','10:03:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (110,1,'0013A200406BF818',66,'2013-04-19','10:03:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (111,1,'0013A200406BF818',67,'2013-04-19','10:03:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (112,1,'0013A200406BF818',66,'2013-04-19','10:03:58');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (113,1,'0013A200406BF818',67,'2013-04-19','10:04:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (114,1,'0013A200406BF818',66,'2013-04-19','10:04:18');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (115,1,'0013A200406BF818',67,'2013-04-19','10:04:33');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (116,1,'0013A200406BF818',66,'2013-04-19','10:04:38');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (117,1,'0013A200406BF818',67,'2013-04-19','10:04:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (118,1,'0013A200406BF818',66,'2013-04-19','10:04:58');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (119,1,'0013A200406BF818',67,'2013-04-19','10:05:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (120,1,'0013A200406BF818',66,'2013-04-19','10:05:18');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (121,1,'0013A200406BF818',67,'2013-04-19','10:05:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (122,1,'0013A200406BF818',66,'2013-04-19','10:05:37');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (123,1,'0013A200406BF818',67,'2013-04-19','10:05:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (124,1,'0013A200406BF818',66,'2013-04-19','10:05:57');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (125,1,'0013A200406BF818',67,'2013-04-19','10:06:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (126,1,'0013A200406BF818',66,'2013-04-19','10:06:17');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (127,1,'0013A200406BF818',67,'2013-04-19','10:06:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (128,1,'0013A200406BF818',66,'2013-04-19','10:06:37');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (129,1,'0013A200406BF818',67,'2013-04-19','10:06:51');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (130,1,'0013A200406BF818',66,'2013-04-19','10:06:56');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (131,1,'0013A200406BF818',67,'2013-04-19','10:07:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (132,1,'0013A200406BF818',66,'2013-04-19','10:07:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (133,1,'0013A200406BF818',67,'2013-04-19','10:07:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (134,1,'0013A200406BF818',66,'2013-04-19','10:07:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (135,1,'0013A200406BF818',67,'2013-04-19','10:07:51');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (136,1,'0013A200406BF818',66,'2013-04-19','10:07:56');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (137,1,'0013A200406BF818',67,'2013-04-19','10:08:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (138,1,'0013A200406BF818',66,'2013-04-19','10:08:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (139,1,'0013A200406BF818',67,'2013-04-19','10:08:30');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (140,1,'0013A200406BF818',66,'2013-04-19','10:08:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (141,1,'0013A200406BF818',67,'2013-04-19','10:08:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (142,1,'0013A200406BF818',66,'2013-04-19','10:08:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (143,1,'0013A200406BF818',67,'2013-04-19','10:09:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (144,1,'0013A200406BF818',66,'2013-04-19','10:09:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (145,1,'0013A200406BF818',67,'2013-04-19','10:09:30');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (146,1,'0013A200406BF818',66,'2013-04-19','10:09:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (147,1,'0013A200406BF818',67,'2013-04-19','10:09:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (148,1,'0013A200406BF818',66,'2013-04-19','10:09:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (149,1,'0013A200406BF818',67,'2013-04-19','10:10:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (150,1,'0013A200406BF818',66,'2013-04-19','10:10:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (151,1,'0013A200406BF818',67,'2013-04-19','10:10:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (152,1,'0013A200406BF818',66,'2013-04-19','10:10:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (153,1,'0013A200406BF818',67,'2013-04-19','10:10:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (154,1,'0013A200406BF818',66,'2013-04-19','10:10:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (155,1,'0013A200406BF818',67,'2013-04-19','10:11:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (156,1,'0013A200406BF818',66,'2013-04-19','10:11:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (157,1,'0013A200406230EF',64,'2013-04-26','08:43:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (158,1,'0013A200406230EF',62,'2013-04-26','08:43:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (159,1,'0013A200406230EF',64,'2013-04-26','08:43:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (160,1,'0013A200406230EF',61,'2013-04-26','08:43:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (161,1,'0013A200406230EF',64,'2013-04-26','08:43:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (162,1,'0013A200406230EF',61,'2013-04-26','08:43:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (163,1,'0013A200406230EF',64,'2013-04-26','08:44:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (164,1,'0013A200406230EF',62,'2013-04-26','08:44:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (165,1,'0013A200406230EF',64,'2013-04-26','08:44:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (166,1,'0013A200406230EF',61,'2013-04-26','08:44:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (167,1,'0013A200406230EF',64,'2013-04-26','08:44:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (168,1,'0013A200406230EF',61,'2013-04-26','08:44:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (169,1,'0013A200406230EF',64,'2013-04-26','08:45:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (170,1,'0013A200406230EF',61,'2013-04-26','08:45:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (171,1,'0013A200406230EF',64,'2013-04-26','08:45:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (172,1,'0013A200406230EF',61,'2013-04-26','08:45:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (173,1,'0013A200406230EF',64,'2013-04-26','08:45:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (174,1,'0013A200406230EF',61,'2013-04-26','08:45:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (175,1,'0013A200406230EF',64,'2013-04-26','08:45:59');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (176,1,'0013A200406230EF',61,'2013-04-26','08:46:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (177,1,'0013A200406230EF',64,'2013-04-26','08:46:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (178,1,'0013A200406230EF',61,'2013-04-26','08:46:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (179,1,'0013A200406230EF',64,'2013-04-26','08:46:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (180,1,'0013A200406230EF',61,'2013-04-26','08:46:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (181,1,'0013A200406230EF',68,'2013-04-26','08:47:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (182,1,'0013A200406230EF',68,'2013-04-26','08:47:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (183,1,'0013A200406230EF',68,'2013-04-26','08:47:37');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (184,1,'0013A200406230EF',69,'2013-04-26','08:47:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (185,1,'0013A200406230EF',68,'2013-04-26','08:47:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (186,1,'0013A200406230EF',69,'2013-04-26','08:48:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (187,1,'0013A200406230EF',68,'2013-04-26','08:48:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (188,1,'0013A200406230EF',69,'2013-04-26','08:48:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (189,1,'0013A200406230EF',68,'2013-04-26','08:48:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (190,1,'0013A200406230EF',69,'2013-04-26','08:48:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (191,1,'0013A200406230EF',68,'2013-04-26','08:48:51');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (192,1,'0013A200406230EF',69,'2013-04-26','08:49:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (193,1,'0013A200406230EF',68,'2013-04-26','08:49:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (194,1,'0013A200406230EF',69,'2013-04-26','08:49:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (195,1,'0013A200406230EF',68,'2013-04-26','08:49:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (196,1,'0013A200406230EF',69,'2013-04-26','08:49:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (197,1,'0013A200406230EF',68,'2013-04-26','08:49:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (198,1,'0013A200406230EF',69,'2013-04-26','08:50:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (199,1,'0013A200406230EF',68,'2013-04-26','08:50:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (200,1,'0013A200406230EF',69,'2013-04-26','08:50:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (201,1,'0013A200406230EF',68,'2013-04-26','08:50:30');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (202,1,'0013A200406230EF',69,'2013-04-26','08:50:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (203,1,'0013A200406230EF',68,'2013-04-26','08:50:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (204,1,'0013A200406230EF',69,'2013-04-26','08:51:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (205,1,'0013A200406230EF',68,'2013-04-26','08:51:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (206,1,'0013A200406230EF',69,'2013-04-26','08:51:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (207,1,'0013A200406230EF',68,'2013-04-26','08:51:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (208,1,'0013A200406230EF',69,'2013-04-26','08:51:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (209,1,'0013A200406230EF',68,'2013-04-26','08:51:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (210,1,'0013A200406230EF',69,'2013-04-26','08:52:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (211,1,'0013A200406230EF',68,'2013-04-26','08:52:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (212,1,'0013A200406230EF',69,'2013-04-26','08:52:23');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (213,1,'0013A200406230EF',68,'2013-04-26','08:52:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (214,1,'0013A200406230EF',69,'2013-04-26','08:52:43');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (215,1,'0013A200406230EF',68,'2013-04-26','08:52:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (216,1,'0013A200406230EF',69,'2013-04-26','08:53:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (217,1,'0013A200406230EF',68,'2013-04-26','08:53:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (218,1,'0013A200406230EF',69,'2013-04-26','08:53:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (219,1,'0013A200406230EF',68,'2013-04-26','08:53:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (220,1,'0013A200406230EF',69,'2013-04-26','08:53:42');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (221,1,'0013A200406230EF',68,'2013-04-26','08:53:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (222,1,'0013A200406230EF',69,'2013-04-26','08:54:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (223,1,'0013A200406230EF',68,'2013-04-26','08:54:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (224,1,'0013A200406230EF',69,'2013-04-26','08:54:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (225,1,'0013A200406230EF',68,'2013-04-26','08:54:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (226,1,'0013A200406230EF',69,'2013-04-26','08:54:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (227,1,'0013A200406230EF',68,'2013-04-26','08:54:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (228,1,'0013A200406230EF',69,'2013-04-26','08:55:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (229,1,'0013A200406230EF',68,'2013-04-26','08:55:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (230,1,'0013A200406230EF',69,'2013-04-26','08:55:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (231,1,'0013A200406230EF',68,'2013-04-26','08:55:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (232,1,'0013A200406230EF',65,'2013-04-26','08:57:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (233,1,'0013A200406230EF',66,'2013-04-26','08:57:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (234,1,'0013A200406230EF',66,'2013-04-26','08:57:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (235,1,'0013A200406230EF',67,'2013-04-26','08:57:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (236,1,'0013A200406230EF',66,'2013-04-26','08:57:30');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (237,1,'0013A200406230EF',67,'2013-04-26','08:57:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (238,1,'0013A200406230EF',66,'2013-04-26','08:57:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (239,1,'0013A200406230EF',67,'2013-04-26','08:58:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (240,1,'0013A200406230EF',66,'2013-04-26','08:58:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (241,1,'0013A200406230EF',67,'2013-04-26','08:58:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (242,1,'0013A200406230EF',66,'2013-04-26','08:58:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (243,1,'0013A200406230EF',67,'2013-04-26','08:58:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (244,1,'0013A200406230EF',66,'2013-04-26','08:58:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (245,1,'0013A200406230EF',67,'2013-04-26','08:59:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (246,1,'0013A200406230EF',66,'2013-04-26','08:59:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (247,1,'0013A200406230EF',67,'2013-04-26','08:59:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (248,1,'0013A200406230EF',66,'2013-04-26','08:59:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (249,1,'0013A200406230EF',67,'2013-04-26','08:59:43');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (250,1,'0013A200406230EF',66,'2013-04-26','08:59:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (251,1,'0013A200406230EF',67,'2013-04-26','09:00:03');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (252,1,'0013A200406230EF',66,'2013-04-26','09:00:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (253,1,'0013A200406230EF',67,'2013-04-26','09:00:23');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (254,1,'0013A200406230EF',66,'2013-04-26','09:00:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (255,1,'0013A200406230EF',67,'2013-04-26','09:00:43');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (256,1,'0013A200406230EF',66,'2013-04-26','09:00:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (257,1,'0013A200406230EF',67,'2013-04-26','09:01:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (258,1,'0013A200406230EF',66,'2013-04-26','09:01:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (259,1,'0013A200406230EF',67,'2013-04-26','09:01:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (260,1,'0013A200406230EF',66,'2013-04-26','09:01:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (261,1,'0013A200406230EF',67,'2013-04-26','09:01:42');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (262,1,'0013A200406230EF',66,'2013-04-26','09:01:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (263,1,'0013A200406230EF',67,'2013-04-26','09:02:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (264,1,'0013A200406230EF',66,'2013-04-26','09:02:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (265,1,'0013A200406230EF',67,'2013-04-26','09:02:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (266,1,'0013A200406230EF',66,'2013-04-26','09:02:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (267,1,'0013A200406230EF',67,'2013-04-26','09:02:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (268,1,'0013A200406230EF',66,'2013-04-26','09:02:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (269,1,'0013A200406230EF',67,'2013-04-26','09:03:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (270,1,'0013A200406230EF',66,'2013-04-26','09:03:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (271,1,'0013A200406230EF',67,'2013-04-26','09:03:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (272,1,'0013A200406230EF',66,'2013-04-26','09:03:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (273,1,'0013A200406230EF',67,'2013-04-26','09:03:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (274,1,'0013A200406230EF',66,'2013-04-26','09:03:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (275,1,'0013A200406230EF',67,'2013-04-26','09:04:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (276,1,'0013A200406230EF',66,'2013-04-26','09:04:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (277,1,'0013A200406230EF',67,'2013-04-26','09:04:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (278,1,'0013A200406230EF',66,'2013-04-26','09:04:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (279,1,'0013A200406230EF',67,'2013-04-26','09:04:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (280,1,'0013A200406230EF',65,'2013-04-26','09:04:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (281,1,'0013A200406230EF',67,'2013-04-26','09:05:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (282,1,'0013A200406230EF',65,'2013-04-26','09:05:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (283,1,'0013A200406230EF',67,'2013-04-26','09:05:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (284,1,'0013A200406230EF',65,'2013-04-26','09:05:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (285,1,'0013A200406230EF',67,'2013-04-26','09:05:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (286,1,'0013A200406230EF',65,'2013-04-26','09:05:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (287,1,'0013A200406230EF',67,'2013-04-26','09:05:59');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (288,1,'0013A200406230EF',65,'2013-04-26','09:06:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (289,1,'0013A200406230EF',67,'2013-04-26','09:06:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (290,1,'0013A200406230EF',65,'2013-04-26','09:06:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (291,1,'0013A200406230EF',67,'2013-04-26','09:06:38');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (292,1,'0013A200406230EF',65,'2013-04-26','09:06:43');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (293,1,'0013A200406230EF',67,'2013-04-26','09:06:58');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (294,1,'0013A200406230EF',65,'2013-04-26','09:07:03');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (295,1,'0013A200406230EF',67,'2013-04-26','09:07:18');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (296,1,'0013A200406230EF',65,'2013-04-26','09:07:23');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (297,1,'0013A200406230EF',67,'2013-04-26','09:07:38');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (298,1,'0013A200406230EF',65,'2013-04-26','09:07:43');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (299,1,'0013A200406230EF',67,'2013-04-26','09:07:58');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (300,1,'0013A200406230EF',65,'2013-04-26','09:08:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (301,1,'0013A200406230EF',67,'2013-04-26','09:08:17');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (302,1,'0013A200406230EF',66,'2013-04-26','09:08:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (303,1,'0013A200406230EF',67,'2013-04-26','09:08:37');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (304,1,'0013A200406230EF',65,'2013-04-26','09:08:42');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (305,1,'0013A200406230EF',67,'2013-04-26','09:08:57');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (306,1,'0013A200406230EF',65,'2013-04-26','09:09:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (307,1,'0013A200406230EF',67,'2013-04-26','09:09:17');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (308,1,'0013A200406230EF',65,'2013-04-26','09:09:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (309,1,'0013A200406230EF',67,'2013-04-26','09:09:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (310,1,'0013A200406230EF',65,'2013-04-26','09:09:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (311,1,'0013A200406230EF',67,'2013-04-26','09:09:56');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (312,1,'0013A200406230EF',65,'2013-04-26','09:10:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (313,1,'0013A200406230EF',67,'2013-04-26','09:10:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (314,1,'0013A200406230EF',65,'2013-04-26','09:10:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (315,1,'0013A200406230EF',67,'2013-04-26','09:10:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (316,1,'0013A200406230EF',65,'2013-04-26','09:10:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (317,1,'0013A200406230EF',67,'2013-04-26','09:10:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (318,1,'0013A200406230EF',65,'2013-04-26','09:11:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (319,1,'0013A200406230EF',67,'2013-04-26','09:11:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (320,1,'0013A200406230EF',65,'2013-04-26','09:11:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (321,1,'0013A200406230EF',67,'2013-04-26','09:11:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (322,1,'0013A200406230EF',65,'2013-04-26','09:11:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (323,1,'0013A200406230EF',67,'2013-04-26','09:11:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (324,1,'0013A200406230EF',65,'2013-04-26','09:12:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (325,1,'0013A200406230EF',66,'2013-04-26','09:12:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (326,1,'0013A200406230EF',65,'2013-04-26','09:12:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (327,1,'0013A200406230EF',66,'2013-04-26','09:12:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (328,1,'0013A200406230EF',65,'2013-04-26','09:12:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (329,1,'0013A200406230EF',66,'2013-04-26','09:12:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (330,1,'0013A200406230EF',65,'2013-04-26','09:12:59');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (331,1,'0013A200406230EF',67,'2013-04-26','09:13:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (332,1,'0013A200406230EF',65,'2013-04-26','09:13:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (333,1,'0013A200406230EF',66,'2013-04-26','09:13:33');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (334,1,'0013A200406230EF',65,'2013-04-26','09:13:38');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (335,1,'0013A200406230EF',67,'2013-04-26','09:13:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (336,1,'0013A200406230EF',65,'2013-04-26','09:13:58');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (337,1,'0013A200406230EF',67,'2013-04-26','09:14:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (338,1,'0013A200406230EF',65,'2013-04-26','09:14:18');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (339,1,'0013A200406230EF',66,'2013-04-26','09:14:33');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (340,1,'0013A200406230EF',65,'2013-04-26','09:14:38');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (341,1,'0013A200406230EF',67,'2013-04-26','09:14:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (342,1,'0013A200406230EF',65,'2013-04-26','09:14:57');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (343,1,'0013A200406230EF',66,'2013-04-26','09:15:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (344,1,'0013A200406230EF',65,'2013-04-26','09:15:17');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (345,1,'0013A200406230EF',66,'2013-04-26','09:15:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (346,1,'0013A200406230EF',65,'2013-04-26','09:15:37');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (347,1,'0013A200406230EF',67,'2013-04-26','09:15:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (348,1,'0013A200406230EF',65,'2013-04-26','09:15:57');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (349,1,'0013A200406230EF',66,'2013-04-26','09:16:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (350,1,'0013A200406230EF',65,'2013-04-26','09:16:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (351,1,'0013A200406230EF',67,'2013-04-26','09:16:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (352,1,'0013A200406230EF',65,'2013-04-26','09:16:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (353,1,'0013A200406230EF',67,'2013-04-26','09:16:51');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (354,1,'0013A200406230EF',65,'2013-04-26','09:16:56');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (355,1,'0013A200406230EF',67,'2013-04-26','09:17:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (356,1,'0013A200406230EF',65,'2013-04-26','09:17:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (357,1,'0013A200406230EF',67,'2013-04-26','09:17:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (358,1,'0013A200406230EF',65,'2013-04-26','09:17:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (359,1,'0013A200406230EF',67,'2013-04-26','09:17:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (360,1,'0013A200406230EF',65,'2013-04-26','09:17:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (361,1,'0013A200406230EF',67,'2013-04-26','09:18:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (362,1,'0013A200406230EF',65,'2013-04-26','09:18:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (363,1,'0013A200406230EF',67,'2013-04-26','09:18:30');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (364,1,'0013A200406230EF',65,'2013-04-26','09:18:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (365,1,'0013A200406230EF',67,'2013-04-26','09:18:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (366,1,'0013A200406230EF',65,'2013-04-26','09:18:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (367,1,'0013A200406230EF',67,'2013-04-26','09:19:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (368,1,'0013A200406230EF',65,'2013-04-26','09:19:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (369,1,'0013A200406230EF',67,'2013-04-26','09:19:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (370,1,'0013A200406230EF',65,'2013-04-26','09:19:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (371,1,'0013A200406230EF',66,'2013-04-26','09:19:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (372,1,'0013A200406230EF',65,'2013-04-26','09:19:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (373,1,'0013A200406230EF',66,'2013-04-26','09:20:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (374,1,'0013A200406230EF',65,'2013-04-26','09:20:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (375,1,'0013A200406230EF',66,'2013-04-26','09:20:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (376,1,'0013A200406230EF',65,'2013-04-26','09:20:33');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (377,1,'0013A200406230EF',66,'2013-04-26','09:20:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (378,1,'0013A200406230EF',65,'2013-04-26','09:20:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (379,1,'0013A200406230EF',66,'2013-04-26','09:21:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (380,1,'0013A200406230EF',65,'2013-04-26','09:21:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (381,1,'0013A200406230EF',66,'2013-04-26','09:21:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (382,1,'0013A200406230EF',65,'2013-04-26','09:21:33');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (383,1,'0013A200406230EF',66,'2013-04-26','09:21:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (384,1,'0013A200406230EF',65,'2013-04-26','09:21:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (385,1,'0013A200406230EF',66,'2013-04-26','09:22:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (386,1,'0013A200406230EF',65,'2013-04-26','09:22:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (387,1,'0013A200406230EF',66,'2013-04-26','09:22:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (388,1,'0013A200406230EF',65,'2013-04-26','09:22:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (389,1,'0013A200406230EF',66,'2013-04-26','09:22:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (390,1,'0013A200406230EF',65,'2013-04-26','09:22:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (391,1,'0013A200406230EF',66,'2013-04-26','09:23:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (392,1,'0013A200406230EF',65,'2013-04-26','09:23:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (393,1,'0013A200406230EF',67,'2013-04-26','09:23:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (394,1,'0013A200406230EF',65,'2013-04-26','09:23:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (395,1,'0013A200406230EF',66,'2013-04-26','09:23:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (396,1,'0013A200406230EF',65,'2013-04-26','09:23:51');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (397,1,'0013A200406230EF',64,'2013-04-26','09:27:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (398,1,'0013A200406230EF',64,'2013-04-26','09:27:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (399,1,'0013A200406230EF',64,'2013-04-26','09:27:17');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (400,1,'0013A200406230EF',62,'2013-04-26','09:28:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (401,1,'0013A200406230EF',62,'2013-04-26','09:28:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (402,1,'0013A200406230EF',61,'2013-04-26','09:29:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (403,1,'0013A200406230EF',63,'2013-04-26','09:30:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (404,1,'0013A200406230EF',61,'2013-04-26','09:30:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (405,1,'0013A200406230EF',61,'2013-04-26','09:30:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (406,1,'0013A200406230EF',61,'2013-04-26','09:30:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (407,1,'0013A200406230EF',64,'2013-04-26','09:30:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (408,1,'0013A200406230EF',61,'2013-04-26','09:30:59');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (409,1,'0013A200406230EF',64,'2013-04-26','09:31:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (410,1,'0013A200406230EF',61,'2013-04-26','09:31:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (411,1,'0013A200406230EF',64,'2013-04-26','09:31:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (412,1,'0013A200406230EF',61,'2013-04-26','09:31:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (413,1,'0013A200406230EF',63,'2013-04-26','09:31:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (414,1,'0013A200406230EF',61,'2013-04-26','09:31:59');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (415,1,'0013A200406230EF',63,'2013-04-26','09:32:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (416,1,'0013A200406230EF',61,'2013-04-26','09:32:18');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (417,1,'0013A200406230EF',61,'2013-04-26','09:33:03');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (418,1,'0013A200406230EF',61,'2013-04-26','09:33:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (419,1,'0013A200406230EF',63,'2013-04-26','09:33:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (420,1,'0013A200406230EF',61,'2013-04-26','09:33:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (421,1,'0013A200406230EF',63,'2013-04-26','09:33:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (422,1,'0013A200406230EF',61,'2013-04-26','09:33:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (423,1,'0013A200406230EF',63,'2013-04-26','09:33:59');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (424,1,'0013A200406230EF',61,'2013-04-26','09:34:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (425,1,'0013A200406230EF',63,'2013-04-26','09:34:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (426,1,'0013A200406230EF',61,'2013-04-26','09:34:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (427,1,'0013A200406230EF',63,'2013-04-26','09:34:43');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (428,1,'0013A200406230EF',61,'2013-04-26','09:34:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (429,1,'0013A200406230EF',61,'2013-04-26','09:34:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (430,1,'0013A200406230EF',63,'2013-04-26','09:35:03');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (431,1,'0013A200406230EF',61,'2013-04-26','09:35:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (432,1,'0013A200406230EF',63,'2013-04-26','09:35:23');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (433,1,'0013A200406230EF',60,'2013-04-26','09:35:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (434,1,'0013A200406230EF',63,'2013-04-26','09:35:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (435,1,'0013A200406230EF',61,'2013-04-26','09:35:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (436,1,'0013A200406230EF',60,'2013-04-26','09:35:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (437,1,'0013A200406230EF',63,'2013-04-26','09:36:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (438,1,'0013A200406230EF',61,'2013-04-26','09:36:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (439,1,'0013A200406230EF',60,'2013-04-26','09:37:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (440,1,'0013A200406230EF',60,'2013-04-26','09:37:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (441,1,'0013A200406230EF',60,'2013-04-26','09:37:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (442,1,'0013A200406230EF',60,'2013-04-26','09:38:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (443,1,'0013A200406230EF',60,'2013-04-26','09:38:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (444,1,'0013A200406230EF',60,'2013-04-26','09:38:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (445,1,'0013A200406230EF',63,'2013-04-26','09:38:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (446,1,'0013A200406230EF',60,'2013-04-26','09:38:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (447,1,'0013A200406230EF',63,'2013-04-26','09:38:59');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (448,1,'0013A200406230EF',60,'2013-04-26','09:39:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (449,1,'0013A200406230EF',60,'2013-04-26','09:39:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (450,1,'0013A200406230EF',60,'2013-04-26','09:39:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (451,1,'0013A200406230EF',63,'2013-04-26','09:40:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (452,1,'0013A200406230EF',60,'2013-04-26','09:40:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (453,1,'0013A200406230EF',63,'2013-04-26','09:40:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (454,1,'0013A200406230EF',60,'2013-04-26','09:40:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (455,1,'0013A200406230EF',63,'2013-04-26','09:40:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (456,1,'0013A200406230EF',60,'2013-04-26','09:40:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (457,1,'0013A200406230EF',60,'2013-04-26','09:41:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (458,1,'0013A200406230EF',60,'2013-04-26','09:41:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (459,1,'0013A200406230EF',60,'2013-04-26','09:41:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (460,1,'0013A200406230EF',60,'2013-04-26','09:42:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (461,1,'0013A200406230EF',60,'2013-04-26','09:42:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (462,1,'0013A200406230EF',60,'2013-04-26','09:42:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (463,1,'0013A200406230EF',60,'2013-04-26','09:43:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (464,1,'0013A200406230EF',60,'2013-04-26','09:43:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (465,1,'0013A200406230EF',60,'2013-04-26','09:43:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (466,1,'0013A200406230EF',60,'2013-04-26','09:43:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (467,1,'0013A200406230EF',60,'2013-04-26','09:44:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (468,1,'0013A200406230EF',60,'2013-04-26','09:47:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (469,1,'0013A200406230EF',60,'2013-04-26','09:47:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (470,1,'0013A200406230EF',60,'2013-04-26','09:47:57');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (471,1,'0013A200406230EF',62,'2013-04-26','09:48:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (472,1,'0013A200406230EF',60,'2013-04-26','09:48:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (473,1,'0013A200406230EF',62,'2013-04-26','09:48:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (474,1,'0013A200406230EF',60,'2013-04-26','09:48:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (475,1,'0013A200406230EF',62,'2013-04-26','09:48:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (476,1,'0013A200406230EF',60,'2013-04-26','09:48:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (477,1,'0013A200406230EF',62,'2013-04-26','09:49:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (478,1,'0013A200406230EF',59,'2013-04-26','09:49:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (479,1,'0013A200406230EF',61,'2013-04-26','09:49:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (480,1,'0013A200406230EF',59,'2013-04-26','09:49:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (481,1,'0013A200406230EF',62,'2013-04-26','09:49:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (482,1,'0013A200406230EF',59,'2013-04-26','09:49:51');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (483,1,'0013A200406230EF',62,'2013-04-26','09:50:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (484,1,'0013A200406230EF',58,'2013-04-26','09:50:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (485,1,'0013A200406230EF',59,'2013-04-26','09:51:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (486,1,'0013A200406230EF',59,'2013-04-26','09:51:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (487,1,'0013A200406230EF',59,'2013-04-26','09:51:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (488,1,'0013A200406230EF',61,'2013-04-26','09:51:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (489,1,'0013A200406230EF',59,'2013-04-26','09:52:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (490,1,'0013A200406230EF',61,'2013-04-26','09:52:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (491,1,'0013A200406230EF',58,'2013-04-26','09:52:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (492,1,'0013A200406230EF',61,'2013-04-26','09:52:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (493,1,'0013A200406230EF',58,'2013-04-26','09:52:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (494,1,'0013A200406230EF',61,'2013-04-26','09:52:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (495,1,'0013A200406230EF',58,'2013-04-26','09:53:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (496,1,'0013A200406230EF',61,'2013-04-26','09:53:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (497,1,'0013A200406230EF',58,'2013-04-26','09:53:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (498,1,'0013A200406230EF',61,'2013-04-26','09:53:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (499,1,'0013A200406230EF',58,'2013-04-26','09:53:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (500,1,'0013A200406230EF',61,'2013-04-26','09:53:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (501,1,'0013A200406230EF',58,'2013-04-26','09:53:59');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (502,1,'0013A200406230EF',61,'2013-04-26','09:54:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (503,1,'0013A200406230EF',58,'2013-04-26','09:54:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (504,1,'0013A200406230EF',61,'2013-04-26','09:54:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (505,1,'0013A200406230EF',58,'2013-04-26','09:54:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (506,1,'0013A200406230EF',58,'2013-04-26','09:56:18');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (507,1,'0013A200406230EF',58,'2013-04-26','09:56:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (508,1,'0013A200406230EF',61,'2013-04-26','09:56:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (509,1,'0013A200406230EF',58,'2013-04-26','09:56:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (510,1,'0013A200406230EF',61,'2013-04-26','09:56:59');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (511,1,'0013A200406230EF',58,'2013-04-26','09:57:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (512,1,'0013A200406230EF',61,'2013-04-26','09:57:17');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (513,1,'0013A200406230EF',58,'2013-04-26','09:57:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (514,1,'0013A200406230EF',61,'2013-04-26','09:57:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (515,1,'0013A200406230EF',58,'2013-04-26','09:57:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (516,1,'0013A200406230EF',61,'2013-04-26','09:58:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (517,1,'0013A200406230EF',58,'2013-04-26','09:58:03');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (518,1,'0013A200406230EF',61,'2013-04-26','09:58:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (519,1,'0013A200406230EF',61,'2013-04-26','09:58:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (520,1,'0013A200406230EF',58,'2013-04-26','09:58:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (521,1,'0013A200406230EF',58,'2013-04-26','09:58:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (522,1,'0013A200406230EF',61,'2013-04-26','09:58:42');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (523,1,'0013A200406230EF',58,'2013-04-26','09:59:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (524,1,'0013A200406230EF',57,'2013-04-26','09:59:38');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (525,1,'0013A200406230EF',58,'2013-04-26','09:59:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (526,1,'0013A200406230EF',57,'2013-04-26','09:59:58');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (527,1,'0013A200406230EF',61,'2013-04-26','10:00:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (528,1,'0013A200406230EF',57,'2013-04-26','10:00:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (529,1,'0013A200406230EF',61,'2013-04-26','10:00:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (530,1,'0013A200406230EF',57,'2013-04-26','10:00:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (531,1,'0013A200406230EF',61,'2013-04-26','10:00:51');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (532,1,'0013A200406230EF',58,'2013-04-26','10:00:56');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (533,1,'0013A200406230EF',61,'2013-04-26','10:01:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (534,1,'0013A200406230EF',58,'2013-04-26','10:01:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (535,1,'0013A200406230EF',61,'2013-04-26','10:01:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (536,1,'0013A200406230EF',58,'2013-04-26','10:01:37');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (537,1,'0013A200406230EF',61,'2013-04-26','10:01:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (538,1,'0013A200406230EF',58,'2013-04-26','10:01:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (539,1,'0013A200406230EF',61,'2013-04-26','10:02:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (540,1,'0013A200406230EF',58,'2013-04-26','10:02:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (541,1,'0013A200406230EF',61,'2013-04-26','10:02:30');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (542,1,'0013A200406230EF',58,'2013-04-26','10:02:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (543,1,'0013A200406230EF',61,'2013-04-26','10:02:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (544,1,'0013A200406230EF',57,'2013-04-26','10:02:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (545,1,'0013A200406230EF',61,'2013-04-26','10:03:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (546,1,'0013A200406230EF',58,'2013-04-26','10:03:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (547,1,'0013A200406230EF',61,'2013-04-26','10:03:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (548,1,'0013A200406230EF',58,'2013-04-26','10:03:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (549,1,'0013A200406230EF',61,'2013-04-26','10:03:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (550,1,'0013A200406230EF',58,'2013-04-26','10:03:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (551,1,'0013A200406230EF',61,'2013-04-26','10:04:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (552,1,'0013A200406230EF',58,'2013-04-26','10:04:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (553,1,'0013A200406230EF',61,'2013-04-26','10:04:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (554,1,'0013A200406230EF',58,'2013-04-26','10:04:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (555,1,'0013A200406230EF',61,'2013-04-26','10:04:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (556,1,'0013A200406230EF',58,'2013-04-26','10:04:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (557,1,'0013A200406230EF',61,'2013-04-26','10:05:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (558,1,'0013A200406230EF',58,'2013-04-26','10:05:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (559,1,'0013A200406230EF',61,'2013-04-26','10:05:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (560,1,'0013A200406230EF',58,'2013-04-26','10:05:33');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (561,1,'0013A200406230EF',61,'2013-04-26','10:05:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (562,1,'0013A200406230EF',58,'2013-04-26','10:05:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (563,1,'0013A200406230EF',61,'2013-04-26','10:06:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (564,1,'0013A200406230EF',58,'2013-04-26','10:06:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (565,1,'0013A200406230EF',61,'2013-04-26','10:06:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (566,1,'0013A200406230EF',58,'2013-04-26','10:06:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (567,1,'0013A200406230EF',61,'2013-04-26','10:06:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (568,1,'0013A200406230EF',58,'2013-04-26','10:06:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (569,1,'0013A200406230EF',61,'2013-04-26','10:07:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (570,1,'0013A200406230EF',58,'2013-04-26','10:07:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (571,1,'0013A200406230EF',61,'2013-04-26','10:07:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (572,1,'0013A200406230EF',58,'2013-04-26','10:07:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (573,1,'0013A200406230EF',61,'2013-04-26','10:07:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (574,1,'0013A200406230EF',58,'2013-04-26','10:07:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (575,1,'0013A200406230EF',61,'2013-04-26','10:08:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (576,1,'0013A200406230EF',58,'2013-04-26','10:08:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (577,1,'0013A200406230EF',58,'2013-04-26','10:09:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (578,1,'0013A200406230EF',58,'2013-04-26','10:09:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (579,1,'0013A200406230EF',58,'2013-04-26','10:09:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (580,1,'0013A200406230EF',61,'2013-04-26','10:09:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (581,1,'0013A200406230EF',58,'2013-04-26','10:09:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (582,1,'0013A200406230EF',61,'2013-04-26','10:09:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (583,1,'0013A200406230EF',58,'2013-04-26','10:09:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (584,1,'0013A200406230EF',61,'2013-04-26','10:10:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (585,1,'0013A200406230EF',58,'2013-04-26','10:10:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (586,1,'0013A200406230EF',61,'2013-04-26','10:10:30');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (587,1,'0013A200406230EF',58,'2013-04-26','10:10:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (588,1,'0013A200406230EF',61,'2013-04-26','10:10:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (589,1,'0013A200406230EF',58,'2013-04-26','10:10:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (590,1,'0013A200406230EF',61,'2013-04-26','10:11:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (591,1,'0013A200406230EF',58,'2013-04-26','10:11:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (592,1,'0013A200406230EF',61,'2013-04-26','10:11:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (593,1,'0013A200406230EF',58,'2013-04-26','10:11:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (594,1,'0013A200406230EF',61,'2013-04-26','10:11:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (595,1,'0013A200406230EF',58,'2013-04-26','10:11:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (596,1,'0013A200406230EF',61,'2013-04-26','10:12:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (597,1,'0013A200406230EF',58,'2013-04-26','10:12:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (598,1,'0013A200406230EF',61,'2013-04-26','10:12:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (599,1,'0013A200406230EF',58,'2013-04-26','10:12:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (600,1,'0013A200406230EF',61,'2013-04-26','10:12:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (601,1,'0013A200406230EF',58,'2013-04-26','10:12:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (602,1,'0013A200406230EF',61,'2013-04-26','10:13:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (603,1,'0013A200406230EF',58,'2013-04-26','10:13:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (604,1,'0013A200406230EF',61,'2013-04-26','10:13:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (605,1,'0013A200406230EF',58,'2013-04-26','10:13:33');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (606,1,'0013A200406230EF',61,'2013-04-26','10:13:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (607,1,'0013A200406230EF',58,'2013-04-26','10:13:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (608,1,'0013A200406230EF',61,'2013-04-26','10:14:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (609,1,'0013A200406230EF',58,'2013-04-26','10:14:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (610,1,'0013A200406230EF',61,'2013-04-26','10:14:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (611,1,'0013A200406230EF',58,'2013-04-26','10:14:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (612,1,'0013A200406230EF',61,'2013-04-26','10:14:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (613,1,'0013A200406230EF',58,'2013-04-26','10:14:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (614,1,'0013A200406230EF',61,'2013-04-26','10:15:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (615,1,'0013A200406230EF',58,'2013-04-26','10:15:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (616,1,'0013A200406230EF',61,'2013-04-26','10:15:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (617,1,'0013A200406230EF',58,'2013-04-26','10:15:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (618,1,'0013A200406230EF',61,'2013-04-26','10:15:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (619,1,'0013A200406230EF',58,'2013-04-26','10:15:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (620,1,'0013A200406230EF',61,'2013-04-26','10:16:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (621,1,'0013A200406230EF',58,'2013-04-26','10:16:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (622,1,'0013A200406230EF',61,'2013-04-26','10:16:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (623,1,'0013A200406230EF',58,'2013-04-26','10:16:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (624,1,'0013A200406230EF',61,'2013-04-26','10:16:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (625,1,'0013A200406230EF',58,'2013-04-26','10:16:51');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (626,1,'0013A200406230EF',61,'2013-04-26','10:17:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (627,1,'0013A200406230EF',58,'2013-04-26','10:17:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (628,1,'0013A200406230EF',61,'2013-04-26','10:17:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (629,1,'0013A200406230EF',59,'2013-04-26','10:17:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (630,1,'0013A200406230EF',61,'2013-04-26','10:17:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (631,1,'0013A200406230EF',58,'2013-04-26','10:17:51');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (632,1,'0013A200406230EF',61,'2013-04-26','10:18:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (633,1,'0013A200406230EF',58,'2013-04-26','10:18:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (634,1,'0013A200406230EF',61,'2013-04-26','10:18:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (635,1,'0013A200406230EF',58,'2013-04-26','10:18:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (636,1,'0013A200406230EF',61,'2013-04-26','10:18:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (637,1,'0013A200406230EF',58,'2013-04-26','10:18:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (638,1,'0013A200406230EF',61,'2013-04-26','10:19:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (639,1,'0013A200406230EF',58,'2013-04-26','10:19:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (640,1,'0013A200406230EF',58,'2013-04-26','10:19:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (641,1,'0013A200406230EF',58,'2013-04-26','10:19:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (642,1,'0013A200406230EF',61,'2013-04-26','10:19:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (643,1,'0013A200406230EF',58,'2013-04-26','10:19:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (644,1,'0013A200406230EF',61,'2013-04-26','10:20:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (645,1,'0013A200406230EF',58,'2013-04-26','10:20:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (646,1,'0013A200406230EF',58,'2013-04-26','10:21:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (647,1,'0013A200406230EF',58,'2013-04-26','10:21:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (648,1,'0013A200406230EF',59,'2013-04-26','10:21:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (649,1,'0013A200406230EF',61,'2013-04-26','10:21:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (650,1,'0013A200406230EF',58,'2013-04-26','10:21:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (651,1,'0013A200406230EF',61,'2013-04-26','10:21:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (652,1,'0013A200406230EF',59,'2013-04-26','10:21:58');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (653,1,'0013A200406230EF',61,'2013-04-26','10:22:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (654,1,'0013A200406230EF',59,'2013-04-26','10:22:18');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (655,1,'0013A200406230EF',62,'2013-04-26','10:22:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (656,1,'0013A200406230EF',59,'2013-04-26','10:22:38');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (657,1,'0013A200406230EF',62,'2013-04-26','10:22:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (658,1,'0013A200406230EF',59,'2013-04-26','10:22:58');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (659,1,'0013A200406230EF',62,'2013-04-26','10:23:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (660,1,'0013A200406230EF',59,'2013-04-26','10:23:17');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (661,1,'0013A200406230EF',59,'2013-04-26','10:26:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (662,1,'0013A200406230EF',58,'2013-04-26','10:27:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (663,1,'0013A200406230EF',58,'2013-04-26','10:28:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (664,1,'0013A200406230EF',61,'2013-04-26','10:28:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (665,1,'0013A200406230EF',58,'2013-04-26','10:28:17');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (666,1,'0013A200406230EF',61,'2013-04-26','10:28:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (667,1,'0013A200406230EF',58,'2013-04-26','10:28:37');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (668,1,'0013A200406230EF',61,'2013-04-26','10:28:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (669,1,'0013A200406230EF',58,'2013-04-26','10:28:57');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (670,1,'0013A200406230EF',61,'2013-04-26','10:29:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (671,1,'0013A200406230EF',58,'2013-04-26','10:29:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (672,1,'0013A200406230EF',61,'2013-04-26','10:29:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (673,1,'0013A200406230EF',58,'2013-04-26','10:29:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (674,1,'0013A200406230EF',61,'2013-04-26','10:29:51');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (675,1,'0013A200406230EF',58,'2013-04-26','10:29:56');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (676,1,'0013A200406230EF',61,'2013-04-26','10:30:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (677,1,'0013A200406230EF',58,'2013-04-26','10:30:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (678,1,'0013A200406230EF',61,'2013-04-26','10:30:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (679,1,'0013A200406230EF',57,'2013-04-26','10:30:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (680,1,'0013A200406230EF',61,'2013-04-26','10:30:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (681,1,'0013A200406230EF',57,'2013-04-26','10:30:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (682,1,'0013A200406230EF',61,'2013-04-26','10:31:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (683,1,'0013A200406230EF',57,'2013-04-26','10:31:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (684,1,'0013A200406230EF',61,'2013-04-26','10:31:30');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (685,1,'0013A200406230EF',57,'2013-04-26','10:31:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (686,1,'0013A200406230EF',61,'2013-04-26','10:31:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (687,1,'0013A200406230EF',57,'2013-04-26','10:31:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (688,1,'0013A200406230EF',61,'2013-04-26','10:32:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (689,1,'0013A200406230EF',57,'2013-04-26','10:32:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (690,1,'0013A200406230EF',60,'2013-04-26','10:32:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (691,1,'0013A200406230EF',57,'2013-04-26','10:32:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (692,1,'0013A200406230EF',61,'2013-04-26','10:32:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (693,1,'0013A200406230EF',57,'2013-04-26','10:32:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (694,1,'0013A200406230EF',61,'2013-04-26','10:33:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (695,1,'0013A200406230EF',57,'2013-04-26','10:33:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (696,1,'0013A200406230EF',60,'2013-04-26','10:33:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (697,1,'0013A200406230EF',57,'2013-04-26','10:33:33');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (698,1,'0013A200406230EF',60,'2013-04-26','10:33:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (699,1,'0013A200406230EF',57,'2013-04-26','10:33:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (700,1,'0013A200406230EF',60,'2013-04-26','10:34:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (701,1,'0013A200406230EF',57,'2013-04-26','10:34:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (702,1,'0013A200406230EF',60,'2013-04-26','10:34:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (703,1,'0013A200406230EF',57,'2013-04-26','10:34:33');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (704,1,'0013A200406230EF',60,'2013-04-26','10:34:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (705,1,'0013A200406230EF',57,'2013-04-26','10:34:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (706,1,'0013A200406230EF',60,'2013-04-26','10:35:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (707,1,'0013A200406230EF',57,'2013-04-26','10:35:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (708,1,'0013A200406230EF',60,'2013-04-26','10:35:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (709,1,'0013A200406230EF',57,'2013-04-26','10:35:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (710,1,'0013A200406230EF',61,'2013-04-26','10:35:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (711,1,'0013A200406230EF',57,'2013-04-26','10:35:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (712,1,'0013A200406230EF',61,'2013-04-26','10:36:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (713,1,'0013A200406230EF',57,'2013-04-26','10:36:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (714,1,'0013A200406230EF',61,'2013-04-26','10:36:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (715,1,'0013A200406230EF',57,'2013-04-26','10:36:32');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (716,1,'0013A200406230EF',61,'2013-04-26','10:36:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (717,1,'0013A200406230EF',57,'2013-04-26','10:36:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (718,1,'0013A200406230EF',61,'2013-04-26','10:37:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (719,1,'0013A200406230EF',57,'2013-04-26','10:37:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (720,1,'0013A200406230EF',61,'2013-04-26','10:37:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (721,1,'0013A200406230EF',57,'2013-04-26','10:37:30');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (722,1,'0013A200406230EF',61,'2013-04-26','10:37:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (723,1,'0013A200406230EF',57,'2013-04-26','10:37:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (724,1,'0013A200406230EF',61,'2013-04-26','10:38:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (725,1,'0013A200406230EF',57,'2013-04-26','10:38:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (726,1,'0013A200406230EF',61,'2013-04-26','10:38:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (727,1,'0013A200406230EF',57,'2013-04-26','10:38:30');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (728,1,'0013A200406230EF',61,'2013-04-26','10:38:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (729,1,'0013A200406230EF',57,'2013-04-26','10:38:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (730,1,'0013A200406230EF',61,'2013-04-26','10:39:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (731,1,'0013A200406230EF',57,'2013-04-26','10:39:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (732,1,'0013A200406230EF',61,'2013-04-26','10:39:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (733,1,'0013A200406230EF',57,'2013-04-26','10:39:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (734,1,'0013A200406230EF',61,'2013-04-26','10:39:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (735,1,'0013A200406230EF',57,'2013-04-26','10:39:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (736,1,'0013A200406230EF',61,'2013-04-26','10:40:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (737,1,'0013A200406230EF',57,'2013-04-26','10:40:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (738,1,'0013A200406230EF',61,'2013-04-26','10:40:23');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (739,1,'0013A200406230EF',57,'2013-04-26','10:40:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (740,1,'0013A200406230EF',61,'2013-04-26','10:40:43');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (741,1,'0013A200406230EF',57,'2013-04-26','10:40:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (742,1,'0013A200406230EF',61,'2013-04-26','10:41:03');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (743,1,'0013A200406230EF',57,'2013-04-26','10:41:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (744,1,'0013A200406230EF',61,'2013-04-26','10:41:23');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (745,1,'0013A200406230EF',57,'2013-04-26','10:41:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (746,1,'0013A200406230EF',61,'2013-04-26','10:41:42');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (747,1,'0013A200406230EF',57,'2013-04-26','10:41:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (748,1,'0013A200406230EF',61,'2013-04-26','10:42:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (749,1,'0013A200406230EF',57,'2013-04-26','10:42:07');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (750,1,'0013A200406230EF',60,'2013-04-26','10:42:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (751,1,'0013A200406230EF',57,'2013-04-26','10:42:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (752,1,'0013A200406230EF',61,'2013-04-26','10:42:42');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (753,1,'0013A200406230EF',57,'2013-04-26','10:42:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (754,1,'0013A200406230EF',61,'2013-04-26','10:43:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (755,1,'0013A200406230EF',57,'2013-04-26','10:43:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (756,1,'0013A200406230EF',60,'2013-04-26','10:43:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (757,1,'0013A200406230EF',57,'2013-04-26','10:43:26');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (758,1,'0013A200406230EF',60,'2013-04-26','10:43:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (759,1,'0013A200406230EF',57,'2013-04-26','10:43:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (760,1,'0013A200406230EF',60,'2013-04-26','10:44:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (761,1,'0013A200406230EF',57,'2013-04-26','10:44:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (762,1,'0013A200406230EF',60,'2013-04-26','10:44:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (763,1,'0013A200406230EF',57,'2013-04-26','10:44:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (764,1,'0013A200406230EF',60,'2013-04-26','10:44:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (765,1,'0013A200406230EF',57,'2013-04-26','10:44:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (766,1,'0013A200406230EF',60,'2013-04-26','10:45:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (767,1,'0013A200406230EF',57,'2013-04-26','10:45:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (768,1,'0013A200406230EF',60,'2013-04-26','10:45:20');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (769,1,'0013A200406230EF',57,'2013-04-26','10:45:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (770,1,'0013A200406230EF',60,'2013-04-26','10:45:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (771,1,'0013A200406230EF',57,'2013-04-26','10:45:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (772,1,'0013A200406230EF',60,'2013-04-26','10:45:59');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (773,1,'0013A200406230EF',57,'2013-04-26','10:46:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (774,1,'0013A200406230EF',60,'2013-04-26','10:46:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (775,1,'0013A200406230EF',57,'2013-04-26','10:46:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (776,1,'0013A200406230EF',60,'2013-04-26','10:46:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (777,1,'0013A200406230EF',57,'2013-04-26','10:46:43');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (778,1,'0013A200406230EF',85,'2013-04-28','10:46:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (779,1,'0013A200406230EF',85,'2013-04-28','10:46:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (780,1,'0013A200406230EF',85,'2013-04-28','10:46:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (781,1,'0013A200406230EF',85,'2013-04-28','10:47:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (782,1,'0013A200406230EF',85,'2013-04-28','10:47:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (783,1,'0013A200406230EF',85,'2013-04-28','10:47:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (784,1,'0013A200406230EF',85,'2013-04-28','11:10:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (785,1,'0013A200406230EF',85,'2013-04-28','11:10:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (786,1,'0013A200406230EF',85,'2013-04-28','11:20:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (787,1,'0013A200406230EF',85,'2013-04-28','11:20:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (788,1,'0013A200406230EF',85,'2013-04-28','11:20:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (789,1,'0013A200406230EF',85,'2013-04-28','11:35:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (790,1,'0013A200406230EF',85,'2013-04-28','11:35:29');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (791,1,'0013A200406230EF',85,'2013-04-28','11:35:34');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (792,1,'0013A200406230EF',85,'2013-04-28','11:45:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (793,1,'0013A200406230EF',85,'2013-04-28','12:09:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (794,1,'0013A200406230EF',85,'2013-04-28','12:09:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (795,1,'0013A200406230EF',85,'2013-04-28','12:10:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (796,1,'0013A200406230EF',85,'2013-04-28','12:10:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (797,1,'0013A200406230EF',85,'2013-04-28','12:10:44');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (798,1,'0013A200406230EF',85,'2013-04-28','12:13:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (799,1,'0013A200406230EF',85,'2013-04-28','12:13:27');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (800,1,'0013A200406230EF',85,'2013-04-28','12:13:42');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (801,1,'0013A200406230EF',85,'2013-04-28','12:13:47');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (802,1,'0013A200406230EF',85,'2013-04-28','12:22:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (803,1,'0013A200406230EF',85,'2013-04-28','12:28:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (804,1,'0013A200406230EF',85,'2013-04-28','12:28:52');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (805,1,'0013A200406230EF',85,'2013-04-28','12:29:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (806,1,'0013A200406230EF',85,'2013-04-28','12:32:48');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (807,1,'0013A200406230EF',85,'2013-04-28','12:32:53');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (808,1,'0013A200406230EF',85,'2013-04-28','12:33:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (809,1,'0013A200406230EF',85,'2013-04-28','12:33:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (810,1,'0013A200406230EF',85,'2013-04-28','12:33:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (811,1,'0013A200406230EF',85,'2013-04-28','12:40:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (812,1,'0013A200406230EF',85,'2013-04-28','12:41:22');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (813,1,'0013A200406230EF',85,'2013-04-28','12:42:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (814,1,'0013A200406230EF',85,'2013-04-28','12:42:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (815,1,'0013A200406230EF',85,'2013-04-28','13:52:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (816,1,'0013A200406230EF',85,'2013-04-28','13:53:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (817,1,'0013A200406230EF',85,'2013-04-28','13:55:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (818,1,'0013A200406230EF',85,'2013-04-28','14:05:12');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (819,1,'0013A200406230EF',85,'2013-04-28','14:08:10');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (820,1,'0013A200406230EF',85,'2013-04-28','14:16:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (821,1,'0013A200406230EF',85,'2013-04-28','14:19:02');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (822,1,'0013A200406230EF',85,'2013-04-28','14:19:42');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (823,1,'0013A200406230EF',85,'2013-04-28','14:20:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (824,1,'0013A200406230EF',85,'2013-04-28','14:21:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (825,1,'0013A200406230EF',85,'2013-04-28','14:21:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (826,1,'0013A200406230EF',85,'2013-04-28','14:21:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (827,1,'0013A200406230EF',85,'2013-04-28','14:27:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (828,1,'0013A200406230EF',85,'2013-04-28','14:29:15');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (829,1,'0013A200406230EF',85,'2013-04-28','14:30:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (830,1,'0013A200406230EF',85,'2013-04-28','14:35:11');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (831,1,'0013A200406230EF',85,'2013-04-28','14:35:31');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (832,1,'0013A200406230EF',85,'2013-04-28','14:35:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (833,1,'0013A200406230EF',85,'2013-04-28','14:36:35');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (834,1,'0013A200406230E0',85,'2013-05-08','11:10:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (835,1,'0013A200406230E0',85,'2013-05-08','11:10:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (836,1,'0013A200406230E0',85,'2013-05-08','11:10:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (837,1,'0013A200406230E0',85,'2013-05-08','11:10:24');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (838,1,'0013A200406230E0',85,'2013-05-08','11:10:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (839,1,'0013A200406230E0',85,'2013-05-08','11:10:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (840,1,'0013A200406230E0',85,'2013-05-08','11:10:51');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (841,1,'0013A200406230E0',85,'2013-05-08','11:11:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (842,1,'0013A200406230E0',85,'2013-05-08','11:11:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (843,1,'0013A200406230E0',85,'2013-05-08','11:11:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (844,1,'0013A200406230E0',85,'2013-05-08','11:11:25');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (845,1,'0013A200406230E0',85,'2013-05-08','11:11:40');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (846,1,'0013A200406230E0',85,'2013-05-08','11:11:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (847,1,'0013A200406230E0',85,'2013-05-08','11:12:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (848,1,'0013A200406230E0',85,'2013-05-08','11:12:05');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (849,1,'0013A200406230EF',68,'2013-06-21','09:46:18');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (850,1,'0013A200406230EF',68,'2013-06-21','09:46:23');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (851,1,'0013A200406230EF',68,'2013-06-21','09:46:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (852,1,'0013A200406230EF',45,'2013-06-21','09:46:39');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (853,1,'0013A200406230EF',24,'2013-06-21','09:46:45');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (854,1,'0013A200406230EF',43,'2013-06-21','09:47:03');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (855,1,'0013A200406230EF',68,'2013-06-21','09:47:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (856,1,'0013A200406230EF',68,'2013-06-21','09:47:38');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (857,1,'0013A200406230EF',60,'2013-06-21','09:47:46');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (858,1,'0013A200406230EF',25,'2013-06-21','09:47:50');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (859,1,'0013A200406230EF',43,'2013-06-21','09:48:04');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (860,1,'0013A200406230EF',67,'2013-06-21','09:48:09');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (861,1,'0013A200406230EF',68,'2013-06-21','09:48:49');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (862,1,'0013A200406230EF',68,'2013-06-21','09:48:54');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (863,1,'0013A200406230EF',30,'2013-06-21','09:48:58');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (864,1,'0013A200406230EF',53,'2013-06-21','09:49:08');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (865,1,'0013A200406230EF',48,'2013-06-21','09:49:13');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (866,1,'0013A200406230EF',69,'2013-06-21','09:49:28');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (867,1,'0013A200406230EF',68,'2013-06-21','09:49:33');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (868,1,'0013A200406230EF',68,'2013-06-21','09:52:56');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (869,1,'0013A200406230EF',68,'2013-06-21','09:53:01');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (870,1,'0013A200406230EF',68,'2013-06-21','09:53:06');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (871,1,'0013A200406230EF',69,'2013-06-21','09:53:16');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (872,1,'0013A200406230EF',68,'2013-06-21','09:53:21');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (873,1,'0013A200406230EF',69,'2013-06-21','09:53:36');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (874,1,'0013A200406230EF',68,'2013-06-21','09:53:41');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (875,1,'0013A200406230EF',69,'2013-06-21','09:54:55');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (876,1,'0013A200406230EF',68,'2013-06-21','09:55:00');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (877,1,'0013A200406230EF',45,'2013-06-21','09:55:14');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (878,1,'0013A200406230EF',30,'2013-06-21','09:55:19');
insert  into `medicion_variables`(`idregvar`,`idtipovar`,`maczigbee`,`varhum`,`fechamedicion`,`HoraRegistro`) values (879,1,'0013A200406230EF',69,'2013-06-21','09:55:34');

/*Table structure for table `registro_zigbee` */

CREATE TABLE `registro_zigbee` (
  `maczigbee` varchar(50) NOT NULL,
  `nomzigbee` varchar(25) default NULL,
  `fechavar` date default NULL,
  `hora` time default NULL,
  `codcult` int(11) NOT NULL,
  `tipo` varchar(25) default NULL,
  PRIMARY KEY  (`maczigbee`),
  KEY `codcult` (`codcult`),
  CONSTRAINT `registro_zigbee_ibfk_1` FOREIGN KEY (`codcult`) REFERENCES `cultivo` (`codcult`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registro_zigbee` */

insert  into `registro_zigbee`(`maczigbee`,`nomzigbee`,`fechavar`,`hora`,`codcult`,`tipo`) values ('0013A200406230E0','ModCampo3','2013-03-01','10:37:44',2,'sensor');
insert  into `registro_zigbee`(`maczigbee`,`nomzigbee`,`fechavar`,`hora`,`codcult`,`tipo`) values ('0013A200406230EF','ModCampo3','2013-03-01','10:37:44',1,'sensor');
insert  into `registro_zigbee`(`maczigbee`,`nomzigbee`,`fechavar`,`hora`,`codcult`,`tipo`) values ('0013A200406BF818','ModCampo1','2013-03-01','10:37:44',1,'sensor');
insert  into `registro_zigbee`(`maczigbee`,`nomzigbee`,`fechavar`,`hora`,`codcult`,`tipo`) values ('0013A200407C5596','ModConVal','2013-03-01','10:37:44',1,'riego');

/*Table structure for table `tipo_documento` */

CREATE TABLE `tipo_documento` (
  `idtipodoc` int(11) NOT NULL auto_increment,
  `nomdoc` varchar(25) default NULL,
  PRIMARY KEY  (`idtipodoc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tipo_documento` */

insert  into `tipo_documento`(`idtipodoc`,`nomdoc`) values (1,'Cedula');
insert  into `tipo_documento`(`idtipodoc`,`nomdoc`) values (2,'Tarjeta de Identidad');
insert  into `tipo_documento`(`idtipodoc`,`nomdoc`) values (3,'Passaporte');

/*Table structure for table `tipo_fertilizante` */

CREATE TABLE `tipo_fertilizante` (
  `idfertil` int(11) NOT NULL auto_increment,
  `nomfertil` varchar(25) default NULL,
  `elementosmayores` varchar(25) default NULL,
  `elementosmenores` varchar(25) default NULL,
  PRIMARY KEY  (`idfertil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tipo_fertilizante` */

/*Table structure for table `tipo_siembra` */

CREATE TABLE `tipo_siembra` (
  `idtiposiembra` int(11) NOT NULL auto_increment,
  `nomsiembra` varchar(25) default NULL,
  PRIMARY KEY  (`idtiposiembra`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tipo_siembra` */

insert  into `tipo_siembra`(`idtiposiembra`,`nomsiembra`) values (1,'Siembra Diecta');
insert  into `tipo_siembra`(`idtiposiembra`,`nomsiembra`) values (2,'Siembra Transplante');

/*Table structure for table `tipo_variables` */

CREATE TABLE `tipo_variables` (
  `idtipovar` int(11) NOT NULL auto_increment,
  `nomvar` varchar(25) default NULL,
  `unidadmed` varchar(25) default NULL,
  PRIMARY KEY  (`idtipovar`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tipo_variables` */

insert  into `tipo_variables`(`idtipovar`,`nomvar`,`unidadmed`) values (1,'Humedad','Centibares');

/*Table structure for table `usuario` */

CREATE TABLE `usuario` (
  `docus` int(11) NOT NULL,
  `idtipodoc` int(11) NOT NULL,
  `password` varchar(25) default NULL,
  `login` varchar(25) default NULL,
  `nomus` varchar(25) default NULL,
  `apeus` varchar(25) default NULL,
  `direus` varchar(25) default NULL,
  `teleus` int(20) default NULL,
  `emailus` varchar(30) default NULL,
  PRIMARY KEY  (`docus`),
  KEY `idtipodoc` (`idtipodoc`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idtipodoc`) REFERENCES `tipo_documento` (`idtipodoc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`docus`,`idtipodoc`,`password`,`login`,`nomus`,`apeus`,`direus`,`teleus`,`emailus`) values (91542170,1,'admin2011','adrianno21','adrian','vanegas','calle 107 #34-78',6317652,'chascarrillo50@hotmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
