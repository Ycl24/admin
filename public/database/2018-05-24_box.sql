-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: box
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Table structure for table `box_config`
--

DROP TABLE IF EXISTS `box_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL COMMENT 'web网址',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_config`
--

LOCK TABLES `box_config` WRITE;
/*!40000 ALTER TABLE `box_config` DISABLE KEYS */;
INSERT INTO `box_config` VALUES (1,'http://www.box.com','2017-12-19 12:11:59','2017-12-19 12:12:01');
/*!40000 ALTER TABLE `box_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box_nav`
--

DROP TABLE IF EXISTS `box_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '导航名称',
  `url` varchar(255) DEFAULT NULL COMMENT '导航地址',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否显示 1）是 0）否',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='导航信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_nav`
--

LOCK TABLES `box_nav` WRITE;
/*!40000 ALTER TABLE `box_nav` DISABLE KEYS */;
INSERT INTO `box_nav` VALUES (54,'1','1',0,'',1,'2017-12-27 20:29:49','2017-12-27 20:29:49'),(55,'test','test',0,'/public/upload/images/20171227/d46fffcd7fea1947506235a26e1f342e.png',1,'2017-12-27 20:29:59','2017-12-27 20:30:55');
/*!40000 ALTER TABLE `box_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box_operation`
--

DROP TABLE IF EXISTS `box_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box_operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_name` varchar(255) DEFAULT NULL COMMENT '操作名称',
  `operation_controllerurl` varchar(255) DEFAULT NULL COMMENT '操作控制器/方法',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `createtime` datetime DEFAULT NULL,
  `admin_id` int(11) DEFAULT '1' COMMENT '管理人ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=455 DEFAULT CHARSET=utf8 COMMENT='操作表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_operation`
--

LOCK TABLES `box_operation` WRITE;
/*!40000 ALTER TABLE `box_operation` DISABLE KEYS */;
INSERT INTO `box_operation` VALUES (1,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 15:28:22',1),(2,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 15:28:50',1),(3,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 15:32:23',1),(4,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:22:54',1),(5,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:23:53',1),(6,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:25:08',1),(7,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:25:41',1),(8,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:26:06',1),(9,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:26:28',1),(10,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:26:57',1),(11,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:27:28',1),(12,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:28:32',1),(13,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:28:39',1),(14,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:28:49',1),(15,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:29:03',1),(16,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:30:00',1),(17,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:39:31',1),(18,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:48:58',1),(19,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:49:31',1),(20,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:50:25',1),(21,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:52:48',1),(22,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:53:04',1),(23,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:53:36',1),(24,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:53:51',1),(25,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:54:08',1),(26,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:55:11',1),(27,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:56:02',1),(28,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:56:30',1),(29,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:58:15',1),(30,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:59:07',1),(31,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 16:59:22',1),(32,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:00:05',1),(33,'导航操作','Nav/add','添加导航','2017-12-19 17:00:14',1),(34,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:01:06',1),(35,'导航操作','Nav/add','添加导航','2017-12-19 17:02:47',1),(36,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:03:23',1),(37,'导航操作','Nav/add','添加导航','2017-12-19 17:03:30',1),(38,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:04:22',1),(39,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:06:22',1),(40,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:12:27',1),(41,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:14:27',1),(42,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:15:54',1),(43,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:18:38',1),(44,'导航操作','Nav/add','添加导航','2017-12-19 17:18:45',1),(45,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:19:11',1),(46,'导航操作','Nav/add','添加导航','2017-12-19 17:19:17',1),(47,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:20:13',1),(48,'导航操作','Nav/add','添加导航','2017-12-19 17:20:19',1),(49,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:20:30',1),(50,'导航操作','Nav/add','添加导航','2017-12-19 17:20:37',1),(51,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:21:09',1),(52,'导航操作','Nav/add','添加导航','2017-12-19 17:21:15',1),(53,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:21:41',1),(54,'导航操作','Nav/add','添加导航','2017-12-19 17:21:47',1),(55,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:23:18',1),(56,'导航操作','Nav/add','添加导航','2017-12-19 17:23:24',1),(57,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:24:22',1),(58,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:29:07',1),(59,'导航操作','Nav/add','添加导航','2017-12-19 17:29:14',1),(60,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:31:15',1),(61,'导航操作','Nav/add','添加导航','2017-12-19 17:31:25',1),(62,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:31:42',1),(63,'导航操作','Nav/add','添加导航','2017-12-19 17:31:55',1),(64,'导航操作','Nav/add','添加导航','2017-12-19 17:32:01',1),(65,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:38:23',1),(66,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:38:24',1),(67,'导航操作','Nav/add','添加导航','2017-12-19 17:38:29',1),(68,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:38:51',1),(69,'导航操作','Nav/add','添加导航','2017-12-19 17:39:01',1),(70,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:44:54',1),(71,'导航操作','Nav/add','添加导航','2017-12-19 17:45:02',1),(72,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:45:28',1),(73,'导航操作','Nav/add','添加导航失败,导航名为123','2017-12-19 17:45:33',1),(74,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:45:58',1),(75,'导航操作','Nav/add','添加导航失败,导航名为123','2017-12-19 17:46:04',1),(76,'导航操作','Nav/add','添加导航','2017-12-19 17:46:11',1),(77,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:49:31',1),(78,'导航操作','Nav/add','添加导航','2017-12-19 17:49:50',1),(79,'导航操作','Nav/add','添加导航','2017-12-19 17:50:02',1),(80,'导航操作','Nav/add','添加导航失败,导航名为aaa','2017-12-19 17:50:13',1),(81,'导航操作','Nav/add','添加导航失败,导航名为aaa','2017-12-19 17:50:16',1),(82,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 17:53:20',1),(83,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 19:13:51',1),(84,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 19:19:50',1),(85,'导航操作','Nav/add','添加导航失败,导航名为123','2017-12-19 19:57:30',1),(86,'导航操作','Nav/add','添加导航','2017-12-19 19:57:34',1),(87,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 20:03:08',1),(88,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-19 20:04:31',1),(89,'导航操作','Nav/add','添加导航','2017-12-20 14:55:11',1),(90,'导航操作','Nav/add','添加导航失败,导航名为搜索','2017-12-20 14:55:49',1),(91,'导航操作','Nav/add','添加导航','2017-12-20 14:57:23',1),(92,'导航操作','Nav/add','添加导航,导航名为qq','2017-12-20 14:59:43',1),(93,'导航操作','Nav/add','添加导航失败,导航名为qq','2017-12-20 14:59:55',1),(94,'导航操作','Nav/add','添加导航,导航名为qqz','2017-12-20 15:00:02',1),(95,'导航操作','Nav/add','添加导航,导航名为bb','2017-12-20 15:06:12',1),(96,'导航操作','Nav/add','添加导航,导航名为uu','2017-12-20 15:06:26',1),(97,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-20 15:46:23',1),(98,'导航操作','Nav/add','添加导航,导航名为哦','2017-12-20 15:49:20',1),(99,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-20 17:03:35',1),(100,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-20 17:25:09',1),(101,'导航操作','Nav/add','添加导航,导航名为11','2017-12-20 17:25:39',1),(102,'导航操作','Nav/add','添加导航,导航名为测试','2017-12-20 18:17:05',1),(103,'导航操作','Nav/add','添加导航,导航名为22111','2017-12-20 18:18:13',1),(104,'导航操作','Nav/add','添加导航,导航名为2公告','2017-12-20 18:19:00',1),(105,'导航操作','Nav/add','添加导航,导航名为此次','2017-12-20 18:21:01',1),(106,'导航操作','Nav/add','添加导航失败,导航名为此次','2017-12-20 18:21:15',1),(107,'导航操作','Nav/add','添加导航,导航名为测试123','2017-12-20 18:21:59',1),(108,'导航操作','Nav/add','添加导航,导航名为哈哈','2017-12-20 18:24:15',1),(109,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-20 19:07:24',1),(110,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-22 18:08:11',1),(111,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-22 18:10:15',1),(112,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-22 18:10:27',1),(113,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-22 18:10:54',1),(114,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-22 18:22:19',1),(115,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 12:04:06',1),(116,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 12:09:01',1),(117,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 12:14:26',1),(118,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 12:24:05',1),(119,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:04:54',1),(120,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:06:18',1),(121,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:32:28',1),(122,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:32:56',1),(123,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:33:25',1),(124,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:39:20',1),(125,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:39:45',1),(126,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:45:07',1),(127,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:46:57',1),(128,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:48:03',1),(129,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:50:55',1),(130,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:51:42',1),(131,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:51:42',1),(132,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 14:55:59',1),(133,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:00:03',1),(134,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:00:39',1),(135,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:04:41',1),(136,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:31:57',1),(137,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:33:31',1),(138,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:35:27',1),(139,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:35:54',1),(140,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:44:16',1),(141,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:44:36',1),(142,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:44:55',1),(143,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:45:16',1),(144,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:46:07',1),(145,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:46:24',1),(146,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:46:42',1),(147,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:46:54',1),(148,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:47:09',1),(149,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:47:59',1),(150,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:48:30',1),(151,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:49:54',1),(152,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:51:44',1),(153,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:52:56',1),(154,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:53:10',1),(155,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:54:36',1),(156,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:58:08',1),(157,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:58:34',1),(158,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 15:59:44',1),(159,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:01:58',1),(160,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:02:56',1),(161,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:03:16',1),(162,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:03:36',1),(163,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:04:09',1),(164,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:04:30',1),(165,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:04:40',1),(166,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:06:16',1),(167,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:06:52',1),(168,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:13:02',1),(169,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:13:15',1),(170,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:13:50',1),(171,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:14:37',1),(172,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:14:58',1),(173,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:15:17',1),(174,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:15:56',1),(175,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:16:11',1),(176,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:18:32',1),(177,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:19:12',1),(178,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:25:27',1),(179,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:25:44',1),(180,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:25:59',1),(181,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:26:41',1),(182,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:27:31',1),(183,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:28:10',1),(184,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:28:26',1),(185,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:29:00',1),(186,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:30:15',1),(187,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:30:31',1),(188,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:31:09',1),(189,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:33:24',1),(190,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:34:04',1),(191,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:34:21',1),(192,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:35:13',1),(193,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:36:07',1),(194,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:36:17',1),(195,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:36:28',1),(196,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:37:11',1),(197,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:37:49',1),(198,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:38:44',1),(199,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:40:33',1),(200,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:41:22',1),(201,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:43:48',1),(202,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:44:06',1),(203,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:44:54',1),(204,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:45:36',1),(205,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:46:35',1),(206,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:52:09',1),(207,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:52:10',1),(208,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 16:52:37',1),(209,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:01:52',1),(210,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:02:13',1),(211,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:03:13',1),(212,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:03:26',1),(213,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:17:13',1),(214,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:17:32',1),(215,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:19:37',1),(216,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:19:58',1),(217,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:20:51',1),(218,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:21:28',1),(219,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:24:47',1),(220,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:25:02',1),(221,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:26:24',1),(222,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:27:30',1),(223,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:31:36',1),(224,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:35:54',1),(225,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:48:35',1),(226,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 17:55:13',1),(227,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:06:42',1),(228,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:07:05',1),(229,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:08:59',1),(230,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:09:50',1),(231,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:10:46',1),(232,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:12:53',1),(233,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:13:48',1),(234,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:17:03',1),(235,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:21:39',1),(236,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:22:12',1),(237,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:22:36',1),(238,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:25:00',1),(239,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:27:31',1),(240,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:53:28',1),(241,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:58:40',1),(242,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 18:59:25',1),(243,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:00:51',1),(244,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:01:12',1),(245,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:02:51',1),(246,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:03:14',1),(247,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:04:51',1),(248,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:05:18',1),(249,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:06:56',1),(250,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:07:53',1),(251,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:08:24',1),(252,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:09:16',1),(253,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:10:08',1),(254,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:11:44',1),(255,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:13:23',1),(256,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:14:45',1),(257,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:14:58',1),(258,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:15:13',1),(259,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:16:30',1),(260,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:16:54',1),(261,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:17:18',1),(262,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:18:15',1),(263,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:19:20',1),(264,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:21:41',1),(265,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:24:03',1),(266,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:24:49',1),(267,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:25:08',1),(268,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:25:53',1),(269,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:28:31',1),(270,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:29:09',1),(271,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:30:07',1),(272,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:30:54',1),(273,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:31:01',1),(274,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:35:28',1),(275,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:38:37',1),(276,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:39:22',1),(277,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:39:38',1),(278,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:41:07',1),(279,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:42:17',1),(280,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:42:39',1),(281,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:44:50',1),(282,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:45:03',1),(283,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:45:16',1),(284,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:48:01',1),(285,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:51:56',1),(286,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 19:52:17',1),(287,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:01:28',1),(288,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:01:36',1),(289,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:02:30',1),(290,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:02:55',1),(291,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:03:47',1),(292,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:05:41',1),(293,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:07:46',1),(294,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:08:28',1),(295,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:08:42',1),(296,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:08:55',1),(297,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:10:24',1),(298,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:10:29',1),(299,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:11:20',1),(300,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:11:50',1),(301,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:12:27',1),(302,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:13:10',1),(303,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:13:39',1),(304,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:13:59',1),(305,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:14:12',1),(306,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:16:46',1),(307,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:17:36',1),(308,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:18:48',1),(309,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:19:04',1),(310,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:20:49',1),(311,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:22:36',1),(312,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:23:31',1),(313,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:23:54',1),(314,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:24:36',1),(315,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:25:13',1),(316,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:25:59',1),(317,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:26:52',1),(318,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:27:12',1),(319,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:27:41',1),(320,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:29:28',1),(321,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:29:53',1),(322,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:30:28',1),(323,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:30:55',1),(324,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:47:19',1),(325,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:47:57',1),(326,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:48:42',1),(327,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-25 20:59:15',1),(328,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 09:58:17',1),(329,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 09:59:00',1),(330,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 12:22:28',1),(331,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 12:24:43',1),(332,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 12:27:22',1),(333,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 12:28:44',1),(334,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 12:30:07',1),(335,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 12:30:50',1),(336,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 12:31:53',1),(337,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 14:46:47',1),(338,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 14:51:08',1),(339,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 14:57:05',1),(340,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 14:58:05',1),(341,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 14:58:13',1),(342,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 14:59:11',1),(343,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 14:59:13',1),(344,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:00:10',1),(345,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:01:15',1),(346,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:01:18',1),(347,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:03:08',1),(348,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:03:42',1),(349,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:05:17',1),(350,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:05:51',1),(351,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:11:30',1),(352,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:11:57',1),(353,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:14:34',1),(354,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:15:46',1),(355,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:18:01',1),(356,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:18:57',1),(357,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:19:15',1),(358,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:19:52',1),(359,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:21:12',1),(360,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:21:55',1),(361,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:22:36',1),(362,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:24:33',1),(363,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:24:53',1),(364,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:25:01',1),(365,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:28:09',1),(366,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:28:55',1),(367,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:29:31',1),(368,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:30:37',1),(369,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:31:38',1),(370,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:36:29',1),(371,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:44:08',1),(372,'导航操作','Nav/add','添加导航,导航名为１２３','2017-12-26 15:44:39',1),(373,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:45:10',1),(374,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:46:20',1),(375,'导航操作','Nav/add','添加导航,导航名为123','2017-12-26 15:46:31',1),(376,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:47:33',1),(377,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:48:17',1),(378,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 15:49:14',1),(379,'导航操作','Nav/add','添加导航,导航名为此时','2017-12-26 15:49:43',1),(380,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:05:55',1),(381,'导航操作','Nav/add','添加导航,导航名为PP','2017-12-26 16:06:09',1),(382,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:18:37',1),(383,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:36:31',1),(384,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:45:21',1),(385,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:47:00',1),(386,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:47:14',1),(387,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:48:26',1),(388,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:49:26',1),(389,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:49:51',1),(390,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:50:04',1),(391,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:50:37',1),(392,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:55:24',1),(393,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:56:06',1),(394,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:58:51',1),(395,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:59:21',1),(396,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 16:59:52',1),(397,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 17:03:43',1),(398,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 17:04:09',1),(399,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 17:06:32',1),(400,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 17:08:48',1),(401,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 17:10:42',1),(402,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 17:11:27',1),(403,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 17:11:41',1),(404,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-26 17:12:03',1),(405,'导航操作','Nav/add','添加导航,导航名为打算','2017-12-27 10:58:20',1),(406,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 11:43:42',1),(407,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 11:48:17',1),(408,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 11:54:02',1),(409,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 11:55:04',1),(410,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 11:55:36',1),(411,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 11:56:47',1),(412,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 11:58:52',1),(413,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 11:59:03',1),(414,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 11:59:22',1),(415,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 12:00:47',1),(416,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 12:03:53',1),(417,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 14:16:59',1),(418,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 14:17:57',1),(419,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 14:45:09',1),(420,'更新缓存操作','Common/clearcache','后台更新缓存','2017-12-27 14:49:30',1),(421,'导航操作','Nav/editajax','修改导航状态,操作成功!,导航id为38','2017-12-27 17:53:06',1),(422,'导航操作','Nav/editajax','修改导航状态,操作成功!,导航id为38','2017-12-27 17:54:06',1),(423,'导航操作','Nav/add','添加导航,操作成功!,导航名为测试','2017-12-27 18:09:14',1),(424,'导航操作','Nav/add','添加导航,操作成功!,导航名为1','2017-12-27 19:41:25',1),(425,'导航操作','Nav/add','添加导航,操作成功!,导航名为2','2017-12-27 19:44:25',1),(426,'导航操作','Nav/add','添加导航,操作成功!,导航名为','2017-12-27 19:44:50',1),(427,'导航操作','Nav/add','添加导航,操作成功!,导航名为3','2017-12-27 20:09:54',1),(428,'导航操作','Nav/edit','添加导航失败,导航名为2','2017-12-27 20:11:49',1),(429,'导航操作','Nav/add','添加导航,操作成功!,导航名为3','2017-12-27 20:13:20',1),(430,'导航操作','Nav/edit','修改导航,导航id为50','2017-12-27 20:14:45',1),(431,'导航操作','Nav/add','添加导航,操作成功!,导航名为33','2017-12-27 20:14:59',1),(432,'导航操作','Nav/edit','修改导航,导航id为51','2017-12-27 20:15:14',1),(433,'导航操作','Nav/edit','修改导航,导航id为51','2017-12-27 20:17:41',1),(434,'导航操作','Nav/edit','修改导航,导航id为51','2017-12-27 20:18:41',1),(435,'导航操作','Nav/edit','修改导航,导航id为51','2017-12-27 20:19:18',1),(436,'导航操作','Nav/edit','修改导航,导航id为51','2017-12-27 20:19:45',1),(437,'导航操作','Nav/edit','修改导航,导航id为51','2017-12-27 20:20:01',1),(438,'导航操作','Nav/edit','修改导航,导航id为51','2017-12-27 20:20:10',1),(439,'导航操作','Nav/edit','修改导航,导航id为51','2017-12-27 20:20:41',1),(440,'导航操作','Nav/edit','修改导航,导航id为51','2017-12-27 20:21:52',1),(441,'导航操作','Nav/edit','修改导航,导航id为51','2017-12-27 20:22:05',1),(442,'导航操作','Nav/edit','修改导航,导航id为51','2017-12-27 20:22:45',1),(443,'导航操作','Nav/edit','修改导航,导航id为51','2017-12-27 20:23:58',1),(444,'导航操作','Nav/add','添加导航,操作成功!,导航名为7','2017-12-27 20:24:23',1),(445,'导航操作','Nav/edit','修改导航,导航id为52','2017-12-27 20:25:07',1),(446,'导航操作','Nav/edit','修改导航,导航id为52','2017-12-27 20:25:16',1),(447,'导航操作','Nav/add','添加导航,操作成功!,导航名为12','2017-12-27 20:26:16',1),(448,'导航操作','Nav/edit','修改导航,导航id为53','2017-12-27 20:27:26',1),(449,'导航操作','Nav/edit','修改导航,导航id为53','2017-12-27 20:27:55',1),(450,'导航操作','Nav/edit','修改导航,导航id为53','2017-12-27 20:29:17',1),(451,'导航操作','Nav/add','添加导航,操作成功!,导航名为1','2017-12-27 20:29:49',1),(452,'导航操作','Nav/add','添加导航,操作成功!,导航名为test','2017-12-27 20:29:59',1),(453,'导航操作','Nav/edit','修改导航,导航id为55','2017-12-27 20:30:55',1),(454,'导航操作','Nav/edit','导航不存在,参数id错误','2017-12-27 20:31:35',1);
/*!40000 ALTER TABLE `box_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box_version`
--

DROP TABLE IF EXISTS `box_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version_start` varchar(255) DEFAULT '1.0' COMMENT '版本号-前缀',
  `version_end` int(11) DEFAULT '123456' COMMENT '版本号-前缀',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='版本号表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_version`
--

LOCK TABLES `box_version` WRITE;
/*!40000 ALTER TABLE `box_version` DISABLE KEYS */;
INSERT INTO `box_version` VALUES (1,'1.1',1514357370,'2017-12-19 11:09:02','2017-12-19 11:09:04');
/*!40000 ALTER TABLE `box_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-24 11:27:17
