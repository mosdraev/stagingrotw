CREATE DATABASE  IF NOT EXISTS `rotw` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rotw`;
-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: rotw
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addons`
--

DROP TABLE IF EXISTS `addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons` (
  `addid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `addmenuid` int(11) NOT NULL,
  `addname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adddesc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtype` json NOT NULL,
  `addprice` int(11) NOT NULL,
  `addquantity` int(11) NOT NULL,
  `addis_activated` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`addid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons`
--

LOCK TABLES `addons` WRITE;
/*!40000 ALTER TABLE `addons` DISABLE KEYS */;
INSERT INTO `addons` VALUES (1,1,'Hot Sauce','Hot Sauce','[1]',10,99,1,NULL,'2020-01-22 00:34:30','2020-01-22 00:34:30'),(2,1,'Cheese','Cheese','[1, 2]',10,99,1,NULL,'2020-01-22 00:34:30','2020-01-22 00:34:30'),(3,2,'Cheese','Cheese','[1, 2]',10,99,1,NULL,'2020-01-22 00:34:30','2020-01-22 00:34:30');
/*!40000 ALTER TABLE `addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `concustomerid` int(11) NOT NULL,
  `conlabel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_address` (
  `caid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cacustomerid` int(11) NOT NULL,
  `calabel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `castreet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cacity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caprovince` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cacountry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cazipcode` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`caid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_address`
--

LOCK TABLES `customer_address` WRITE;
/*!40000 ALTER TABLE `customer_address` DISABLE KEYS */;
INSERT INTO `customer_address` VALUES (3,1,'Home','Poblacion','Alaminos City','Pangasinan','Philippines','2404',NULL,'2020-01-24 22:44:03','2020-01-24 22:44:03'),(10,1,'Work','Poblacion','Alaminos City','Pangasinan','Philippines','2404',NULL,'2020-01-25 03:54:34','2020-01-25 03:54:34'),(11,3,'Work','Poblacion','Alaminos City','Pangasinan','Philippines','2404',NULL,'2020-02-16 01:15:06','2020-02-16 01:15:06');
/*!40000 ALTER TABLE `customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `menuid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vendorid` int(11) NOT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mdesc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtype` json NOT NULL,
  `mprice` int(11) NOT NULL,
  `mquantity` int(11) NOT NULL,
  `mis_activated` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,1,'Cheese Burger',' Similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. uni harum quidem sed rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilares impedit quo repellendus eligendi optio cumque nihilare impedit quo minus id quod maxime.','[1, 2, 3]',50,20,1,NULL,'2020-01-22 00:34:30','2020-01-22 00:34:30'),(2,1,'Pizza Deluxe',' Similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. uni harum quidem sed rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilares impedit quo repellendus eligendi optio cumque nihilare impedit quo minus id quod maxime.','[4, 5]',150,20,1,NULL,'2020-01-22 00:34:30','2020-01-22 00:34:30');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2020_01_21_112056_create_vendors_table',1),(4,'2020_01_21_112231_create_menus_table',1),(5,'2020_01_22_070921_create_add-on_table',1),(7,'2020_01_23_030138_create_order_track_table',2),(8,'2020_01_23_032802_create_customer_address_table',2),(11,'2020_01_23_024518_create_order_table',3),(12,'2020_01_29_071349_create_contact_table',4),(13,'2020_01_31_031333_create_rider_status_table',5),(15,'2020_01_31_045232_create_rider_profile_table',6),(16,'2020_01_31_111559_create_rider_contact_table',6),(17,'2020_02_25_071952_create_websockets_statistics_entries_table',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `orderid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ordercustomerid` int(11) NOT NULL,
  `ordermenuid` int(11) NOT NULL,
  `orderaddons` json NOT NULL,
  `orderquantity` int(11) NOT NULL,
  `ordereta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` enum('oncart','processing','delivered') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (20,1,1,'{\"1\": \"1\", \"2\": \"1\"}',1,NULL,'processing',NULL,'2020-01-23 22:23:22','2020-01-23 22:23:22'),(21,1,2,'{\"3\": \"2\"}',1,NULL,'processing',NULL,'2020-01-25 04:53:37','2020-01-25 04:53:37'),(22,3,2,'{\"3\": \"1\"}',1,NULL,'processing',NULL,'2020-02-16 01:13:22','2020-02-16 01:13:22');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_track`
--

DROP TABLE IF EXISTS `order_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_track` (
  `order_trackid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_trackcustomerid` int(11) NOT NULL,
  `order_track_riderid` int(11) DEFAULT NULL,
  `order_trackorderid` json NOT NULL,
  `order_trackdelivery_addressid` int(11) NOT NULL,
  `order_trackstatus` enum('oncart','onwishlist','order_confirmed_and_received','processing','purchased','otw','delivered') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_trackremarks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_tracksched_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_trackid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_track`
--

LOCK TABLES `order_track` WRITE;
/*!40000 ALTER TABLE `order_track` DISABLE KEYS */;
INSERT INTO `order_track` VALUES (1,1,NULL,'[\"20\", \"21\"]',10,'order_confirmed_and_received','','',NULL,'2020-01-28 22:24:02','2020-01-28 22:24:02'),(2,3,NULL,'[\"22\"]',11,'order_confirmed_and_received','','',NULL,'2020-02-16 01:15:30','2020-02-16 01:15:30');
/*!40000 ALTER TABLE `order_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rider_contact`
--

DROP TABLE IF EXISTS `rider_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rider_contact` (
  `rider_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rider_contact_rider_id` int(11) NOT NULL,
  `rider_contact_type` enum('facebook','instagram','landline','mobile') COLLATE utf8mb4_unicode_ci NOT NULL,
  `rider_contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`rider_contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rider_contact`
--

LOCK TABLES `rider_contact` WRITE;
/*!40000 ALTER TABLE `rider_contact` DISABLE KEYS */;
INSERT INTO `rider_contact` VALUES (1,2,'mobile','09301234567','2020-01-22 00:34:30','2020-01-22 00:34:30');
/*!40000 ALTER TABLE `rider_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rider_profile`
--

DROP TABLE IF EXISTS `rider_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rider_profile` (
  `rider_profile_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rider_profile_rider_id` int(11) NOT NULL,
  `rider_profile_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rider_profile_vehicle_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rider_profile_vehicle_type` enum('motorcycle','tricycle','delivery_van','others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `rider_profile_drivers_license` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rider_profile_avatar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rider_profile_zip_code` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`rider_profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rider_profile`
--

LOCK TABLES `rider_profile` WRITE;
/*!40000 ALTER TABLE `rider_profile` DISABLE KEYS */;
INSERT INTO `rider_profile` VALUES (1,2,'Alaminos City, Pangasinan','1234-TY','motorcycle','0-000-0000-0000','http://localhost:8000/assets/fe/images/resource/user-avatar.jpg','2404','2020-01-22 00:34:30','2020-01-22 00:34:30');
/*!40000 ALTER TABLE `rider_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rider_status`
--

DROP TABLE IF EXISTS `rider_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rider_status` (
  `rider_status_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rider_status_rider_id` int(11) NOT NULL,
  `rider_status_status` enum('hired','waiting','not_active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`rider_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rider_status`
--

LOCK TABLES `rider_status` WRITE;
/*!40000 ALTER TABLE `rider_status` DISABLE KEYS */;
INSERT INTO `rider_status` VALUES (1,2,'waiting','2020-01-22 00:34:30','2020-01-22 00:34:30');
/*!40000 ALTER TABLE `rider_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female','others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` enum('staff','rider','customer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Customer 1','customer@gmail.com',NULL,'$2y$10$YhPNKuIBr/SXTcpMs9D0S.y/TlQ.cCJ4QZOKBPZRWpUUhkBiKjxRO','male','customer','4YdzdxlNUTby0d088mPvHTwUc18fgmcDjMkagJPZazzsVHWVfHBUZSQkXGgp','2020-01-22 00:34:30','2020-01-22 00:34:30'),(2,'Rider 1','rider1@gmail.com',NULL,'$2y$10$YhPNKuIBr/SXTcpMs9D0S.y/TlQ.cCJ4QZOKBPZRWpUUhkBiKjxRO','male','rider','VlogbCgDqIVlYm9Gbof6twfGgsgp0dG72WyBLLriKvuciPAcXOPIw0uyLXlq','2020-01-22 00:34:30','2020-01-22 00:34:30'),(3,'Admin','admin@gmail.com',NULL,'$2y$10$YhPNKuIBr/SXTcpMs9D0S.y/TlQ.cCJ4QZOKBPZRWpUUhkBiKjxRO','male','staff','ZZHqmNd6GgzuiebJH2PCWTG8xgjNMHvkAjxagSgn8isTx0iB6stITFc8BOtk','2020-01-22 00:34:30','2020-01-22 00:34:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `vendorid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vstreet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vcity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vprovince` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vcountry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vis_activated` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`vendorid`),
  UNIQUE KEY `vendors_vname_unique` (`vname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'MC Jolly','#23 Poblacion','Alaminos City','Pangasinan','PH',1,NULL,'2020-01-22 00:34:30','2020-01-22 00:34:30');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `websockets_statistics_entries`
--

DROP TABLE IF EXISTS `websockets_statistics_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websockets_statistics_entries`
--

LOCK TABLES `websockets_statistics_entries` WRITE;
/*!40000 ALTER TABLE `websockets_statistics_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `websockets_statistics_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'rotw'
--

--
-- Dumping routines for database 'rotw'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-01 16:23:09
