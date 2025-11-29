/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.5.41 : Database - forestdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`forestdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `forestdb`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

insert  into `auth_group`(`id`,`name`) values 
(1,'foreststation'),
(2,'user');

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

insert  into `auth_group_permissions`(`id`,`group_id`,`permission_id`) values 
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,7),
(8,1,8),
(9,1,9),
(10,1,10),
(11,1,11),
(12,1,12),
(13,1,13),
(14,1,14),
(15,1,15),
(16,1,16),
(17,1,17),
(18,1,18),
(19,1,19),
(20,1,20),
(21,1,21),
(22,1,22),
(23,1,23),
(24,1,24),
(25,1,25),
(26,1,26),
(27,1,27),
(28,1,28),
(29,1,29),
(30,1,30),
(31,1,31),
(32,1,32),
(33,1,33),
(34,1,34),
(35,1,35),
(36,1,36),
(37,1,37),
(38,1,38),
(39,1,39),
(40,1,40),
(41,1,41),
(42,1,42),
(43,1,43),
(44,1,44),
(45,1,45),
(46,1,46),
(47,1,47),
(48,1,48),
(49,1,49),
(50,1,50),
(51,1,51),
(52,2,1),
(53,2,2),
(54,2,3),
(55,2,4),
(56,2,5),
(57,2,6),
(58,2,7),
(59,2,8),
(60,2,9),
(61,2,10),
(62,2,11),
(63,2,12),
(64,2,13),
(65,2,14),
(66,2,15),
(67,2,16),
(68,2,17),
(69,2,18),
(70,2,19),
(71,2,20),
(72,2,21),
(73,2,22),
(74,2,23),
(75,2,24),
(76,2,25),
(77,2,26),
(78,2,27),
(79,2,28),
(80,2,29),
(81,2,30),
(82,2,31),
(83,2,32),
(84,2,33),
(85,2,34),
(86,2,35),
(87,2,36),
(88,2,37),
(89,2,38),
(90,2,39),
(91,2,40),
(92,2,41),
(93,2,42),
(94,2,43),
(95,2,44),
(96,2,45),
(97,2,46),
(98,2,47),
(99,2,48),
(100,2,49),
(101,2,50),
(102,2,51);

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can add permission',2,'add_permission'),
(5,'Can change permission',2,'change_permission'),
(6,'Can delete permission',2,'delete_permission'),
(7,'Can add group',3,'add_group'),
(8,'Can change group',3,'change_group'),
(9,'Can delete group',3,'delete_group'),
(10,'Can add user',4,'add_user'),
(11,'Can change user',4,'change_user'),
(12,'Can delete user',4,'delete_user'),
(13,'Can add content type',5,'add_contenttype'),
(14,'Can change content type',5,'change_contenttype'),
(15,'Can delete content type',5,'delete_contenttype'),
(16,'Can add session',6,'add_session'),
(17,'Can change session',6,'change_session'),
(18,'Can delete session',6,'delete_session'),
(19,'Can add foreststation',7,'add_foreststation'),
(20,'Can change foreststation',7,'change_foreststation'),
(21,'Can delete foreststation',7,'delete_foreststation'),
(22,'Can add user',8,'add_user'),
(23,'Can change user',8,'change_user'),
(24,'Can delete user',8,'delete_user'),
(25,'Can add animals',9,'add_animals'),
(26,'Can change animals',9,'change_animals'),
(27,'Can delete animals',9,'delete_animals'),
(28,'Can add complaint',10,'add_complaint'),
(29,'Can change complaint',10,'change_complaint'),
(30,'Can delete complaint',10,'delete_complaint'),
(31,'Can add notification',11,'add_notification'),
(32,'Can change notification',11,'change_notification'),
(33,'Can delete notification',11,'delete_notification'),
(34,'Can add report',12,'add_report'),
(35,'Can change report',12,'change_report'),
(36,'Can delete report',12,'delete_report'),
(37,'Can add fire_noti',13,'add_fire_noti'),
(38,'Can change fire_noti',13,'change_fire_noti'),
(39,'Can delete fire_noti',13,'delete_fire_noti'),
(40,'Can add human_noti',14,'add_human_noti'),
(41,'Can change human_noti',14,'change_human_noti'),
(42,'Can delete human_noti',14,'delete_human_noti'),
(43,'Can add contact',15,'add_contact'),
(44,'Can change contact',15,'change_contact'),
(45,'Can delete contact',15,'delete_contact'),
(46,'Can add station_complaint',16,'add_station_complaint'),
(47,'Can change station_complaint',16,'change_station_complaint'),
(48,'Can delete station_complaint',16,'delete_station_complaint'),
(49,'Can add user_complaint',17,'add_user_complaint'),
(50,'Can change user_complaint',17,'change_user_complaint'),
(51,'Can delete user_complaint',17,'delete_user_complaint'),
(52,'Can add alert',18,'add_alert'),
(53,'Can change alert',18,'change_alert'),
(54,'Can delete alert',18,'delete_alert'),
(55,'Can view log entry',1,'view_logentry'),
(56,'Can view permission',2,'view_permission'),
(57,'Can view group',3,'view_group'),
(58,'Can view user',4,'view_user'),
(59,'Can view content type',5,'view_contenttype'),
(60,'Can view session',6,'view_session'),
(61,'Can view animals',9,'view_animals'),
(62,'Can view complaint',10,'view_complaint'),
(63,'Can view contact',15,'view_contact'),
(64,'Can view fire_noti',13,'view_fire_noti'),
(65,'Can view foreststation',7,'view_foreststation'),
(66,'Can view human_noti',14,'view_human_noti'),
(67,'Can view notification',11,'view_notification'),
(68,'Can view report',12,'view_report'),
(69,'Can view station_complaint',16,'view_station_complaint'),
(70,'Can view user',8,'view_user'),
(71,'Can view user_complaint',17,'view_user_complaint'),
(72,'Can view alert',18,'view_alert');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values 
(1,'pbkdf2_sha256$260000$20re7dxacC1qZ7dROPIP61$ri6rWynVrLCan636s5nvdM+bSe+d4nag6pLFxKapcpw=','2025-08-29 07:44:44',1,'adith','','','adith@gmail.com',1,1,'2025-06-30 08:34:45'),
(2,'pbkdf2_sha256$100000$2wDbQw6ARNQn$waP66X+YzywqIJ128xxt7xo0qR4I7SEJER17mLhFsP4=',NULL,0,'iknr@gmail.com','','','',0,1,'2025-06-30 08:42:15'),
(3,'pbkdf2_sha256$100000$YCZXk1WzbPTR$j5La1J+EmffFZBXWg5yn5C0bt0ORtwNnYWihErUCyHM=','2025-07-01 06:45:56',0,'pdi@gmail.com','','','',0,1,'2025-07-01 06:44:50'),
(4,'pbkdf2_sha256$100000$DyxfMGgtujxE$v39UbLKDp00CtnUaMaAxEFu+qAKQxRM/fQLP5l9iPv0=','2025-07-01 07:04:13',0,'plt@gmail.com','','','',0,1,'2025-07-01 06:51:11'),
(5,'pbkdf2_sha256$100000$jhKILdBpjyz1$ycmtoRXMh6RkPFB14grMqwM2Lo+hrh4KTMHDFssJz1s=','2025-07-15 06:51:17',0,'p@gmail.com','','','',0,1,'2025-07-01 07:06:24'),
(6,'pbkdf2_sha256$100000$ULm2EURVf9QY$dz0CUWF8nRcqEUmaqQkrGViEUTpHV/1i3ArNfxEkcaY=','2025-07-04 04:53:43',0,'w@gmail.com','','','',0,1,'2025-07-02 07:51:04'),
(7,'pbkdf2_sha256$100000$Cg8V6RjQzPgR$LZJhzkYThaj3hnLeDMSHLzK8LXuYwyM7VSXpo1o4Suo=','2025-07-04 07:08:09',0,'a@gmail.com','','','',0,1,'2025-07-04 05:37:15'),
(8,'pbkdf2_sha256$100000$KmDOB6IDr7PT$TqBF3f01S1Uoj3YjaZGT8/NTrzE7ODIHDDX+8tDLStQ=',NULL,0,'ab@gmail.com','','','',0,1,'2025-07-04 05:39:50'),
(9,'pbkdf2_sha256$100000$fdV2lEVNnkXA$TtABihRfgtQLC6q6BfrANJ0qdFSoyZw9W7mf68g/utQ=','2025-07-07 06:43:37',0,'aachal@gmail.com','','','',0,1,'2025-07-04 07:09:32'),
(10,'pbkdf2_sha256$100000$dpzErsqEBoJQ$Zd10vlIyeDSNjYCsArgW/RoatOATfoQcboKfkHev4m8=','2025-07-07 06:40:39',0,'e@gmail.com','','','',0,1,'2025-07-07 06:23:29'),
(11,'pbkdf2_sha256$100000$LGthzBwfszfE$Qz2P6hSs0dHKwLhbPeol00eHky2Jr+HLY3WsV+4H4ZU=','2025-07-15 06:55:36',0,'b@gmail.com','','','',0,1,'2025-07-15 06:54:56'),
(12,'pbkdf2_sha256$100000$np7SstdlaFZk$ZN94sDjARrRdexalONU9SMjNgi5zXpGpMyxyD0Eub+I=',NULL,0,'sreya@gmail.com','','','',0,1,'2025-07-15 15:51:27'),
(13,'pbkdf2_sha256$260000$VdIaGYqOLyGMewLd0u5Cbw$Fe7TCX+nmcmrw6G+FNUNA94JbDmlHx//VKIh5jjuVW8=','2025-08-29 07:36:00',0,'n@gmail.com','','','',0,1,'2025-07-19 04:59:10'),
(14,'pbkdf2_sha256$100000$KkMEMtWaaLiv$ewCq/qNga4OyQtykK6eO4gU+UP9YUvj5QhH1oZ1GV9g=',NULL,0,'nn@gmail.com','','','',0,1,'2025-07-21 05:05:04'),
(15,'pbkdf2_sha256$260000$ikkfhw3MjFIvZTHm1BAbD0$nGWtqviA5qCHHBAbt0EOhJ3tkFpJYPubJFDI1pPl7ic=','2025-08-29 07:10:46',0,'user@gmail.com','','','',0,1,'2025-08-12 06:46:08'),
(16,'pbkdf2_sha256$260000$gV5I2imffpps3Dy3R8AyFC$hmV3eRflxtgqGY4qwWhDwGbHhBKSssI4YmBPv1EuKGY=',NULL,0,'','','','',0,1,'2025-08-13 07:04:58'),
(17,'pbkdf2_sha256$260000$bSMRMTvJQHBFbNDZFz62H6$hGOaKvUkPV4XWFKsDHy0pXIcHjumRe5XPN2D0oeqiC0=',NULL,0,'test1@gmail.com','','','',0,1,'2025-08-18 06:02:45'),
(18,'pbkdf2_sha256$260000$z8wpmUGH7MViEtV1zk2bae$LNQRrJlUbzNl2SvWmOjaCYHZgK9odTw5bw6dOmO3xKM=',NULL,0,'u@gmail.com','','','',0,1,'2025-08-18 07:08:41'),
(19,'pbkdf2_sha256$260000$e8W1yiBzqLOKnGQBD9vtWA$Ew9c2ujouA8bYoAcrCcv00vHXUyj6cIYmFSEjZz94j0=','2025-08-25 05:05:02',0,'user1@gmail.com','','','',0,1,'2025-08-25 05:04:38');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

insert  into `auth_user_groups`(`id`,`user_id`,`group_id`) values 
(1,5,1),
(2,6,1),
(3,7,2),
(4,8,2),
(5,9,2),
(6,10,1),
(7,11,1),
(8,12,2),
(9,13,1),
(10,14,1),
(11,15,2),
(12,16,2),
(13,17,1),
(14,18,2),
(15,19,2);

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values 
(1,'2025-06-30 08:37:38','1','foreststation',1,'[{\"added\": {}}]',3,1),
(2,'2025-06-30 08:38:05','2','user',1,'[{\"added\": {}}]',3,1);

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(18,'myapp','alert'),
(9,'myapp','animals'),
(10,'myapp','complaint'),
(15,'myapp','contact'),
(13,'myapp','fire_noti'),
(7,'myapp','foreststation'),
(14,'myapp','human_noti'),
(11,'myapp','notification'),
(12,'myapp','report'),
(16,'myapp','station_complaint'),
(8,'myapp','user'),
(17,'myapp','user_complaint'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2025-06-30 08:29:22'),
(2,'auth','0001_initial','2025-06-30 08:29:22'),
(3,'admin','0001_initial','2025-06-30 08:29:22'),
(4,'admin','0002_logentry_remove_auto_add','2025-06-30 08:29:22'),
(5,'contenttypes','0002_remove_content_type_name','2025-06-30 08:29:22'),
(6,'auth','0002_alter_permission_name_max_length','2025-06-30 08:29:22'),
(7,'auth','0003_alter_user_email_max_length','2025-06-30 08:29:22'),
(8,'auth','0004_alter_user_username_opts','2025-06-30 08:29:22'),
(9,'auth','0005_alter_user_last_login_null','2025-06-30 08:29:22'),
(10,'auth','0006_require_contenttypes_0002','2025-06-30 08:29:22'),
(11,'auth','0007_alter_validators_add_error_messages','2025-06-30 08:29:22'),
(12,'auth','0008_alter_user_username_max_length','2025-06-30 08:29:22'),
(13,'auth','0009_alter_user_last_name_max_length','2025-06-30 08:29:22'),
(14,'sessions','0001_initial','2025-06-30 08:29:22'),
(15,'myapp','0001_initial','2025-06-30 08:30:11'),
(16,'myapp','0002_auto_20250701_1149','2025-07-01 06:20:05'),
(17,'myapp','0003_human_noti_desc','2025-07-01 09:00:10'),
(18,'myapp','0004_alert','2025-07-02 04:54:20'),
(19,'admin','0003_logentry_add_action_flag_choices','2025-08-27 07:53:30'),
(20,'auth','0010_alter_group_name_max_length','2025-08-27 07:53:30'),
(21,'auth','0011_update_proxy_permissions','2025-08-27 07:53:30'),
(22,'myapp','0005_auto_20250827_1323','2025-08-27 07:53:30'),
(23,'myapp','0006_alert_image','2025-08-29 06:33:51');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('03qn08engmprmaqi0msoaxvww7e9sw4c','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uobAC:le0LG_rnmqDROseTm_zi5AiNT-abTNXOkw5AyOJ4Rb4','2025-09-03 05:15:08'),
('05ezh0mmviovfhsnj77l4qul3e54ufoq','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq47y:wi4oMXhyMVQMtwOxlKuL02184wfK6I8eFVEEOwQuYv8','2025-09-07 06:22:54'),
('05py8ljbari8t7cglp2fg8yhy3970iw6','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq3ZN:ZWd9SEddU0eGhKZbwszlwZY8dD4cfBLYzBNM9xeZmc4','2025-09-07 05:47:09'),
('05w6nxgi6seyi5poa2awefvjck69zway','.eJxVjEEOwiAQRe_C2hCY0gIu3XsGMgyjVA0kpV0Z7y5NutDtf-_9twi4rTlsjZcwJ3EWWpx-t4j05LKD9MByr5JqWZc5yl2RB23yWhO_Lof7d5Cx5V4zGGPAD64nFLWyA-HEno3rBCwO6CfAmyVGF5NToyLFOoHhSHF0ID5f6P04Tw:1urtmu:5DN-WG3lmAj-12oMU9Zq5Kuaj1POY1Sm5UzF2NKgHRU','2025-09-12 07:44:44'),
('0c2f4q8j4umhxn0z8l7yvz5esdx7znv4','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqPlm:3xi3qvoeWMbyK7d-EHPaqzRZf0lqN0k2dsaKd8Pjr5E','2025-09-08 05:29:26'),
('0e78u72bblhahk4o1xr036nkj1c7ftqb','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulix7:7fdCdYnTiKJmVVBQ9rA3cJsWdJxahD95i7Qcq9iaDxg','2025-08-26 06:57:45'),
('0ib32bviwj68up4mwpewb7p4y551aish','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uofgw:EarPbjmdKmC68G7RRoesflMnS2MfVfNd3cF7LFDy32Y','2025-09-03 10:05:14'),
('0j8b74fbrp28l0fpbjggvwfsei7q4k9v','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqPri:DaoUQTB9N-B999IM6kwRrxzEm0J-EFlcxWToR9yuGS8','2025-09-08 05:35:34'),
('0rx8i7us8t3ym6b36i921smxmgs9ffrs','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoxd9:zphTY5EBJmekCXabhg24x6k3mmSWDJUJF9GoGG2y_JE','2025-09-04 05:14:31'),
('0vzzechmusk6vfj5r8ix7spnorg99nkz','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulk6c:5Dm2s9FER6ywXPv1k_uw9xhuIlIvLgoi8Z-QPza4hYs','2025-08-26 08:11:38'),
('134paxk1mx2ivuc4qgx9st8rjp44uatw','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uodcV:UxmvJEiFmKzuPDEGMbH558QxxTYtkpo_QjAUtDD5jns','2025-09-03 07:52:31'),
('18vnearnotjbjy6lc4325vqsuda93ggg','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1um3uM:wQH4vjGcVizdkmatUBGm-N2932h3Nj2KOyrbmDfEeGI','2025-08-27 05:20:18'),
('1b0ah4reqsle2j126l8zn5wpqg1l1a3s','NTNjNjJkZjNmNGE0ODBhZGVjNDY2MmI2Mzk5Y2RmMDE4ZDg1NTBhNTp7fQ==','2025-07-15 06:57:11'),
('1eawovxls2l41w9wmqno6o9ewduel6bf','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uozoU:XdAli8iAGr4_0OToTM01r6MuWoNJajq4gw39zTZIUy4','2025-09-04 07:34:22'),
('1suw2lic86nc8pgxvmd49plwtxwf74tp','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uodH7:gBGyAX0VdSL3GsIxUJ9DJ6eAlJ7idkXiUAw9h-CgLxQ','2025-09-03 07:30:25'),
('1vv8r1veccukr6sxr4vm0qzj7y0bo2vn','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1unxul:c6NhjcxHPVHjej3mo6EJygcFJN3RZYvX-Lb0jpV3Zpk','2025-09-01 11:20:35'),
('231ba1696vu25pt5hs02rl3wzgonco4f','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqRHq:f6t34ygJCUHsxNX7PQL-GeZwdwuG1DrZq3BlOhn5dvg','2025-09-08 07:06:38'),
('28qtxc5hkg6cll7u9mxfrbwcrr48j2yo','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uodNW:ViQZBDvbAVR4tQjXLil4wnjRsfuAEYwd1qC-qWsY5co','2025-09-03 07:37:02'),
('2pb48t9tkr2a7iui72zxvk0m1ottnvsw','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq4Vk:mo2tEelHyUTfERwH2WB4DeWGnai_QdqQBm-P4jzeazE','2025-09-07 06:47:28'),
('2wyktwu47vd0u6rsk6tt3kpbggbn78nf','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uny05:dyqFkgWab-r8qKz7baCDFNnh9HkyHR166_Teg9GN0t8','2025-09-01 11:26:05'),
('36fkxvakj8cxse02an7vc4nmsfp8hmok','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqRX8:suuoptcKFCVbADGbGzfp3fIZJvLfhcSyWZBl5CkMjQY','2025-09-08 07:22:26'),
('3flcb8yjw4o1vfgabi3v5uo3g99hglua','NTNjNjJkZjNmNGE0ODBhZGVjNDY2MmI2Mzk5Y2RmMDE4ZDg1NTBhNTp7fQ==','2025-07-15 06:57:14'),
('3qwy99fbwqqf4e7we5mioowew3g5vyc1','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqPdC:Vrw3HHq5Ambid03t3UJhL5Z9-VCm6qe2Xmz4vwm1oiA','2025-09-08 05:20:34'),
('3uo0ypj1tjb14zi8297ta4hmnrqu97cj','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq3iy:nBWZ-Rnsn2D-OYmdq-o71nCTnsDOyySJAlURzVZwFoA','2025-09-07 05:57:04'),
('3yrzykxrfb2j8ewsail7m0goc8dpyk06','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1um3bS:zwhNZVwADAlfrQZJv6LPoiCWy7r25KSqyvuqTyoaiRk','2025-08-27 05:00:46'),
('3ysuh3j4jiq5i56w44lrx5f0tcfdllec','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uodnP:nx3g8mmkn14P2q0UDdcFhSdeP_Ur-7E8rmMAO7v2OZ0','2025-09-03 08:03:47'),
('3z5nfoilxvnpogkcsyf6kiy86bkszfnl','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq4dL:qnuZxUW103Pbp_Fmcla2vea-gwq8lVC7_XIfVnu0os8','2025-09-07 06:55:19'),
('41xyfv8absocn7osw8c0uit40pmnpj3n','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um4qI:J6rWXeCKOMcjGoRLGub1ttDEtlt74WJ3iHMw4VdQXGs','2025-08-27 06:20:10'),
('43zah8nlj7evoegspmg85zfy573mwgcb','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulixR:lKBC6SmQWkUFHFtrLj9JeuMQ11AnCsToT3xZyGfbhSU','2025-08-26 06:58:05'),
('4an8toptnpjc4wwv326o28c4olu0snbj','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoz0A:a0JixlwmmqD-VAm_UJwjqf7lKpd1iUUe-iWeZexHHwQ','2025-09-04 06:42:22'),
('4b6w3pqr00jgua7jr4y9jlrng184e5kz','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoxyr:JB2z-1FX8YGyWZFLHq7itPo4WDoABQzhJT_EUITzs80','2025-09-04 05:36:57'),
('4t9g0ort9a888s4346u8aihvx5hp5ve3','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uofdk:sPT6YDw8StSzthMHPuacOKC8tqM8sF5PkW0P0Lhb__A','2025-09-03 10:01:56'),
('5b0xu8qhn93wgbm5m8kzoayv0ar2za98','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq3XV:WfN7CSOfEooEK_anZMVWJdJmNwVLOwubgCqqIyFEbmE','2025-09-07 05:45:13'),
('5hi7olrrur14az3lr20a7afdt5bq4a8n','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqSAw:GLx-Xrd8lOqJz56KVuZNCcu-mWHZTYZozs4ZEICX6cc','2025-09-08 08:03:34'),
('5jrkf4qz442ijkbega8c4b64lcwe4lbl','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1uljSQ:JTzE8ME7cMgN7C7Gxe5h-h47S4rRaOj5-M1z_2PNw2w','2025-08-26 07:30:06'),
('68akq3scsl338t37mf2prsvf3vja3fxf','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uod9Q:sjkWRkL2acNQFmSo4AvcuYeKI7Y7PAhWXKJSsPDT8LY','2025-09-03 07:22:28'),
('6uzmnqng9fngetvlx6b3ulr2gg56gt7f','.eJxVjEEOwiAQRe_C2hCY0gIu3XsGMgyjVA0kpV0Z7y5NutDtf-_9twi4rTlsjZcwJ3EWWpx-t4j05LKD9MByr5JqWZc5yl2RB23yWhO_Lof7d5Cx5V4zGGPAD64nFLWyA-HEno3rBCwO6CfAmyVGF5NToyLFOoHhSHF0ID5f6P04Tw:1ulLDF:vyE21wWf4992Fa71huxhTitZ6FmXRCeZQ5xJYqCLr2k','2025-08-25 05:36:49'),
('7gnl91sjaowjrvxyixj0x7qnf89ofj8o','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq3nJ:TQ8mfKCmoPZKzh91MvSqT5EZBxoItvp0yzaAx8SiQKY','2025-09-07 06:01:33'),
('7kljy7zsu1pn4sy86bsj4ubarbxp29wf','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1um3ie:GgWBNcmmV21TXBmsTUBp7NQXv8tNkRIovhfRpgFS-UU','2025-08-27 05:08:12'),
('7of4829ha4709uy18ne00g5h1i5sgdd2','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uodjS:rSWcIBRdlKnvBsScWNjaCThdrSAaMUUNQSImUaHS2aM','2025-09-03 07:59:42'),
('7z44r8ht5gpprnakbc3cvmon9km18d6z','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqPvF:OpiHfKlovDBAwaAqAShkap9pHlFVAFFz203dlsCwWM4','2025-09-08 05:39:13'),
('8aa0a5loou93rp1p1vo3s2xbo1s32ma8','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoanW:XA6iMWbx1UFYvNVLGs3Px6Kox28EHVFt73lZT7_pgUM','2025-09-03 04:51:42'),
('8kv0pncjokkgt1y7kkrf8612iiw0hz1w','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uof5S:s0g6v3wSauOUlh8kmohcHR9ZL9QYVWxEn7n22Os-g78','2025-09-03 09:26:30'),
('8ll791sir02o60jbrhyqukiszzm0awdv','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulk2m:pzFRwQIv9ER60L06AQfCvL5tRQTWaDc0xAXWYv_CC6M','2025-08-26 08:07:40'),
('8tazcy4o9vkmb2jgncmvtirlfrfsmogl','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqQ1d:N40UH_mDjxvO2FmjpMJ5lZZY2L3mW3oTHsXB927PXvs','2025-09-08 05:45:49'),
('8vexrbilxwjjin1o2kqfbqlwpcjqacmc','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq3KY:pQbsHljwcv8bHUdswCP6A_yoYMWCaJK4MlxgUznLoAw','2025-09-07 05:31:50'),
('92wp211dh2gzyscnz51s6sbjesar3vhj','.eJxVjDsOwjAQBe_iGln-xD9Kes5geb1eHEC2FCcV4u4QKQW0b2bei8W0rTVuoyxxRnZmMrDT7wgpP0rbCd5Tu3Wee1uXGfiu8IMOfu1YnpfD_TuoadRvXQQYysFLbVUGAiFxQtDSSQSbCxKQMeSt0zlA8gQugZ6UE9ZIp41i7w8yiziU:1uqPOA:qpjq2g7ElutFhvEeh6QOLjTjMbpQm-xL0KdMmDNiro8','2025-09-08 05:05:02'),
('98ke22prpqbwzaimbrlku7vu2cyi4f29','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqPr0:jfBVwkmpfJZTta9ViNv7AR11tWfIjQ8UaKUUcEK-4BM','2025-09-08 05:34:50'),
('9a8toe2x2sgapgdpapv8uabf3be8h9my','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uozpS:qh7OaqhEPGqvuMkLSZVkDq2yPR14W__VYsnKbNjj1UQ','2025-09-04 07:35:22'),
('9d8r4j9zuay00fgvly9z9haw9boxr2h3','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uobDT:qXwFnS21T6_qNhZDb561xHQS30xTt-Kxd6COsdAcpDQ','2025-09-03 05:18:31'),
('9f3gqqiajhivyokq4rd91t79x4qi11tj','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoxqS:hMDMNa9ndQgqiDmsbWAsv6gckzab0FTJ_5MPX8cG4W4','2025-09-04 05:28:16'),
('9mrixpg8puc0qqzgw8l8kz5wsixst60u','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um6eK:O64RtdAAYZO24xv-nxqkc_eFZ53OqL4QTrzCjjx9e_M','2025-08-27 08:15:56'),
('9qge0drp8g9zq0aoq8kvi2zaf2kz5upw','.eJxVjEEOwiAQRe_C2hCY0gIu3XsGMgyjVA0kpV0Z7y5NutDtf-_9twi4rTlsjZcwJ3EWWpx-t4j05LKD9MByr5JqWZc5yl2RB23yWhO_Lof7d5Cx5V4zGGPAD64nFLWyA-HEno3rBCwO6CfAmyVGF5NToyLFOoHhSHF0ID5f6P04Tw:1um9ea:ftJa8ppOlya12Z3bEB8RuebjAGCdv5IA6VXa_uW090I','2025-08-27 11:28:24'),
('9swmpob6w2erglp468qcf66xsumjo52s','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq3Xu:I_YZehn8_0niiLMf9t_AOLXmfViZbDd0RDghhg9XTsI','2025-09-07 05:45:38'),
('a4gjbqps8my0jv2erdwot91mlxja7z47','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uodls:MhSaO8AFvNHH5Mb0UbXzXb8tqrTVUQT71bg5uZc0JOY','2025-09-03 08:02:12'),
('ab3zz4yvhzncnnnrwkjzaglvy98osz0l','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um5CG:NmanQNH7K6zP6ld39h1QH7dNKtXeVZWAS0LbyEdMDzk','2025-08-27 06:42:52'),
('adeko50yqngaokmruue41w1ycdr3pmrm','ZjE4OTEzMTNjYTMzNWNjNjFjMGEyMDNlNjJmM2M1ZTA0MTIyMzM3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4OGUxNDZkZTdiNWIwNDAwZGNhY2E2ODU2YTMyMWMyZmJiODQxMTJhIn0=','2025-08-03 14:41:16'),
('adzymk6sdprn0d8bdxnu6bs494kfmc6w','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq3nS:-s6G9FW5SAM_HBcIZ7iI-ZGwW2rutSEMP50dRwZqBgM','2025-09-07 06:01:42'),
('aemb5rwro6c4a8ngde2k3pgiymj2pnjn','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoydV:RxgnlyDso0Lmxdl1gfIjBo65nu0DRy7_WuvCYbtaZ1I','2025-09-04 06:18:57'),
('ap66qqh3xx1hgm25o20ncc8p4lg4wbl8','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulixt:h5yk5OOgOqKkg6_IlqiBgphK5mIWTQEGbz_nY_G4sLs','2025-08-26 06:58:33'),
('attugfop4khvpaijvt5fz7bss8jjv2xl','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulj1Y:zc-HSpkycAXeV-2V2XcIXM-teTb0xSgQW2TN4uaQW20','2025-08-26 07:02:20'),
('azkbak2e6p0rjd2u1zn6wdsyhqbj157i','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoxl8:Anm-TGu8f4aVeEptM_JqY_pYdzCNvVox1GdSw3FqfOI','2025-09-04 05:22:46'),
('bglpmc3g2xyyx8ezlcwnmdvvpqkbiykd','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoas4:2BHTOHTTP6D3tExQp6Op1r8VIdSM8AsG_cumHt_AEM8','2025-09-03 04:56:24'),
('bjkjfzp7quyjzfityeb9s4jvpquuks2m','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoazB:v0Q7mP7tTK3q6jz8pQBsgLKzZZhHMJQWtZChyva3aME','2025-09-03 05:03:45'),
('bnhvvt2gfn8zxcas6q7krt3ud5i7o03e','NTNjNjJkZjNmNGE0ODBhZGVjNDY2MmI2Mzk5Y2RmMDE4ZDg1NTBhNTp7fQ==','2025-07-15 06:54:28'),
('c5smkfjrkprev6snlcgdbltnv8qpalfm','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqQMe:6_vUbp2G6SMonnJSyC6Y75YJWkPEfDhFiwp12CxYJ-k','2025-09-08 06:07:32'),
('cft85fnu9rrji5ye57nxlnod9kceh6po','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um6gs:ScZ4dWfpT5lHwlFIo7X0nICOPdAg04oLZ2ziXcd8Of8','2025-08-27 08:18:34'),
('chfv75n6sktndwwzyg8xutbds70bpxr9','.eJxVjEEOwiAQRe_C2pAB2ggu3XsGMsMMUjWQlHbVeHdt0oVu_3vvbyriupS4dpnjxOqizKhOvyNhekrdCT-w3ptOrS7zRHpX9EG7vjWW1_Vw_w4K9vKtA7uMFiAEj4zBsLGWgAOAz5BsJmJxJMZlO4AkYzh5kXOiLCMPFtX7Ax0LOTc:1um4IQ:V3Q8rPuA4zlPJXFqkJAEL2WfLn-rGQ2GrcVABoRwXcs','2025-08-27 05:45:10'),
('ci8u2zz53int8yxp7f86wgedbcf9eao8','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uodPc:LX0jgakVUgi3q_9FZyuMDVxJHhS11deq2ntnDcq2AyA','2025-09-03 07:39:12'),
('crz6zggy4ucjjnsu4ajahrjmftk0cmgx','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1um3Ou:19wVytwplYvt4TzxdCJx03fsLgo5ikkP9qrPbWlLD6U','2025-08-27 04:47:48'),
('cvilma7oe0gd4wrr31rk3rf9te2y5iwu','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uogzL:97rXu95nTesmm-61P1RnBquBkIS4xueATIHkORWJjro','2025-09-03 11:28:19'),
('czpkgyhoc6nz1c4ty9usokpxdpjteoq7','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uob9L:ateHtSCWY-S3-D2Oh0hTReYi0iCli0wwov35Ma82h_0','2025-09-03 05:14:15'),
('dd2ccy0yvnxxu6cxwig4xndi7s2vepuy','.eJxVjDsOwjAQBe_iGllZ_01JzxmiXXuNA8iW8qkQd4dIKaB9M_NeYsRtreO28DxOWZwFWHH6HQnTg9tO8h3brcvU2zpPJHdFHnSR1575eTncv4OKS_3WQwwUUIFHKOAUacM-KmWwAPqQiiWjWcMAhjOxtY4tRmYiFSJHF8X7A_ozOA4:1um4Pe:8oGwUz6sz-RdO9CoQ0swHk6Ueru0JzQhjrn-2pLU9C4','2025-08-27 05:52:38'),
('dj05mmxrzq9u9uwe53a402b8yfzkjalg','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1unxwr:7WDKV9hJMJvK4IKnojplWSAseCrlhZ5H0Ilp_SYOR5s','2025-09-01 11:22:45'),
('djffijtcehm4qxa47wf33beuh9bytwvr','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1upLkp:nFfFs7dOSAiO2o9odVyzpHptQsB6FM6Qvvdb_pP6PY0','2025-09-05 07:00:03'),
('djycp1adlz897lvgyoxrlgtlsf7k2uo0','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1uljHH:hvQ93TCihPizF8z1_cM3lyWi_MVAldUUNfySMao7eEA','2025-08-26 07:18:35'),
('dnujb97ee141e4gel0m14a5lofejns65','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1unsAh:ABgw9DhDCiR_OKF1sz_Q3r0uS8XN5SJl5mvXaSjPX_8','2025-09-01 05:12:39'),
('dxfx4fwtvjbu82f8wapcflo50tdtqim6','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq4DC:IAWvF0LO5kjoEnHxYTQxiVERrXhfgxsRhspBd0Deg3w','2025-09-07 06:28:18'),
('e2gx97m7o1sfnkgsxrxqqcdhsh7r0652','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um6XP:S4W9xCzCoIuQFLJaatwFUgGmj5qkrR-RwCLghPGdqjA','2025-08-27 08:08:47'),
('e36c1e6kf54ojxlrz17pg8htophwcwvn','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uozm1:WovEVM6u2FMShI2ntq-sJ-IFU8rcavdhY4NpAWKmxYg','2025-09-04 07:31:49'),
('ef1gl5x5ehlwj46c9cbsv1vcsd8xq7c2','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqQ7c:rR4cadt_SQB0rYeIxSGV4Iz6m0P6uaXQU0E0Gt5y5jY','2025-09-08 05:52:00'),
('el3ioft5xzeqlfhmcz3ffjpkqvve2mag','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqRMK:10JhMyyYJzm7aei4pwD-N1XNoPEkJp5F-uA9uK-Ia0M','2025-09-08 07:11:16'),
('etn1pomho19khdggiwkpscvsarusweqs','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulj5f:zSLcl_bdHVu1dcDT9mzkPssdXVMTBu2MlGR6FrNDCeQ','2025-08-26 07:06:35'),
('f2nnls6ceujwzs4ii7mo8fz0txiyokaw','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um5B0:DlcjmVjenX4r9hOH_hUrQAlCKYY7JE_Qh61Ye287w1E','2025-08-27 06:41:34'),
('f3jgtr405qyr79c0vfjzcsfs706hyeft','.eJxVjMsOwiAQRf-FtSEwLQVcuvcbyAwz2KqBpI-V8d-1SRe6veec-1IJt3VM2yJzmlidlXXq9DsS5ofUnfAd663p3Oo6T6R3RR900dfG8rwc7t_BiMv4rU0eJFjooweLxksg7gRtD6XvfEHg6MB7MV0YCBmcC5G4uEguQM6F1PsD9YY4Dw:1um4Zj:oabVafvytio4XEEIkfZk-8Yi5ozwt_WKF6FOEY_mE8s','2025-08-27 06:03:03'),
('fckdsv0ql873rs3wabp7vucdz6c16nd0','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoz2i:aKy0LrCp74LP7gHOi1miL2vy1fuI6UHvqmMOU60GrTs','2025-09-04 06:45:00'),
('g6mjeozahfs2mflgt1cfxwry3bsd8ej5','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqRG7:ZuIawh1NvtR-1bCoXH9DRSPsBY2lojL7plyeVSJnCCE','2025-09-08 07:04:51'),
('gaoewwslk3iyr84hw0zh1ur4l3l2qhfm','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um6fn:0rJtfXl9JvhPCJerP5cn2c7lfvIVPuv0EOb3exEzEDE','2025-08-27 08:17:27'),
('gdztozwr8aiugb8syr80k6hv7efj39yq','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqPoQ:n-FFUzOYz866wITQfoReBLJlwqISktmW2IqX19wlYtY','2025-09-08 05:32:10'),
('ggsiybm9lngrt576033ea0ca2npnvu27','.eJxVjDsOwjAQBe_iGllZ_01JzxmiXXuNA8iW8qkQd4dIKaB9M_NeYsRtreO28DxOWZwFWHH6HQnTg9tO8h3brcvU2zpPJHdFHnSR1575eTncv4OKS_3WQwwUUIFHKOAUacM-KmWwAPqQiiWjWcMAhjOxtY4tRmYiFSJHF8X7A_ozOA4:1um4NL:m5iQE3B8G_xXiRtLJfCwQMDOqcU1wOGcXfg_GbZ6YbQ','2025-08-27 05:50:15'),
('goz838o9to6cvo7op95n5swxhd9qtdcq','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoeHP:6yhwZz75oFaCAo1XyGRAv2xO5gNm2pS0Gma3PSVdLBM','2025-09-03 08:34:47'),
('gyaimbehjj9o7qhaajg473mtainkqgc3','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqS8A:rX-m6MOoJPVVVNuLu4gErXFhLGByik_QvGIuYm27OhI','2025-09-08 08:00:42'),
('h4uiwsfcj1tipwb8oyrkzl9vnrdivagj','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqRPB:a7EM_GVqBPlnJWjAhoyEQ1-vmRsW1dmwQhrjtYRzwvY','2025-09-08 07:14:13'),
('h92el4nlnwzjxduxhf3s8flg2214h4ik','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uozNc:1tar7PVkIWAOPpsHzSKLEsygvea9HZGdmrvR4pvRlvQ','2025-09-04 07:06:36'),
('htv6xzdawzanlffcql6vvup8hrxljv2b','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulixS:5Vhavn2yqrk-HicKolH6GZeTkVgyX9QNZGd9Ayb-O1A','2025-08-26 06:58:06'),
('i9uesnjb4b8ai33hjhzao5644jz200cm','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq3dU:EMTIVhspWipCatKvR25W4GOhPQszFT349as-h8BuBKU','2025-09-07 05:51:24'),
('ie1a482ostkoaak5syjqzkykni8iyio5','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqQZ0:cZBnjClTtgb7MeZdvLtJtSA3vVrYnHVcemKqLI_iYdU','2025-09-08 06:20:18'),
('ihhllvwv16qmic6gnbwawy9u84efa1dm','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uofCI:qAOxi8_5-kGoOW2x7MlyruyET9Hvsm-w01R5_K-KC7I','2025-09-03 09:33:34'),
('ilqx39mi1n6quqycxbji9g72lpxd4c3i','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1upLOg:vOSm-Uv_5b08lfLV6dOtyPrIxWUWp_7RXVBA1VNAoJ8','2025-09-05 06:37:10'),
('ilyvwld626uw6eyhon794ay381175x61','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uofoj:rZIKpv5mxgv7zs5b7Rvt6ZlcHEVaI8PMv4QoJeG635o','2025-09-03 10:13:17'),
('im5y5js2dbn14hnupqzit5q2wmrg53ty','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq4Bn:PdTm3qEf0Gh9OZo_IXk4tfh1TyDOHBTs65VMx0Pa3qM','2025-09-07 06:26:51'),
('izq92ykmi75r06dvffh0nq60ur43q4az','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1uljE7:MN0CThVzgBaZxjYkeoeNuRt1hoIy-nZqg4YY4sAL9RM','2025-08-26 07:15:19'),
('j2fvgac09l6lyctv7wu6ef7npbcoprcg','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoz6Y:v1yNgGamkKq0MakzTSNo64RBZV5piZMAKFHFj2atJXM','2025-09-04 06:48:58'),
('j38x9pm8od7jz93qatx50o99np37lsk4','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoy1c:ny7fFjjZcoS0pnXp-hWf9wMYH3Xl8IgFOH2uYFeWf0Y','2025-09-04 05:39:48'),
('j6fhglxd27ampwdbgzp5pg7ejfwlgenz','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uozW6:qxY5NN2NOAPPFN-JgenFvKl1jBmHvpGHLFYQvu5i7pk','2025-09-04 07:15:22'),
('j6nywusx4jsopvw7jyomp49jao23rw6i','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1um3Tk:3y9cOVCvw0vbBMs-G2QS2PhC6_RIBMA_n8EKNOZqCRI','2025-08-27 04:52:48'),
('jklic5gvzvdevil80wiugvbq9rzw9m82','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1um3Kg:CaFANaxCmrQAVPOKr1MIo598J290HcSXND7H0P6-VHc','2025-08-27 04:43:26'),
('jo6o3gpfhip3bvvnh00lej4gi6l3wtqo','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoecN:BiB4gVRdRZ9_8xgZ9WjWWzriSEyA0mKxQwXSzq2UrtY','2025-09-03 08:56:27'),
('jt150xetwrwcnpr6ifm895jtxhlkp5qu','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um6Vf:lDI4LtNK1fTWeEj4u9vo8VY9dH90cRH9_YBZuSSRO9U','2025-08-27 08:06:59'),
('jwd28q4ol8mewdkcl5q1p7m9xhi9nzha','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulixR:lKBC6SmQWkUFHFtrLj9JeuMQ11AnCsToT3xZyGfbhSU','2025-08-26 06:58:05'),
('jxkn1jagbqumars6ywpowwwohpqdh5qs','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoxBM:m0F4-Pn8Ws9S_7nLpzmNiM6M3eAtGJUaZMqtIsfxH1g','2025-09-04 04:45:48'),
('k3g0y35ha9096tjjoiatodtun3a4u2ar','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1uliyk:v6bdHm1bj_SCj6h2F2S3iHK3JLl_j7K90i2Gqj001D0','2025-08-26 06:59:26'),
('kbgpgyhk7vlm419gr0se8xlkifiz3ix8','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um6UZ:6O5YArQlRmc0v26g2YRSetAeFoQp2FL1aLgz4GTrdTU','2025-08-27 08:05:51'),
('kczwsmwa0rvj4bjbyoykoe4p3wg5b426','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1um3qn:BSTyyY1kMmZTGh21wSa3zgW8jCvczbC0Jogc2XrFLDo','2025-08-27 05:16:37'),
('kdpayjw576zvdowatwl2wn7ew6gnf2tj','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1uljP9:9VRvpeDToJzdOX586qC3HBtOcqkJoHFlwrVnpmVbkh4','2025-08-26 07:26:43'),
('kjslb7gkzkcijhp6px9ut9owdg33a6wa','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq4IA:EaX0Dfbhx11rURyqzHuUoK5m8dRykz4DzKzJIPwCLlM','2025-09-07 06:33:26'),
('kuh9pu5yn2zujnpit08tdbmx4dgdkgpw','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um6az:UyjIWY7IbT8vAMi5MsGgMHqfi7Y8WMXuWSt4CG8eMyo','2025-08-27 08:12:29'),
('lscd3ajcxrf7624csx6kldremep917wg','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoxuk:qGDtUy-UrfbXB9oRa5GHURKoPCAxtNXC9tbnQeZ0Lvg','2025-09-04 05:32:42'),
('mqgxgsl21s91u9nxdgxf2e8e5a9t3y3v','.eJxVjEEOwiAQRe_C2hCYTgFduvcMhGGmUjU0Ke3KeHfbpAvdvvf-f6uY1qXEtckcR1YXZXt1-oWU8lPqbviR6n3SearLPJLeE33Ypm8Ty-t6tH8HJbWyrYnIsgQc0CUDuYNwNj4ZFjLWOhe8w40P0gd0PpBYggAeAC37DgnU5wsA0Dc0:1um4oe:QFOwjPGs7xIbaBOOO0IRt3VJzlB_IO9oLVJZBmd681Y','2025-08-27 06:18:28'),
('n356a24kpky2pkd8yxerzvn4m3ia6ftp','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1upLaw:6ryfHJI45Czdsr10k1LcciSI2SFlXgh_NfgdQ8GaZeQ','2025-09-05 06:49:50'),
('n7t31l6p27yr13igu1qdsafeq03qa9ah','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq3mJ:Pn8NVw4Ufimw-eJJEpf0mCv_ZIRQiAIy8xV9C9b0fu8','2025-09-07 06:00:31'),
('n9y6oip6yvjb5hybz18ms4xnywzkk166','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoaxw:9d8C8dLDETSFhi0o6n4TJ5e54xMHFUXpt85oKllcAi8','2025-09-03 05:02:28'),
('naa9p04zjq67vrw8ajw3ssysku750vex','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uofed:X4Hg5TyvfJb_QZGp9wTx9RJ5UMhiBDYWU_vBXFlhb48','2025-09-03 10:02:51'),
('nfobt26da1r18xqz6prrklxckded8nkf','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1unsTe:QUw3ku5dhbWHSEy6sLL6EsIB2jYc_fUpMUXNOz_GxKg','2025-09-01 05:32:14'),
('njhoxuv6qselcgsgq8pg55qp4keos21x','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq3Re:nx05JdZPRJGejjFxanaYK3nrGyfr7Xs2ss1kYw_Lbek','2025-09-07 05:39:10'),
('nop5yvqlcpgyj85zhl0mq4llq0fq2zkq','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uodFj:HaXRmoX_Hia4Y7rVc4UyljP0KQWmmmsHp02Lkrl8F8c','2025-09-03 07:28:59'),
('nr8bvmcte8vm97yu8ooem74a8ozyynge','.eJxVjMsOwiAQRf-FtSG8RsCle7-BMDBI1UBS2pXx322TLnR7zrn3zUJclxrWQXOYMrswCez0CzGmJ7Xd5Eds985Tb8s8Id8TftjBbz3T63q0fwc1jrqtlVDCFYsZzwqK1clJa9F70uhiEhs0DkEUdGAIvErKkCAE6VEnMMg-X_QzN6k:1unxIV:FYgx4lErDvBgTY4Wiiwr6GB3PeMU-asC1Z9Q7-mXT54','2025-09-01 10:41:03'),
('nwzhyurqoqqa82ko3436wuil2pzj3yx3','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uogFj:06eN1Xo-lMgVvsCwGZienHGK4pjHMuf13ZAPrQGITyo','2025-09-03 10:41:11'),
('o1abtofrgq1e6ibe3tapd50a24tnkmzd','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1uliqk:yPhdrqJTvK2-ZoNJplHThQAslsQcf9kr301Txq8cEgs','2025-08-26 06:51:10'),
('o1jpkbx25kb0khq663gsunbu4a66dvqe','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uozTd:wRZXuhjYqlrEBRxlUAVkuBMMexSJ5ol7kAnKvfYJWEg','2025-09-04 07:12:49'),
('o3g8lsttp8mdhvgflt7kxxz61ja8z8az','.eJxVjEEOwiAQRe_C2pAB2ggu3XsGMsMMUjWQlHbVeHdt0oVu_3vvbyriupS4dpnjxOqizKhOvyNhekrdCT-w3ptOrS7zRHpX9EG7vjWW1_Vw_w4K9vKtA7uMFiAEj4zBsLGWgAOAz5BsJmJxJMZlO4AkYzh5kXOiLCMPFtX7Ax0LOTc:1um4HU:ScL4iWY9Ugo5V7rUW5Td_gy6j5knHqS9jugk_14ejpc','2025-08-27 05:44:12'),
('ofp6zpby3thjpl80sfro3smwylfkl0ue','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoebU:_PgGe4vt2EksMisSK8y-by3Dcw-xf1vU31Sn7Fqi1wE','2025-09-03 08:55:32'),
('osy029qn61ry2daok8rh5q0io41q1nky','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqS5Y:Hl0QDxHwRt0CYCVM3_g_bYRdmoTRdxtUzYxEC1Bb8V8','2025-09-08 07:58:00'),
('p00bh7gjwsog4fn6pyywbx1bpn080jzj','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uozL0:2ux3MIMJidlRAyfQxFTGyZ-Cc8QNFMo0Y2GJV6h8pvI','2025-09-04 07:03:54'),
('p0jchdshbdz79flm0s79qopwcdoiy1b3','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uozaq:E6zbZeQyfDUW797dtvu6db9lVNu26V80qbT6vIGTvjU','2025-09-04 07:20:16'),
('papi23b2dq71vowtwslguc92si0wd2k7','NTNjNjJkZjNmNGE0ODBhZGVjNDY2MmI2Mzk5Y2RmMDE4ZDg1NTBhNTp7fQ==','2025-07-15 07:04:13'),
('pj36hmrcgoum93b3v2r82bacg979vw35','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1upLfM:nYd0gvhoYi5XkvMe7hNw9OxIPeksTXXIE3dplY0NYEE','2025-09-05 06:54:24'),
('pjgal6b4pbdr4wvd93g3480vcgvgz11c','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulixS:5Vhavn2yqrk-HicKolH6GZeTkVgyX9QNZGd9Ayb-O1A','2025-08-26 06:58:06'),
('pn0g5vheoga52gja3q9jb601im2pzf0t','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoglh:etOwgCcbYeWaWJH5hhxbhbRLmxBzCwVDbmkoIUbasos','2025-09-03 11:14:13'),
('pwjq6f5mmlspn66dgpq7zh9utcjs5qud','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1untk9:hBsgqfKTsjWPpIu-9Pif_WgIXc4C1hg_g2hH2YZ-bQg','2025-09-01 06:53:21'),
('q7vziakf4fwswkwdwexvyqy78z4dfhs4','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uob8F:klJsqHEfBtJYC73IXDRb19BGq_WEb0HlV5fptiK6pV8','2025-09-03 05:13:07'),
('q9h5tqvbsllgemf15880n860q9ctaqus','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqQjy:qvGATprDVIqGoJ-X3h06tzwe9Pcp2BFZeBvqErW25zw','2025-09-08 06:31:38'),
('qaansv082mm4kpp4cy9zih33dhmq4ddd','.eJxVjEEOwiAQRe_C2pAB2ggu3XsGMsMMUjWQlHbVeHdt0oVu_3vvbyriupS4dpnjxOqizKhOvyNhekrdCT-w3ptOrS7zRHpX9EG7vjWW1_Vw_w4K9vKtA7uMFiAEj4zBsLGWgAOAz5BsJmJxJMZlO4AkYzh5kXOiLCMPFtX7Ax0LOTc:1um4HI:sWbSCSqWaxwwdCoNZXT-68HcSu6C7fJlVaXwG6krCFw','2025-08-27 05:44:00'),
('qoos94hz9qybfdbrjvba6t1qyevgk4la','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqPSh:ECj8J1vvhrwFccBNn6ftx5L2DgxexOJ0eOiv9sfvVLk','2025-09-08 05:09:43'),
('qq95tymvy3v1vd7oucgiu7nsaxpdaut2','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq4bQ:XI8VDTXF1oDMvFy2wF3QN4peQPkGC3FsFA-tLlfOeCE','2025-09-07 06:53:20'),
('qrz9vofnghfofjrj0klntau161t10c0s','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uogxp:5YsG1kIbpGWTSTMbsa8Ti_MjsXp9JEw6pl08ry6DgmA','2025-09-03 11:26:45'),
('qtyse59q44g8y08rtvle92xtj0fh3j1y','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um4q0:HmvcI2cOYhtyil986fr6YK5P2HlnmLeZqT6Pdo05Hs0','2025-08-27 06:19:52'),
('qz8fu9rdcer9xz125nx47am3o41k2g25','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqRUO:Lxw3copK1wS_13JPek1BD7asOzc4Io3ahFNwDmgdpRA','2025-09-08 07:19:36'),
('r0awvoczls2dnxmxwji8crxe50bu3ydc','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um6j8:XMbwUWb6l7OgSHLpymIph7ZIzt0cvJ98lEe8I_4QbEU','2025-08-27 08:20:54'),
('r2qxpqx8fh0wcwvas73gmk4ai4ems1c9','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1upLNs:aPHBiaW8C7GpFkMQkXk2s2mrz8Wh8Y3y36LHA3-jFvk','2025-09-05 06:36:20'),
('rt8atdp9z6egalyucp43akh9b8diyexw','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoz1X:BJdVweeY1Z2dLg4Rk4ui0L6AS0zq-jRbImV29Ko3veg','2025-09-04 06:43:47'),
('ryp578it44fq6jz23bvjr8gqgx68mp82','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoeXb:x1t9KM0mDouphbUh7tUCkDMOl2VMnck07XcwDeF5F6o','2025-09-03 08:51:31'),
('scarujoh7j2zkk7rfe9o1sus50jpcq8j','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1um3ao:WZVSkVB2X4QzbtOx6lONZWWtwkYXSqzn-68oxUOHwd8','2025-08-27 05:00:06'),
('sgnt3nxtjql4lmyepgw56vfxrtunzf3s','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um4pF:SbsVjE0nTNMXgAEs58Ib1TccpKVuGHgCmoyvyjkRh2I','2025-08-27 06:19:05'),
('t4yum09k6upps3cjddc2udkumx5abr2c','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1upL1l:mAWm8DOv5af2xNE_5gx-Vrt7Qd5j6-r9hhFpi8wFsRE','2025-09-05 06:13:29'),
('t9nn4gude946d2hon8ccdjzby04b3bte','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1upLN6:U3fBfN8A13OkAwUubJbYgFoQVKsbJ_y4uUBRvqmwj28','2025-09-05 06:35:32'),
('tab00jzfzjqu3ai1kcfzu7cv5l07jw8f','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqPpz:ZE5yKnhQwx7HdGsw3YScC8lJowcXNFZbzJ5_MloQeSs','2025-09-08 05:33:47'),
('teqwpka5gtfzn4otdn2hj4wywm6070et','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1urtG2:nwlABAo4b5_1QDETDsqifOIkdtsveK-BMUioQN9Ssf0','2025-09-12 07:10:46'),
('tmt6ym05qrrs5f5rtn27qzal0ucvxfsz','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulj4Q:LJAqhMfz6CqB4Y3BDjBtjM-IABpJ8YbaUx1Ei0mrCjw','2025-08-26 07:05:18'),
('u1mptfmwfql4z83fx5mfvxv5dutcfjci','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1upLPr:OksIWLuheVFJ_K-P8id96jvJ5-0kUguHq9mRwQ9GCcw','2025-09-05 06:38:23'),
('u6tpqvbfg4z39mabhryuieo6d8c9l9iv','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoywS:_oMPl1qzFKuYHnbghHRYNzWUJZyKFyDeRCLHZx9C4ts','2025-09-04 06:38:32'),
('ubp7q2a6qoc7gihhlakrdc1ddpvel7tc','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1uljCE:ztC18yf_mJIcwK8-xuVfguM-foW6G0pkA97P0Plem74','2025-08-26 07:13:22'),
('ul3fboffgntpfsfwcqx01y2nlhto38tr','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulixS:5Vhavn2yqrk-HicKolH6GZeTkVgyX9QNZGd9Ayb-O1A','2025-08-26 06:58:06'),
('upowe91qmbnn359us4szfsayi9rw9dw4','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1um6jv:nb6xDFqAH3UDDiIEB-eEKxTcnu2YEMV4OQTLsgy_K7w','2025-08-27 08:21:43'),
('utrrv1hf7ad5kcxmt1vhs8m7a8rz4hxi','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uogv3:6eVwaE6PecjrwsY7AYS1Cn-xYbX1WXB2ckLi3IOcuUs','2025-09-03 11:23:53'),
('vgohsy8dvflpuihacw8npkfnt0b7o2zk','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uod5I:CM5iQnwXSpEnpHnEkHcrSIlRMxKO7tyDzix8k7ciY1E','2025-09-03 07:18:12'),
('vi3b3ego83wjm1qf4i0y3jsk3vymllel','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqSsh:BmQoQ-ZzFlUgW9vnVFjvlTD1mCuSI5lrGmBu7ObkyqE','2025-09-08 08:48:47'),
('vsee4ke04qypold6s0pzpf9s89ydn8ha','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqP4F:L9IXZRM_92mKioAR4KXrIhPEI32mSlmmYIwhKmEAREo','2025-09-08 04:44:27'),
('vsighdcgvkhg0fudg7hheyw8bsdkvdb5','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqQe2:sNQ7NjNmcaM2-r_gp6gmjzRg8IouepbfWUkUVU9SPiQ','2025-09-08 06:25:30'),
('vsxzg6l7u9314cjpmf6gg144a7cpfkwx','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uogtf:qMUpFdafpJJxeq-z7HVmGtYjmqpSOM-hbUE2ZJOPVy0','2025-09-03 11:22:27'),
('vw3d3wat81r8xcgktkzzz92eoer9g5uv','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uofg4:WtqnPSBQ62jf-Dk2H21Cl8f9DuJwzfXPTXjWqtTRDU8','2025-09-03 10:04:20'),
('vzqlkupn6atfhdu5cav2ey58m1bb5fkt','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqQUj:tQeHu2RxR76o6sR1m4AQSAAef5HhztIg_KSpkqfmnVY','2025-09-08 06:15:53'),
('wcl395lglpyw0n877rftus5qd6es6wi0','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoxxc:S-xJvq9j0NJ1wdQHagS1yd0oF1sP8HMW7D6rNZ-rte0','2025-09-04 05:35:40'),
('wiqeficvwybbcvm19689fjcj2mnnkzuk','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1um3IB:Z4S6IKtDwUpOuR58Ster0bzo491MrxwdXPLHOenUTYw','2025-08-27 04:40:51'),
('wnq62miy7rd02qb4tlrm8akcpi4g09ld','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqRDs:eh2CwY23sGptdfCL_3LPS7W12k5AaJ5mEsHPvxqVAaw','2025-09-08 07:02:32'),
('x6lslxo4nxt6j0q04c220myjxrvdac1a','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1uljM2:rO189Dyu26gyNHueJdumkNjWFpFXjH5x7vSaKrqZmIY','2025-08-26 07:23:30'),
('xf1khlr8frmzumlggirht6bm38manny8','.eJxVjEEOwiAQRe_C2hCY0gIu3XsGMgyjVA0kpV0Z7y5NutDtf-_9twi4rTlsjZcwJ3EWWpx-t4j05LKD9MByr5JqWZc5yl2RB23yWhO_Lof7d5Cx5V4zGGPAD64nFLWyA-HEno3rBCwO6CfAmyVGF5NToyLFOoHhSHF0ID5f6P04Tw:1ulLDG:rzEFZD5acMvtThBpCwvouM8dSVfq-6TENKEDQR77fBw','2025-08-25 05:36:50'),
('xfucjg0g2ygmuu8s08nyws8bmpwcy1qk','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uozXb:LoHrBXsKW5aZgfHUGy9XR1JC2eYOtO7UsruUgU2kcBo','2025-09-04 07:16:55'),
('xjpfhmk7eao0e2y3qvy1ly1bonerbvx2','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqSIi:vtrL9nZiTsP_TxZCkuXouPxtG-H4G7IP17i6a6lxY9M','2025-09-08 08:11:36'),
('xms2ucs1gyu4os8ve1nmzoq5a0xqgpbi','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulixR:lKBC6SmQWkUFHFtrLj9JeuMQ11AnCsToT3xZyGfbhSU','2025-08-26 06:58:05'),
('xr0tsbie9qr09u6jk8t6kavbdkvalxy7','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uq4M1:oZWyrNqDBVeHlcTQS4MUF2P5Nn1TzisiYy9n8dOFlEI','2025-09-07 06:37:25'),
('xywh1aads3s1z47rhoilo5zbkf6j7pxb','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1upL8h:huIBW6iVL-IKS_pZHUcl4dvRVeOzvDyMljW1IN3X2TA','2025-09-05 06:20:39'),
('ynghmsvilwk4w4h3kpr32z5ix60mzlil','.eJxVjDsOAjEMBe-SGkVyPoZQ0nOGlWM7ZAEl0n4qxN1hpS2gfTPzXmagdanDOus0jGLOBqI5_I6Z-KFtI3KnduuWe1umMdtNsTud7bWLPi-7-3dQaa7fGlkkei1FiRBQSwQ5gneAgVUxe3YSkUOKIYtIgMyEnFLhk0sA3rw_OQg49w:1unsbN:QzrvA9YhwYk4Kj4uph_AmNM8tEiuyCSNUI96aGtmLlM','2025-09-01 05:40:13'),
('ypqq6zxo3a8vczcq2nv5ph8rthdzk7uf','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uogmG:btJl6OGmS66GLxkC2IdNGdr5lhrXiHGC6qvt-hhlbPw','2025-09-03 11:14:48'),
('yqk8cnk8tf37ol525wf8fxrfl4tac8m3','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uogqs:M_IOJTwoz4Dhw4lB_-D5l1n8ofszARW7CeYhjDsr7C0','2025-09-03 11:19:34'),
('ysiqy5cb00xghmy90o3022l8br9s32ua','.eJxVjsEOwiAQRP-FsyELbRU8eu83kF12sVUDSWlPxn-3JD3odd7My7xVwG2dwlZlCTOrqzKDOv2GhPEpuRF-YL4XHUtel5l0q-iDVj0Wltft6P4JJqzTvvbcJbQA3jtk9IaNtQTsAVyCaBMRS0diumR7kGgMRydyiZRk4N7iLt3awfPnC-7FO1k:1ulixQ:L3V2dDyulfLcb5X4KEa0CNIjGdg9n0UAfgaxGoOVOjc','2025-08-26 06:58:04'),
('ywwm137frp9hadgar0yl5in67khbuo96','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqRWM:gWYvusJESQ3zj_wNy5fV8ryRHuzYTCOH0QKUL6sNBJI','2025-09-08 07:21:38'),
('z7ioptx5s0ytmozb9bpz5lxjmbqjrxhe','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1upLIM:KYUOAcsNDSLqIyyQgHdx4ruWDJwvTkP5kHtxlnP8alE','2025-09-05 06:30:38'),
('zbeifnuf7i1fr3a8jhsms3nzhhqn6q9a','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uqPDV:pHzCFPzigW-ptnv7mpUHaz8BvxBDNmy1uPtABCmTf9w','2025-09-08 04:54:01'),
('zej6wwa8zp0tnt6dfmnsfi56hstuac7i','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoeTI:sX-_yILbfn7RPIb4_BrEj2VzpxJ6nhqZIrFMoRZgNnA','2025-09-03 08:47:04'),
('zh5laf4v3iy68nsax8zu6eo7z7vkow1n','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcmDTv9jgjpQW0n-Q7t1nnqbV1m5LvCDzr4tWd6Xg7376DCqN-avJLal6KETQQanUVZsgpeTCAgZaNAG0TtAlkqXgoZFIhiHCgdyuTZ-wMQLDgC:1uoxxw:8OV_SWx1c_sVYsIg8bUierGHnTiNmmuUWxOr4zlW7Vc','2025-09-04 05:36:00');

/*Table structure for table `myapp_alert` */

DROP TABLE IF EXISTS `myapp_alert`;

CREATE TABLE `myapp_alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `FORESTSTATION_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_alert_FORESTSTATION_id_7f0c9477_fk_myapp_foreststation_id` (`FORESTSTATION_id`),
  CONSTRAINT `myapp_alert_FORESTSTATION_id_7f0c9477_fk_myapp_foreststation_id` FOREIGN KEY (`FORESTSTATION_id`) REFERENCES `myapp_foreststation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_alert` */

insert  into `myapp_alert`(`id`,`title`,`desc`,`date`,`FORESTSTATION_id`,`image`) values 
(45,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 11:43.','2025-08-29',2,''),
(46,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 11:44.','2025-08-29',2,''),
(47,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 11:44.','2025-08-29',2,''),
(48,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 11:45.','2025-08-29',2,''),
(49,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 11:46.','2025-08-29',2,''),
(50,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 11:53.','2025-08-29',2,''),
(55,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 11:54.','2025-08-29',2,''),
(56,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 11:54.','2025-08-29',2,''),
(57,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 11:54.','2025-08-29',2,''),
(58,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 11:54.','2025-08-29',2,''),
(59,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 11:54.','2025-08-29',2,''),
(60,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:04.','2025-08-29',2,'/static/animalpic/20250829_120407.jpg'),
(61,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:04.','2025-08-29',2,'/static/animalpic/20250829_120411.jpg'),
(62,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:04.','2025-08-29',2,'/static/animalpic/20250829_120415.jpg'),
(63,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:04.','2025-08-29',2,'/static/animalpic/20250829_120419.jpg'),
(64,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:04.','2025-08-29',2,'/static/animalpic/20250829_120424.jpg'),
(65,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:04.','2025-08-29',2,'/static/animalpic/20250829_120428.jpg'),
(66,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:04.','2025-08-29',2,'/static/animalpic/20250829_120433.jpg'),
(67,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:04.','2025-08-29',2,'/static/animalpic/20250829_120439.jpg'),
(68,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:04.','2025-08-29',2,'/static/animalpic/20250829_120445.jpg'),
(69,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:04.','2025-08-29',2,'/static/animalpic/20250829_120452.jpg'),
(70,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:05.','2025-08-29',2,'/static/animalpic/20250829_120500.jpg'),
(71,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:05.','2025-08-29',2,'/static/animalpic/20250829_120510.jpg'),
(72,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:05.','2025-08-29',2,'/static/animalpic/20250829_120535.jpg'),
(73,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:05.','2025-08-29',2,'/static/animalpic/20250829_120549.jpg'),
(74,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:06.','2025-08-29',2,'/static/animalpic/20250829_120603.jpg'),
(75,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:06.','2025-08-29',2,'/static/animalpic/20250829_120620.jpg'),
(76,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:06.','2025-08-29',2,'/static/animalpic/20250829_120641.jpg'),
(77,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:06.','2025-08-29',2,'/static/animalpic/20250829_120659.jpg'),
(78,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:07.','2025-08-29',2,'/static/animalpic/20250829_120722.jpg'),
(79,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:07.','2025-08-29',2,'/static/animalpic/20250829_120751.jpg'),
(80,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:11.','2025-08-29',2,'/static/animalpic/20250829_121128.jpg'),
(81,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:11.','2025-08-29',2,'/static/animalpic/20250829_121132.jpg'),
(82,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:11.','2025-08-29',2,'/static/animalpic/20250829_121136.jpg'),
(83,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:11.','2025-08-29',2,'/static/animalpic/20250829_121140.jpg'),
(84,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:11.','2025-08-29',2,'/static/animalpic/20250829_121145.jpg'),
(85,'Animal detected.','tiger was detected at kannur Forest Station on 2025-08-29, 12:11.','2025-08-29',2,'/static/animalpic/20250829_121150.jpg'),
(86,'Animal detected.','porcupine was detected at kannur Forest Station on 2025-08-29, 12:16.','2025-08-29',2,'/static/animalpic/20250829_121637.jpg'),
(87,'Animal detected.','porcupine was detected at kannur Forest Station on 2025-08-29, 12:16.','2025-08-29',2,'/static/animalpic/20250829_121641.jpg'),
(88,'Animal detected.','porcupine was detected at kannur Forest Station on 2025-08-29, 12:16.','2025-08-29',2,'/static/animalpic/20250829_121645.jpg');

/*Table structure for table `myapp_animals` */

DROP TABLE IF EXISTS `myapp_animals`;

CREATE TABLE `myapp_animals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_animals` */

insert  into `myapp_animals`(`id`,`name`,`age`,`image`,`color`) values 
(1,'ELEPHINT','5','IMG','BLACK'),
(2,'LION','3','SJD','ORANGE'),
(3,'fg','5','fre','red'),
(4,'tiger','2','/media/pexels-aashish-miglani-485477797-17150758.jpg','orange');

/*Table structure for table `myapp_complaint` */

DROP TABLE IF EXISTS `myapp_complaint`;

CREATE TABLE `myapp_complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `comp_desc` varchar(100) NOT NULL,
  `replay` varchar(100) NOT NULL,
  `replaydste` varchar(100) NOT NULL,
  `USER_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_complaint_USER_id_21ed0b20_fk_myapp_user_id` (`USER_id`),
  CONSTRAINT `myapp_complaint_USER_id_21ed0b20_fk_myapp_user_id` FOREIGN KEY (`USER_id`) REFERENCES `myapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `myapp_complaint` */

/*Table structure for table `myapp_contact` */

DROP TABLE IF EXISTS `myapp_contact`;

CREATE TABLE `myapp_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `ph_no` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_contact` */

insert  into `myapp_contact`(`id`,`name`,`ph_no`) values 
(1,'IRITTY FOREST STATION','98499515151');

/*Table structure for table `myapp_fire_noti` */

DROP TABLE IF EXISTS `myapp_fire_noti`;

CREATE TABLE `myapp_fire_noti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `FORESTSTATION_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_fire_noti_FORESTSTATION_id_616c1b8e_fk_myapp_for` (`FORESTSTATION_id`),
  CONSTRAINT `myapp_fire_noti_FORESTSTATION_id_616c1b8e_fk_myapp_for` FOREIGN KEY (`FORESTSTATION_id`) REFERENCES `myapp_foreststation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_fire_noti` */

insert  into `myapp_fire_noti`(`id`,`date`,`desc`,`image`,`title`,`FORESTSTATION_id`) values 
(1,'22/2/25','fire','demo','fire',1),
(2,'20/1/25','hdc','sdcs','csxc',1),
(3,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 11:21.','/static/firepic/20250829_112113.jpg','Forest fire detected.',2),
(4,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 11:21.','/static/firepic/20250829_112135.jpg','Forest fire detected.',2),
(5,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 11:23.','/static/firepic/20250829_112351.jpg','Forest fire detected.',2),
(6,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 11:24.','/static/firepic/20250829_112432.jpg','Forest fire detected.',2),
(7,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 11:25.','/static/firepic/20250829_112512.jpg','Forest fire detected.',2),
(8,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 12:30.','/static/firepic/20250829_123001.jpg','Forest fire detected.',2),
(9,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 12:30.','/static/firepic/20250829_123013.jpg','Forest fire detected.',2),
(10,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 12:30.','/static/firepic/20250829_123027.jpg','Forest fire detected.',2),
(11,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 12:30.','/static/firepic/20250829_123041.jpg','Forest fire detected.',2),
(12,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 12:31.','/static/firepic/20250829_123057.jpg','Forest fire detected.',2),
(13,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 12:31.','/static/firepic/20250829_123114.jpg','Forest fire detected.',2),
(14,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 12:31.','/static/firepic/20250829_123134.jpg','Forest fire detected.',2),
(15,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 12:58.','/static/firepic/20250829_125840.jpg','Forest fire detected.',2),
(16,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 12:58.','/static/firepic/20250829_125854.jpg','Forest fire detected.',2),
(17,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 12:59.','/static/firepic/20250829_125911.jpg','Forest fire detected.',2),
(18,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 12:59.','/static/firepic/20250829_125933.jpg','Forest fire detected.',2),
(19,'2025-08-29','Forest fire was detected at kannur Forest Station on 2025-08-29, 12:59.','/static/firepic/20250829_125955.jpg','Forest fire detected.',2);

/*Table structure for table `myapp_foreststation` */

DROP TABLE IF EXISTS `myapp_foreststation`;

CREATE TABLE `myapp_foreststation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `ph_no` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `LOGIN_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_foreststation_LOGIN_id_c854fdf9_fk_auth_user_id` (`LOGIN_id`),
  CONSTRAINT `myapp_foreststation_LOGIN_id_c854fdf9_fk_auth_user_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_foreststation` */

insert  into `myapp_foreststation`(`id`,`name`,`place`,`ph_no`,`email`,`latitude`,`longitude`,`LOGIN_id`) values 
(1,'Iritty Forest station','kannur','9895632541','iknr@gmail.com','1.0','3.0',2),
(2,'kannur Forest Station','knr','6565165151','knf@gmail.com','5.7','4.2',2),
(3,'pazhayangadi frst station','kannur','9895632541','pdi@gmail.com','1.0','2.0',3),
(4,'pilathara foreststn','kannur','9895532541','plt@gmail.com','1.0','2.0',4),
(6,'wayanad forest station','wayanad','85879564','w@gmail.com','55.23','78.25',6),
(7,'iduki forest station','edukki','85879564','e@gmail.com','55.236516','78.2511',10),
(8,'bandipur','karnataka','6528746549','b@gmail.com','5456.848','656.11',11),
(9,'nagarhole','karnataka','6528746','n@gmail.com','5456.848','656.11',13),
(10,'nagarhol','karnataka','6528746549','nn@gmail.com','5456.848','656.112',14);

/*Table structure for table `myapp_human_noti` */

DROP TABLE IF EXISTS `myapp_human_noti`;

CREATE TABLE `myapp_human_noti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `FORESTSTATION_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_human_noti_FORESTSTATION_id_22a284a3_fk_myapp_for` (`FORESTSTATION_id`),
  CONSTRAINT `myapp_human_noti_FORESTSTATION_id_22a284a3_fk_myapp_for` FOREIGN KEY (`FORESTSTATION_id`) REFERENCES `myapp_foreststation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_human_noti` */

insert  into `myapp_human_noti`(`id`,`date`,`image`,`time`,`desc`,`FORESTSTATION_id`) values 
(1,'22/8/25','BJH','22.03','HVH ',1);

/*Table structure for table `myapp_notification` */

DROP TABLE IF EXISTS `myapp_notification`;

CREATE TABLE `myapp_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_notification` */

insert  into `myapp_notification`(`id`,`title`,`date`,`description`) values 
(1,'fire','10/5/25','fire detected from forest area'),
(2,'fire','','firee'),
(3,'test','<class \'datetime.date\'>','test'),
(4,'test','2025-08-19 14:06:42.080551','testdate'),
(5,'helo','2025-08-25','heloooo');

/*Table structure for table `myapp_report` */

DROP TABLE IF EXISTS `myapp_report`;

CREATE TABLE `myapp_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `FORESTSTATION_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_report_FORESTSTATION_id_18be623d_fk_myapp_foreststation_id` (`FORESTSTATION_id`),
  CONSTRAINT `myapp_report_FORESTSTATION_id_18be623d_fk_myapp_foreststation_id` FOREIGN KEY (`FORESTSTATION_id`) REFERENCES `myapp_foreststation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_report` */

insert  into `myapp_report`(`id`,`title`,`description`,`date`,`FORESTSTATION_id`) values 
(3,'hsdhdsh','sdjbscv','8/28/22',3),
(4,'jwjf','sdknskdj','',7);

/*Table structure for table `myapp_station_complaint` */

DROP TABLE IF EXISTS `myapp_station_complaint`;

CREATE TABLE `myapp_station_complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `replay` varchar(100) NOT NULL,
  `r_date` varchar(100) NOT NULL,
  `FORESTSTATION_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_station_compla_FORESTSTATION_id_cd3591cd_fk_myapp_for` (`FORESTSTATION_id`),
  CONSTRAINT `myapp_station_compla_FORESTSTATION_id_cd3591cd_fk_myapp_for` FOREIGN KEY (`FORESTSTATION_id`) REFERENCES `myapp_foreststation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_station_complaint` */

insert  into `myapp_station_complaint`(`id`,`desc`,`date`,`replay`,`r_date`,`FORESTSTATION_id`) values 
(1,'cdf','2025-07-07','okkk','2025-06-30',1),
(4,'hoii','2025-07-07 12:06:37.714737','','',7),
(5,'fun is not working','2025-07-20','we will fix it soon','',9),
(6,'hjhsdvb vdvjdfvd','2025-07-30 11:56:15.664500','','',9),
(7,'huhbjhb','2025-07-30 11:58:06.973105','','',9);

/*Table structure for table `myapp_user` */

DROP TABLE IF EXISTS `myapp_user`;

CREATE TABLE `myapp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `ph_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `LOGIN_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_user_LOGIN_id_da832ded_fk_auth_user_id` (`LOGIN_id`),
  CONSTRAINT `myapp_user_LOGIN_id_da832ded_fk_auth_user_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_user` */

insert  into `myapp_user`(`id`,`name`,`place`,`ph_name`,`email`,`post`,`pin`,`LOGIN_id`) values 
(1,'achal','tly','251411','achal@gmail.com','tlyy','6516515',1),
(2,'adith','kannur','06282877095','a@gmail.com','knr','51488',7),
(3,'abhishek k','kannur','06282877095','ab@gmail.com','knr','51488',8),
(4,'achal','tly','06132144844','aachal@gmail.com','scs','46554',9),
(5,'sreya','tly','06132144844','sreya@gmail.com','scs','46554',12),
(6,'user1','sdvs','6511651','user@gmail.com','dvsdvvs','03',15),
(7,'n','','855155454','','','',16),
(8,'ksbdvs','syudgc','6541280457','u@gmail.com','sdoic','852741',18),
(10,'user','rhtr','632510478','user1@gmail.com','fgbb','665655',19);

/*Table structure for table `myapp_user_complaint` */

DROP TABLE IF EXISTS `myapp_user_complaint`;

CREATE TABLE `myapp_user_complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `comp_desc` varchar(100) NOT NULL,
  `replay` varchar(100) NOT NULL,
  `replaydste` varchar(100) NOT NULL,
  `FORESTSTATION_id` int(11) NOT NULL,
  `USER_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_user_complaint_FORESTSTATION_id_937382bb_fk_myapp_for` (`FORESTSTATION_id`),
  KEY `myapp_user_complaint_USER_id_ed143d8e_fk_myapp_user_id` (`USER_id`),
  CONSTRAINT `myapp_user_complaint_FORESTSTATION_id_937382bb_fk_myapp_for` FOREIGN KEY (`FORESTSTATION_id`) REFERENCES `myapp_foreststation` (`id`),
  CONSTRAINT `myapp_user_complaint_USER_id_ed143d8e_fk_myapp_user_id` FOREIGN KEY (`USER_id`) REFERENCES `myapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_user_complaint` */

insert  into `myapp_user_complaint`(`id`,`date`,`comp_desc`,`replay`,`replaydste`,`FORESTSTATION_id`,`USER_id`) values 
(3,'5/5/25','fun is not working','okk','2025-07-19',3,1),
(5,'2025-07-04 12:16:30.517842','ojio','ok','2025-08-19',1,2),
(6,'2025-07-04 12:17:34.998509','oijij','','',2,2),
(7,'2025-07-04 12:40:14.573361','comp achal','','',3,4),
(8,'2025-07-04 12:40:28.488761','comp achal','okkk','2025-08-19',3,4),
(9,'jn','jvjh','','',1,1),
(10,'xcxc ','lxcvnxmcv ','okk','2025-08-14',1,1),
(11,'2025-08-18','hiii','','',1,1),
(12,'2025-08-18','hiii','','',1,1),
(13,'2025-08-18','kdjbvskdj','','',1,1),
(14,'2025-08-18','hgjh','','',1,1),
(15,'2025-08-25','hy','','',1,1),
(16,'2025-08-25','jb','','',1,1),
(17,'2025-08-25','user1 test','','',1,1),
(18,'2025-08-25','hiii','','',1,1),
(19,'2025-08-25','hyyyyyy','ok','2025-08-25',1,6),
(20,'2025-08-25','huuuu','ok broo','2025-08-25',1,6),
(21,'2025-08-25','hyy','','',9,6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
