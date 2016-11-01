# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.28)
# Database: puretours
# Generation Time: 2016-11-01 12:37:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `menu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;

INSERT INTO `menu` (`menu_id`, `name`)
VALUES
	(1,'Primary');

/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_item`;

CREATE TABLE `menu_item` (
  `menu_item_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `display` varchar(80) DEFAULT NULL,
  `page_id` int(11) unsigned DEFAULT NULL,
  `menu_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`menu_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `menu_item` WRITE;
/*!40000 ALTER TABLE `menu_item` DISABLE KEYS */;

INSERT INTO `menu_item` (`menu_item_id`, `name`, `display`, `page_id`, `menu_id`)
VALUES
	(1,'Home','Home',1,1),
	(2,'Pure Skiing','Pure Skiing',1,1),
	(3,'Pure Sport','Pure Sport',1,1),
	(4,'Robinson Club','Robinson Club',1,1),
	(5,'About','About',2,1),
	(6,'Contact','Contact',3,1);

/*!40000 ALTER TABLE `menu_item` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table module
# ------------------------------------------------------------

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `module_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(80) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `module_category_id` int(10) unsigned DEFAULT NULL,
  `module_path` varchar(128) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `alias` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;

INSERT INTO `module` (`module_id`, `module_name`, `date_created`, `module_category_id`, `module_path`, `active`, `alias`)
VALUES
	(1,'Banner - Small','2016-10-26 00:11:37',1,'modules/banners/small/index',1,'bannerSmall'),
	(2,'Banner - Medium','2016-10-26 00:12:14',1,'modules/banners/medium/index',1,'bannerMedium'),
	(3,'Banner - Large','2016-10-26 00:12:14',1,'modules/banners/large/index',1,'bannerLarge'),
	(4,'Header','2016-10-26 00:12:27',3,'modules/header/index',1,'header'),
	(5,'Footer','2016-10-26 00:12:56',4,'modules/footer/index',1,'footer'),
	(6,'Nav - Public','2016-10-26 22:50:36',5,'modules/nav-public/index',1,'navPublic');

/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table module_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `module_categories`;

CREATE TABLE `module_categories` (
  `module_category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`module_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `module_categories` WRITE;
/*!40000 ALTER TABLE `module_categories` DISABLE KEYS */;

INSERT INTO `module_categories` (`module_category_id`, `name`)
VALUES
	(1,'Banners'),
	(2,'Sliders'),
	(3,'Header'),
	(4,'Footer'),
	(5,'Navbar');

/*!40000 ALTER TABLE `module_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `page_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_title` varchar(128) DEFAULT NULL,
  `show_header` tinyint(1) DEFAULT '1',
  `show_footer` tinyint(1) DEFAULT '1',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(128) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;

INSERT INTO `page` (`page_id`, `page_title`, `show_header`, `show_footer`, `date_created`, `slug`, `active`)
VALUES
	(1,'Home',1,0,'2016-10-26 00:11:18','home',1),
	(2,'About',1,1,'2016-10-27 15:33:11','about',1),
	(3,'Contact',1,1,'2016-10-27 15:33:34','contact',1);

/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_module
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_module`;

CREATE TABLE `page_module` (
  `page_module_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned DEFAULT NULL,
  `module_id` int(11) unsigned DEFAULT NULL,
  `module_data` text,
  `order` int(2) DEFAULT '0',
  PRIMARY KEY (`page_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page_module` WRITE;
/*!40000 ALTER TABLE `page_module` DISABLE KEYS */;

INSERT INTO `page_module` (`page_module_id`, `page_id`, `module_id`, `module_data`, `order`)
VALUES
	(1,1,3,'{\"src\": \"assets/img/backgrounds/modules/banner-home.jpg\"}',2),
	(2,1,6,'',1),
	(3,1,4,'',0),
	(4,1,5,NULL,50),
	(5,2,2,'{\"src\": \"assets/img/backgrounds/modules/banner-about.jpg\"}',2),
	(6,2,6,NULL,1),
	(7,2,4,NULL,0),
	(8,2,5,NULL,50);

/*!40000 ALTER TABLE `page_module` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pt_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pt_sessions`;

CREATE TABLE `pt_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pt_sessions` WRITE;
/*!40000 ALTER TABLE `pt_sessions` DISABLE KEYS */;

INSERT INTO `pt_sessions` (`id`, `ip_address`, `timestamp`, `data`)
VALUES
	('bb526561264c4bf126fa185499140a59deeb4390','::1',1477952279,X'5F5F63695F6C6173745F726567656E65726174657C693A313437373935323236333B'),
	('9a4f8943005a8ebfdff993f9e3b9c1406d28acfd','::1',1477952693,X'5F5F63695F6C6173745F726567656E65726174657C693A313437373935323630353B757365727C4F3A383A22737464436C617373223A31303A7B733A373A22757365725F6964223B733A313A2231223B733A31303A2266697273745F6E616D65223B733A363A22446577616C64223B733A393A226C6173745F6E616D65223B733A333A22456C73223B733A353A22656D61696C223B733A32383A22646577616C644073756D6F646576656C6F706D656E742E636F2E7A61223B733A383A2270617373776F7264223B733A3137323A22613833656431346365646432383734383232323461663363616466653138366139373631653739616134303233626263653838316133616661633839666234353135343966343436626366653030663736393864323838656630663336376632323162356434393131313839393666373638323137353866306363333262336543527A4B486F75587157704568484B4C776F646A4C343867464D656D4868623031736B6E4E45624F7948593D223B733A383A22757365726E616D65223B733A363A22646577616C64223B733A31303A226C6173745F6C6F67696E223B4E3B733A31323A22646174655F63726561746564223B733A31393A22323031362D31302D32362032323A33373A3034223B733A373A22726F6C655F6964223B733A313A2231223B733A363A22616374697665223B733A313A2231223B7D');

/*!40000 ALTER TABLE `pt_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(80) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `role_id` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `password`, `username`, `last_login`, `date_created`, `role_id`, `active`)
VALUES
	(1,'Dewald','Els','dewald@sumodevelopment.co.za','a83ed14cedd287482224af3cadfe186a9761e79aa4023bbce881a3afac89fb451549f446bcfe00f7698d288ef0f367f221b5d491118996f76821758f0cc32b3eCRzKHouXqWpEhHKLwodjL48gFMemHhb01sknNEbOyHY=','dewald',NULL,'2016-10-26 22:37:04',1,1),
	(2,'Admin',NULL,'admin@puretours.co.za','a83ed14cedd287482224af3cadfe186a9761e79aa4023bbce881a3afac89fb451549f446bcfe00f7698d288ef0f367f221b5d491118996f76821758f0cc32b3eCRzKHouXqWpEhHKLwodjL48gFMemHhb01sknNEbOyHY=','admin',NULL,'2016-10-27 08:12:31',1,1),
	(3,'John','Editor','editor@puretours.co.za','a83ed14cedd287482224af3cadfe186a9761e79aa4023bbce881a3afac89fb451549f446bcfe00f7698d288ef0f367f221b5d491118996f76821758f0cc32b3eCRzKHouXqWpEhHKLwodjL48gFMemHhb01sknNEbOyHY=','editor',NULL,'2016-10-27 17:48:50',2,1);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;

INSERT INTO `user_role` (`role_id`, `name`, `active`)
VALUES
	(1,'Admin',1),
	(2,'Editor',1);

/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
