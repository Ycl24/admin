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
-- Table structure for table `box_admin_accounts`
--

DROP TABLE IF EXISTS `box_admin_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box_admin_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accounts` varchar(255) NOT NULL COMMENT '登录帐号',
  `password` varchar(255) NOT NULL COMMENT '登录密码',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `remarks` text COMMENT '备注',
  `status` tinyint(4) DEFAULT NULL COMMENT '是否停用 0)否 1)是',
  `delete` tinyint(4) DEFAULT '0' COMMENT '是否删除 0) 否 1)是',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  `admin_id` int(11) NOT NULL COMMENT '修改人ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_admin_accounts`
--

LOCK TABLES `box_admin_accounts` WRITE;
/*!40000 ALTER TABLE `box_admin_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `box_admin_accounts` ENABLE KEYS */;
UNLOCK TABLES;

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
  `admin_id` int(11) DEFAULT '1' COMMENT '修改人ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_config`
--

LOCK TABLES `box_config` WRITE;
/*!40000 ALTER TABLE `box_config` DISABLE KEYS */;
INSERT INTO `box_config` VALUES (1,'http://www.ycl.com','2017-12-19 12:11:59','2017-12-19 12:12:01',0);
/*!40000 ALTER TABLE `box_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box_menu`
--

DROP TABLE IF EXISTS `box_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `type` tinyint(4) DEFAULT '1' COMMENT '菜单类型 1)后台 2)前端',
  `controller_action` varchar(255) DEFAULT NULL COMMENT '控制器/方法',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否显示 1）是 0）否',
  `parent_id` int(11) DEFAULT '0' COMMENT '父类ID',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  `delete` tinyint(4) DEFAULT '0' COMMENT ' 是否删除 0) 否 1)是',
  `admin_id` int(11) DEFAULT NULL COMMENT '修改人ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_menu`
--

LOCK TABLES `box_menu` WRITE;
/*!40000 ALTER TABLE `box_menu` DISABLE KEYS */;
INSERT INTO `box_menu` VALUES (1,'基本元素',1,'Nav/index','fa-cubes',1,16,1,'2018-05-30 14:59:18','2018-06-07 14:59:49',0,1),(2,'设置',1,'Menu/index','fa-cogs',1,16,10000,'2018-05-30 15:00:52','2018-06-07 16:58:16',0,1),(3,'导航管理',1,'Nav/index','',0,1,3,'2018-06-06 15:12:21','2018-06-06 16:11:30',0,1),(4,'添加导航',1,'Nav/add','',1,3,1,'2018-06-07 10:09:38','2018-06-07 10:09:38',0,1),(5,'修改导航',1,'Nav/edit','',1,3,2,'2018-06-07 10:10:19','2018-06-07 10:10:19',0,1),(6,'删除操作',1,'Common/deleteopear','',1,14,3,'2018-06-07 10:12:42','2018-06-07 10:27:49',0,1),(7,'清除缓存',1,'Common/clearcache','',1,14,10000,'2018-06-07 10:13:44','2018-06-07 10:27:49',0,1),(8,'图片上传',1,'Common/upimg','',1,14,10001,'2018-06-07 10:14:22','2018-06-07 10:27:49',0,1),(9,'文件上传',1,'Common/upfile','',1,14,10002,'2018-06-07 10:14:55','2018-06-07 10:27:49',0,1),(10,'execl导出',1,'Common/exportexecl','',1,14,10003,'2018-06-07 10:15:19','2018-06-07 10:27:49',0,1),(11,'获取父类列表',1,'Common/get_parent_list','',1,14,10004,'2018-06-07 10:15:41','2018-06-07 10:27:49',0,1),(12,'搜索父类列表',1,'Common/get_parent_search','',1,14,10005,'2018-06-07 10:15:58','2018-06-07 10:27:49',0,1),(13,'statusAjax',1,'Common/statusAjax','',1,14,10006,'2018-06-07 10:16:31','2018-06-07 10:27:49',0,1),(14,'公共方法',1,'Common/index','',1,16,9999,'2018-06-07 10:17:46','2018-06-07 16:58:24',0,1),(15,'前端',2,'Index/index','',1,0,1,'2018-06-07 14:52:14','2018-06-07 14:58:13',0,1),(16,'后台',1,'Common/main','',1,0,1,'2018-06-07 14:59:42','2018-06-07 14:59:42',0,1),(17,'菜单管理',1,'menu/index','',1,2,1,'2018-06-07 16:54:52','2018-06-07 16:54:52',0,1),(18,'权限管理',1,'role/index','',1,2,2,'2018-06-07 16:55:22','2018-06-07 16:55:22',0,1),(19,'权限分配',1,'power/index','',1,2,3,'2018-06-07 16:56:37','2018-06-07 16:56:37',0,1),(20,'导航搜索',1,'Nav/search','',1,3,4,'2018-06-07 17:08:21','2018-06-07 17:08:21',0,1);
/*!40000 ALTER TABLE `box_menu` ENABLE KEYS */;
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
  `parent_id` int(11) DEFAULT '0' COMMENT '父类ID',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  `delete` tinyint(4) DEFAULT '0' COMMENT ' 是否删除 0) 否 1)是',
  `admin_id` int(11) DEFAULT '0' COMMENT '修改人ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='导航信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_nav`
--

LOCK TABLES `box_nav` WRITE;
/*!40000 ALTER TABLE `box_nav` DISABLE KEYS */;
INSERT INTO `box_nav` VALUES (54,'1','1',1,'',1,0,'2017-12-27 20:29:49','2018-05-30 11:37:10',0,0),(55,'test','test',0,'/public/upload/images/20171227/d46fffcd7fea1947506235a26e1f342e.png',1,54,'2017-12-27 20:29:59','2018-06-06 15:55:00',0,1),(56,'test2','aa2',1,'',1,0,'2018-05-24 11:28:33','2018-05-30 16:13:37',0,0),(57,'1234','1',1,'/public/upload/images/20180529/d87a9610dbbf1875d10c3a9e7b3288b9.gif',31,59,'2018-05-24 16:10:02','2018-06-06 16:04:56',1,1),(58,'23','2',0,'',23,0,'2018-05-29 17:37:26','2018-05-30 11:35:25',0,0),(59,'TPM','index',1,'',2,54,'2018-05-29 18:23:11','2018-06-06 17:38:08',0,1),(60,'T001','index',1,'',2,0,'2018-05-29 18:23:32','2018-05-30 17:16:27',0,0),(61,'PM01','12',1,'/public/upload/images/20180529/d87a9610dbbf1875d10c3a9e7b3288b9.gif',1,55,'2018-05-29 18:25:06','2018-05-30 11:36:55',0,0),(62,'test888','index',1,'/public/upload/images/20180530/31b7caf4c18ab2d441b1413b46d26354.gif',2,59,'2018-05-30 16:43:33','2018-06-06 15:17:57',0,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=581 DEFAULT CHARSET=utf8 COMMENT='操作表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_operation`
--

LOCK TABLES `box_operation` WRITE;
/*!40000 ALTER TABLE `box_operation` DISABLE KEYS */;
INSERT INTO `box_operation` VALUES (463,'更新缓存操作','Common/clearcache','后台更新缓存','2018-06-07 16:29:49',1),(464,'导航操作','Nav/add','添加导航,操作成功!,导航名为123','2018-05-24 16:10:02',1),(465,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-24 16:10:09',1),(466,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:27:24',1),(467,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:27:51',1),(468,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:29:33',1),(469,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:29:39',1),(470,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:38:21',1),(471,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:40:46',1),(472,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 10:41:23',1),(473,'导航操作','Nav/editajax','修改导航状态,操作成功!,导航id为54','2018-05-28 11:07:17',1),(474,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54]的数据信息','2018-05-28 14:49:00',1),(475,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[55,56,57]的数据信息','2018-05-28 14:49:15',1),(476,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54]的数据信息','2018-05-28 14:50:45',1),(477,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54,55,56,57]的数据信息','2018-05-28 14:51:28',1),(478,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54]的数据信息','2018-05-28 14:52:14',1),(479,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[56]的数据信息','2018-05-28 14:53:44',1),(480,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[57]的数据信息','2018-05-28 14:55:51',1),(481,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54]的数据信息','2018-05-28 14:56:43',1),(482,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[55]的数据信息','2018-05-28 14:57:36',1),(483,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54,55,56,57]的数据信息','2018-05-28 14:57:58',1),(484,'导航操作','Nav/editajax','修改导航状态,操作成功!,导航id为57','2018-05-28 15:11:51',1),(485,'导航操作','Nav/editajax','修改导航状态,操作成功!,导航id为57','2018-05-28 15:19:59',1),(486,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-28 15:20:06',1),(487,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-29 16:26:33',1),(488,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-29 16:33:31',1),(489,'导航操作','Nav/add','添加导航,操作成功!,导航名为23','2018-05-29 17:37:26',1),(490,'导航操作','Nav/add','添加导航,操作成功!,导航名为TPM','2018-05-29 18:23:11',1),(491,'导航操作','Nav/add','添加导航,操作成功!,导航名为T001','2018-05-29 18:23:32',1),(492,'导航操作','Nav/add','添加导航,操作成功!,导航名为PM01','2018-05-29 18:25:06',1),(493,'导航操作','Nav/edit','修改导航,导航id为61','2018-05-29 18:33:03',1),(494,'导航操作','Nav/edit','修改导航,导航id为61','2018-05-29 18:33:49',1),(495,'导航操作','Nav/edit','修改导航,导航id为57','2018-05-30 10:49:59',1),(496,'导航操作','Common/editajax','修改导航状态,操作成功!,id为57','2018-05-30 11:21:11',1),(497,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[55]的数据信息','2018-05-30 11:35:25',1),(498,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[55]的数据信息','2018-05-30 11:36:55',1),(499,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[54]的数据信息','2018-05-30 11:37:10',1),(500,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为基本元素','2018-05-30 14:59:19',1),(501,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为设置','2018-05-30 15:00:52',1),(502,'菜单操作','Menu/edit','菜单不存在,参数id错误','2018-05-30 15:06:22',1),(503,'菜单操作','Menu/edit','菜单不存在,参数id错误','2018-05-30 15:06:39',1),(504,'菜单操作','Menu/edit','菜单不存在,参数id错误','2018-05-30 15:06:43',1),(505,'菜单操作','Menu/edit','修改菜单,菜单id为1','2018-05-30 15:08:43',1),(506,'导航操作','Common/statusajax','修改导航状态,操作成功!,id为57','2018-05-30 15:16:10',1),(507,'导航操作','Common/statusajax','修改导航状态,操作成功!,id为57','2018-05-30 15:16:16',1),(508,'菜单操作','Common/statusajax','修改菜单状态,操作成功!,id为2','2018-05-30 15:17:08',1),(509,'菜单操作','Common/statusajax','修改菜单状态,操作成功!,id为2','2018-05-30 15:17:16',1),(510,'menu数据表删除操作','Common/deleteopear','根据字段id键值为[2]的数据信息','2018-05-30 15:17:26',1),(511,'导航操作','Common/statusajax','修改导航状态,操作成功!,id为56','2018-05-30 16:13:37',1),(512,'导航操作','Nav/add','添加导航失败,导航名为test','2018-05-30 16:43:28',1),(513,'导航操作','Nav/add','添加导航,操作成功!,导航名为test888','2018-05-30 16:43:34',1),(514,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[60]的数据信息','2018-05-30 17:16:27',1),(515,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[\"62\"]的数据信息','2018-05-30 19:29:02',1),(516,'菜单操作','Menu/edit','修改菜单,菜单id为1','2018-06-06 15:06:25',1),(517,'菜单操作','Menu/edit','修改菜单,菜单id为1','2018-06-06 15:06:32',1),(518,'菜单操作','Menu/edit','修改菜单,菜单id为1','2018-06-06 15:07:21',1),(519,'菜单操作','Menu/edit','修改菜单,菜单id为1','2018-06-06 15:08:03',1),(520,'菜单操作','Menu/edit','修改菜单,菜单id为1','2018-06-06 15:08:10',1),(521,'菜单操作','Menu/edit','修改菜单,菜单id为1','2018-06-06 15:10:40',1),(522,'菜单操作','Menu/edit','修改菜单,菜单id为1','2018-06-06 15:10:47',1),(523,'菜单操作','Menu/edit','修改菜单,菜单id为1','2018-06-06 15:10:51',1),(524,'菜单操作','Menu/edit','修改菜单,菜单id为1','2018-06-06 15:10:55',1),(525,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为导航管理','2018-06-06 15:12:21',1),(526,'导航操作','Nav/edit','修改导航,导航id为62','2018-06-06 15:17:57',1),(527,'导航操作','Common/statusajax','修改导航状态,操作成功!,id为3','2018-06-06 15:21:44',1),(528,'菜单操作','Menu/edit','修改菜单,菜单id为3','2018-06-06 15:26:46',1),(529,'导航操作','Nav/edit','修改导航,导航id为55','2018-06-06 15:55:00',1),(530,'导航操作','Nav/edit','修改导航,导航id为59','2018-06-06 15:55:16',1),(531,'nav数据表删除操作','Common/deleteopear','根据字段id键值为[\"57\"]的数据信息','2018-06-06 16:04:56',1),(532,'menu数据表删除操作','Common/deleteopear','根据字段id键值为[\"3\"]的数据信息','2018-06-06 16:11:30',1),(533,'导航操作','Nav/edit','修改导航,导航id为59','2018-06-06 17:38:08',1),(534,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为添加导航','2018-06-07 10:09:38',1),(535,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为修改导航','2018-06-07 10:10:19',1),(536,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为公共删除操作','2018-06-07 10:12:42',1),(537,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为清除缓存','2018-06-07 10:13:45',1),(538,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为公共图片上传','2018-06-07 10:14:22',1),(539,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为文件上传','2018-06-07 10:14:55',1),(540,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为execl导出','2018-06-07 10:15:19',1),(541,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为获取父类列表','2018-06-07 10:15:41',1),(542,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为搜索父类列表','2018-06-07 10:15:58',1),(543,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为statusAjax','2018-06-07 10:16:31',1),(544,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为公共方法','2018-06-07 10:17:46',1),(545,'菜单操作','Menu/edit','修改菜单,菜单id为7','2018-06-07 10:18:04',1),(546,'菜单操作','Menu/edit','修改菜单,菜单id为8','2018-06-07 10:18:16',1),(547,'菜单操作','Menu/edit','修改菜单,菜单id为9','2018-06-07 10:18:23',1),(548,'菜单操作','Menu/edit','修改菜单,菜单id为10','2018-06-07 10:18:30',1),(549,'菜单操作','Menu/edit','修改菜单,菜单id为11','2018-06-07 10:18:37',1),(550,'菜单操作','Menu/edit','修改菜单,菜单id为12','2018-06-07 10:18:43',1),(551,'菜单操作','Menu/edit','修改菜单,菜单id为13','2018-06-07 10:18:49',1),(552,'菜单操作','Menu/edit','修改菜单,菜单id为8','2018-06-07 10:19:05',1),(553,'菜单操作','Menu/edit','修改菜单,菜单id为6','2018-06-07 10:19:28',1),(554,'menu数据表删除操作','Common/deleteopear','根据字段id键值为[14]的数据信息','2018-06-07 10:27:49',1),(555,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为首页','2018-06-07 14:52:14',1),(556,'菜单操作','Menu/edit','修改菜单,菜单id为15','2018-06-07 14:58:13',1),(557,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为后台','2018-06-07 14:59:42',1),(558,'菜单操作','Menu/edit','修改菜单,菜单id为1','2018-06-07 14:59:49',1),(559,'菜单操作','Menu/edit','修改菜单,菜单id为2','2018-06-07 14:59:54',1),(560,'菜单操作','Menu/edit','修改菜单,菜单id为14','2018-06-07 15:00:00',1),(561,'权限操作','Role/add','添加角色,操作成功!,角色名为管理员','2018-06-07 15:42:50',1),(562,'角色操作','Common/statusajax','修改角色状态,操作成功!,id为1','2018-06-07 15:52:00',1),(563,'角色操作','Common/statusajax','修改角色状态,操作成功!,id为1','2018-06-07 15:52:09',1),(564,'权限操作','Role/edit','修改角色,角色id为1','2018-06-07 16:52:04',1),(565,'权限操作','Role/edit','修改角色,角色id为1','2018-06-07 16:52:20',1),(566,'权限操作','Role/edit','修改角色,角色id为1','2018-06-07 16:52:35',1),(567,'权限操作','Role/edit','修改角色,角色id为1','2018-06-07 16:52:48',1),(568,'权限操作','Role/edit','修改角色,角色id为1','2018-06-07 16:52:56',1),(569,'权限操作','Role/edit','修改角色,角色id为1','2018-06-07 16:53:02',1),(570,'权限操作','Role/edit','修改角色,角色id为1','2018-06-07 16:53:06',1),(571,'权限操作','Role/add','添加角色,操作成功!,角色名为超级管理员','2018-06-07 16:53:38',1),(572,'权限操作','Role/add','添加角色,操作成功!,角色名为开发人员','2018-06-07 16:54:12',1),(573,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为菜单管理','2018-06-07 16:54:52',1),(574,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为权限管理','2018-06-07 16:55:22',1),(575,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为权限分配','2018-06-07 16:56:37',1),(576,'权限操作','Role/edit','修改角色,角色id为3','2018-06-07 16:57:16',1),(577,'权限操作','Role/edit','修改角色,角色id为2','2018-06-07 16:57:23',1),(578,'菜单操作','Menu/edit','修改菜单,菜单id为2','2018-06-07 16:58:16',1),(579,'菜单操作','Menu/edit','修改菜单,菜单id为14','2018-06-07 16:58:24',1),(580,'菜单操作','Menu/add','添加菜单,操作成功!,菜单名为导航搜索','2018-06-07 17:08:21',1);
/*!40000 ALTER TABLE `box_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box_role`
--

DROP TABLE IF EXISTS `box_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '角色名称',
  `status` tinyint(4) NOT NULL COMMENT '是否显示 0)否 1)是',
  `power` text COMMENT '菜单ID  ',
  `delete` tinyint(4) DEFAULT NULL COMMENT '是否删除 0) 否 1)是',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  `admin_id` int(11) DEFAULT NULL COMMENT '修改人ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_role`
--

LOCK TABLES `box_role` WRITE;
/*!40000 ALTER TABLE `box_role` DISABLE KEYS */;
INSERT INTO `box_role` VALUES (1,'管理员',1,'15,16,1,3,4,5,2,14,6,7,8,9,10,11,12,13',0,'2018-06-07 15:42:50','2018-06-07 16:53:06',1),(2,'超级管理员',1,'15,16,1,3,4,5,2,17,18,19,14,6,7,8,9,10,11,12,13',0,'2018-06-07 16:53:38','2018-06-07 16:57:23',1),(3,'开发人员',1,'16,1,3,4,5,14,6,7,8,9,10,11,12,13',0,'2018-06-07 16:54:12','2018-06-07 16:57:16',1);
/*!40000 ALTER TABLE `box_role` ENABLE KEYS */;
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
  `admin_id` int(11) DEFAULT '0' COMMENT '修改人ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='版本号表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_version`
--

LOCK TABLES `box_version` WRITE;
/*!40000 ALTER TABLE `box_version` DISABLE KEYS */;
INSERT INTO `box_version` VALUES (1,'1.1',1528360189,'2017-12-19 11:09:02','2018-06-07 16:29:49',1);
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

-- Dump completed on 2018-06-08 10:06:25
