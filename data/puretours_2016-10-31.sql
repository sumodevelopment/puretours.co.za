# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.01 (MySQL 5.6.28)
# Database: puretours
# Generation Time: 2016-10-31 15:19:39 +0000
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
	(4,1,5,NULL,50);

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



# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
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
	(1,'Dewald','Els','dewald@sumodevelopment.co.za','password','dewald',NULL,'2016-10-26 22:37:04',1,1),
	(2,'Admin',NULL,'admin@puretours.co.za','password','admin',NULL,'2016-10-27 08:12:31',1,1),
	(3,'John','Editor','editor@puretours.co.za','password','editor',NULL,'2016-10-27 17:48:50',2,1);

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
