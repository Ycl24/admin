/*
Navicat MySQL Data Transfer

Source Server         : 都领
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : box

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-12-27 20:37:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for box_config
-- ----------------------------
DROP TABLE IF EXISTS `box_config`;
CREATE TABLE `box_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL COMMENT 'web网址',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站配置表';

-- ----------------------------
-- Records of box_config
-- ----------------------------
INSERT INTO `box_config` VALUES ('1', 'http://www.box.com', '2017-12-19 12:11:59', '2017-12-19 12:12:01');

-- ----------------------------
-- Table structure for box_nav
-- ----------------------------
DROP TABLE IF EXISTS `box_nav`;
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

-- ----------------------------
-- Records of box_nav
-- ----------------------------
INSERT INTO `box_nav` VALUES ('54', '1', '1', '0', '', '1', '2017-12-27 20:29:49', '2017-12-27 20:29:49');
INSERT INTO `box_nav` VALUES ('55', 'test', 'test', '0', '/public/upload/images/20171227/d46fffcd7fea1947506235a26e1f342e.png', '1', '2017-12-27 20:29:59', '2017-12-27 20:30:55');

-- ----------------------------
-- Table structure for box_operation
-- ----------------------------
DROP TABLE IF EXISTS `box_operation`;
CREATE TABLE `box_operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_name` varchar(255) DEFAULT NULL COMMENT '操作名称',
  `operation_controllerurl` varchar(255) DEFAULT NULL COMMENT '操作控制器/方法',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `createtime` datetime DEFAULT NULL,
  `admin_id` int(11) DEFAULT '1' COMMENT '管理人ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=455 DEFAULT CHARSET=utf8 COMMENT='操作表';

-- ----------------------------
-- Records of box_operation
-- ----------------------------
INSERT INTO `box_operation` VALUES ('1', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 15:28:22', '1');
INSERT INTO `box_operation` VALUES ('2', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 15:28:50', '1');
INSERT INTO `box_operation` VALUES ('3', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 15:32:23', '1');
INSERT INTO `box_operation` VALUES ('4', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:22:54', '1');
INSERT INTO `box_operation` VALUES ('5', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:23:53', '1');
INSERT INTO `box_operation` VALUES ('6', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:25:08', '1');
INSERT INTO `box_operation` VALUES ('7', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:25:41', '1');
INSERT INTO `box_operation` VALUES ('8', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:26:06', '1');
INSERT INTO `box_operation` VALUES ('9', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:26:28', '1');
INSERT INTO `box_operation` VALUES ('10', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:26:57', '1');
INSERT INTO `box_operation` VALUES ('11', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:27:28', '1');
INSERT INTO `box_operation` VALUES ('12', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:28:32', '1');
INSERT INTO `box_operation` VALUES ('13', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:28:39', '1');
INSERT INTO `box_operation` VALUES ('14', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:28:49', '1');
INSERT INTO `box_operation` VALUES ('15', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:29:03', '1');
INSERT INTO `box_operation` VALUES ('16', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:30:00', '1');
INSERT INTO `box_operation` VALUES ('17', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:39:31', '1');
INSERT INTO `box_operation` VALUES ('18', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:48:58', '1');
INSERT INTO `box_operation` VALUES ('19', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:49:31', '1');
INSERT INTO `box_operation` VALUES ('20', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:50:25', '1');
INSERT INTO `box_operation` VALUES ('21', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:52:48', '1');
INSERT INTO `box_operation` VALUES ('22', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:53:04', '1');
INSERT INTO `box_operation` VALUES ('23', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:53:36', '1');
INSERT INTO `box_operation` VALUES ('24', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:53:51', '1');
INSERT INTO `box_operation` VALUES ('25', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:54:08', '1');
INSERT INTO `box_operation` VALUES ('26', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:55:11', '1');
INSERT INTO `box_operation` VALUES ('27', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:56:02', '1');
INSERT INTO `box_operation` VALUES ('28', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:56:30', '1');
INSERT INTO `box_operation` VALUES ('29', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:58:15', '1');
INSERT INTO `box_operation` VALUES ('30', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:59:07', '1');
INSERT INTO `box_operation` VALUES ('31', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 16:59:22', '1');
INSERT INTO `box_operation` VALUES ('32', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:00:05', '1');
INSERT INTO `box_operation` VALUES ('33', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:00:14', '1');
INSERT INTO `box_operation` VALUES ('34', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:01:06', '1');
INSERT INTO `box_operation` VALUES ('35', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:02:47', '1');
INSERT INTO `box_operation` VALUES ('36', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:03:23', '1');
INSERT INTO `box_operation` VALUES ('37', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:03:30', '1');
INSERT INTO `box_operation` VALUES ('38', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:04:22', '1');
INSERT INTO `box_operation` VALUES ('39', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:06:22', '1');
INSERT INTO `box_operation` VALUES ('40', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:12:27', '1');
INSERT INTO `box_operation` VALUES ('41', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:14:27', '1');
INSERT INTO `box_operation` VALUES ('42', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:15:54', '1');
INSERT INTO `box_operation` VALUES ('43', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:18:38', '1');
INSERT INTO `box_operation` VALUES ('44', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:18:45', '1');
INSERT INTO `box_operation` VALUES ('45', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:19:11', '1');
INSERT INTO `box_operation` VALUES ('46', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:19:17', '1');
INSERT INTO `box_operation` VALUES ('47', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:20:13', '1');
INSERT INTO `box_operation` VALUES ('48', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:20:19', '1');
INSERT INTO `box_operation` VALUES ('49', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:20:30', '1');
INSERT INTO `box_operation` VALUES ('50', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:20:37', '1');
INSERT INTO `box_operation` VALUES ('51', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:21:09', '1');
INSERT INTO `box_operation` VALUES ('52', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:21:15', '1');
INSERT INTO `box_operation` VALUES ('53', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:21:41', '1');
INSERT INTO `box_operation` VALUES ('54', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:21:47', '1');
INSERT INTO `box_operation` VALUES ('55', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:23:18', '1');
INSERT INTO `box_operation` VALUES ('56', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:23:24', '1');
INSERT INTO `box_operation` VALUES ('57', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:24:22', '1');
INSERT INTO `box_operation` VALUES ('58', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:29:07', '1');
INSERT INTO `box_operation` VALUES ('59', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:29:14', '1');
INSERT INTO `box_operation` VALUES ('60', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:31:15', '1');
INSERT INTO `box_operation` VALUES ('61', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:31:25', '1');
INSERT INTO `box_operation` VALUES ('62', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:31:42', '1');
INSERT INTO `box_operation` VALUES ('63', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:31:55', '1');
INSERT INTO `box_operation` VALUES ('64', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:32:01', '1');
INSERT INTO `box_operation` VALUES ('65', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:38:23', '1');
INSERT INTO `box_operation` VALUES ('66', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:38:24', '1');
INSERT INTO `box_operation` VALUES ('67', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:38:29', '1');
INSERT INTO `box_operation` VALUES ('68', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:38:51', '1');
INSERT INTO `box_operation` VALUES ('69', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:39:01', '1');
INSERT INTO `box_operation` VALUES ('70', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:44:54', '1');
INSERT INTO `box_operation` VALUES ('71', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:45:02', '1');
INSERT INTO `box_operation` VALUES ('72', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:45:28', '1');
INSERT INTO `box_operation` VALUES ('73', '导航操作', 'Nav/add', '添加导航失败,导航名为123', '2017-12-19 17:45:33', '1');
INSERT INTO `box_operation` VALUES ('74', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:45:58', '1');
INSERT INTO `box_operation` VALUES ('75', '导航操作', 'Nav/add', '添加导航失败,导航名为123', '2017-12-19 17:46:04', '1');
INSERT INTO `box_operation` VALUES ('76', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:46:11', '1');
INSERT INTO `box_operation` VALUES ('77', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:49:31', '1');
INSERT INTO `box_operation` VALUES ('78', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:49:50', '1');
INSERT INTO `box_operation` VALUES ('79', '导航操作', 'Nav/add', '添加导航', '2017-12-19 17:50:02', '1');
INSERT INTO `box_operation` VALUES ('80', '导航操作', 'Nav/add', '添加导航失败,导航名为aaa', '2017-12-19 17:50:13', '1');
INSERT INTO `box_operation` VALUES ('81', '导航操作', 'Nav/add', '添加导航失败,导航名为aaa', '2017-12-19 17:50:16', '1');
INSERT INTO `box_operation` VALUES ('82', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 17:53:20', '1');
INSERT INTO `box_operation` VALUES ('83', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 19:13:51', '1');
INSERT INTO `box_operation` VALUES ('84', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 19:19:50', '1');
INSERT INTO `box_operation` VALUES ('85', '导航操作', 'Nav/add', '添加导航失败,导航名为123', '2017-12-19 19:57:30', '1');
INSERT INTO `box_operation` VALUES ('86', '导航操作', 'Nav/add', '添加导航', '2017-12-19 19:57:34', '1');
INSERT INTO `box_operation` VALUES ('87', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 20:03:08', '1');
INSERT INTO `box_operation` VALUES ('88', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-19 20:04:31', '1');
INSERT INTO `box_operation` VALUES ('89', '导航操作', 'Nav/add', '添加导航', '2017-12-20 14:55:11', '1');
INSERT INTO `box_operation` VALUES ('90', '导航操作', 'Nav/add', '添加导航失败,导航名为搜索', '2017-12-20 14:55:49', '1');
INSERT INTO `box_operation` VALUES ('91', '导航操作', 'Nav/add', '添加导航', '2017-12-20 14:57:23', '1');
INSERT INTO `box_operation` VALUES ('92', '导航操作', 'Nav/add', '添加导航,导航名为qq', '2017-12-20 14:59:43', '1');
INSERT INTO `box_operation` VALUES ('93', '导航操作', 'Nav/add', '添加导航失败,导航名为qq', '2017-12-20 14:59:55', '1');
INSERT INTO `box_operation` VALUES ('94', '导航操作', 'Nav/add', '添加导航,导航名为qqz', '2017-12-20 15:00:02', '1');
INSERT INTO `box_operation` VALUES ('95', '导航操作', 'Nav/add', '添加导航,导航名为bb', '2017-12-20 15:06:12', '1');
INSERT INTO `box_operation` VALUES ('96', '导航操作', 'Nav/add', '添加导航,导航名为uu', '2017-12-20 15:06:26', '1');
INSERT INTO `box_operation` VALUES ('97', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-20 15:46:23', '1');
INSERT INTO `box_operation` VALUES ('98', '导航操作', 'Nav/add', '添加导航,导航名为哦', '2017-12-20 15:49:20', '1');
INSERT INTO `box_operation` VALUES ('99', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-20 17:03:35', '1');
INSERT INTO `box_operation` VALUES ('100', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-20 17:25:09', '1');
INSERT INTO `box_operation` VALUES ('101', '导航操作', 'Nav/add', '添加导航,导航名为11', '2017-12-20 17:25:39', '1');
INSERT INTO `box_operation` VALUES ('102', '导航操作', 'Nav/add', '添加导航,导航名为测试', '2017-12-20 18:17:05', '1');
INSERT INTO `box_operation` VALUES ('103', '导航操作', 'Nav/add', '添加导航,导航名为22111', '2017-12-20 18:18:13', '1');
INSERT INTO `box_operation` VALUES ('104', '导航操作', 'Nav/add', '添加导航,导航名为2公告', '2017-12-20 18:19:00', '1');
INSERT INTO `box_operation` VALUES ('105', '导航操作', 'Nav/add', '添加导航,导航名为此次', '2017-12-20 18:21:01', '1');
INSERT INTO `box_operation` VALUES ('106', '导航操作', 'Nav/add', '添加导航失败,导航名为此次', '2017-12-20 18:21:15', '1');
INSERT INTO `box_operation` VALUES ('107', '导航操作', 'Nav/add', '添加导航,导航名为测试123', '2017-12-20 18:21:59', '1');
INSERT INTO `box_operation` VALUES ('108', '导航操作', 'Nav/add', '添加导航,导航名为哈哈', '2017-12-20 18:24:15', '1');
INSERT INTO `box_operation` VALUES ('109', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-20 19:07:24', '1');
INSERT INTO `box_operation` VALUES ('110', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-22 18:08:11', '1');
INSERT INTO `box_operation` VALUES ('111', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-22 18:10:15', '1');
INSERT INTO `box_operation` VALUES ('112', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-22 18:10:27', '1');
INSERT INTO `box_operation` VALUES ('113', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-22 18:10:54', '1');
INSERT INTO `box_operation` VALUES ('114', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-22 18:22:19', '1');
INSERT INTO `box_operation` VALUES ('115', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 12:04:06', '1');
INSERT INTO `box_operation` VALUES ('116', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 12:09:01', '1');
INSERT INTO `box_operation` VALUES ('117', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 12:14:26', '1');
INSERT INTO `box_operation` VALUES ('118', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 12:24:05', '1');
INSERT INTO `box_operation` VALUES ('119', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:04:54', '1');
INSERT INTO `box_operation` VALUES ('120', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:06:18', '1');
INSERT INTO `box_operation` VALUES ('121', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:32:28', '1');
INSERT INTO `box_operation` VALUES ('122', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:32:56', '1');
INSERT INTO `box_operation` VALUES ('123', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:33:25', '1');
INSERT INTO `box_operation` VALUES ('124', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:39:20', '1');
INSERT INTO `box_operation` VALUES ('125', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:39:45', '1');
INSERT INTO `box_operation` VALUES ('126', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:45:07', '1');
INSERT INTO `box_operation` VALUES ('127', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:46:57', '1');
INSERT INTO `box_operation` VALUES ('128', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:48:03', '1');
INSERT INTO `box_operation` VALUES ('129', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:50:55', '1');
INSERT INTO `box_operation` VALUES ('130', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:51:42', '1');
INSERT INTO `box_operation` VALUES ('131', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:51:42', '1');
INSERT INTO `box_operation` VALUES ('132', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 14:55:59', '1');
INSERT INTO `box_operation` VALUES ('133', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:00:03', '1');
INSERT INTO `box_operation` VALUES ('134', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:00:39', '1');
INSERT INTO `box_operation` VALUES ('135', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:04:41', '1');
INSERT INTO `box_operation` VALUES ('136', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:31:57', '1');
INSERT INTO `box_operation` VALUES ('137', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:33:31', '1');
INSERT INTO `box_operation` VALUES ('138', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:35:27', '1');
INSERT INTO `box_operation` VALUES ('139', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:35:54', '1');
INSERT INTO `box_operation` VALUES ('140', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:44:16', '1');
INSERT INTO `box_operation` VALUES ('141', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:44:36', '1');
INSERT INTO `box_operation` VALUES ('142', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:44:55', '1');
INSERT INTO `box_operation` VALUES ('143', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:45:16', '1');
INSERT INTO `box_operation` VALUES ('144', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:46:07', '1');
INSERT INTO `box_operation` VALUES ('145', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:46:24', '1');
INSERT INTO `box_operation` VALUES ('146', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:46:42', '1');
INSERT INTO `box_operation` VALUES ('147', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:46:54', '1');
INSERT INTO `box_operation` VALUES ('148', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:47:09', '1');
INSERT INTO `box_operation` VALUES ('149', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:47:59', '1');
INSERT INTO `box_operation` VALUES ('150', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:48:30', '1');
INSERT INTO `box_operation` VALUES ('151', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:49:54', '1');
INSERT INTO `box_operation` VALUES ('152', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:51:44', '1');
INSERT INTO `box_operation` VALUES ('153', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:52:56', '1');
INSERT INTO `box_operation` VALUES ('154', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:53:10', '1');
INSERT INTO `box_operation` VALUES ('155', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:54:36', '1');
INSERT INTO `box_operation` VALUES ('156', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:58:08', '1');
INSERT INTO `box_operation` VALUES ('157', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:58:34', '1');
INSERT INTO `box_operation` VALUES ('158', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 15:59:44', '1');
INSERT INTO `box_operation` VALUES ('159', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:01:58', '1');
INSERT INTO `box_operation` VALUES ('160', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:02:56', '1');
INSERT INTO `box_operation` VALUES ('161', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:03:16', '1');
INSERT INTO `box_operation` VALUES ('162', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:03:36', '1');
INSERT INTO `box_operation` VALUES ('163', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:04:09', '1');
INSERT INTO `box_operation` VALUES ('164', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:04:30', '1');
INSERT INTO `box_operation` VALUES ('165', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:04:40', '1');
INSERT INTO `box_operation` VALUES ('166', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:06:16', '1');
INSERT INTO `box_operation` VALUES ('167', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:06:52', '1');
INSERT INTO `box_operation` VALUES ('168', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:13:02', '1');
INSERT INTO `box_operation` VALUES ('169', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:13:15', '1');
INSERT INTO `box_operation` VALUES ('170', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:13:50', '1');
INSERT INTO `box_operation` VALUES ('171', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:14:37', '1');
INSERT INTO `box_operation` VALUES ('172', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:14:58', '1');
INSERT INTO `box_operation` VALUES ('173', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:15:17', '1');
INSERT INTO `box_operation` VALUES ('174', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:15:56', '1');
INSERT INTO `box_operation` VALUES ('175', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:16:11', '1');
INSERT INTO `box_operation` VALUES ('176', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:18:32', '1');
INSERT INTO `box_operation` VALUES ('177', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:19:12', '1');
INSERT INTO `box_operation` VALUES ('178', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:25:27', '1');
INSERT INTO `box_operation` VALUES ('179', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:25:44', '1');
INSERT INTO `box_operation` VALUES ('180', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:25:59', '1');
INSERT INTO `box_operation` VALUES ('181', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:26:41', '1');
INSERT INTO `box_operation` VALUES ('182', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:27:31', '1');
INSERT INTO `box_operation` VALUES ('183', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:28:10', '1');
INSERT INTO `box_operation` VALUES ('184', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:28:26', '1');
INSERT INTO `box_operation` VALUES ('185', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:29:00', '1');
INSERT INTO `box_operation` VALUES ('186', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:30:15', '1');
INSERT INTO `box_operation` VALUES ('187', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:30:31', '1');
INSERT INTO `box_operation` VALUES ('188', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:31:09', '1');
INSERT INTO `box_operation` VALUES ('189', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:33:24', '1');
INSERT INTO `box_operation` VALUES ('190', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:34:04', '1');
INSERT INTO `box_operation` VALUES ('191', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:34:21', '1');
INSERT INTO `box_operation` VALUES ('192', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:35:13', '1');
INSERT INTO `box_operation` VALUES ('193', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:36:07', '1');
INSERT INTO `box_operation` VALUES ('194', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:36:17', '1');
INSERT INTO `box_operation` VALUES ('195', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:36:28', '1');
INSERT INTO `box_operation` VALUES ('196', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:37:11', '1');
INSERT INTO `box_operation` VALUES ('197', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:37:49', '1');
INSERT INTO `box_operation` VALUES ('198', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:38:44', '1');
INSERT INTO `box_operation` VALUES ('199', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:40:33', '1');
INSERT INTO `box_operation` VALUES ('200', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:41:22', '1');
INSERT INTO `box_operation` VALUES ('201', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:43:48', '1');
INSERT INTO `box_operation` VALUES ('202', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:44:06', '1');
INSERT INTO `box_operation` VALUES ('203', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:44:54', '1');
INSERT INTO `box_operation` VALUES ('204', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:45:36', '1');
INSERT INTO `box_operation` VALUES ('205', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:46:35', '1');
INSERT INTO `box_operation` VALUES ('206', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:52:09', '1');
INSERT INTO `box_operation` VALUES ('207', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:52:10', '1');
INSERT INTO `box_operation` VALUES ('208', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 16:52:37', '1');
INSERT INTO `box_operation` VALUES ('209', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:01:52', '1');
INSERT INTO `box_operation` VALUES ('210', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:02:13', '1');
INSERT INTO `box_operation` VALUES ('211', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:03:13', '1');
INSERT INTO `box_operation` VALUES ('212', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:03:26', '1');
INSERT INTO `box_operation` VALUES ('213', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:17:13', '1');
INSERT INTO `box_operation` VALUES ('214', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:17:32', '1');
INSERT INTO `box_operation` VALUES ('215', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:19:37', '1');
INSERT INTO `box_operation` VALUES ('216', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:19:58', '1');
INSERT INTO `box_operation` VALUES ('217', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:20:51', '1');
INSERT INTO `box_operation` VALUES ('218', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:21:28', '1');
INSERT INTO `box_operation` VALUES ('219', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:24:47', '1');
INSERT INTO `box_operation` VALUES ('220', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:25:02', '1');
INSERT INTO `box_operation` VALUES ('221', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:26:24', '1');
INSERT INTO `box_operation` VALUES ('222', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:27:30', '1');
INSERT INTO `box_operation` VALUES ('223', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:31:36', '1');
INSERT INTO `box_operation` VALUES ('224', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:35:54', '1');
INSERT INTO `box_operation` VALUES ('225', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:48:35', '1');
INSERT INTO `box_operation` VALUES ('226', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 17:55:13', '1');
INSERT INTO `box_operation` VALUES ('227', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:06:42', '1');
INSERT INTO `box_operation` VALUES ('228', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:07:05', '1');
INSERT INTO `box_operation` VALUES ('229', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:08:59', '1');
INSERT INTO `box_operation` VALUES ('230', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:09:50', '1');
INSERT INTO `box_operation` VALUES ('231', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:10:46', '1');
INSERT INTO `box_operation` VALUES ('232', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:12:53', '1');
INSERT INTO `box_operation` VALUES ('233', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:13:48', '1');
INSERT INTO `box_operation` VALUES ('234', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:17:03', '1');
INSERT INTO `box_operation` VALUES ('235', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:21:39', '1');
INSERT INTO `box_operation` VALUES ('236', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:22:12', '1');
INSERT INTO `box_operation` VALUES ('237', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:22:36', '1');
INSERT INTO `box_operation` VALUES ('238', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:25:00', '1');
INSERT INTO `box_operation` VALUES ('239', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:27:31', '1');
INSERT INTO `box_operation` VALUES ('240', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:53:28', '1');
INSERT INTO `box_operation` VALUES ('241', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:58:40', '1');
INSERT INTO `box_operation` VALUES ('242', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 18:59:25', '1');
INSERT INTO `box_operation` VALUES ('243', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:00:51', '1');
INSERT INTO `box_operation` VALUES ('244', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:01:12', '1');
INSERT INTO `box_operation` VALUES ('245', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:02:51', '1');
INSERT INTO `box_operation` VALUES ('246', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:03:14', '1');
INSERT INTO `box_operation` VALUES ('247', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:04:51', '1');
INSERT INTO `box_operation` VALUES ('248', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:05:18', '1');
INSERT INTO `box_operation` VALUES ('249', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:06:56', '1');
INSERT INTO `box_operation` VALUES ('250', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:07:53', '1');
INSERT INTO `box_operation` VALUES ('251', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:08:24', '1');
INSERT INTO `box_operation` VALUES ('252', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:09:16', '1');
INSERT INTO `box_operation` VALUES ('253', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:10:08', '1');
INSERT INTO `box_operation` VALUES ('254', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:11:44', '1');
INSERT INTO `box_operation` VALUES ('255', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:13:23', '1');
INSERT INTO `box_operation` VALUES ('256', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:14:45', '1');
INSERT INTO `box_operation` VALUES ('257', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:14:58', '1');
INSERT INTO `box_operation` VALUES ('258', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:15:13', '1');
INSERT INTO `box_operation` VALUES ('259', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:16:30', '1');
INSERT INTO `box_operation` VALUES ('260', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:16:54', '1');
INSERT INTO `box_operation` VALUES ('261', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:17:18', '1');
INSERT INTO `box_operation` VALUES ('262', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:18:15', '1');
INSERT INTO `box_operation` VALUES ('263', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:19:20', '1');
INSERT INTO `box_operation` VALUES ('264', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:21:41', '1');
INSERT INTO `box_operation` VALUES ('265', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:24:03', '1');
INSERT INTO `box_operation` VALUES ('266', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:24:49', '1');
INSERT INTO `box_operation` VALUES ('267', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:25:08', '1');
INSERT INTO `box_operation` VALUES ('268', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:25:53', '1');
INSERT INTO `box_operation` VALUES ('269', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:28:31', '1');
INSERT INTO `box_operation` VALUES ('270', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:29:09', '1');
INSERT INTO `box_operation` VALUES ('271', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:30:07', '1');
INSERT INTO `box_operation` VALUES ('272', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:30:54', '1');
INSERT INTO `box_operation` VALUES ('273', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:31:01', '1');
INSERT INTO `box_operation` VALUES ('274', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:35:28', '1');
INSERT INTO `box_operation` VALUES ('275', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:38:37', '1');
INSERT INTO `box_operation` VALUES ('276', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:39:22', '1');
INSERT INTO `box_operation` VALUES ('277', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:39:38', '1');
INSERT INTO `box_operation` VALUES ('278', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:41:07', '1');
INSERT INTO `box_operation` VALUES ('279', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:42:17', '1');
INSERT INTO `box_operation` VALUES ('280', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:42:39', '1');
INSERT INTO `box_operation` VALUES ('281', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:44:50', '1');
INSERT INTO `box_operation` VALUES ('282', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:45:03', '1');
INSERT INTO `box_operation` VALUES ('283', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:45:16', '1');
INSERT INTO `box_operation` VALUES ('284', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:48:01', '1');
INSERT INTO `box_operation` VALUES ('285', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:51:56', '1');
INSERT INTO `box_operation` VALUES ('286', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 19:52:17', '1');
INSERT INTO `box_operation` VALUES ('287', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:01:28', '1');
INSERT INTO `box_operation` VALUES ('288', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:01:36', '1');
INSERT INTO `box_operation` VALUES ('289', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:02:30', '1');
INSERT INTO `box_operation` VALUES ('290', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:02:55', '1');
INSERT INTO `box_operation` VALUES ('291', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:03:47', '1');
INSERT INTO `box_operation` VALUES ('292', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:05:41', '1');
INSERT INTO `box_operation` VALUES ('293', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:07:46', '1');
INSERT INTO `box_operation` VALUES ('294', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:08:28', '1');
INSERT INTO `box_operation` VALUES ('295', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:08:42', '1');
INSERT INTO `box_operation` VALUES ('296', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:08:55', '1');
INSERT INTO `box_operation` VALUES ('297', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:10:24', '1');
INSERT INTO `box_operation` VALUES ('298', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:10:29', '1');
INSERT INTO `box_operation` VALUES ('299', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:11:20', '1');
INSERT INTO `box_operation` VALUES ('300', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:11:50', '1');
INSERT INTO `box_operation` VALUES ('301', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:12:27', '1');
INSERT INTO `box_operation` VALUES ('302', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:13:10', '1');
INSERT INTO `box_operation` VALUES ('303', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:13:39', '1');
INSERT INTO `box_operation` VALUES ('304', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:13:59', '1');
INSERT INTO `box_operation` VALUES ('305', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:14:12', '1');
INSERT INTO `box_operation` VALUES ('306', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:16:46', '1');
INSERT INTO `box_operation` VALUES ('307', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:17:36', '1');
INSERT INTO `box_operation` VALUES ('308', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:18:48', '1');
INSERT INTO `box_operation` VALUES ('309', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:19:04', '1');
INSERT INTO `box_operation` VALUES ('310', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:20:49', '1');
INSERT INTO `box_operation` VALUES ('311', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:22:36', '1');
INSERT INTO `box_operation` VALUES ('312', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:23:31', '1');
INSERT INTO `box_operation` VALUES ('313', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:23:54', '1');
INSERT INTO `box_operation` VALUES ('314', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:24:36', '1');
INSERT INTO `box_operation` VALUES ('315', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:25:13', '1');
INSERT INTO `box_operation` VALUES ('316', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:25:59', '1');
INSERT INTO `box_operation` VALUES ('317', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:26:52', '1');
INSERT INTO `box_operation` VALUES ('318', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:27:12', '1');
INSERT INTO `box_operation` VALUES ('319', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:27:41', '1');
INSERT INTO `box_operation` VALUES ('320', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:29:28', '1');
INSERT INTO `box_operation` VALUES ('321', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:29:53', '1');
INSERT INTO `box_operation` VALUES ('322', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:30:28', '1');
INSERT INTO `box_operation` VALUES ('323', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:30:55', '1');
INSERT INTO `box_operation` VALUES ('324', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:47:19', '1');
INSERT INTO `box_operation` VALUES ('325', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:47:57', '1');
INSERT INTO `box_operation` VALUES ('326', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:48:42', '1');
INSERT INTO `box_operation` VALUES ('327', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-25 20:59:15', '1');
INSERT INTO `box_operation` VALUES ('328', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 09:58:17', '1');
INSERT INTO `box_operation` VALUES ('329', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 09:59:00', '1');
INSERT INTO `box_operation` VALUES ('330', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 12:22:28', '1');
INSERT INTO `box_operation` VALUES ('331', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 12:24:43', '1');
INSERT INTO `box_operation` VALUES ('332', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 12:27:22', '1');
INSERT INTO `box_operation` VALUES ('333', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 12:28:44', '1');
INSERT INTO `box_operation` VALUES ('334', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 12:30:07', '1');
INSERT INTO `box_operation` VALUES ('335', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 12:30:50', '1');
INSERT INTO `box_operation` VALUES ('336', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 12:31:53', '1');
INSERT INTO `box_operation` VALUES ('337', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 14:46:47', '1');
INSERT INTO `box_operation` VALUES ('338', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 14:51:08', '1');
INSERT INTO `box_operation` VALUES ('339', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 14:57:05', '1');
INSERT INTO `box_operation` VALUES ('340', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 14:58:05', '1');
INSERT INTO `box_operation` VALUES ('341', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 14:58:13', '1');
INSERT INTO `box_operation` VALUES ('342', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 14:59:11', '1');
INSERT INTO `box_operation` VALUES ('343', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 14:59:13', '1');
INSERT INTO `box_operation` VALUES ('344', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:00:10', '1');
INSERT INTO `box_operation` VALUES ('345', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:01:15', '1');
INSERT INTO `box_operation` VALUES ('346', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:01:18', '1');
INSERT INTO `box_operation` VALUES ('347', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:03:08', '1');
INSERT INTO `box_operation` VALUES ('348', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:03:42', '1');
INSERT INTO `box_operation` VALUES ('349', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:05:17', '1');
INSERT INTO `box_operation` VALUES ('350', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:05:51', '1');
INSERT INTO `box_operation` VALUES ('351', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:11:30', '1');
INSERT INTO `box_operation` VALUES ('352', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:11:57', '1');
INSERT INTO `box_operation` VALUES ('353', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:14:34', '1');
INSERT INTO `box_operation` VALUES ('354', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:15:46', '1');
INSERT INTO `box_operation` VALUES ('355', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:18:01', '1');
INSERT INTO `box_operation` VALUES ('356', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:18:57', '1');
INSERT INTO `box_operation` VALUES ('357', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:19:15', '1');
INSERT INTO `box_operation` VALUES ('358', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:19:52', '1');
INSERT INTO `box_operation` VALUES ('359', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:21:12', '1');
INSERT INTO `box_operation` VALUES ('360', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:21:55', '1');
INSERT INTO `box_operation` VALUES ('361', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:22:36', '1');
INSERT INTO `box_operation` VALUES ('362', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:24:33', '1');
INSERT INTO `box_operation` VALUES ('363', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:24:53', '1');
INSERT INTO `box_operation` VALUES ('364', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:25:01', '1');
INSERT INTO `box_operation` VALUES ('365', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:28:09', '1');
INSERT INTO `box_operation` VALUES ('366', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:28:55', '1');
INSERT INTO `box_operation` VALUES ('367', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:29:31', '1');
INSERT INTO `box_operation` VALUES ('368', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:30:37', '1');
INSERT INTO `box_operation` VALUES ('369', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:31:38', '1');
INSERT INTO `box_operation` VALUES ('370', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:36:29', '1');
INSERT INTO `box_operation` VALUES ('371', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:44:08', '1');
INSERT INTO `box_operation` VALUES ('372', '导航操作', 'Nav/add', '添加导航,导航名为１２３', '2017-12-26 15:44:39', '1');
INSERT INTO `box_operation` VALUES ('373', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:45:10', '1');
INSERT INTO `box_operation` VALUES ('374', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:46:20', '1');
INSERT INTO `box_operation` VALUES ('375', '导航操作', 'Nav/add', '添加导航,导航名为123', '2017-12-26 15:46:31', '1');
INSERT INTO `box_operation` VALUES ('376', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:47:33', '1');
INSERT INTO `box_operation` VALUES ('377', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:48:17', '1');
INSERT INTO `box_operation` VALUES ('378', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 15:49:14', '1');
INSERT INTO `box_operation` VALUES ('379', '导航操作', 'Nav/add', '添加导航,导航名为此时', '2017-12-26 15:49:43', '1');
INSERT INTO `box_operation` VALUES ('380', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:05:55', '1');
INSERT INTO `box_operation` VALUES ('381', '导航操作', 'Nav/add', '添加导航,导航名为PP', '2017-12-26 16:06:09', '1');
INSERT INTO `box_operation` VALUES ('382', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:18:37', '1');
INSERT INTO `box_operation` VALUES ('383', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:36:31', '1');
INSERT INTO `box_operation` VALUES ('384', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:45:21', '1');
INSERT INTO `box_operation` VALUES ('385', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:47:00', '1');
INSERT INTO `box_operation` VALUES ('386', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:47:14', '1');
INSERT INTO `box_operation` VALUES ('387', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:48:26', '1');
INSERT INTO `box_operation` VALUES ('388', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:49:26', '1');
INSERT INTO `box_operation` VALUES ('389', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:49:51', '1');
INSERT INTO `box_operation` VALUES ('390', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:50:04', '1');
INSERT INTO `box_operation` VALUES ('391', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:50:37', '1');
INSERT INTO `box_operation` VALUES ('392', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:55:24', '1');
INSERT INTO `box_operation` VALUES ('393', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:56:06', '1');
INSERT INTO `box_operation` VALUES ('394', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:58:51', '1');
INSERT INTO `box_operation` VALUES ('395', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:59:21', '1');
INSERT INTO `box_operation` VALUES ('396', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 16:59:52', '1');
INSERT INTO `box_operation` VALUES ('397', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 17:03:43', '1');
INSERT INTO `box_operation` VALUES ('398', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 17:04:09', '1');
INSERT INTO `box_operation` VALUES ('399', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 17:06:32', '1');
INSERT INTO `box_operation` VALUES ('400', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 17:08:48', '1');
INSERT INTO `box_operation` VALUES ('401', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 17:10:42', '1');
INSERT INTO `box_operation` VALUES ('402', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 17:11:27', '1');
INSERT INTO `box_operation` VALUES ('403', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 17:11:41', '1');
INSERT INTO `box_operation` VALUES ('404', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-26 17:12:03', '1');
INSERT INTO `box_operation` VALUES ('405', '导航操作', 'Nav/add', '添加导航,导航名为打算', '2017-12-27 10:58:20', '1');
INSERT INTO `box_operation` VALUES ('406', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 11:43:42', '1');
INSERT INTO `box_operation` VALUES ('407', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 11:48:17', '1');
INSERT INTO `box_operation` VALUES ('408', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 11:54:02', '1');
INSERT INTO `box_operation` VALUES ('409', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 11:55:04', '1');
INSERT INTO `box_operation` VALUES ('410', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 11:55:36', '1');
INSERT INTO `box_operation` VALUES ('411', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 11:56:47', '1');
INSERT INTO `box_operation` VALUES ('412', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 11:58:52', '1');
INSERT INTO `box_operation` VALUES ('413', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 11:59:03', '1');
INSERT INTO `box_operation` VALUES ('414', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 11:59:22', '1');
INSERT INTO `box_operation` VALUES ('415', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 12:00:47', '1');
INSERT INTO `box_operation` VALUES ('416', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 12:03:53', '1');
INSERT INTO `box_operation` VALUES ('417', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 14:16:59', '1');
INSERT INTO `box_operation` VALUES ('418', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 14:17:57', '1');
INSERT INTO `box_operation` VALUES ('419', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 14:45:09', '1');
INSERT INTO `box_operation` VALUES ('420', '更新缓存操作', 'Common/clearcache', '后台更新缓存', '2017-12-27 14:49:30', '1');
INSERT INTO `box_operation` VALUES ('421', '导航操作', 'Nav/editajax', '修改导航状态,操作成功!,导航id为38', '2017-12-27 17:53:06', '1');
INSERT INTO `box_operation` VALUES ('422', '导航操作', 'Nav/editajax', '修改导航状态,操作成功!,导航id为38', '2017-12-27 17:54:06', '1');
INSERT INTO `box_operation` VALUES ('423', '导航操作', 'Nav/add', '添加导航,操作成功!,导航名为测试', '2017-12-27 18:09:14', '1');
INSERT INTO `box_operation` VALUES ('424', '导航操作', 'Nav/add', '添加导航,操作成功!,导航名为1', '2017-12-27 19:41:25', '1');
INSERT INTO `box_operation` VALUES ('425', '导航操作', 'Nav/add', '添加导航,操作成功!,导航名为2', '2017-12-27 19:44:25', '1');
INSERT INTO `box_operation` VALUES ('426', '导航操作', 'Nav/add', '添加导航,操作成功!,导航名为', '2017-12-27 19:44:50', '1');
INSERT INTO `box_operation` VALUES ('427', '导航操作', 'Nav/add', '添加导航,操作成功!,导航名为3', '2017-12-27 20:09:54', '1');
INSERT INTO `box_operation` VALUES ('428', '导航操作', 'Nav/edit', '添加导航失败,导航名为2', '2017-12-27 20:11:49', '1');
INSERT INTO `box_operation` VALUES ('429', '导航操作', 'Nav/add', '添加导航,操作成功!,导航名为3', '2017-12-27 20:13:20', '1');
INSERT INTO `box_operation` VALUES ('430', '导航操作', 'Nav/edit', '修改导航,导航id为50', '2017-12-27 20:14:45', '1');
INSERT INTO `box_operation` VALUES ('431', '导航操作', 'Nav/add', '添加导航,操作成功!,导航名为33', '2017-12-27 20:14:59', '1');
INSERT INTO `box_operation` VALUES ('432', '导航操作', 'Nav/edit', '修改导航,导航id为51', '2017-12-27 20:15:14', '1');
INSERT INTO `box_operation` VALUES ('433', '导航操作', 'Nav/edit', '修改导航,导航id为51', '2017-12-27 20:17:41', '1');
INSERT INTO `box_operation` VALUES ('434', '导航操作', 'Nav/edit', '修改导航,导航id为51', '2017-12-27 20:18:41', '1');
INSERT INTO `box_operation` VALUES ('435', '导航操作', 'Nav/edit', '修改导航,导航id为51', '2017-12-27 20:19:18', '1');
INSERT INTO `box_operation` VALUES ('436', '导航操作', 'Nav/edit', '修改导航,导航id为51', '2017-12-27 20:19:45', '1');
INSERT INTO `box_operation` VALUES ('437', '导航操作', 'Nav/edit', '修改导航,导航id为51', '2017-12-27 20:20:01', '1');
INSERT INTO `box_operation` VALUES ('438', '导航操作', 'Nav/edit', '修改导航,导航id为51', '2017-12-27 20:20:10', '1');
INSERT INTO `box_operation` VALUES ('439', '导航操作', 'Nav/edit', '修改导航,导航id为51', '2017-12-27 20:20:41', '1');
INSERT INTO `box_operation` VALUES ('440', '导航操作', 'Nav/edit', '修改导航,导航id为51', '2017-12-27 20:21:52', '1');
INSERT INTO `box_operation` VALUES ('441', '导航操作', 'Nav/edit', '修改导航,导航id为51', '2017-12-27 20:22:05', '1');
INSERT INTO `box_operation` VALUES ('442', '导航操作', 'Nav/edit', '修改导航,导航id为51', '2017-12-27 20:22:45', '1');
INSERT INTO `box_operation` VALUES ('443', '导航操作', 'Nav/edit', '修改导航,导航id为51', '2017-12-27 20:23:58', '1');
INSERT INTO `box_operation` VALUES ('444', '导航操作', 'Nav/add', '添加导航,操作成功!,导航名为7', '2017-12-27 20:24:23', '1');
INSERT INTO `box_operation` VALUES ('445', '导航操作', 'Nav/edit', '修改导航,导航id为52', '2017-12-27 20:25:07', '1');
INSERT INTO `box_operation` VALUES ('446', '导航操作', 'Nav/edit', '修改导航,导航id为52', '2017-12-27 20:25:16', '1');
INSERT INTO `box_operation` VALUES ('447', '导航操作', 'Nav/add', '添加导航,操作成功!,导航名为12', '2017-12-27 20:26:16', '1');
INSERT INTO `box_operation` VALUES ('448', '导航操作', 'Nav/edit', '修改导航,导航id为53', '2017-12-27 20:27:26', '1');
INSERT INTO `box_operation` VALUES ('449', '导航操作', 'Nav/edit', '修改导航,导航id为53', '2017-12-27 20:27:55', '1');
INSERT INTO `box_operation` VALUES ('450', '导航操作', 'Nav/edit', '修改导航,导航id为53', '2017-12-27 20:29:17', '1');
INSERT INTO `box_operation` VALUES ('451', '导航操作', 'Nav/add', '添加导航,操作成功!,导航名为1', '2017-12-27 20:29:49', '1');
INSERT INTO `box_operation` VALUES ('452', '导航操作', 'Nav/add', '添加导航,操作成功!,导航名为test', '2017-12-27 20:29:59', '1');
INSERT INTO `box_operation` VALUES ('453', '导航操作', 'Nav/edit', '修改导航,导航id为55', '2017-12-27 20:30:55', '1');
INSERT INTO `box_operation` VALUES ('454', '导航操作', 'Nav/edit', '导航不存在,参数id错误', '2017-12-27 20:31:35', '1');

-- ----------------------------
-- Table structure for box_version
-- ----------------------------
DROP TABLE IF EXISTS `box_version`;
CREATE TABLE `box_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version_start` varchar(255) DEFAULT '1.0' COMMENT '版本号-前缀',
  `version_end` int(11) DEFAULT '123456' COMMENT '版本号-前缀',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='版本号表';

-- ----------------------------
-- Records of box_version
-- ----------------------------
INSERT INTO `box_version` VALUES ('1', '1.1', '1514357370', '2017-12-19 11:09:02', '2017-12-19 11:09:04');
