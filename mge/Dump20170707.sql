-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: mge
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
-- Table structure for table `qw_article`
--

DROP TABLE IF EXISTS `qw_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `seotitle` varchar(255) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '摘要',
  `thumbnail` varchar(255) NOT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `t` int(10) unsigned NOT NULL COMMENT '时间',
  `n` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  PRIMARY KEY (`aid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_article`
--

LOCK TABLES `qw_article` WRITE;
/*!40000 ALTER TABLE `qw_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_audit`
--

DROP TABLE IF EXISTS `qw_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_audit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `nickname` varchar(45) NOT NULL,
  `gold_show` double NOT NULL,
  `img_json` text NOT NULL,
  `_url1` varchar(255) NOT NULL,
  `_url2` varchar(255) NOT NULL,
  `qq_json` varchar(255) NOT NULL,
  `_status` int(11) NOT NULL DEFAULT '1',
  `msg` text,
  `sub_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_audit`
--

LOCK TABLES `qw_audit` WRITE;
/*!40000 ALTER TABLE `qw_audit` DISABLE KEYS */;
INSERT INTO `qw_audit` VALUES (1,14,'昵称10001',2,'{\"head1\":\"\\/Public\\/attached\\/client\\/09\\/6fac\\/417b68719a521e1d84423b48a8.png\",\"head2\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head3\":\"\\/Public\\/attached\\/client\\/5d\\/e308\\/cc6bb261ff2eeea50ad79cad50.jpg\",\"head4\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head5\":\"\\/Public\\/attached\\/client\\/22\\/2a72\\/c683af6e96dbf7015a8f940d66.png\"}','http://www.10001.com1','http://www.10001.com2','333,111,222',0,NULL,NULL),(2,14,'昵称10000',1,'{\"head1\":\"\\/Public\\/attached\\/client\\/12\\/d3d2\\/1f635c0daafde5024111832fca.png\",\"head2\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head3\":\"\\/Public\\/attached\\/client\\/5d\\/e308\\/cc6bb261ff2eeea50ad79cad50.jpg\",\"head4\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head5\":\"\\/Public\\/attached\\/client\\/22\\/2a72\\/c683af6e96dbf7015a8f940d66.png\"}','http://www.10000.com1','http://www.10000.com2','111,222,333',0,NULL,NULL),(3,14,'昵称10000',1,'{\"head1\":\"\\/Public\\/attached\\/client\\/12\\/d3d2\\/1f635c0daafde5024111832fca.png\",\"head2\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head3\":\"\\/Public\\/attached\\/client\\/5d\\/e308\\/cc6bb261ff2eeea50ad79cad50.jpg\",\"head4\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head5\":\"\\/Public\\/attached\\/client\\/22\\/2a72\\/c683af6e96dbf7015a8f940d66.png\"}','http://www.10000.com','http://www.10000.com','333,111,222',0,NULL,NULL),(4,14,'昵称10000',1,'{\"head1\":\"\\/Public\\/attached\\/client\\/12\\/d3d2\\/1f635c0daafde5024111832fca.png\",\"head2\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head3\":\"\\/Public\\/attached\\/client\\/5d\\/e308\\/cc6bb261ff2eeea50ad79cad50.jpg\",\"head4\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head5\":\"\\/Public\\/attached\\/client\\/12\\/d3d2\\/1f635c0daafde5024111832fca.png\"}','http://www.10000.com','http://www.10000.com','333,111,222',0,NULL,NULL),(5,15,'',5,'{\"head1\":\"\\/Public\\/attached\\/client\\/25\\/c3ca\\/29c928d3ed9efe04d12867bb46.png\",\"head2\":\"\",\"head3\":\"\",\"head4\":\"\",\"head5\":\"\"}','http://www.test.com','','111,222,333',2,'www',NULL),(6,14,'昵称10000',255,'{\"head1\":\"\\/Public\\/attached\\/client\\/12\\/d3d2\\/1f635c0daafde5024111832fca.png\",\"head2\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head3\":\"\\/Public\\/attached\\/client\\/5d\\/e308\\/cc6bb261ff2eeea50ad79cad50.jpg\",\"head4\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head5\":\"\\/Public\\/attached\\/client\\/12\\/d3d2\\/1f635c0daafde5024111832fca.png\"}','http://www.10000.com','http://www.10000.com','333,111,222',1,NULL,'2017-05-31 16:05:28'),(7,14,'昵称10000',1,'{\"head1\":\"\\/Public\\/attached\\/client\\/ca\\/ab0e\\/b29d1a305433ad9d9182c5d293.jpg\",\"head2\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head3\":\"\\/Public\\/attached\\/client\\/5d\\/e308\\/cc6bb261ff2eeea50ad79cad50.jpg\",\"head4\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head5\":\"\\/Public\\/attached\\/client\\/12\\/d3d2\\/1f635c0daafde5024111832fca.png\"}','http://www.10000.com','http://www.10000.com','333,111,222',0,NULL,'2017-06-01 10:34:56'),(8,14,'昵称10000',123,'{\"head1\":\"\\/Public\\/attached\\/client\\/af\\/fb2d\\/33ec1fcd64c82ad4900395712a.jpg\",\"head2\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head3\":\"\\/Public\\/attached\\/client\\/5d\\/e308\\/cc6bb261ff2eeea50ad79cad50.jpg\",\"head4\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head5\":\"\\/Public\\/attached\\/client\\/12\\/d3d2\\/1f635c0daafde5024111832fca.png\"}','http://www.10000.com','http://www.10000.com','333,111,222',0,NULL,'2017-06-01 11:19:42'),(9,14,'昵称10000',123,'{\"head1\":\"\\/Public\\/attached\\/client\\/af\\/fb2d\\/33ec1fcd64c82ad4900395712a.jpg\",\"head2\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head3\":\"\\/Public\\/attached\\/client\\/5d\\/e308\\/cc6bb261ff2eeea50ad79cad50.jpg\",\"head4\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head5\":\"\\/Public\\/attached\\/client\\/12\\/d3d2\\/1f635c0daafde5024111832fca.png\"}','http://www.10000.com','http://www.10000.com','333,111,222',1,NULL,'2017-06-01 13:49:26'),(10,14,'昵称10000',123.11,'{\"head1\":\"\\/Public\\/attached\\/client\\/af\\/fb2d\\/33ec1fcd64c82ad4900395712a.jpg\",\"head2\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head3\":\"\\/Public\\/attached\\/client\\/5d\\/e308\\/cc6bb261ff2eeea50ad79cad50.jpg\",\"head4\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head5\":\"\\/Public\\/attached\\/client\\/12\\/d3d2\\/1f635c0daafde5024111832fca.png\"}','http://www.10000.com','http://www.10000.com','333,111,222',0,NULL,'2017-06-01 13:57:34'),(11,14,'昵称10000',123.22,'{\"head1\":\"\\/Public\\/attached\\/client\\/af\\/fb2d\\/33ec1fcd64c82ad4900395712a.jpg\",\"head2\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head3\":\"\\/Public\\/attached\\/client\\/5d\\/e308\\/cc6bb261ff2eeea50ad79cad50.jpg\",\"head4\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head5\":\"\\/Public\\/attached\\/client\\/12\\/d3d2\\/1f635c0daafde5024111832fca.png\"}','http://www.10000.com','http://www.10000.com','333,111,222',1,NULL,'2017-06-01 14:35:50');
/*!40000 ALTER TABLE `qw_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_auth_group`
--

DROP TABLE IF EXISTS `qw_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_auth_group`
--

LOCK TABLES `qw_auth_group` WRITE;
/*!40000 ALTER TABLE `qw_auth_group` DISABLE KEYS */;
INSERT INTO `qw_auth_group` VALUES (1,'超级管理员',1,'1,2,58,65,59,60,61,62,3,56,4,6,5,7,8,9,10,51,52,53,57,11,54,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,29,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47,63,48,49,50,55'),(2,'管理员',1,'13,14,23,22,21,20,19,18,17,16,15,24,36,34,33,32,31,30,29,27,26,25,1'),(3,'普通用户',1,'1'),(6,'渠道商',1,'67,71,68,77,1,48,49,50,55');
/*!40000 ALTER TABLE `qw_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_auth_group_access`
--

DROP TABLE IF EXISTS `qw_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_auth_group_access`
--

LOCK TABLES `qw_auth_group_access` WRITE;
/*!40000 ALTER TABLE `qw_auth_group_access` DISABLE KEYS */;
INSERT INTO `qw_auth_group_access` VALUES (1,1),(14,6),(15,6);
/*!40000 ALTER TABLE `qw_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_auth_rule`
--

DROP TABLE IF EXISTS `qw_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_auth_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `islink` tinyint(1) NOT NULL DEFAULT '1',
  `o` int(11) NOT NULL COMMENT '排序',
  `tips` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_auth_rule`
--

LOCK TABLES `qw_auth_rule` WRITE;
/*!40000 ALTER TABLE `qw_auth_rule` DISABLE KEYS */;
INSERT INTO `qw_auth_rule` VALUES (1,0,'Index/index','控制台','menu-icon fa fa-tachometer',1,1,'',1,1,'友情提示：经常查看操作日志，发现异常以便及时追查原因。'),(2,0,'','系统设置','menu-icon fa fa-cog',1,1,'',1,2,''),(3,2,'Setting/setting','网站设置','menu-icon fa fa-caret-right',1,1,'',1,3,'这是网站设置的提示。'),(4,2,'Menu/index','后台菜单','menu-icon fa fa-caret-right',1,1,'',1,4,''),(5,2,'Menu/add','新增菜单','menu-icon fa fa-caret-right',1,1,'',1,5,''),(6,4,'Menu/edit','编辑菜单','',1,1,'',0,6,''),(7,2,'Menu/update','保存菜单','menu-icon fa fa-caret-right',1,1,'',0,7,''),(8,2,'Menu/del','删除菜单','menu-icon fa fa-caret-right',1,1,'',0,8,''),(9,2,'Database/backup','数据库备份','menu-icon fa fa-caret-right',1,1,'',1,9,''),(10,9,'Database/recovery','数据库还原','',1,1,'',0,10,''),(11,2,'Update/update','在线升级','menu-icon fa fa-caret-right',1,1,'',1,11,''),(12,2,'Update/devlog','开发日志','menu-icon fa fa-caret-right',1,1,'',1,12,''),(13,0,'','用户及组','menu-icon fa fa-users',1,1,'',1,13,''),(14,13,'Member/index','用户管理','menu-icon fa fa-caret-right',1,1,'',1,14,''),(15,13,'Member/add','新增用户','menu-icon fa fa-caret-right',1,1,'',1,15,''),(16,13,'Member/edit','编辑用户','menu-icon fa fa-caret-right',1,1,'',0,16,''),(17,13,'Member/update','保存用户','menu-icon fa fa-caret-right',1,1,'',0,17,''),(18,13,'Member/del','删除用户','',1,1,'',0,18,''),(19,13,'Group/index','用户组管理','menu-icon fa fa-caret-right',1,1,'',1,19,''),(20,13,'Group/add','新增用户组','menu-icon fa fa-caret-right',1,1,'',1,20,''),(21,13,'Group/edit','编辑用户组','menu-icon fa fa-caret-right',1,1,'',0,21,''),(22,13,'Group/update','保存用户组','menu-icon fa fa-caret-right',1,1,'',0,22,''),(23,13,'Group/del','删除用户组','',1,1,'',0,23,''),(24,0,'','网站内容','menu-icon fa fa-desktop',1,1,'',1,24,''),(25,24,'Article/index','文章管理','menu-icon fa fa-caret-right',1,1,'',1,25,'网站虽然重要，身体更重要，出去走走吧。'),(26,24,'Article/add','新增文章','menu-icon fa fa-caret-right',1,1,'',1,26,''),(27,24,'Article/edit','编辑文章','menu-icon fa fa-caret-right',1,1,'',0,27,''),(29,24,'Article/update','保存文章','menu-icon fa fa-caret-right',1,1,'',0,29,''),(30,24,'Article/del','删除文章','',1,1,'',0,30,''),(31,24,'Category/index','分类管理','menu-icon fa fa-caret-right',1,1,'',1,31,''),(32,24,'Category/add','新增分类','menu-icon fa fa-caret-right',1,1,'',1,32,''),(33,24,'Category/edit','编辑分类','menu-icon fa fa-caret-right',1,1,'',0,33,''),(34,24,'Category/update','保存分类','menu-icon fa fa-caret-right',1,1,'',0,34,''),(36,24,'Category/del','删除分类','',1,1,'',0,36,''),(37,0,'','其它功能','menu-icon fa fa-legal',1,1,'',1,37,''),(38,37,'Link/index','友情链接','menu-icon fa fa-caret-right',1,1,'',1,38,''),(39,37,'Link/add','增加链接','',1,1,'',1,39,''),(40,37,'Link/edit','编辑链接','',1,1,'',0,40,''),(41,37,'Link/update','保存链接','',1,1,'',0,41,''),(42,37,'Link/del','删除链接','',1,1,'',0,42,''),(43,37,'Flash/index','焦点图','menu-icon fa fa-desktop',1,1,'',1,43,''),(44,37,'Flash/add','新增焦点图','',1,1,'',1,44,''),(45,37,'Flash/update','保存焦点图','',1,1,'',0,45,''),(46,37,'Flash/edit','编辑焦点图','',1,1,'',0,46,''),(47,37,'Flash/del','删除焦点图','',1,1,'',0,47,''),(48,0,'Personal/index','个人中心','menu-icon fa fa-user',1,1,'',1,48,''),(49,48,'Personal/profile','个人资料','menu-icon fa fa-user',1,1,'',1,49,''),(50,48,'Logout/index','退出','',1,1,'',1,50,''),(51,9,'Database/export','备份','',1,1,'',0,51,''),(52,9,'Database/optimize','数据优化','',1,1,'',0,52,''),(53,9,'Database/repair','修复表','',1,1,'',0,53,''),(54,11,'Update/updating','升级安装','',1,1,'',0,54,''),(55,48,'Personal/update','资料保存','',1,1,'',0,55,''),(56,3,'Setting/update','设置保存','',1,1,'',0,56,''),(57,9,'Database/del','备份删除','',1,1,'',0,57,''),(58,2,'variable/index','自定义变量','',1,1,'',1,0,''),(59,58,'variable/add','新增变量','',1,1,'',0,0,''),(60,58,'variable/edit','编辑变量','',1,1,'',0,0,''),(61,58,'variable/update','保存变量','',1,1,'',0,0,''),(62,58,'variable/del','删除变量','',1,1,'',0,0,''),(63,37,'Facebook/add','用户反馈','',1,1,'',1,63,''),(66,0,'','渠道管理','menu-icon fa fa-cog',1,1,'',1,0,'x'),(67,0,'','渠道','menu-icon fa fa-cog',1,1,'',1,0,''),(68,67,'clientsub/review','属性设置','',1,1,'',1,0,''),(69,66,'client/manage','渠道信息','',1,1,'',1,0,''),(70,69,'client/add','新增渠道','',1,1,'',0,1,''),(71,67,'clientsub/update','渠道更新','',1,1,'',0,0,''),(72,66,'client/audit','审核渠道','',1,1,'',1,0,''),(73,66,'client/adopt','审核逻辑','',1,1,'',0,0,''),(74,66,'client/setCommAttr','配置设定','',1,1,'',1,0,''),(75,74,'client/addAttr','新增配置','',1,1,'',0,0,''),(76,66,'client/createStaticHtml','生成站点','',1,1,'',0,0,''),(77,67,'clientsub/auditret','审核信息','',1,1,'',1,0,'');
/*!40000 ALTER TABLE `qw_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_category`
--

DROP TABLE IF EXISTS `qw_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '0正常，1单页，2外链',
  `pid` int(11) NOT NULL COMMENT '父ID',
  `name` varchar(100) NOT NULL COMMENT '分类名称',
  `dir` varchar(100) NOT NULL COMMENT '目录名称',
  `seotitle` varchar(200) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `cattemplate` varchar(100) NOT NULL,
  `contemplate` varchar(100) NOT NULL,
  `o` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `fsid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_category`
--

LOCK TABLES `qw_category` WRITE;
/*!40000 ALTER TABLE `qw_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_client`
--

DROP TABLE IF EXISTS `qw_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `dom` varchar(255) NOT NULL,
  `dom_time` int(11) NOT NULL,
  `_name` varchar(45) NOT NULL,
  `gold_group` varchar(20) NOT NULL,
  `_description` text NOT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `gold_show` double DEFAULT NULL,
  `img_json` text,
  `_url1` varchar(255) DEFAULT NULL,
  `_url2` varchar(255) DEFAULT NULL,
  `qq_json` varchar(45) DEFAULT NULL,
  `tmp_id` int(11) DEFAULT '1',
  `dom_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_client`
--

LOCK TABLES `qw_client` WRITE;
/*!40000 ALTER TABLE `qw_client` DISABLE KEYS */;
INSERT INTO `qw_client` VALUES (1,14,'http://www.10000.com',1495814400,'渠道10000','奖金组10000','10000备注','昵称10000',123.11,'{\"head1\":\"\\/Public\\/attached\\/client\\/2a\\/e105\\/df976078ec40f8db08aec370b4.png\",\"head2\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head3\":\"\\/Public\\/attached\\/client\\/5d\\/e308\\/cc6bb261ff2eeea50ad79cad50.jpg\",\"head4\":\"\\/Public\\/attached\\/client\\/80\\/5d20\\/660c17bf29d6b11eda5f83fa3b.jpg\",\"head5\":\"\\/Public\\/attached\\/client\\/12\\/d3d2\\/1f635c0daafde5024111832fca.png\"}','http://www.10000.com','http://www.10000.com','333,111,222',NULL,0),(2,15,'http://www.10000.com',1492963200,'渠道200001','奖金组200001','sdasdsd','',0,'{\"head1\":\"\",\"head2\":\"\",\"head3\":\"\",\"head4\":\"\",\"head5\":\"\"}','http://www.test.com','','111,222,333',1,1);
/*!40000 ALTER TABLE `qw_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_client_attr`
--

DROP TABLE IF EXISTS `qw_client_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_client_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` varchar(45) NOT NULL,
  `_val` varchar(255) NOT NULL,
  `_describe` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_client_attr`
--

LOCK TABLES `qw_client_attr` WRITE;
/*!40000 ALTER TABLE `qw_client_attr` DISABLE KEYS */;
INSERT INTO `qw_client_attr` VALUES (1,'dayu_brand','http://www.dayu.ph/brand','大鱼品牌'),(2,'dayu_help','http://www.dayu.ph/help','帮助中心'),(3,'dayu_mobile','http://www.dayu.ph/mobile','手机客户端'),(4,'dayu_pcclient','http://www.dayu.ph/pcClient','PC客户端 '),(5,'dayu_preventHijack','http://www.dayu.ph/preventHijack','防劫持教程'),(6,'dayu_signin','http://www.dayu.ph/authority/signin','网站登录地址'),(7,'dayu_nickname','Dayuzhuguan','默认代理昵称'),(8,'dayu_money','62485.88','默认显示金额'),(9,'dayu_image','sss','默认轮播图'),(10,'dayu_link1','http://www.dayu178.com/reg/7d6b1a7f','默认注册链接1'),(11,'dayu_link2','http://www.dayu258.com/reg/590da817','默认注册链接2'),(12,'dayu_qq','86135664','默认QQ号码'),(13,'dayu_gambling','http://www.dayu.ph','大鱼游戏');
/*!40000 ALTER TABLE `qw_client_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_devlog`
--

DROP TABLE IF EXISTS `qw_devlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_devlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v` varchar(225) NOT NULL COMMENT '版本号',
  `y` int(4) NOT NULL COMMENT '年分',
  `t` int(10) NOT NULL COMMENT '发布日期',
  `log` text NOT NULL COMMENT '更新日志',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_devlog`
--

LOCK TABLES `qw_devlog` WRITE;
/*!40000 ALTER TABLE `qw_devlog` DISABLE KEYS */;
INSERT INTO `qw_devlog` VALUES (1,'1.0.0',2016,1440259200,'QWADMIN第一个版本发布。'),(2,'1.0.1',2016,1440259200,'修改cookie过于简单的安全风险。');
/*!40000 ALTER TABLE `qw_devlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_flash`
--

DROP TABLE IF EXISTS `qw_flash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `o` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `o` (`o`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_flash`
--

LOCK TABLES `qw_flash` WRITE;
/*!40000 ALTER TABLE `qw_flash` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_flash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_links`
--

DROP TABLE IF EXISTS `qw_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `o` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `o` (`o`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_links`
--

LOCK TABLES `qw_links` WRITE;
/*!40000 ALTER TABLE `qw_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `qw_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_log`
--

DROP TABLE IF EXISTS `qw_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `t` int(10) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `log` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=677 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_log`
--

LOCK TABLES `qw_log` WRITE;
/*!40000 ALTER TABLE `qw_log` DISABLE KEYS */;
INSERT INTO `qw_log` VALUES (1,'admin',1495525905,'127.0.0.1','登录成功。'),(2,'admin',1495527551,'127.0.0.1','新增菜单，名称：渠道管理'),(3,'admin',1495527619,'127.0.0.1','新增菜单，名称：渠道'),(4,'admin',1495527725,'127.0.0.1','编辑菜单，ID：67'),(5,'admin',1495527739,'127.0.0.1','编辑菜单，ID：66'),(6,'admin',1495528030,'127.0.0.1','新增菜单，名称：属性设置'),(7,'admin',1495528954,'127.0.0.1','登录成功。'),(8,'admin',1495530689,'127.0.0.1','登录成功。'),(9,'admin',1495531220,'127.0.0.1','修改个人资料'),(10,'admin',1495589746,'127.0.0.1','登录成功。'),(11,'admin',1495597997,'127.0.0.1','登录失败。'),(12,'admin',1495598015,'127.0.0.1','登录成功。'),(13,'admin',1495601329,'127.0.0.1','登录成功。'),(14,'admin',1495603192,'127.0.0.1','新增菜单，名称：渠道信息'),(15,'admin',1495605206,'127.0.0.1','新增菜单，名称：新增渠道'),(16,'admin',1495606874,'127.0.0.1','修改网站配置。'),(17,'admin',1495606886,'127.0.0.1','修改网站配置。'),(18,'admin',1495612299,'127.0.0.1','编辑用户组，ID：6，组名：渠道商'),(19,'admin',1495613729,'127.0.0.1','新增自定义变量：CLIENTGROUBID'),(20,'admin',1495616787,'127.0.0.1','新增会员，会员UID：2'),(21,'admin',1495616995,'127.0.0.1','新增会员，会员UID：3'),(22,'admin',1495616996,'127.0.0.1','新增会员，会员UID：4'),(23,'admin',1495616998,'127.0.0.1','新增会员，会员UID：5'),(24,'admin',1495617021,'127.0.0.1','新增会员，会员UID：6'),(25,'admin',1495617102,'127.0.0.1','新增会员，会员UID：7'),(26,'admin',1495617143,'127.0.0.1','新增会员，会员UID：8'),(27,'admin',1495617143,'127.0.0.1','新增渠道商，名称：测试一号'),(28,'admin',1495617374,'127.0.0.1','新增会员，会员UID：9'),(29,'admin',1495617375,'127.0.0.1','新增渠道商，名称：渠道001'),(30,'admin',1495618346,'127.0.0.1','编辑会员信息，会员UID：1'),(31,'admin',1495619181,'127.0.0.1','新增会员，会员UID：10'),(32,'admin',1495619181,'127.0.0.1','新增渠道商，名称：测试一号'),(33,'admin',1495675411,'127.0.0.1','登录成功。'),(34,'admin',1495677390,'127.0.0.1','新增会员，会员UID：11'),(35,'admin',1495677390,'127.0.0.1','新增渠道商，名称：34234'),(36,'admin',1495683187,'127.0.0.1','删除会员UID：9'),(37,'admin',1495683187,'127.0.0.1','删除渠道UID：9'),(38,'admin',1495683193,'127.0.0.1','删除会员UID：11'),(39,'admin',1495683193,'127.0.0.1','删除渠道UID：11'),(40,'admin',1495683197,'127.0.0.1','删除会员UID：10'),(41,'admin',1495683197,'127.0.0.1','删除渠道UID：10'),(42,'admin',1495683302,'127.0.0.1','新增会员，会员UID：12'),(43,'admin',1495683596,'127.0.0.1','新增会员，会员UID：13'),(44,'admin',1495683596,'127.0.0.1','新增渠道商，名称：渠道10000'),(45,'admin',1495688053,'127.0.0.1','删除会员UID：13'),(46,'admin',1495688053,'127.0.0.1','删除渠道UID：13'),(47,'admin',1495692638,'127.0.0.1','登录成功。'),(48,'admin',1495697905,'127.0.0.1','登录成功。'),(49,'admin',1495702531,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(50,'admin',1495702735,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(51,'admin',1495702800,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(52,'admin',1495702800,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(53,'admin',1495702945,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(54,'admin',1495702945,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(55,'admin',1495702948,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(56,'admin',1495702948,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(57,'admin',1495702977,'127.0.0.1','新增会员，会员UID：14'),(58,'admin',1495702977,'127.0.0.1','新增渠道商，名称：渠道10000'),(59,'admin',1495703028,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(60,'admin',1495703028,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(61,'admin',1495703056,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(62,'admin',1495703056,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(63,'admin',1495703059,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(64,'admin',1495703059,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(65,'admin',1495703062,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(66,'admin',1495703062,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(67,'admin',1495703066,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(68,'admin',1495703066,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(69,'admin',1495703066,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(70,'admin',1495703066,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(71,'admin',1495703066,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(72,'admin',1495703066,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(73,'admin',1495703709,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(74,'admin',1495703709,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(75,'admin',1495703712,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(76,'admin',1495703712,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(77,'admin',1495703715,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(78,'admin',1495703715,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(79,'admin',1495703975,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(80,'admin',1495703975,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(81,'admin',1495703975,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(82,'admin',1495703975,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(83,'admin',1495703975,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(84,'admin',1495703975,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(85,'admin',1495704457,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(86,'admin',1495704457,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(87,'admin',1495704479,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(88,'admin',1495704479,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(89,'admin',1495704673,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(90,'admin',1495704673,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(91,'admin',1495704698,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(92,'admin',1495704698,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(93,'admin',1495704700,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(94,'admin',1495704700,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(95,'admin',1495704704,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(96,'admin',1495704704,'127.0.0.1','d1d51902dfe70b2263afade7cc2e1f4a'),(97,'admin',1495704704,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(98,'admin',1495704704,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(99,'admin',1495704704,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(100,'admin',1495704704,'127.0.0.1','5de308cc6bb261ff2eeea50ad79cad50'),(101,'admin',1495704718,'127.0.0.1','编辑会员信息，会员UID：14'),(102,'admin',1495704867,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(103,'admin',1495704867,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(104,'admin',1495704934,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(105,'admin',1495704934,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(106,'admin',1495704936,'127.0.0.1','编辑会员信息，会员UID：14'),(107,'admin',1495704943,'127.0.0.1','805d20660c17bf29d6b11eda5f83fa3b'),(108,'admin',1495704943,'127.0.0.1','805d20660c17bf29d6b11eda5f83fa3b'),(109,'admin',1495704956,'127.0.0.1','52545da7f9391b1804228930327d5d1e'),(110,'admin',1495704956,'127.0.0.1','52545da7f9391b1804228930327d5d1e'),(111,'admin',1495704960,'127.0.0.1','9766109485ff95785781ae195224fb1a'),(112,'admin',1495704960,'127.0.0.1','9766109485ff95785781ae195224fb1a'),(113,'admin',1495704974,'127.0.0.1','222a72c683af6e96dbf7015a8f940d66'),(114,'admin',1495704974,'127.0.0.1','222a72c683af6e96dbf7015a8f940d66'),(115,'admin',1495704976,'127.0.0.1','编辑会员信息，会员UID：14'),(116,'admin',1495704984,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(117,'admin',1495704984,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(118,'admin',1495704985,'127.0.0.1','编辑会员信息，会员UID：14'),(119,'admin',1495705017,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(120,'admin',1495705017,'127.0.0.1','bc8b4bc69690696f92911277144ab39a'),(121,'admin',1495705018,'127.0.0.1','编辑会员信息，会员UID：14'),(122,'admin',1495705025,'127.0.0.1','805d20660c17bf29d6b11eda5f83fa3b'),(123,'admin',1495705025,'127.0.0.1','805d20660c17bf29d6b11eda5f83fa3b'),(124,'admin',1495705026,'127.0.0.1','编辑会员信息，会员UID：14'),(125,'admin',1495705215,'127.0.0.1','修改个人资料'),(126,'10000',1495705266,'127.0.0.1','登录成功。'),(127,'admin',1495705462,'127.0.0.1','登录成功。'),(128,'admin',1495705487,'127.0.0.1','编辑用户组，ID：6，组名：渠道商'),(129,'10000',1495705502,'127.0.0.1','登录成功。'),(130,'admin',1495705516,'127.0.0.1','登录成功。'),(131,'admin',1495705546,'127.0.0.1','编辑用户组，ID：6，组名：渠道商'),(132,'10000',1495705555,'127.0.0.1','登录成功。'),(133,'10000',1495705570,'127.0.0.1','登录成功。'),(134,'admin',1495706030,'127.0.0.1','登录成功。'),(135,'admin',1495706110,'127.0.0.1','编辑菜单，ID：68'),(136,'10000',1495706464,'127.0.0.1','登录成功。'),(137,'10000',1495706524,'127.0.0.1','57455dc3f89f7c9764fc8a796c757ee9'),(138,'10000',1495706524,'127.0.0.1','57455dc3f89f7c9764fc8a796c757ee9'),(139,'10000',1495706528,'127.0.0.1','57455dc3f89f7c9764fc8a796c757ee9'),(140,'10000',1495706528,'127.0.0.1','57455dc3f89f7c9764fc8a796c757ee9'),(141,'admin',1495706541,'127.0.0.1','登录成功。'),(142,'admin',1495707077,'127.0.0.1','登录成功。'),(143,'10000',1495707422,'127.0.0.1','登录成功。'),(144,'admin',1495707516,'127.0.0.1','登录成功。'),(145,'admin',1495707609,'127.0.0.1','新增菜单，名称：渠道更新'),(146,'admin',1495707631,'127.0.0.1','编辑用户组，ID：6，组名：渠道商'),(147,'10000',1495707647,'127.0.0.1','登录成功。'),(148,'10000',1495761477,'127.0.0.1','登录成功。'),(149,'10000',1495763334,'127.0.0.1','12d3d21f635c0daafde5024111832fca'),(150,'10000',1495763334,'127.0.0.1','12d3d21f635c0daafde5024111832fca'),(151,'10000',1495765568,'127.0.0.1','12d3d21f635c0daafde5024111832fca'),(152,'10000',1495765568,'127.0.0.1','12d3d21f635c0daafde5024111832fca'),(153,'10000',1495765591,'127.0.0.1','096fac417b68719a521e1d84423b48a8'),(154,'10000',1495765591,'127.0.0.1','096fac417b68719a521e1d84423b48a8'),(155,'10000',1495765640,'127.0.0.1','096fac417b68719a521e1d84423b48a8'),(156,'10000',1495765640,'127.0.0.1','096fac417b68719a521e1d84423b48a8'),(157,'10000',1495765666,'127.0.0.1','会员提交编辑信息请求，会员UID：14'),(158,'admin',1495765869,'127.0.0.1','登录成功。'),(159,'admin',1495766961,'127.0.0.1','新增菜单，名称：审核渠道'),(160,'admin',1495770010,'127.0.0.1','登录成功。'),(161,'10000',1495770039,'127.0.0.1','登录成功。'),(162,'10000',1495770052,'127.0.0.1','12d3d21f635c0daafde5024111832fca'),(163,'10000',1495770052,'127.0.0.1','12d3d21f635c0daafde5024111832fca'),(164,'10000',1495770054,'127.0.0.1','会员提交编辑信息请求，会员UID：14'),(165,'admin',1495770076,'127.0.0.1','登录成功。'),(166,'admin',1495771111,'127.0.0.1','新增菜单，名称：审核逻辑'),(167,'admin',1495775207,'127.0.0.1','登录成功。'),(168,'admin',1495776103,'127.0.0.1','通过，会员UID：14的申请，ID：2'),(169,'10000',1495776134,'127.0.0.1','登录成功。'),(170,'10000',1495776173,'127.0.0.1','会员提交编辑信息请求，会员UID：14'),(171,'admin',1495776184,'127.0.0.1','登录成功。'),(172,'admin',1495776244,'127.0.0.1','通过，会员UID：14的申请，ID：1'),(173,'admin',1495776296,'127.0.0.1','通过，会员UID：14的申请，ID：2'),(174,'admin',1495776308,'127.0.0.1','通过，会员UID：14的申请，ID：2'),(175,'admin',1495776309,'127.0.0.1','通过，会员UID：14的申请，ID：2'),(176,'admin',1495776464,'127.0.0.1','通过，会员UID：14的申请，ID：3'),(177,'admin',1495776597,'127.0.0.1','新增菜单，名称：配置设定'),(178,'admin',1495778895,'127.0.0.1','新增菜单，名称：新增配置'),(179,'admin',1495783692,'127.0.0.1','登录成功。'),(180,'admin',1495785154,'127.0.0.1','编辑会员信息，会员UID：14'),(181,'admin',1495785433,'127.0.0.1','编辑会员信息，会员UID：14'),(182,'admin',1495789278,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(183,'admin',1495789278,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(184,'admin',1495789278,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(185,'admin',1495789294,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(186,'admin',1495789294,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(187,'admin',1495789294,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(188,'admin',1495789451,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(189,'admin',1495789451,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(190,'admin',1495789451,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(191,'admin',1495789606,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(192,'admin',1495789606,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(193,'admin',1495789606,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(194,'admin',1495789627,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(195,'admin',1495789627,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(196,'admin',1495789627,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(197,'admin',1495789723,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(198,'admin',1495789723,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(199,'admin',1495789723,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(200,'admin',1495789823,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(201,'admin',1495789823,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(202,'admin',1495789823,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(203,'admin',1495790622,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(204,'admin',1495790622,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(205,'admin',1495790622,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(206,'admin',1495790840,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(207,'admin',1495790840,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(208,'admin',1495790840,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(209,'admin',1495790939,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(210,'admin',1495790939,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(211,'admin',1495790939,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(212,'admin',1495791011,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(213,'admin',1495791011,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(214,'admin',1495791011,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(215,'admin',1495791097,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(216,'admin',1495791097,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(217,'admin',1495791097,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(218,'admin',1495791183,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(219,'admin',1495791183,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(220,'admin',1495791183,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(221,'admin',1495791353,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(222,'admin',1495791353,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(223,'admin',1495791353,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(224,'admin',1495791375,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(225,'admin',1495791375,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(226,'admin',1495791375,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(227,'admin',1495791381,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(228,'admin',1495791381,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(229,'admin',1495791381,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(230,'admin',1495791410,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(231,'admin',1495791410,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(232,'admin',1495791410,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(233,'admin',1495791423,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(234,'admin',1495791423,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(235,'admin',1495791423,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(236,'admin',1495791496,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(237,'admin',1495791496,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(238,'admin',1495791496,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(239,'admin',1495791549,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(240,'admin',1495791549,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(241,'admin',1495791549,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(242,'admin',1495791576,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(243,'admin',1495791576,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(244,'admin',1495791576,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(245,'admin',1495792424,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(246,'admin',1495792424,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(247,'admin',1495792424,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(248,'admin',1495792461,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(249,'admin',1495792461,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(250,'admin',1495792461,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(251,'admin',1495792548,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(252,'admin',1495792548,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(253,'admin',1495792548,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(254,'admin',1495792565,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(255,'admin',1495792565,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(256,'admin',1495792565,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(257,'admin',1495792633,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(258,'admin',1495792633,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(259,'admin',1495792633,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(260,'admin',1495792659,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(261,'admin',1495792659,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(262,'admin',1495792659,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(263,'admin',1495792724,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(264,'admin',1495792724,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(265,'admin',1495792724,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(266,'admin',1495792742,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(267,'admin',1495792742,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(268,'admin',1495792742,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(269,'admin',1495792900,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(270,'admin',1495792900,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(271,'admin',1495792900,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(272,'10000',1495792977,'127.0.0.1','登录成功。'),(273,'10000',1495793043,'127.0.0.1','12d3d21f635c0daafde5024111832fca'),(274,'10000',1495793043,'127.0.0.1','12d3d21f635c0daafde5024111832fca'),(275,'10000',1495793046,'127.0.0.1','会员提交编辑信息请求，会员UID：14'),(276,'admin',1495793055,'127.0.0.1','登录成功。'),(277,'admin',1495793062,'127.0.0.1','通过，会员UID：14的申请，ID：4'),(278,'10000',1495793071,'127.0.0.1','登录成功。'),(279,'admin',1495948299,'127.0.0.1','登录成功。'),(280,'admin',1495955624,'127.0.0.1','登录成功。'),(281,'admin',1495955631,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(282,'admin',1495955631,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(283,'admin',1495955631,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(284,'admin',1495955778,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(285,'admin',1495955778,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(286,'admin',1495955778,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(287,'admin',1495955922,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(288,'admin',1495955922,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(289,'admin',1495955922,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(290,'admin',1495956115,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(291,'admin',1495956115,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(292,'admin',1495956115,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(293,'admin',1496022186,'127.0.0.1','登录成功。'),(294,'admin',1496022207,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(295,'admin',1496022207,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(296,'admin',1496022207,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(297,'admin',1496022955,'127.0.0.1','登录成功。'),(298,'admin',1496028299,'127.0.0.1','登录成功。'),(299,'admin',1496028312,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(300,'admin',1496028312,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(301,'admin',1496028312,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(302,'admin',1496028316,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(303,'admin',1496028316,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(304,'admin',1496028316,'127.0.0.1','d41d8cd98f00b204e9800998ecf8427e'),(305,'admin',1496028358,'127.0.0.1','新增菜单，名称：生成站点'),(306,'admin',1496031037,'127.0.0.1','登录成功。'),(307,'admin',1496035837,'127.0.0.1','登录成功。'),(308,'admin',1496040387,'127.0.0.1','0e4c9bb9ab2c31f4aca6218d103cba00'),(309,'admin',1496040387,'127.0.0.1','0e4c9bb9ab2c31f4aca6218d103cba00'),(310,'admin',1496051029,'127.0.0.1','新增会员，会员UID：15'),(311,'admin',1496051029,'127.0.0.1','新增渠道商，名称：渠道20000'),(312,'admin',1496052361,'127.0.0.1','编辑会员信息，会员UID：15'),(313,'200000',1496052440,'127.0.0.1','登录成功。'),(314,'200000',1496052448,'127.0.0.1','25c3ca29c928d3ed9efe04d12867bb46'),(315,'200000',1496052448,'127.0.0.1','25c3ca29c928d3ed9efe04d12867bb46'),(316,'200000',1496052458,'127.0.0.1','会员提交编辑信息请求，会员UID：15'),(317,'emma',1496052476,'127.0.0.1','登录失败。'),(318,'emma',1496052493,'127.0.0.1','登录失败。'),(319,'admin',1496052522,'127.0.0.1','登录成功。'),(320,'admin',1496106350,'127.0.0.1','登录成功。'),(321,'admin',1496113065,'127.0.0.1','登录成功。'),(322,'admin',1496124864,'127.0.0.1','登录成功。'),(323,'admin',1496126348,'127.0.0.1','编辑会员信息，会员UID：15'),(324,'admin',1496126358,'127.0.0.1','编辑会员信息，会员UID：15'),(325,'admin',1496126388,'127.0.0.1','编辑会员信息，会员UID：15'),(326,'admin',1496126416,'127.0.0.1','编辑会员信息，会员UID：15'),(327,'admin',1496126435,'127.0.0.1','编辑会员信息，会员UID：15'),(328,'admin',1496126458,'127.0.0.1','编辑会员信息，会员UID：15'),(329,'admin',1496126459,'127.0.0.1','编辑会员信息，会员UID：15'),(330,'admin',1496126533,'127.0.0.1','编辑会员信息，会员UID：15'),(331,'admin',1496126566,'127.0.0.1','编辑会员信息，会员UID：15'),(332,'admin',1496126583,'127.0.0.1','编辑会员信息，会员UID：15'),(333,'admin',1496126594,'127.0.0.1','编辑会员信息，会员UID：15'),(334,'admin',1496126628,'127.0.0.1','编辑会员信息，会员UID：15'),(335,'admin',1496126645,'127.0.0.1','编辑会员信息，会员UID：15'),(336,'admin',1496137291,'127.0.0.1','登录成功。'),(337,'admin',1496137298,'127.0.0.1','登录成功。'),(338,'admin',1496137308,'127.0.0.1','登录成功。'),(339,'admin',1496137321,'127.0.0.1','登录成功。'),(340,'admin',1496137380,'127.0.0.1','登录成功。'),(341,'admin',1496137467,'127.0.0.1','登录成功。'),(342,'admin',1496137503,'127.0.0.1','登录失败。'),(343,'admin',1496137561,'127.0.0.1','登录成功。'),(344,'admin',1496137569,'127.0.0.1','登录失败。'),(345,'admin',1496137680,'127.0.0.1','登录成功。'),(346,'admin',1496137686,'127.0.0.1','登录成功。'),(347,'admin',1496137749,'127.0.0.1','登录成功。'),(348,'admin',1496137780,'127.0.0.1','登录失败。'),(349,'admin',1496137977,'127.0.0.1','登录成功。'),(350,'admin',1496138127,'127.0.0.1','登录成功。'),(351,'admin',1496138133,'127.0.0.1','登录成功。'),(352,'admin',1496138175,'127.0.0.1','登录成功。'),(353,'admin',1496138295,'127.0.0.1','登录成功。'),(354,'admin',1496138430,'127.0.0.1','登录成功。'),(355,'admin',1496138432,'127.0.0.1','登录成功。'),(356,'admin',1496138760,'127.0.0.1','登录成功。'),(357,'admin',1496138945,'127.0.0.1','登录成功。'),(358,'admin',1496138958,'127.0.0.1','登录成功。'),(359,'admin',1496139054,'127.0.0.1','登录成功。'),(360,'admin',1496139250,'127.0.0.1','登录成功。'),(361,'admin',1496139841,'127.0.0.1','登录成功。'),(362,'admin',1496139980,'127.0.0.1','登录成功。'),(363,'admin',1496140308,'127.0.0.1','登录成功。'),(364,'admin',1496140927,'127.0.0.1','登录成功。'),(365,'admin',1496193486,'127.0.0.1','登录成功。'),(366,'admin',1496193630,'127.0.0.1','编辑会员信息，会员UID：15'),(367,'200000',1496193639,'127.0.0.1','登录成功。'),(368,'admin',1496197508,'127.0.0.1','登录成功。'),(369,'admin',1496197522,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(370,'admin',1496197522,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(371,'admin',1496197522,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(372,'admin',1496197526,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(373,'admin',1496197526,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(374,'admin',1496197526,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(375,'admin',1496197609,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(376,'admin',1496197609,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(377,'admin',1496197609,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(378,'admin',1496197711,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(379,'admin',1496197711,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(380,'admin',1496197711,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(381,'admin',1496214133,'127.0.0.1','登录成功。'),(382,'admin',1496216684,'127.0.0.1','登录成功。'),(383,'admin',1496217820,'127.0.0.1','登录成功。'),(384,'admin',1496217841,'127.0.0.1','编辑会员信息，会员UID：14'),(385,'10000',1496217848,'127.0.0.1','登录成功。'),(386,'10000',1496217928,'127.0.0.1','会员提交编辑信息请求，会员UID：14'),(387,'admin',1496217934,'127.0.0.1','登录成功。'),(388,'admin',1496218500,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(389,'admin',1496218500,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(390,'admin',1496218500,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(391,'admin',1496220803,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(392,'admin',1496220803,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(393,'admin',1496220803,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(394,'admin',1496221185,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(395,'admin',1496221185,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(396,'admin',1496221185,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(397,'admin',1496221391,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(398,'admin',1496221391,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(399,'admin',1496221391,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(400,'admin',1496221562,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(401,'admin',1496221562,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(402,'admin',1496221562,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(403,'admin',1496221714,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(404,'admin',1496221714,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(405,'admin',1496221714,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(406,'admin',1496221723,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(407,'admin',1496221723,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(408,'admin',1496221723,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(409,'admin',1496221824,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(410,'admin',1496221824,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(411,'admin',1496221824,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(412,'admin',1496221913,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(413,'admin',1496221913,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(414,'admin',1496221913,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(415,'10000',1496222518,'127.0.0.1','登录成功。'),(416,'admin',1496223699,'127.0.0.1','登录成功。'),(417,'admin',1496224160,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(418,'admin',1496224160,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(419,'admin',1496224160,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(420,'admin',1496224294,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(421,'admin',1496224294,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(422,'admin',1496224294,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(423,'admin',1496224667,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(424,'admin',1496224667,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(425,'admin',1496224667,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(426,'admin',1496224687,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(427,'admin',1496224687,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(428,'admin',1496224687,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(429,'admin',1496224831,'127.0.0.1','新增菜单，名称：审核信息'),(430,'admin',1496224894,'127.0.0.1','登录成功。'),(431,'admin',1496224907,'127.0.0.1','编辑菜单，ID：77'),(432,'10000',1496225104,'127.0.0.1','登录成功。'),(433,'admin',1496225117,'127.0.0.1','登录成功。'),(434,'admin',1496225139,'127.0.0.1','编辑菜单，ID：77'),(435,'10000',1496225146,'127.0.0.1','登录成功。'),(436,'10000',1496225156,'127.0.0.1','登录成功。'),(437,'admin',1496225165,'127.0.0.1','登录成功。'),(438,'admin',1496225291,'127.0.0.1','编辑用户组，ID：6，组名：渠道商'),(439,'10000',1496225296,'127.0.0.1','登录成功。'),(440,'admin',1496225316,'127.0.0.1','登录成功。'),(441,'admin',1496225343,'127.0.0.1','编辑菜单，ID：77'),(442,'10000',1496225372,'127.0.0.1','登录成功。'),(443,'admin',1496225449,'127.0.0.1','登录成功。'),(444,'admin',1496225453,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(445,'admin',1496225453,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(446,'admin',1496225453,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(447,'10000',1496225589,'127.0.0.1','登录成功。'),(448,'admin',1496226506,'127.0.0.1','登录成功。'),(449,'admin',1496226647,'127.0.0.1','25c3ca29c928d3ed9efe04d12867bb46'),(450,'admin',1496226647,'127.0.0.1','25c3ca29c928d3ed9efe04d12867bb46'),(451,'admin',1496226649,'127.0.0.1','编辑会员信息，会员UID：14'),(452,'admin',1496226652,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(453,'admin',1496226652,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(454,'admin',1496226652,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(455,'admin',1496226761,'127.0.0.1','25c3ca29c928d3ed9efe04d12867bb46'),(456,'admin',1496226761,'127.0.0.1','25c3ca29c928d3ed9efe04d12867bb46'),(457,'admin',1496226848,'127.0.0.1','25c3ca29c928d3ed9efe04d12867bb46'),(458,'admin',1496226848,'127.0.0.1','25c3ca29c928d3ed9efe04d12867bb46'),(459,'admin',1496226917,'127.0.0.1','fc57941cd0d79e17cd07946e2ea6dae1'),(460,'admin',1496226917,'127.0.0.1','fc57941cd0d79e17cd07946e2ea6dae1'),(461,'10000',1496229903,'127.0.0.1','登录失败。'),(462,'10000',1496279750,'127.0.0.1','登录失败。'),(463,'10000',1496283626,'127.0.0.1','登录失败。'),(464,'10000',1496283638,'127.0.0.1','登录失败。'),(465,'admin',1496283700,'127.0.0.1','登录成功。'),(466,'admin',1496283723,'127.0.0.1','编辑会员信息，会员UID：14'),(467,'10000',1496283735,'127.0.0.1','登录成功。'),(468,'admin',1496283875,'127.0.0.1','登录成功。'),(469,'admin',1496284396,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(470,'admin',1496284396,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(471,'admin',1496284396,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(472,'10000',1496284480,'127.0.0.1','登录成功。'),(473,'10000',1496284494,'127.0.0.1','caab0eb29d1a305433ad9d9182c5d293'),(474,'10000',1496284494,'127.0.0.1','caab0eb29d1a305433ad9d9182c5d293'),(475,'10000',1496284496,'127.0.0.1','会员提交编辑信息请求，会员UID：14'),(476,'admin',1496284505,'127.0.0.1','登录成功。'),(477,'admin',1496284566,'127.0.0.1','通过，会员UID：14的申请，ID：7'),(478,'admin',1496284575,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(479,'admin',1496284575,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(480,'admin',1496284575,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(481,'10000',1496287169,'127.0.0.1','登录成功。'),(482,'10000',1496287178,'127.0.0.1','affb2d33ec1fcd64c82ad4900395712a'),(483,'10000',1496287178,'127.0.0.1','affb2d33ec1fcd64c82ad4900395712a'),(484,'10000',1496287182,'127.0.0.1','会员提交编辑信息请求，会员UID：14'),(485,'admin',1496287192,'127.0.0.1','登录成功。'),(486,'admin',1496287277,'127.0.0.1','通过，会员UID：14的申请，ID：8'),(487,'admin',1496287285,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(488,'admin',1496287285,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(489,'admin',1496287285,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(490,'admin',1496287856,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(491,'admin',1496287856,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(492,'admin',1496287856,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(493,'10000',1496288371,'127.0.0.1','登录成功。'),(494,'admin',1496289305,'127.0.0.1','登录失败。'),(495,'admin',1496289314,'127.0.0.1','登录失败。'),(496,'admin',1496295335,'127.0.0.1','登录成功。'),(497,'admin',1496295555,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(498,'admin',1496295555,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(499,'admin',1496295555,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(500,'10000',1496296132,'127.0.0.1','登录成功。'),(501,'10000',1496296166,'127.0.0.1','会员提交编辑信息请求，会员UID：14'),(502,'10000',1496296654,'127.0.0.1','会员提交编辑信息请求，会员UID：14'),(503,'admin',1496296666,'127.0.0.1','登录成功。'),(504,'admin',1496296675,'127.0.0.1','通过，会员UID：14的申请，ID：10'),(505,'admin',1496296684,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(506,'admin',1496296684,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(507,'admin',1496296684,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(508,'10000',1496298932,'127.0.0.1','登录成功。'),(509,'10000',1496298942,'127.0.0.1','登录成功。'),(510,'10000',1496298950,'127.0.0.1','会员提交编辑信息请求，会员UID：14'),(511,'10000',1496298956,'127.0.0.1','登录成功。'),(512,'admin',1496301545,'127.0.0.1','登录成功。'),(513,'admin',1496302767,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(514,'admin',1496302767,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(515,'admin',1496302767,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(516,'admin',1496302777,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(517,'admin',1496302777,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(518,'admin',1496302777,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(519,'admin',1496302787,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(520,'admin',1496302787,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(521,'admin',1496302787,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(522,'admin',1496302824,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(523,'admin',1496302824,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(524,'admin',1496302824,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(525,'admin',1496302833,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(526,'admin',1496302833,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(527,'admin',1496302833,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(528,'admin',1496302845,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(529,'admin',1496302845,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(530,'admin',1496302845,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(531,'admin',1496302854,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(532,'admin',1496302854,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(533,'admin',1496302854,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(534,'admin',1496302855,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(535,'admin',1496302855,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(536,'admin',1496302855,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(537,'admin',1496302856,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(538,'admin',1496302856,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(539,'admin',1496302856,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(540,'admin',1496302862,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(541,'admin',1496302862,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(542,'admin',1496302862,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(543,'admin',1496302865,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(544,'admin',1496302865,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(545,'admin',1496302865,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(546,'admin',1496302868,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(547,'admin',1496302868,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(548,'admin',1496302868,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(549,'admin',1496302873,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(550,'admin',1496302873,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(551,'admin',1496302873,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(552,'admin',1496302901,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(553,'admin',1496302901,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(554,'admin',1496302901,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(555,'admin',1496302902,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(556,'admin',1496302902,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(557,'admin',1496302902,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(558,'admin',1496302976,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(559,'admin',1496302976,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(560,'admin',1496302976,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(561,'admin',1496303001,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(562,'admin',1496303001,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(563,'admin',1496303001,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(564,'admin',1496303015,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(565,'admin',1496303015,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(566,'admin',1496303015,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(567,'admin',1496303032,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(568,'admin',1496303032,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(569,'admin',1496303032,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(570,'admin',1496303058,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(571,'admin',1496303058,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(572,'admin',1496303058,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(573,'admin',1496303087,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(574,'admin',1496303087,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(575,'admin',1496303087,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(576,'admin',1496303227,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(577,'admin',1496303227,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(578,'admin',1496303227,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(579,'admin',1496303523,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(580,'admin',1496303523,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(581,'admin',1496303523,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(582,'admin',1496303544,'127.0.0.1','72c5b84e37fbe53a0952feef305717cb'),(583,'admin',1496303544,'127.0.0.1','72c5b84e37fbe53a0952feef305717cb'),(584,'admin',1496303571,'127.0.0.1','2ae105df976078ec40f8db08aec370b4'),(585,'admin',1496303571,'127.0.0.1','2ae105df976078ec40f8db08aec370b4'),(586,'admin',1496303572,'127.0.0.1','编辑会员信息，会员UID：14'),(587,'admin',1496303578,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(588,'admin',1496303578,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(589,'admin',1496303578,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(590,'admin',1496303775,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(591,'admin',1496303775,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(592,'admin',1496303775,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(593,'admin',1496303805,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(594,'admin',1496303805,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(595,'admin',1496303805,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(596,'admin',1496303825,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(597,'admin',1496303825,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(598,'admin',1496303825,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(599,'admin',1496303845,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(600,'admin',1496303845,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(601,'admin',1496303845,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(602,'admin',1496303853,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(603,'admin',1496303853,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(604,'admin',1496303853,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(605,'admin',1496303861,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(606,'admin',1496303861,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(607,'admin',1496303861,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(608,'admin',1496305227,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(609,'admin',1496305227,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(610,'admin',1496305227,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(611,'admin',1496305244,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(612,'admin',1496305244,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(613,'admin',1496305244,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(614,'admin',1496305286,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(615,'admin',1496305286,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(616,'admin',1496305286,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(617,'10000',1496305322,'127.0.0.1','登录失败。'),(618,'10000',1496305331,'127.0.0.1','登录失败。'),(619,'admin',1496305341,'127.0.0.1','登录失败。'),(620,'admin',1496305353,'127.0.0.1','登录失败。'),(621,'admin',1496305368,'127.0.0.1','登录失败。'),(622,'admin',1496305374,'127.0.0.1','登录成功。'),(623,'admin',1496305383,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(624,'admin',1496305383,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(625,'admin',1496305383,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(626,'admin',1496305396,'127.0.0.1','编辑会员信息，会员UID：14'),(627,'10000',1496305405,'127.0.0.1','登录成功。'),(628,'admin',1496305454,'127.0.0.1','登录成功。'),(629,'admin',1496305488,'127.0.0.1','编辑会员信息，会员UID：14'),(630,'admin',1496305509,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(631,'admin',1496305509,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(632,'admin',1496305509,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(633,'admin',1496305908,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(634,'admin',1496305908,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(635,'admin',1496305908,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(636,'admin',1496306990,'127.0.0.1','编辑会员信息，会员UID：14'),(637,'admin',1496307512,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(638,'admin',1496307512,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(639,'admin',1496307512,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(640,'admin',1496307563,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(641,'admin',1496307563,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(642,'admin',1496307563,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(643,'admin',1496308135,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(644,'admin',1496308135,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(645,'admin',1496308135,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(646,'admin',1496308230,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(647,'admin',1496308230,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(648,'admin',1496308230,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(649,'admin',1496308236,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(650,'admin',1496308236,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(651,'admin',1496308236,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(652,'admin',1496308240,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(653,'admin',1496308240,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(654,'admin',1496308240,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(655,'admin',1496308414,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(656,'admin',1496308414,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(657,'admin',1496308414,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(658,'admin',1496308415,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(659,'admin',1496308415,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(660,'admin',1496308415,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(661,'admin',1496308435,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(662,'admin',1496308435,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(663,'admin',1496308435,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(664,'admin',1496308435,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(665,'admin',1496308435,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(666,'admin',1496308435,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(667,'admin',1496308436,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(668,'admin',1496308436,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(669,'admin',1496308436,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(670,'admin',1496308554,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(671,'admin',1496308554,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(672,'admin',1496308554,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(673,'admin',1496308758,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(674,'admin',1496308758,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(675,'admin',1496308758,'127.0.0.1','0d970f7bc4f6ef2d7bd9969692ad06bc'),(676,'admin',1496369686,'127.0.0.1','登录成功。');
/*!40000 ALTER TABLE `qw_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_member`
--

DROP TABLE IF EXISTS `qw_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(225) NOT NULL,
  `head` varchar(255) NOT NULL COMMENT '头像',
  `sex` tinyint(1) NOT NULL COMMENT '0保密1男，2女',
  `birthday` int(10) NOT NULL COMMENT '生日',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `qq` varchar(20) NOT NULL COMMENT 'QQ',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `password` varchar(32) NOT NULL,
  `t` int(10) unsigned NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_member`
--

LOCK TABLES `qw_member` WRITE;
/*!40000 ALTER TABLE `qw_member` DISABLE KEYS */;
INSERT INTO `qw_member` VALUES (1,'admin','/Public/attached/2017/05/25/5926a67dbd958.png',1,1420128000,'13800138000','331349451','xieyanwei@qq.com','66d6a1c8748025462128dc75bf5ae8d1',1495618346),(14,'10000','/Public/attached/2017/05/23/5923fecfc9de3.png',0,946656000,'','','','',1495702977),(15,'200000','/Public/attached/2017/05/23/5923fecfc9de3.png',0,946656000,'','','','b484ebd968e643ebd73ef5204fb0a277',1496051029);
/*!40000 ALTER TABLE `qw_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qw_setting`
--

DROP TABLE IF EXISTS `qw_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qw_setting` (
  `k` varchar(100) NOT NULL COMMENT '变量',
  `v` varchar(255) NOT NULL COMMENT '值',
  `type` tinyint(1) NOT NULL COMMENT '0系统，1自定义',
  `name` varchar(255) NOT NULL COMMENT '说明',
  PRIMARY KEY (`k`),
  KEY `k` (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qw_setting`
--

LOCK TABLES `qw_setting` WRITE;
/*!40000 ALTER TABLE `qw_setting` DISABLE KEYS */;
INSERT INTO `qw_setting` VALUES ('sitename','渠道管理平台',0,''),('title','渠道管理平台',0,''),('keywords','关键词',0,''),('description','网站描述',0,''),('footer','2016©渠道管理平台',0,''),('test','测试',1,'测试变量'),('CLIENTGROUBID','6',1,'渠道商用户组id');
/*!40000 ALTER TABLE `qw_setting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-07 15:52:39
