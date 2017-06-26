-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: mge_yangfan_app
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','127.0.0.1','[]','2017-06-16 03:02:20','2017-06-16 03:02:20'),(2,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:02:26','2017-06-16 03:02:26'),(3,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:02:28','2017-06-16 03:02:28'),(4,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:02:29','2017-06-16 03:02:29'),(5,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:02:29','2017-06-16 03:02:29'),(6,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:02:30','2017-06-16 03:02:30'),(7,1,'admin/auth/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:02:30','2017-06-16 03:02:30'),(8,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:02:37','2017-06-16 03:02:37'),(9,1,'admin/helpers/terminal/database','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:02:37','2017-06-16 03:02:37'),(10,1,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:03:18','2017-06-16 03:03:18'),(11,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:03:24','2017-06-16 03:03:24'),(12,1,'admin/helpers/terminal/database','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:03:25','2017-06-16 03:03:25'),(13,1,'admin/helpers/terminal/artisan','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:03:26','2017-06-16 03:03:26'),(14,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:03:27','2017-06-16 03:03:27'),(15,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:03:29','2017-06-16 03:03:29'),(16,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:05:51','2017-06-16 03:05:51'),(17,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:05:53','2017-06-16 03:05:53'),(18,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:05:54','2017-06-16 03:05:54'),(19,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:06:19','2017-06-16 03:06:19'),(20,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:06:21','2017-06-16 03:06:21'),(21,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:06:43','2017-06-16 03:06:43'),(22,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:18:50','2017-06-16 03:18:50'),(23,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:18:50','2017-06-16 03:18:50'),(24,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:18:52','2017-06-16 03:18:52'),(25,1,'admin/auth/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:18:53','2017-06-16 03:18:53'),(26,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:18:58','2017-06-16 03:18:58'),(27,1,'admin/helpers/terminal/artisan','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:18:59','2017-06-16 03:18:59'),(28,1,'admin/helpers/terminal/artisan','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:19:00','2017-06-16 03:19:00'),(29,1,'admin/helpers/terminal/database','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:19:01','2017-06-16 03:19:01'),(30,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:19:02','2017-06-16 03:19:02'),(31,1,'admin/helpers/terminal/artisan','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:19:03','2017-06-16 03:19:03'),(32,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:19:04','2017-06-16 03:19:04'),(33,1,'admin','GET','127.0.0.1','[]','2017-06-16 03:21:09','2017-06-16 03:21:09'),(34,1,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:23:45','2017-06-16 03:23:45'),(35,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 03:25:52','2017-06-16 03:25:52'),(36,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 04:40:11','2017-06-16 04:40:11'),(37,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 04:40:13','2017-06-16 04:40:13'),(38,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 04:40:39','2017-06-16 04:40:39'),(39,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 04:40:47','2017-06-16 04:40:47'),(40,1,'admin','GET','127.0.0.1','[]','2017-06-16 21:15:05','2017-06-16 21:15:05'),(41,1,'admin/auth/login','GET','127.0.0.1','[]','2017-06-16 21:15:09','2017-06-16 21:15:09'),(42,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 21:15:14','2017-06-16 21:15:14'),(43,1,'admin','GET','127.0.0.1','[]','2017-06-16 21:15:22','2017-06-16 21:15:22'),(44,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 21:15:36','2017-06-16 21:15:36'),(45,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:32:23','2017-06-16 22:32:23'),(46,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u51e4\\u7080\",\"icon\":\"fa-eye\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"kR0yAuxAe8zHxyZhbo6HCcU0868BIMVND8jKbX3F\"}','2017-06-16 22:35:14','2017-06-16 22:35:14'),(47,1,'admin/auth/menu','GET','127.0.0.1','[]','2017-06-16 22:35:14','2017-06-16 22:35:14'),(48,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u51e4\\u7080\",\"icon\":\"fa-eye\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"kR0yAuxAe8zHxyZhbo6HCcU0868BIMVND8jKbX3F\"}','2017-06-16 22:36:17','2017-06-16 22:36:17'),(49,1,'admin/auth/menu','GET','127.0.0.1','[]','2017-06-16 22:36:17','2017-06-16 22:36:17'),(50,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u51e4\\u7080\",\"icon\":\"fa-eye\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"kR0yAuxAe8zHxyZhbo6HCcU0868BIMVND8jKbX3F\"}','2017-06-16 22:36:27','2017-06-16 22:36:27'),(51,1,'admin/auth/menu','GET','127.0.0.1','[]','2017-06-16 22:36:27','2017-06-16 22:36:27'),(52,1,'admin/auth/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:36:48','2017-06-16 22:36:48'),(53,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:36:54','2017-06-16 22:36:54'),(54,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Phoenix\",\"icon\":\"fa-eye\",\"uri\":\"http:\\/\\/mge.yangfan.app\\/admin\\/phoenix\",\"roles\":[\"1\",null],\"_token\":\"kR0yAuxAe8zHxyZhbo6HCcU0868BIMVND8jKbX3F\"}','2017-06-16 22:37:54','2017-06-16 22:37:54'),(55,1,'admin/auth/menu','GET','127.0.0.1','[]','2017-06-16 22:37:54','2017-06-16 22:37:54'),(56,1,'admin/auth/menu/12/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:38:06','2017-06-16 22:38:06'),(57,1,'admin/auth/menu/12','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Phoenix\",\"icon\":\"fa-eye\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"kR0yAuxAe8zHxyZhbo6HCcU0868BIMVND8jKbX3F\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mge.yangfan.app\\/admin\\/auth\\/menu\"}','2017-06-16 22:38:13','2017-06-16 22:38:13'),(58,1,'admin/auth/menu','GET','127.0.0.1','[]','2017-06-16 22:38:13','2017-06-16 22:38:13'),(59,1,'admin/auth/menu/12/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:38:17','2017-06-16 22:38:17'),(60,1,'admin/auth/menu/12','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Phoenix\",\"icon\":\"fa-eye\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"kR0yAuxAe8zHxyZhbo6HCcU0868BIMVND8jKbX3F\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mge.yangfan.app\\/admin\\/auth\\/menu\"}','2017-06-16 22:38:23','2017-06-16 22:38:23'),(61,1,'admin/auth/menu','GET','127.0.0.1','[]','2017-06-16 22:38:24','2017-06-16 22:38:24'),(62,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:38:31','2017-06-16 22:38:31'),(63,1,'admin','GET','127.0.0.1','[]','2017-06-16 22:38:32','2017-06-16 22:38:32'),(64,1,'admin/auth/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:38:43','2017-06-16 22:38:43'),(65,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:38:43','2017-06-16 22:38:43'),(66,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"kR0yAuxAe8zHxyZhbo6HCcU0868BIMVND8jKbX3F\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":12},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]}]\"}','2017-06-16 22:38:51','2017-06-16 22:38:51'),(67,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:38:51','2017-06-16 22:38:51'),(68,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:38:57','2017-06-16 22:38:57'),(69,1,'admin','GET','127.0.0.1','[]','2017-06-16 22:38:58','2017-06-16 22:38:58'),(70,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:39:00','2017-06-16 22:39:00'),(71,1,'admin','GET','127.0.0.1','[]','2017-06-16 22:39:07','2017-06-16 22:39:07'),(72,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:41:16','2017-06-16 22:41:16'),(73,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-16 22:41:18','2017-06-16 22:41:18'),(74,1,'admin/auth/users','GET','127.0.0.1','[]','2017-06-17 00:42:15','2017-06-17 00:42:15'),(75,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 00:55:19','2017-06-17 00:55:19'),(76,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 01:02:07','2017-06-17 01:02:07'),(77,1,'admin/auth/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 01:09:50','2017-06-17 01:09:50'),(78,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 01:09:51','2017-06-17 01:09:51'),(79,1,'admin/auth/menu/12/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 01:10:02','2017-06-17 01:10:02'),(80,1,'admin/auth/menu/12','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Phoenix\",\"icon\":\"fa-eye\",\"uri\":\"phoenix\",\"roles\":[\"1\",null],\"_token\":\"HNzXwpRNgfcxHpPZEs2eRtsWxHjrWz0NhR8wixP9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mge.yangfan.app\\/admin\\/auth\\/menu\"}','2017-06-17 01:10:09','2017-06-17 01:10:09'),(81,1,'admin/auth/menu','GET','127.0.0.1','[]','2017-06-17 01:10:09','2017-06-17 01:10:09'),(82,1,'admin/auth/menu/12/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 01:10:16','2017-06-17 01:10:16'),(83,1,'admin/auth/menu/12','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Phoenix\",\"icon\":\"fa-eye\",\"uri\":\"phoenix\\/\",\"roles\":[\"1\",null],\"_token\":\"HNzXwpRNgfcxHpPZEs2eRtsWxHjrWz0NhR8wixP9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mge.yangfan.app\\/admin\\/auth\\/menu\"}','2017-06-17 01:10:22','2017-06-17 01:10:22'),(84,1,'admin/auth/menu','GET','127.0.0.1','[]','2017-06-17 01:10:22','2017-06-17 01:10:22'),(85,1,'admin/auth/menu','GET','127.0.0.1','[]','2017-06-17 01:11:10','2017-06-17 01:11:10'),(86,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 01:11:12','2017-06-17 01:11:12'),(87,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 01:15:54','2017-06-17 01:15:54'),(88,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 01:16:13','2017-06-17 01:16:13'),(89,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 01:16:34','2017-06-17 01:16:34'),(90,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 01:17:17','2017-06-17 01:17:17'),(91,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 01:17:18','2017-06-17 01:17:18'),(92,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 01:17:26','2017-06-17 01:17:26'),(93,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 01:32:13','2017-06-17 01:32:13'),(94,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 01:32:20','2017-06-17 01:32:20'),(95,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 01:32:20','2017-06-17 01:32:20'),(96,1,'admin/phoenix/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 01:32:25','2017-06-17 01:32:25'),(97,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 01:32:29','2017-06-17 01:32:29'),(98,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"1\"}','2017-06-17 01:32:30','2017-06-17 01:32:30'),(99,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 01:53:22','2017-06-17 01:53:22'),(100,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 01:56:10','2017-06-17 01:56:10'),(101,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 01:56:22','2017-06-17 01:56:22'),(102,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 01:56:55','2017-06-17 01:56:55'),(103,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 02:01:44','2017-06-17 02:01:44'),(104,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 02:03:16','2017-06-17 02:03:16'),(105,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 06:14:27','2017-06-17 06:14:27'),(106,1,'admin/phoenix/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 06:18:51','2017-06-17 06:18:51'),(107,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 06:18:54','2017-06-17 06:18:54'),(108,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-17 07:09:03','2017-06-17 07:09:03'),(109,1,'admin/auth/login','GET','127.0.0.1','[]','2017-06-17 07:43:52','2017-06-17 07:43:52'),(110,1,'admin','GET','127.0.0.1','[]','2017-06-17 07:43:52','2017-06-17 07:43:52'),(111,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 07:43:56','2017-06-17 07:43:56'),(112,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 07:43:56','2017-06-17 07:43:56'),(113,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 07:44:04','2017-06-17 07:44:04'),(114,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-17 07:44:05','2017-06-17 07:44:05'),(115,1,'admin','GET','127.0.0.1','[]','2017-06-18 06:56:58','2017-06-18 06:56:58'),(116,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-18 06:58:00','2017-06-18 06:58:00'),(117,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-18 07:02:16','2017-06-18 07:02:16'),(118,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-18 07:04:32','2017-06-18 07:04:32'),(119,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-18 07:05:00','2017-06-18 07:05:00'),(120,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-18 07:05:23','2017-06-18 07:05:23'),(121,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-18 07:10:20','2017-06-18 07:10:20'),(122,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-18 07:14:36','2017-06-18 07:14:36'),(123,1,'admin','GET','127.0.0.1','[]','2017-06-18 09:36:24','2017-06-18 09:36:24'),(124,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-18 09:36:26','2017-06-18 09:36:26'),(125,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-18 09:36:55','2017-06-18 09:36:55'),(126,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-18 09:37:19','2017-06-18 09:37:19'),(127,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-18 09:37:47','2017-06-18 09:37:47'),(128,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-18 09:38:19','2017-06-18 09:38:19'),(129,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-18 09:41:12','2017-06-18 09:41:12'),(130,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-18 09:41:55','2017-06-18 09:41:55'),(131,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"id\":\"5\"}','2017-06-18 09:41:58','2017-06-18 09:41:58'),(132,1,'admin/phoenix','GET','127.0.0.1','{\"id\":\"5\"}','2017-06-18 09:41:59','2017-06-18 09:41:59'),(133,1,'admin/phoenix','GET','127.0.0.1','{\"id\":\"5\"}','2017-06-18 09:42:02','2017-06-18 09:42:02'),(134,1,'admin/phoenix','GET','127.0.0.1','{\"id\":null,\"_pjax\":\"#pjax-container\"}','2017-06-18 09:42:03','2017-06-18 09:42:03'),(135,1,'admin/phoenix','GET','127.0.0.1','{\"id\":null}','2017-06-18 09:43:32','2017-06-18 09:43:32'),(136,1,'admin','GET','127.0.0.1','[]','2017-06-19 03:42:10','2017-06-19 03:42:10'),(137,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-19 05:40:28','2017-06-19 05:40:28'),(138,1,'admin','GET','127.0.0.1','[]','2017-06-19 08:22:49','2017-06-19 08:22:49'),(139,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-19 08:24:04','2017-06-19 08:24:04'),(140,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-19 08:27:29','2017-06-19 08:27:29'),(141,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-19 08:27:54','2017-06-19 08:27:54'),(142,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-19 08:31:59','2017-06-19 08:31:59'),(143,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-19 08:33:43','2017-06-19 08:33:43'),(144,1,'admin','GET','127.0.0.1','[]','2017-06-20 04:42:03','2017-06-20 04:42:03'),(145,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-20 04:42:05','2017-06-20 04:42:05'),(146,1,'admin/phoenix','GET','127.0.0.1','[]','2017-06-20 04:42:38','2017-06-20 04:42:38'),(147,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-20 06:04:41','2017-06-20 06:04:41'),(148,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-20 06:04:42','2017-06-20 06:04:42'),(149,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-20 06:04:43','2017-06-20 06:04:43'),(150,1,'admin','GET','127.0.0.1','[]','2017-06-21 03:17:58','2017-06-21 03:17:58'),(151,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:18:08','2017-06-21 03:18:08'),(152,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:18:09','2017-06-21 03:18:09'),(153,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:18:10','2017-06-21 03:18:10'),(154,1,'admin/auth/users/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:18:12','2017-06-21 03:18:12'),(155,1,'admin/auth/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:18:21','2017-06-21 03:18:21'),(156,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:18:24','2017-06-21 03:18:24'),(157,1,'admin/auth/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:18:27','2017-06-21 03:18:27'),(158,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:25:00','2017-06-21 03:25:00'),(159,1,'admin/phoenix','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:25:02','2017-06-21 03:25:02'),(160,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:25:03','2017-06-21 03:25:03'),(161,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:25:24','2017-06-21 03:25:24'),(162,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:25:25','2017-06-21 03:25:25'),(163,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:25:26','2017-06-21 03:25:26'),(164,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2017-06-21 03:25:27','2017-06-21 03:25:27');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-23  8:24:34
