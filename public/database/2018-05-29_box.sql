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
  `delete` tinyint(4) DEFAULT '0' COMMENT ' 是否删除 0) 否 1)是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='导航信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_nav`
--

LOCK TABLES `box_nav` WRITE;
/*!40000 ALTER TABLE `box_nav` DISABLE KEYS */;
INSERT INTO `box_nav` VALUES (54,'1','1',1,'',1,'2017-12-27 20:29:49','2018-05-28 14:57:58',0),(55,'test','test',0,'/public/upload/images/20171227/d46fffcd7fea1947506235a26e1f342e.png',1,'2017-12-27 20:29:59','2018-05-28 14:57:58',0),(56,'test2','aa2',0,'',1,'2018-05-24 11:28:33','2018-05-28 14:57:58',0),(57,'1234','1',1,'/public/upload/images/20180528/1791a9588b0bad5828e2c2fb123a3502.gif',31,'2018-05-24 16:10:02','2018-05-28 15:20:06',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=487 DEFAULT CHARSET=utf8 COMMENT='操作表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_operation`
--

LOCK TABLES `box_operation` WRITE;
/*!40000 ALTER TABLE `box_operation` DISABLE KEYS */;
INSERT INTO `box_operation` VALUES (463,'更新缓存操作','Common/clearcache','后台更新缓存','2018-05-28 17:39:21',1),(464,'导航操作','Nav/add','添加导航,操作成功!,导航名为123','2018-05-24 16:10:02',1),(465,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-24 16:10:09',1),(466,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:27:24',1),(467,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:27:51',1),(468,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:29:33',1),(469,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:29:39',1),(470,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:38:21',1),(471,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:40:46',1),(472,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:41:23',1),(473,'导航操作','Nav/editajax','修改导航状态,操作成功!,导航id为54','2018-05-28 11:07:17',1),(474,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54]的数据信息','2018-05-28 14:49:00',1),(475,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[55,56,57]的数据信息','2018-05-28 14:49:15',1),(476,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54]的数据信息','2018-05-28 14:50:45',1),(477,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54,55,56,57]的数据信息','2018-05-28 14:51:28',1),(478,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54]的数据信息','2018-05-28 14:52:14',1),(479,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[56]的数据信息','2018-05-28 14:53:44',1),(480,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[57]的数据信息','2018-05-28 14:55:51',1),(481,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54]的数据信息','2018-05-28 14:56:43',1),(482,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[55]的数据信息','2018-05-28 14:57:36',1),(483,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54,55,56,57]的数据信息','2018-05-28 14:57:58',1),(484,'导航操作','Nav/editajax','修改导航状态,操作成功!,导航id为57','2018-05-28 15:11:51',1),(485,'导航操作','Nav/editajax','修改导航状态,操作成功!,导航id为57','2018-05-28 15:19:59',1),(486,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 15:20:06',1);
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
INSERT INTO `box_version` VALUES (1,'1.1',1527500361,'2017-12-19 11:09:02','2018-05-28 17:39:21');
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

-- Dump completed on 2018-05-29 14:32:30
