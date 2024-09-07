/*
Navicat MySQL Data Transfer

Source Server         : 45.194.37.38_3306
Source Server Version : 50744
Source Host           : 45.194.37.38:3306
Source Database       : site

Target Server Type    : MYSQL
Target Server Version : 50744
File Encoding         : 65001

Date: 2024-09-07 11:51:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('3', 'admin', 'b1a5f73e35932ef9c7d437f7f898a5a3');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '拥有者id',
  `friend_uid` int(11) NOT NULL COMMENT '好友id',
  `remark` char(255) NOT NULL DEFAULT '' COMMENT '好友备注',
  `state` enum('chatting','hidden') NOT NULL DEFAULT 'hidden' COMMENT '状态 chatting:在会话列表中 hidden:不在会话列表中',
  `last_read_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次读消息的时间',
  `last_mid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上一条消息的mid',
  `unread_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '未读消息数',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `key` (`uid`,`friend_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('229', '29', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('230', '1', '29', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('231', '30', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('232', '1', '30', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('233', '30', '29', 'adminaa', 'chatting', '1595507764', '1380', '1');
INSERT INTO `friend` VALUES ('234', '29', '30', '', 'chatting', '1595764318', '1380', '0');
INSERT INTO `friend` VALUES ('235', '36', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('236', '1', '36', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('237', '37', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('238', '1', '37', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('239', '40', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('240', '1', '40', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('241', '48', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('242', '1', '48', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('243', '49', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('244', '1', '49', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('245', '50', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('246', '1', '50', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('247', '48', '50', '', 'chatting', '1595584301', '1376', '0');
INSERT INTO `friend` VALUES ('248', '50', '48', '', 'chatting', '1595588852', '1376', '0');
INSERT INTO `friend` VALUES ('249', '53', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('250', '1', '53', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('251', '54', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('252', '1', '54', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('253', '55', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('254', '1', '55', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('255', '54', '55', '', 'chatting', '1595583711', '1378', '0');
INSERT INTO `friend` VALUES ('256', '55', '54', '', 'chatting', '1595575037', '1378', '2');
INSERT INTO `friend` VALUES ('257', '58', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('258', '1', '58', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('259', '59', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('260', '1', '59', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('261', '60', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('262', '1', '60', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('263', '57', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('264', '1', '57', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('265', '61', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('266', '1', '61', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('267', '62', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('268', '1', '62', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('269', '63', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('270', '1', '63', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('271', '64', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('272', '1', '64', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('273', '65', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('274', '1', '65', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('275', '68', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('276', '1', '68', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('277', '68', '64', '', 'chatting', '1596100080', '1386', '0');
INSERT INTO `friend` VALUES ('278', '64', '68', '', 'chatting', '1596099867', '1386', '0');
INSERT INTO `friend` VALUES ('279', '70', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('280', '1', '70', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('281', '71', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('282', '1', '71', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('283', '70', '71', '', 'chatting', '1596172410', '1393', '0');
INSERT INTO `friend` VALUES ('284', '71', '70', '17773589991', 'chatting', '1596172568', '1393', '0');
INSERT INTO `friend` VALUES ('285', '72', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('286', '1', '72', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('287', '73', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('288', '1', '73', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('289', '75', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('290', '1', '75', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('291', '79', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('292', '1', '79', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('293', '84', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('294', '1', '84', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('295', '85', '1', '', 'hidden', '0', '0', '0');
INSERT INTO `friend` VALUES ('296', '1', '85', '', 'hidden', '0', '0', '0');

-- ----------------------------
-- Table structure for group_member
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL COMMENT '群id',
  `uid` int(11) NOT NULL COMMENT '成员id',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `state` enum('chatting','hidden') NOT NULL DEFAULT 'hidden' COMMENT ' 状态 chatting:在会话列表中 hidden:不在会话列表中',
  `last_read_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次读消息的时间',
  `forbidden` int(11) NOT NULL DEFAULT '0' COMMENT '禁言时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gid-uid` (`gid`,`uid`),
  KEY `uid-state` (`uid`,`state`),
  KEY `gid-state` (`gid`,`state`)
) ENGINE=MyISAM AUTO_INCREMENT=260 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_member
-- ----------------------------
INSERT INTO `group_member` VALUES ('256', '74', '50', '', 'chatting', '1595610178', '0');
INSERT INTO `group_member` VALUES ('257', '74', '48', '', 'chatting', '1595578014', '0');
INSERT INTO `group_member` VALUES ('258', '75', '54', '', 'chatting', '1595584098', '0');
INSERT INTO `group_member` VALUES ('259', '75', '55', '', 'chatting', '1595575446', '0');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) NOT NULL COMMENT '群名称',
  `uid` int(11) NOT NULL COMMENT '拥有者id',
  `avatar` varchar(100) NOT NULL COMMENT '群头像',
  `state` enum('normal','disabled') DEFAULT 'normal' COMMENT 'normal：表示正常；disabled：表示解散',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`gid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('75', '交流群', '54', '/avatar.php?uid=54,55', 'normal', '1595575053');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `from` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '发起者uid/group_id',
  `to` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '接收者id，根据type不同，可能是用户uid，可能是群组id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '具体的消息数据',
  `type` enum('friend','group') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '消息类型，好友数据或群组数据',
  `sub_type` enum('message','notice') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'message' COMMENT '子类型',
  `timestamp` int(11) unsigned NOT NULL COMMENT '消息时间戳',
  PRIMARY KEY (`mid`),
  KEY `timestamp` (`timestamp`),
  KEY `from-type-subtype` (`from`,`type`,`sub_type`),
  KEY `to-type-subtype` (`to`,`type`,`sub_type`)
) ENGINE=MyISAM AUTO_INCREMENT=1394 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1347', '29', '30', '我通过了你的好友请求，我们来聊天吧', 'friend', 'message', '1595482681');
INSERT INTO `message` VALUES ('1348', '29', '30', '121212', 'friend', 'message', '1595482688');
INSERT INTO `message` VALUES ('1349', '29', '30', '2121', 'friend', 'message', '1595482691');
INSERT INTO `message` VALUES ('1350', '29', '30', '21212', 'friend', 'message', '1595482693');
INSERT INTO `message` VALUES ('1351', '29', '30', '121212', 'friend', 'message', '1595482696');
INSERT INTO `message` VALUES ('1352', '30', '29', '你好', 'friend', 'message', '1595498157');
INSERT INTO `message` VALUES ('1353', '30', '29', '此消息已撤回', 'friend', 'notice', '1595498249');
INSERT INTO `message` VALUES ('1354', '30', '29', '此消息已撤回', 'friend', 'notice', '1595498274');
INSERT INTO `message` VALUES ('1355', '30', '29', 'voice(//uub.zgshiyou.com/upload/files/202007/235f195f49ee50.wav)', 'friend', 'message', '1595498313');
INSERT INTO `message` VALUES ('1356', '1', '48', '欢迎登录,有事请直接发消息给我,,如果没有及时回复请加唯一QQ_26333 16644 您本次的访问IP : 183.22.253.225', 'friend', 'message', '0');
INSERT INTO `message` VALUES ('1357', '1', '48', '欢迎登录,有事请直接发消息给我,,如果没有及时回复请加唯一QQ_26333 16644 您本次的访问IP : 183.22.253.225', 'friend', 'message', '0');
INSERT INTO `message` VALUES ('1358', '1', '30', '欢迎登录,有事请直接发消息给我,,如果没有及时回复请加唯一QQ_26333 16644 您本次的访问IP : 183.22.253.225', 'friend', 'message', '0');
INSERT INTO `message` VALUES ('1359', '50', '48', '我通过了你的好友请求，我们来聊天吧', 'friend', 'message', '1595523540');
INSERT INTO `message` VALUES ('1360', '48', '50', '121212', 'friend', 'message', '1595523546');
INSERT INTO `message` VALUES ('1361', '50', '48', '[表情0]', 'friend', 'message', '1595523548');
INSERT INTO `message` VALUES ('1362', '48', '50', 'voice(//uub.zgshiyou.com/upload/files/202007/245f19c1dfbd28.wav)', 'friend', 'message', '1595523551');
INSERT INTO `message` VALUES ('1363', '50', '74', '[一桶金]({POPBASEURI}user/detail/50) 邀请 [GOODSSO]({POPBASEURI}user/detail/48) 加入了群聊', 'group', 'notice', '1595523600');
INSERT INTO `message` VALUES ('1364', '50', '74', '好给你', 'group', 'message', '1595523608');
INSERT INTO `message` VALUES ('1365', '48', '74', '[表情3]', 'group', 'message', '1595523624');
INSERT INTO `message` VALUES ('1366', '50', '74', '[表情0]', 'group', 'message', '1595523649');
INSERT INTO `message` VALUES ('1367', '48', '74', '![图片](//uub.zgshiyou.com/upload/images/202007/245f19c4281275.png)', 'group', 'message', '1595524136');
INSERT INTO `message` VALUES ('1368', '50', '74', 'uu', 'group', 'message', '1595524358');
INSERT INTO `message` VALUES ('1369', '50', '74', 'voice(//uub.zgshiyou.com/upload/files/202007/245f19c50eb230.wav)', 'group', 'message', '1595524366');
INSERT INTO `message` VALUES ('1370', '55', '54', '我通过了你的好友请求，我们来聊天吧', 'friend', 'message', '1595575037');
INSERT INTO `message` VALUES ('1371', '54', '75', '[zjs1989]({POPBASEURI}user/detail/54) 邀请 [aa1212]({POPBASEURI}user/detail/55) 加入了群聊', 'group', 'notice', '1595575053');
INSERT INTO `message` VALUES ('1372', '54', '75', '你们好', 'group', 'message', '1595575082');
INSERT INTO `message` VALUES ('1373', '48', '50', '3232', 'friend', 'message', '1595577302');
INSERT INTO `message` VALUES ('1374', '48', '50', '[表情1][表情2][表情3][表情24]', 'friend', 'message', '1595577309');
INSERT INTO `message` VALUES ('1375', '48', '74', 'ppppp', 'group', 'message', '1595577409');
INSERT INTO `message` VALUES ('1376', '48', '50', '*湿答答', 'friend', 'message', '1595577815');
INSERT INTO `message` VALUES ('1377', '54', '55', '114', 'friend', 'message', '1595581615');
INSERT INTO `message` VALUES ('1378', '54', '55', '在吗', 'friend', 'message', '1595583673');
INSERT INTO `message` VALUES ('1379', '50', '74', 'voice(//uub.zgshiyou.com/upload/files/202007/255f1b144032c0.wav)', 'group', 'message', '1595610176');
INSERT INTO `message` VALUES ('1380', '29', '30', '你好', 'friend', 'message', '1595764314');
INSERT INTO `message` VALUES ('1381', '64', '68', '我通过了你的好友请求，我们来聊天吧', 'friend', 'message', '1596099605');
INSERT INTO `message` VALUES ('1382', '64', '68', '你好', 'friend', 'message', '1596099688');
INSERT INTO `message` VALUES ('1383', '64', '68', '你好', 'friend', 'message', '1596099697');
INSERT INTO `message` VALUES ('1384', '68', '64', '1', 'friend', 'message', '1596099710');
INSERT INTO `message` VALUES ('1385', '68', '64', '1', 'friend', 'message', '1596099717');
INSERT INTO `message` VALUES ('1386', '64', '68', '1', 'friend', 'message', '1596099870');
INSERT INTO `message` VALUES ('1387', '71', '70', '我通过了你的好友请求，我们来聊天吧', 'friend', 'message', '1596172246');
INSERT INTO `message` VALUES ('1388', '71', '70', '121212', 'friend', 'message', '1596172260');
INSERT INTO `message` VALUES ('1389', '71', '70', 'qweqq ', 'friend', 'message', '1596172263');
INSERT INTO `message` VALUES ('1390', '71', '70', 'nihao', 'friend', 'message', '1596172268');
INSERT INTO `message` VALUES ('1391', '70', '71', 'good', 'friend', 'message', '1596172280');
INSERT INTO `message` VALUES ('1392', '71', '70', '[表情1]', 'friend', 'message', '1596172295');
INSERT INTO `message` VALUES ('1393', '70', '71', '![图片](//uub.zgshiyou.com/upload/images/202007/315f23a832da62.png)', 'friend', 'message', '1596172338');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL COMMENT '好友id 或 群主id',
  `type` enum('add_friend','join_group') NOT NULL COMMENT '消息类型加好友或者群组',
  `data` text COMMENT '相关数据',
  `operation` enum('not_operated','refuse','agree') NOT NULL DEFAULT 'not_operated' COMMENT '未操作,拒绝,同意',
  `timestamp` int(13) NOT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `to-from-type` (`to`,`from`,`type`),
  KEY `to-operation` (`to`,`operation`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('144', '30', '29', 'add_friend', '{\"postscript\":\"\\u6211\\u662f123456\"}', 'agree', '1595482370');
INSERT INTO `notice` VALUES ('145', '48', '50', 'add_friend', '{\"postscript\":\"\\u6211\\u662fGOODSSO\"}', 'agree', '1595523535');
INSERT INTO `notice` VALUES ('146', '40', '30', 'add_friend', '{\"postscript\":\"\\u6211\\u662f13333333333\"}', 'not_operated', '1595560241');
INSERT INTO `notice` VALUES ('147', '54', '55', 'add_friend', '{\"postscript\":\"\\u6211\\u662fzjs1989\"}', 'agree', '1595575023');
INSERT INTO `notice` VALUES ('148', '68', '64', 'add_friend', '{\"postscript\":\"\\u6211\\u662fTTtaohua\"}', 'agree', '1596099575');
INSERT INTO `notice` VALUES ('149', '70', '67', 'add_friend', '{\"postscript\":\"\\u6211\\u662f17773589999\"}', 'not_operated', '1596170703');
INSERT INTO `notice` VALUES ('150', '70', '71', 'add_friend', '{\"postscript\":\"\\u6211\\u662f17773589999\"}', 'agree', '1596172242');
INSERT INTO `notice` VALUES ('151', '84', '82', 'add_friend', '{\"postscript\":\"\\u6211\\u662f17773584219\"}', 'not_operated', '1596294234');

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voice` enum('on','off') DEFAULT 'off' COMMENT '是否开启发送语音',
  `audio` enum('on','off') DEFAULT 'off' COMMENT '是否开启语音实时聊天',
  `video` enum('on','off') DEFAULT 'off' COMMENT '是否开启视频实时聊天',
  `prompt_tone` enum('on','off') DEFAULT 'on' COMMENT '是否开启提示音',
  `group_chat` enum('on','off') DEFAULT 'on' COMMENT '是否开启群聊',
  `private_chat` enum('on','off') DEFAULT 'on' COMMENT '是否开启私聊',
  `add_friend` enum('on','off') DEFAULT 'on' COMMENT '是否允许加好友',
  `create_group` enum('on','off') DEFAULT 'on' COMMENT '是否允许创建群组',
  `upload_file` enum('on','off') DEFAULT 'on' COMMENT '是否允许上传文件',
  `upload_img` enum('on','off') DEFAULT 'on' COMMENT '是否允许上传图片',
  `emoji` enum('on','off') DEFAULT 'on' COMMENT '是否允许发表情',
  `dirty_words` mediumtext COMMENT '过滤这些脏字，逗号分隔',
  `stranger_chat` enum('on','off') DEFAULT 'on' COMMENT '是否允许非好友聊天',
  `appkey` varchar(255) DEFAULT '' COMMENT '与pop-socket通讯的appkey',
  `ws_address` varchar(255) DEFAULT '' COMMENT '与pop-socket通讯的ws地址',
  `appsecret` varchar(255) DEFAULT '' COMMENT '与pop-socket通讯的appsecret',
  `api_address` varchar(255) DEFAULT '' COMMENT '与pop-socket通讯的api地址',
  `gf_url` varchar(255) NOT NULL COMMENT '模块URL',
  `gf_name` varchar(50) NOT NULL COMMENT '模块名称',
  `gf_img` text NOT NULL COMMENT '模块图片地址',
  `gf_text1` varchar(50) NOT NULL COMMENT '描述1',
  `gf_text2` varchar(50) NOT NULL COMMENT '描述2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('3', 'on', 'off', 'off', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '妈\n', 'on', '5f88825c28c56763eb0d8b270646e4b1', 'wss://uub.zgshiyou.com:443', 'a2a906fe997867135886e5c4f62b03d2', 'http://127.0.0.1:2060', 'https://www.baidu.com/img/dong_66cae51456b9983a890610875e89183c.gif', '官方', 'https://uub.zgshiyou.com/icon.png', '系统通知', '企业认证证书');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录名',
  `nickname` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `avatar` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `sign` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '个性签名',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `state` enum('offline','online') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'offline' COMMENT 'offline: 离线 ,online : 在线',
  `logout_timestamp` int(11) NOT NULL COMMENT '离线时间',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `account_state` enum('normal','disabled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '账户状态',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('85', '17773584200', '17773584200', '/static/avatar.jpg', '', '9dac764af5a368638bd37850e7d60938', 'offline', '0', '1596299507', 'normal');
INSERT INTO `user` VALUES ('84', '17773584219', '17773584219', '/static/avatar.jpg', '12121', '49f01268504efaef12dae66db05a0e49', 'offline', '0', '1596294207', 'normal');
INSERT INTO `user` VALUES ('83', '17773594218', '17773594218', '/static/avatar.jpg', '', 'b5ac9ac2d86142aab20e9e136d98076f', 'offline', '0', '1596294189', 'normal');
INSERT INTO `user` VALUES ('82', '17773584218', '17773584218', '/static/avatar.jpg', '', '0bb9fc760216938056c9150f244a9706', 'offline', '0', '1596294167', 'normal');
INSERT INTO `user` VALUES ('81', '17109376400', '大哥', '/static/avatar.jpg', '', 'dd42a36498cdf070547efe27e14462a2', 'offline', '0', '1596269385', 'normal');
INSERT INTO `user` VALUES ('80', '17109376401', 'TT', '/static/avatar.jpg', '', '3ff9d88e779c8d123205a2765b266c58', 'offline', '0', '1596269215', 'normal');
INSERT INTO `user` VALUES ('79', '13139185332', 'kuck', '/static/avatar.jpg', '', '53fedc8ccdd8b0ec8bf492e3e1c80246', 'offline', '0', '1596253774', 'normal');
INSERT INTO `user` VALUES ('78', '17773594212', '17773594212', '/static/avatar.jpg', '', 'df043175e96b17c0394f2fa67a6328c5', 'offline', '0', '1596182263', 'normal');
INSERT INTO `user` VALUES ('77', '13334344545', '13334344545', '/static/avatar.jpg', '', 'c8f0cee709476bb420ade164fb4623b0', 'offline', '0', '1596181160', 'normal');
INSERT INTO `user` VALUES ('76', '17778788787', '17778788787', '/static/avatar.jpg', '', '3436c2b1ffbf2a7d9360090408cff464', 'offline', '0', '1596181087', 'normal');
INSERT INTO `user` VALUES ('75', '17778988765', 'i i', '/static/avatar.jpg', 'nick', '197da8ced2b4f8a004ef4ca7bcb27508', 'offline', '0', '1596174832', 'normal');
INSERT INTO `user` VALUES ('74', '16865446785', '16865446785', '/static/avatar.jpg', '', 'cd57d8577de8d7f335a49dfdf6c09e87', 'offline', '0', '1596174799', 'normal');
INSERT INTO `user` VALUES ('73', '17735689658', '17735689658', '/static/avatar.jpg', '', '9d86763cbbf10f15531cb66484c3ab4c', 'offline', '0', '1596174652', 'normal');
INSERT INTO `user` VALUES ('72', '17773581111', '17773581111', '//uub.zgshiyou.com/upload/avatars/72/72/315f23a9929d20.png', '', 'b771d7eb730dd2bcc5e93c5a9c31dd02', 'offline', '0', '1596172664', 'normal');
INSERT INTO `user` VALUES ('71', '18878909877', '18878909877', '/static/avatar.jpg', '', '6b21f0314bb5c030430c1fb2e2da1235', 'offline', '0', '1596172157', 'normal');
INSERT INTO `user` VALUES ('70', '17773589999', 'lwk', '//uub.zgshiyou.com/upload/avatars/70/70/315f23a8ef206f.png', '1212', 'cffd45d818fbc40465434fc55dc5c0ca', 'offline', '0', '1596169094', 'normal');
INSERT INTO `user` VALUES ('68', '17109294263', 'TTtaohua', '/static/avatar.jpg', '', '21d49435bbcd054ee6dfdfdc8ef17426', 'offline', '0', '1596012810', 'normal');
INSERT INTO `user` VALUES ('69', '17773588888', '17773588888', '/static/avatar.jpg', '', '14c57bca984c6232188e7c0bb79855d1', 'offline', '0', '1596169059', 'normal');
INSERT INTO `user` VALUES ('62', '18276881118', '一桶金', '/static/avatar.jpg', '', 'b23f3e33f792ead276421a821faaf7a8', 'offline', '0', '1595860352', 'normal');
INSERT INTO `user` VALUES ('67', '17109294482', 'fhnnvvb', '/static/avatar.jpg', '', '0d560a1805f23665ce32fa93a609e74c', 'offline', '0', '1596012373', 'normal');
INSERT INTO `user` VALUES ('66', '17109294517', '天涯', '/static/avatar.jpg', '', '7f7347d26898cf48cba97c3cfe8e6b03', 'offline', '0', '1596011507', 'normal');
INSERT INTO `user` VALUES ('65', '13547416516', '摩托佬', '/static/avatar.jpg', '', 'd2bd3ad8caf78e7722448098c32645a9', 'offline', '0', '1595915588', 'normal');
INSERT INTO `user` VALUES ('64', '13509357182', '25888', '/static/avatar.jpg', '', '0ece1ecf403cf9c1a0ea5a112d366289', 'offline', '0', '1595863435', 'normal');

-- ----------------------------
-- Table structure for wp_allot
-- ----------------------------
DROP TABLE IF EXISTS `wp_allot`;
CREATE TABLE `wp_allot` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(18) NOT NULL,
  `order_id` mediumint(18) NOT NULL,
  `time` varchar(18) DEFAULT NULL,
  `my_fee` varchar(18) DEFAULT NULL COMMENT '变化的资金',
  `is_win` tinyint(1) DEFAULT NULL COMMENT '是否盈利1盈利2亏损3无效',
  `nowmoney` varchar(255) DEFAULT NULL COMMENT '此刻余额',
  `type` tinyint(1) DEFAULT '1' COMMENT '1红利结算2手续费结算',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_allot
-- ----------------------------

-- ----------------------------
-- Table structure for wp_area
-- ----------------------------
DROP TABLE IF EXISTS `wp_area`;
CREATE TABLE `wp_area` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) NOT NULL DEFAULT '0',
  `code` char(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='地址表(省/市/县/区)';

-- ----------------------------
-- Records of wp_area
-- ----------------------------

-- ----------------------------
-- Table structure for wp_balance
-- ----------------------------
DROP TABLE IF EXISTS `wp_balance`;
CREATE TABLE `wp_balance` (
  `bpid` int(11) NOT NULL AUTO_INCREMENT,
  `bptype` varchar(10) DEFAULT NULL COMMENT '1充值 2加款 3正在充值 4取消 5提现 6减款',
  `bptime` int(20) DEFAULT NULL COMMENT '操作时间',
  `bpprice` decimal(16,2) DEFAULT NULL COMMENT '收支金额',
  `realprice` decimal(16,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '实际到账',
  `remarks` text COMMENT '备注',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `isverified` int(11) NOT NULL DEFAULT '0' COMMENT ' 0 待审核 1通过  2是拒绝 3是审核中',
  `cltime` int(20) DEFAULT NULL COMMENT '审核时间',
  `bankid` int(8) DEFAULT NULL COMMENT '银行卡id,对应wp_bankinfo',
  `bpbalance` varchar(28) DEFAULT NULL COMMENT '充值/提现后的余额',
  `btime` varchar(18) DEFAULT NULL COMMENT '提交时间',
  `reg_par` varchar(10) DEFAULT '0' COMMENT '手续费',
  `balance_sn` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `pay_type` varchar(20) DEFAULT NULL COMMENT '支付方式',
  `truename` varchar(255) NOT NULL DEFAULT '' COMMENT '存款人',
  `isshow` int(1) NOT NULL DEFAULT '1' COMMENT '是否显示订单',
  PRIMARY KEY (`bpid`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_balance
-- ----------------------------

-- ----------------------------
-- Table structure for wp_bankcard
-- ----------------------------
DROP TABLE IF EXISTS `wp_bankcard`;
CREATE TABLE `wp_bankcard` (
  `id` mediumint(28) NOT NULL AUTO_INCREMENT,
  `bankno` mediumint(28) DEFAULT NULL COMMENT '总行代码',
  `accntnm` varchar(18) DEFAULT NULL COMMENT '持卡人姓名',
  `cityno` mediumint(18) DEFAULT NULL COMMENT '城市代码',
  `address` varchar(288) DEFAULT NULL COMMENT '地址',
  `uid` mediumint(18) DEFAULT NULL COMMENT '用户id',
  `accntno` varchar(38) DEFAULT NULL COMMENT '账号',
  `isdelete` tinyint(8) DEFAULT '0',
  `content` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(18) DEFAULT NULL,
  `scard` varchar(38) DEFAULT NULL COMMENT '身份证号码',
  `provinceid` mediumint(18) DEFAULT NULL COMMENT '省份id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_bankcard
-- ----------------------------

-- ----------------------------
-- Table structure for wp_bankinfo
-- ----------------------------
DROP TABLE IF EXISTS `wp_bankinfo`;
CREATE TABLE `wp_bankinfo` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '绑定',
  `name` varchar(20) NOT NULL COMMENT '币种',
  `address` varchar(255) NOT NULL COMMENT '省份',
  `qrcode` varchar(255) NOT NULL COMMENT '城市',
  `isdelete` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_bankinfo
-- ----------------------------

-- ----------------------------
-- Table structure for wp_banks
-- ----------------------------
DROP TABLE IF EXISTS `wp_banks`;
CREATE TABLE `wp_banks` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `bank_no` int(18) DEFAULT NULL,
  `bank_nm` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_banks
-- ----------------------------
INSERT INTO `wp_banks` VALUES ('1', '102', '中国工商银行');
INSERT INTO `wp_banks` VALUES ('2', '103', '中国农业银行');
INSERT INTO `wp_banks` VALUES ('3', '104', '中国银行');
INSERT INTO `wp_banks` VALUES ('4', '105', '中国建设银行');
INSERT INTO `wp_banks` VALUES ('5', '301', '交通银行');
INSERT INTO `wp_banks` VALUES ('6', '308', '招商银行');
INSERT INTO `wp_banks` VALUES ('7', '309', '兴业银行');
INSERT INTO `wp_banks` VALUES ('8', '305', '中国民生银行');
INSERT INTO `wp_banks` VALUES ('9', '306', '广东发展银行');
INSERT INTO `wp_banks` VALUES ('10', '307', '平安银行股份有限');
INSERT INTO `wp_banks` VALUES ('11', '310', '上海浦东发展银行');
INSERT INTO `wp_banks` VALUES ('12', '304', '华夏银行');
INSERT INTO `wp_banks` VALUES ('13', '313', '其他城市商业银行');
INSERT INTO `wp_banks` VALUES ('14', '1401', '邯郸市城市信用社');
INSERT INTO `wp_banks` VALUES ('15', '314', '其他农村商业银行');
INSERT INTO `wp_banks` VALUES ('16', '315', '恒丰银行');
INSERT INTO `wp_banks` VALUES ('17', '403', '中国邮政储蓄银行');
INSERT INTO `wp_banks` VALUES ('18', '303', '中国光大银行');
INSERT INTO `wp_banks` VALUES ('19', '302', '中信银行');
INSERT INTO `wp_banks` VALUES ('20', '316', '浙商银行股份有限');
INSERT INTO `wp_banks` VALUES ('21', '318', '渤海银行股份有限');
INSERT INTO `wp_banks` VALUES ('22', '423', '杭州市商业银行');
INSERT INTO `wp_banks` VALUES ('23', '412', '温州市商业银行');
INSERT INTO `wp_banks` VALUES ('24', '424', '南京市商业银行');
INSERT INTO `wp_banks` VALUES ('25', '461', '长沙市商业银行');
INSERT INTO `wp_banks` VALUES ('26', '409', '济南市商业银行');
INSERT INTO `wp_banks` VALUES ('27', '422', '石家庄市商业银行');
INSERT INTO `wp_banks` VALUES ('28', '458', '西宁市商业银行');
INSERT INTO `wp_banks` VALUES ('29', '404', '烟台市商业银行');
INSERT INTO `wp_banks` VALUES ('30', '462', '潍坊市商业银行');
INSERT INTO `wp_banks` VALUES ('31', '515', '德州市商业银行');
INSERT INTO `wp_banks` VALUES ('32', '431', '临沂市商业银行');
INSERT INTO `wp_banks` VALUES ('33', '481', '威海商业银行');
INSERT INTO `wp_banks` VALUES ('34', '497', '莱芜市商业银行');
INSERT INTO `wp_banks` VALUES ('35', '450', '青岛市商业银行');
INSERT INTO `wp_banks` VALUES ('36', '319', '徽商银行');
INSERT INTO `wp_banks` VALUES ('37', '322', '上海农村商业银行');

-- ----------------------------
-- Table structure for wp_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `wp_blacklist`;
CREATE TABLE `wp_blacklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for wp_cardinfo
-- ----------------------------
DROP TABLE IF EXISTS `wp_cardinfo`;
CREATE TABLE `wp_cardinfo` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL COMMENT '用户id',
  `id_type` int(1) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL COMMENT '身份证名字',
  `card_id` varchar(28) DEFAULT NULL COMMENT '身份证号',
  `front_pic` varchar(100) DEFAULT NULL COMMENT '身份证照片',
  `reverse_pic` varchar(88) DEFAULT NULL,
  `ctime` varchar(18) DEFAULT NULL,
  `is_check` int(1) DEFAULT '0' COMMENT '初级认证 0未认证1待审核2审核成功',
  `up_check` int(1) DEFAULT '0' COMMENT '高级认证 0未认证1待审核2审核成功',
  `utime` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_cardinfo
-- ----------------------------

-- ----------------------------
-- Table structure for wp_catproduct
-- ----------------------------
DROP TABLE IF EXISTS `wp_catproduct`;
CREATE TABLE `wp_catproduct` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `myat` double(11,1) DEFAULT '10.0' COMMENT '点差*',
  `myatjia` double(11,2) DEFAULT '0.00' COMMENT '点差+',
  `ask` double(11,2) DEFAULT '0.00' COMMENT '现在的价格',
  `high` double(11,2) DEFAULT '0.00' COMMENT '最高',
  `low` double(11,2) DEFAULT '0.00' COMMENT '最低',
  `open` double(11,2) DEFAULT '0.00' COMMENT '今开',
  `close` double(11,2) DEFAULT '0.00' COMMENT '昨收',
  `eidtime` int(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_catproduct
-- ----------------------------

-- ----------------------------
-- Table structure for wp_conf
-- ----------------------------
DROP TABLE IF EXISTS `wp_conf`;
CREATE TABLE `wp_conf` (
  `id` mediumint(2) NOT NULL AUTO_INCREMENT,
  `webname` varchar(88) NOT NULL DEFAULT '软盟微交易系统' COMMENT '站点名称',
  `onelive` double(3,2) DEFAULT NULL COMMENT '一级分销',
  `twolive` double(3,2) DEFAULT NULL COMMENT '二级分销',
  `threelive` double(3,2) DEFAULT NULL COMMENT '三级分销',
  `pagenum` int(8) NOT NULL DEFAULT '20' COMMENT '后台分页',
  `closswebcon` text COMMENT '关闭网站说明',
  `webisopen` int(1) DEFAULT '1' COMMENT '是否关闭网站',
  `daygiveint` int(20) NOT NULL DEFAULT '0' COMMENT '每日签到赠送积分',
  `inttomoney` varchar(20) NOT NULL DEFAULT '1:1' COMMENT '积分与现金比例',
  `ordermin` decimal(20,2) NOT NULL DEFAULT '20.00' COMMENT '微交易单笔交易金额最小值限制',
  `ordermax` decimal(20,2) NOT NULL DEFAULT '5000.00' COMMENT '微交易单笔交易金额最大值限制',
  `cashmin` decimal(20,2) NOT NULL DEFAULT '100.00' COMMENT '单笔提现限制最小值',
  `cashmax` decimal(20,2) NOT NULL DEFAULT '1000.00' COMMENT '单笔提现限制最大值',
  `rechargemin` decimal(20,2) NOT NULL DEFAULT '20.00' COMMENT '单笔充值限制最小值',
  `rechargemax` decimal(20,2) NOT NULL DEFAULT '1000.00' COMMENT '单笔充值限制最大值',
  `usermaxrecharge` decimal(20,2) NOT NULL DEFAULT '1000.00' COMMENT '用户当天最大提现申请金额',
  `festivalisrec` tinyint(2) NOT NULL DEFAULT '0' COMMENT '非工作日是否支持提现',
  `userallhold` decimal(20,2) NOT NULL DEFAULT '2000.00' COMMENT '用户最大持仓金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_conf
-- ----------------------------
INSERT INTO `wp_conf` VALUES ('1', '软盟微交易系统V2.0演示版', '3.00', '2.00', '1.00', '20', '网站升级维护中……', '1', '100', '100:1', '20.00', '1000.00', '100.00', '1000.00', '20.00', '1000.00', '1000.00', '0', '2000.00');

-- ----------------------------
-- Table structure for wp_config
-- ----------------------------
DROP TABLE IF EXISTS `wp_config`;
CREATE TABLE `wp_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `group` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置值',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`),
  KEY `group` (`group`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_config
-- ----------------------------
INSERT INTO `wp_config` VALUES ('1', 'web_name', '1', '网站名称', '1', '', '', '1509027150', '1509027150', '1', 'OKEX', '1');
INSERT INTO `wp_config` VALUES ('2', 'is_close', '1', '网站是否关闭', '1', '0关闭，1开启', '', '1498580751', '1498580751', '0', '1', '9');
INSERT INTO `wp_config` VALUES ('3', 'is_reg', '1', '是否开放用户注册', '2', '1开启注册0关闭注册', '', '1498580857', '1498580857', '1', '1', '1');
INSERT INTO `wp_config` VALUES ('4', 'web_poundage', '1', '每笔平台收取手续费', '2', '如：2%，就填写2即可', '', '1498580887', '1498580887', '1', '2', '2');
INSERT INTO `wp_config` VALUES ('5', 'day_cash', '1', '每日最多提现次数', '2', '', '', '1499137504', '1499137504', '1', '5', '12');
INSERT INTO `wp_config` VALUES ('6', 'live_num', '1', '平台分销级数', '2', '', '', '1498580962', '1498580962', '0', '5', '4');
INSERT INTO `wp_config` VALUES ('7', 'pay_choose', '1', '投资金额', '2', '以 | 符号隔开', '', '1498581030', '1498581030', '1', '10|50|100|500|1000|5000|10000', '5');
INSERT INTO `wp_config` VALUES ('8', 'order_min_price', '1', '单笔最低下单金额', '2', '', '', '1504767331', '1504767331', '1', '50', '6');
INSERT INTO `wp_config` VALUES ('9', 'order_max_price', '1', '单笔最高下单金额', '2', '', '', '1504767338', '1504767338', '1', '100000000', '7');
INSERT INTO `wp_config` VALUES ('10', 'reg_par', '1', '每笔提现手续费', '2', '输入百分比，如2%就输入2', '', '1499132509', '1499132509', '1', '1', '8');
INSERT INTO `wp_config` VALUES ('11', 'cash_min', '1', '最低提现金额', '2', '', '', '1499132653', '1499132653', '1', '10', '9');
INSERT INTO `wp_config` VALUES ('12', 'cash_max', '1', '单笔提现最大金额', '2', '', '', '1499132757', '1499132757', '1', '5000000', '10');
INSERT INTO `wp_config` VALUES ('13', 'cash_day_max', '1', '当日累计最高提现金额', '2', '', '', '1499138112', '1499138112', '1', '100000000', '11');
INSERT INTO `wp_config` VALUES ('14', 'is_cash', '1', '是否开启提现', '2', '1开启0关闭', '', '1499138225', '1499138225', '1', '1', '15');
INSERT INTO `wp_config` VALUES ('15', 'msm_SignName', '1', '短信签名', '1', '', '', '1499259617', '1499259617', '0', '中泰国际', '3');
INSERT INTO `wp_config` VALUES ('16', 'msm_appkey', '1', '短信key', '1', '', '', '1499259639', '1499259639', '0', '短信宝用户名', '4');
INSERT INTO `wp_config` VALUES ('17', 'msm_secretkey', '1', '短信秘钥', '1', '', '', '1499259659', '1499259659', '0', '短信宝密码', '6');
INSERT INTO `wp_config` VALUES ('18', 'msm_TCode', '1', '短信模板', '1', '', '', '1499259682', '1499259682', '0', '', '7');
INSERT INTO `wp_config` VALUES ('19', 'allot_point', '1', '代理红利分配比例', '2', '百分比，80%输入80。平仓后按照下单价格乘以此比例进行对冲 ', '', '1500304738', '1500304738', '0', '100', '16');
INSERT INTO `wp_config` VALUES ('20', 'yongjin_point', '1', '代理佣金分配比例', '2', '百分比，10%输入10。平仓后按照下单价格乘以此比例为手续费奖励给代理团队', '', '1500304746', '1500304746', '0', '10', '17');
INSERT INTO `wp_config` VALUES ('21', 'reg_type', '1', '注册是否需要激活', '2', '1不需激活2需要激活', '', '1502335131', '1502335131', '0', '1', '21');
INSERT INTO `wp_config` VALUES ('22', 'kong_end', '1', '订单受风控时间', '2', '输入10-15，则订单在平仓之前10-15秒开始受到风控影响。', '', '1514738027', '1514738027', '1', '8-12', '28');
INSERT INTO `wp_config` VALUES ('23', 'userpay_max', '1', '单笔最大入金', '2', '', '', '1504678164', '1504678164', '1', '10000000', '28');
INSERT INTO `wp_config` VALUES ('24', 'userpay_min', '1', '单笔最小入金', '2', '', '', '1504678193', '1504678193', '1', '10', '29');
INSERT INTO `wp_config` VALUES ('25', 'max_order_count', '1', '最大持仓单数', '2', '', '', '1504770831', '1504770831', '1', '100', '7');
INSERT INTO `wp_config` VALUES ('26', 'web_logo', '3', 'LOGO，PNG格式', '1', '', '', '1506779011', '1506779011', '1', '/public/uploads/20240907/20240907125025202.png', '10');
INSERT INTO `wp_config` VALUES ('27', 'sys_kefu', '1', '在线客服', '1', '', '', '1506779458', '1506779458', '1', 'https://direct.lc.chat/15914826', '8');
INSERT INTO `wp_config` VALUES ('28', 'reg_push', '1', '充值金额', '2', '用|隔开', '', '1506779553', '1506779553', '1', '100|500|1000|5000|10000|50000|Tỉ giá USD 1$=24.000VND', '30');
INSERT INTO `wp_config` VALUES ('29', 'can_kong', '1', '可单控用户', '3', '0009598,25,3,130', '', '1535033268', '1535033268', '1', '', '40');
INSERT INTO `wp_config` VALUES ('30', 'role_ks', '1', '开始提现时间', '2', '在指定的时间段可以提现 例：9:00', '', '1553020924', '1553020924', '1', '00:00', '0');
INSERT INTO `wp_config` VALUES ('31', 'role_js', '1', '结束提现时间', '2', '在指定的时间段可以提现 例：22:00', '', '1553021039', '1553021039', '1', '23:59', '0');
INSERT INTO `wp_config` VALUES ('33', 'sys_limit', '1', '超过警戒线是否平仓', '2', '1是0否', '', '0', '0', '0', '0', '0');
INSERT INTO `wp_config` VALUES ('34', 'sys_luhn_card', '1', '银行卡号校验', '2', '1是0否', '', '0', '0', '0', '0', '0');
INSERT INTO `wp_config` VALUES ('35', 'sys_app_url', '1', 'APP链接URL', '2', '', '', '0', '0', '0', '', '41');
INSERT INTO `wp_config` VALUES ('37', 'sys_truename', '1', '姓名注册开关', '2', '1开 0关', '', '0', '0', '0', '1', '0');
INSERT INTO `wp_config` VALUES ('38', 'sys_mobile', '1', '手机注册开关', '2', '1开 0关', '', '0', '0', '0', '0', '0');
INSERT INTO `wp_config` VALUES ('39', 'sys_invit', '1', '推荐码注册开关', '2', '1开 0关', '', '0', '0', '1', '0', '0');
INSERT INTO `wp_config` VALUES ('40', 'sys_rates', '1', '利息宝开关', '2', '1开 0关', '', '0', '0', '0', '1', '0');
INSERT INTO `wp_config` VALUES ('41', 'sys_jifen', '1', '积分开关', '2', '1开 0关', '', '0', '0', '0', '0', '0');
INSERT INTO `wp_config` VALUES ('42', 'sys_pingcang', '1', '手动平仓开关', '2', '1开 0关', '', '0', '0', '1', '0', '0');
INSERT INTO `wp_config` VALUES ('43', 'sys_reg_caijin', '1', '注册送彩金', '2', '放空或0，即不送', '', '0', '0', '1', '5', '0');
INSERT INTO `wp_config` VALUES ('44', 'sys_log_caijin', '1', '每天首登送彩金', '2', '放空或0，即不送', '', '0', '0', '0', '0', '0');
INSERT INTO `wp_config` VALUES ('45', 'sys_homepage', '1', '首页切换', '2', '1或者2', '', '0', '0', '0', '2', '0');
INSERT INTO `wp_config` VALUES ('46', 'sys_kefu_name', '1', '客服名称', '3', '客服名', '', '0', '0', '1', '小美', '0');
INSERT INTO `wp_config` VALUES ('47', 'sys_kefu_img', '3', '客服头像', '3', '客服头像', '', '0', '0', '1', '\\public\\jpg\\kefu_img.png', '0');
INSERT INTO `wp_config` VALUES ('48', 'sys_greeting', '2', '客服问候', '3', '客服问候', '', '0', '0', '1', '您好，请问有什么需要帮助的~~', '0');
INSERT INTO `wp_config` VALUES ('49', 'sys_buy_once', '1', '单一待结算订单', '2', '1开 0关 （仅能一笔待结算订单）', '', '0', '0', '0', '0', '0');
INSERT INTO `wp_config` VALUES ('50', 'sys_hide_yingkui', '1', '隐藏止盈止损', '2', '1开 0关', '', '0', '0', '0', '1', '0');
INSERT INTO `wp_config` VALUES ('51', 'sys_robot', '1', '机器人赢利', '2', '1显示 0隐藏', '', '0', '0', '0', '0', '0');
INSERT INTO `wp_config` VALUES ('52', 'sys_yue_benjin', '1', '利息宝本金', '2', '1不冻结，可下注，不可提现 2本金冻结，不下注不提现', '', '0', '0', '0', '2', '0');
INSERT INTO `wp_config` VALUES ('53', 'register_id', '1', '身份证注册开关', '2', '1开 0关', '', '0', '0', '0', '1', '0');
INSERT INTO `wp_config` VALUES ('54', 'whatsapp_kefu', '1', 'WhatsApp客服', '1', '', '', '1506779458', '1506779458', '1', '', '8');
INSERT INTO `wp_config` VALUES ('57', 'income_hidden', '1', '收益率开关', '2', '1开 0关', '', '1506779458', '1506779458', '1', '0', '8');
INSERT INTO `wp_config` VALUES ('58', 'iosapp', '4', 'IOS App', '1', '', '', '1506779011', '1506779011', '1', '', '10');
INSERT INTO `wp_config` VALUES ('59', 'androidapp', '4', 'Android App', '1', '', '', '1506779011', '1506779011', '1', '', '10');
INSERT INTO `wp_config` VALUES ('60', 'sendEmail', '1', '发送邮箱账号', '1', '填写发送邮箱账号', '', '1689676623', '1689676623', '1', 'xiaozhangzhangdan@gmail.com', '12');
INSERT INTO `wp_config` VALUES ('61', 'sendEmailPassWord', '1', '邮箱专用密码', '1', '填写邮箱专用密码', '', '1689676701', '1689676701', '1', 'wdvbbnafdsivmpzu', '12');
INSERT INTO `wp_config` VALUES ('62', 'sendEmailName', '1', '邮箱团队名称', '1', '填写邮箱团队名称', '', '1689676873', '1689676873', '1', 'Crypot', '12');
INSERT INTO `wp_config` VALUES ('63', 'sendSmsUser', '1', '短信宝账号', '1', '填写短信宝账号', '', '1689677777', '1689677777', '1', 'kahhd654', '11');
INSERT INTO `wp_config` VALUES ('64', 'sendSmsPassWord', '1', '短信宝密钥', '1', '填写短信宝密钥', '', '1689677815', '1689677815', '1', 'c7f03ca45c7b4e7697ac73c77e7bf8f1', '11');
INSERT INTO `wp_config` VALUES ('65', 'sendSmsContent', '1', '短信宝模板', '1', '填写短信宝模板', '', '1689695706', '1689695706', '1', '【Crypot】Your authentication code is {code}.', '11');
INSERT INTO `wp_config` VALUES ('66', 'amount_name', '1', '站点金额标识', '2', '修改站点金额标识符，例：USD', '', '1693810840', '1693810840', '1', 'USD', '0');
INSERT INTO `wp_config` VALUES ('67', 'amount_name_admin', '1', '后台金额标识符', '2', '填写后台金额标识符，例：$', '', '1693811272', '1693811272', '1', '$', '0');

-- ----------------------------
-- Table structure for wp_dt_productag0
-- ----------------------------
DROP TABLE IF EXISTS `wp_dt_productag0`;
CREATE TABLE `wp_dt_productag0` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0为波动数据，1为数据源',
  `pid` varchar(18) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL,
  `price` varchar(18) DEFAULT NULL COMMENT '现价',
  `open` varchar(18) DEFAULT NULL COMMENT '开盘',
  `close` varchar(18) DEFAULT NULL COMMENT '收盘',
  `high` varchar(18) DEFAULT NULL COMMENT '最高',
  `low` varchar(18) DEFAULT NULL COMMENT '最低',
  `diff` varchar(18) DEFAULT NULL COMMENT '振幅',
  `diffrate` varchar(18) DEFAULT NULL COMMENT '波幅',
  `updatetime` varchar(18) DEFAULT NULL,
  `rands` varchar(8) DEFAULT NULL,
  `point` varchar(8) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='白银数据源';

-- ----------------------------
-- Records of wp_dt_productag0
-- ----------------------------
INSERT INTO `wp_dt_productag0` VALUES ('1', '1', '23', '白银', null, '3730.00', '3712.00', '3739.00', '3725.00', null, null, '1526978686', null, null, '0');

-- ----------------------------
-- Table structure for wp_gallery
-- ----------------------------
DROP TABLE IF EXISTS `wp_gallery`;
CREATE TABLE `wp_gallery` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '标题',
  `img` varchar(64) NOT NULL DEFAULT '' COMMENT '图片',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1显示 0隐藏',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='轮播图';

-- ----------------------------
-- Records of wp_gallery
-- ----------------------------
INSERT INTO `wp_gallery` VALUES ('1', '1', '/public/uploads/20230320/d52b3b4d96c3ff3c5ba07db61ec5ae4e.jpg', '1', '1');
INSERT INTO `wp_gallery` VALUES ('2', '2', '/public/uploads/20230320/13dbe414b56938ba1756077d168da765.jpg', '1', '2');
INSERT INTO `wp_gallery` VALUES ('3', '3', '/public/uploads/20230320/66d195c08cb416209f4c32c7824d160c.jpg', '1', '3');
INSERT INTO `wp_gallery` VALUES ('11', '1', '/public/uploads/20230328/66f55dabd04f173ca5e9a3234faa44aa.jpg', '1', '0');

-- ----------------------------
-- Table structure for wp_integral
-- ----------------------------
DROP TABLE IF EXISTS `wp_integral`;
CREATE TABLE `wp_integral` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT '0' COMMENT '0购买1签到2注册',
  `amount` int(8) DEFAULT '0' COMMENT '数量',
  `time` int(18) DEFAULT NULL COMMENT '时间',
  `uid` mediumint(8) DEFAULT NULL COMMENT '用户id',
  `oid` mediumint(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_integral
-- ----------------------------

-- ----------------------------
-- Table structure for wp_invest
-- ----------------------------
DROP TABLE IF EXISTS `wp_invest`;
CREATE TABLE `wp_invest` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `days` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '期限 天',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1分红  2百分比',
  `rates` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '分红 或 利率',
  `min` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '起投金额',
  `max` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大可投',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1启用',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `proid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8 COMMENT='利息宝';

-- ----------------------------
-- Records of wp_invest
-- ----------------------------
INSERT INTO `wp_invest` VALUES ('1002', '7', '2', '14.00', '100', '0', '1', '0', '38');
INSERT INTO `wp_invest` VALUES ('1003', '14', '2', '42.00', '1000', '0', '1', '0', '38');
INSERT INTO `wp_invest` VALUES ('1004', '30', '2', '120.00', '5000', '0', '1', '0', '38');
INSERT INTO `wp_invest` VALUES ('1005', '45', '2', '225.00', '10000', '0', '1', '0', '38');
INSERT INTO `wp_invest` VALUES ('1006', '60', '2', '360.00', '50000', '0', '1', '0', '38');
INSERT INTO `wp_invest` VALUES ('1007', '90', '2', '630.00', '100000', '0', '1', '0', '38');

-- ----------------------------
-- Table structure for wp_klinedata
-- ----------------------------
DROP TABLE IF EXISTS `wp_klinedata`;
CREATE TABLE `wp_klinedata` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `ktime` varchar(18) NOT NULL COMMENT 'k线时间',
  `updata` varchar(18) DEFAULT NULL COMMENT '最高值',
  `downdata` varchar(18) DEFAULT NULL COMMENT '最低值',
  `pid` mediumint(18) NOT NULL COMMENT '产品id',
  `opendata` varchar(18) DEFAULT NULL COMMENT '开盘价格',
  `closdata` varchar(18) DEFAULT NULL COMMENT '关盘价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_klinedata
-- ----------------------------

-- ----------------------------
-- Table structure for wp_log
-- ----------------------------
DROP TABLE IF EXISTS `wp_log`;
CREATE TABLE `wp_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `loguser` varchar(50) DEFAULT NULL COMMENT '登录tel',
  `logname` varchar(50) DEFAULT NULL COMMENT '登录名',
  `otype` int(10) DEFAULT NULL COMMENT '用户类型',
  `geoip` varchar(15) DEFAULT NULL COMMENT 'IP地址',
  `type` int(1) DEFAULT NULL COMMENT '0登录失败 \r\n1登录成功\r\n2异常登录\r\n3修改登录密码\r\n4修改提现密码',
  `action` varchar(255) DEFAULT NULL COMMENT '操作',
  `useragent` varchar(255) DEFAULT NULL COMMENT 'user-agent',
  `content` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_at` int(10) DEFAULT NULL COMMENT '登录时间',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  `online` int(10) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='日志';

-- ----------------------------
-- Records of wp_log
-- ----------------------------

-- ----------------------------
-- Table structure for wp_newsclass
-- ----------------------------
DROP TABLE IF EXISTS `wp_newsclass`;
CREATE TABLE `wp_newsclass` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fclass` varchar(255) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_newsclass
-- ----------------------------
INSERT INTO `wp_newsclass` VALUES ('1', '最新资讯', '0');
INSERT INTO `wp_newsclass` VALUES ('2', '财经要闻', '0');
INSERT INTO `wp_newsclass` VALUES ('3', '系统公告', '1');
INSERT INTO `wp_newsclass` VALUES ('4', '时政新闻', '1');

-- ----------------------------
-- Table structure for wp_newsinfo
-- ----------------------------
DROP TABLE IF EXISTS `wp_newsinfo`;
CREATE TABLE `wp_newsinfo` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(255) DEFAULT NULL COMMENT '标题',
  `ncontent` text COMMENT '内容',
  `ncover` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `fid` int(11) DEFAULT NULL COMMENT '新闻分类id',
  `ntime` int(20) DEFAULT NULL COMMENT '发布时间',
  `nauthor` varchar(18) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_newsinfo
-- ----------------------------

-- ----------------------------
-- Table structure for wp_notice
-- ----------------------------
DROP TABLE IF EXISTS `wp_notice`;
CREATE TABLE `wp_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1启用 0停用',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='公告';

-- ----------------------------
-- Records of wp_notice
-- ----------------------------
INSERT INTO `wp_notice` VALUES ('6', 'OKEX Thông báo !', 'OKEX là một sàn giao dịch tiền mã hóa sáng tạo với các dịch vụ tài chính tiên tiến. Chúng tôi dựa vào công nghệ blockchain để cung cấp mọi thứ bạn cần để giao dịch và đầu tư khôn ngoan.Hãy trải nghiệm hàng trăm token và cặp giao dịch. Với OKEX, bạn có thể tham gia vào một trong những sàn giao dịch tiền mã hóa hàng đầu về khối lượng giao dịch. Chúng tôi cung cấp dich vụ cho hàng triệu người dùng tại hơn 100 quốc gia, trong đó bao gồm dịch vụ giao dịch giao ngay, ký quỹ, hợp đồng tương lai, quyền chọn, hoán đổi vĩnh cửu, DeFi, cho vay và khai thác.', '1', '1679070397');

-- ----------------------------
-- Table structure for wp_opentime
-- ----------------------------
DROP TABLE IF EXISTS `wp_opentime`;
CREATE TABLE `wp_opentime` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `pid` mediumint(18) NOT NULL,
  `opentime` varchar(888) DEFAULT NULL COMMENT '开市时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_opentime
-- ----------------------------
INSERT INTO `wp_opentime` VALUES ('49', '56', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('51', '59', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('52', '14', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('53', '23', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('54', '57', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('55', '58', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('56', '15', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('57', '38', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('58', '11', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('59', '29', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('60', '31', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('61', '35', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('62', '41', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('63', '39', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('64', '12', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('65', '16', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('66', '45', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('67', '34', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('68', '36', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('69', '32', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('70', '42', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('71', '13', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('72', '17', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('73', '22', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');
INSERT INTO `wp_opentime` VALUES ('74', '0', '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-');

-- ----------------------------
-- Table structure for wp_order
-- ----------------------------
DROP TABLE IF EXISTS `wp_order`;
CREATE TABLE `wp_order` (
  `oid` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '下单用户uid',
  `pid` int(11) NOT NULL COMMENT '产品ID',
  `ostyle` int(12) NOT NULL DEFAULT '0' COMMENT '0涨 1跌，',
  `buytime` int(20) DEFAULT NULL COMMENT '建仓',
  `onumber` int(20) DEFAULT NULL COMMENT '手数',
  `selltime` int(20) DEFAULT '0' COMMENT '平仓',
  `ostaus` int(11) DEFAULT NULL COMMENT '0交易，1平仓',
  `buyprice` decimal(16,3) NOT NULL COMMENT '入仓价',
  `sellprice` decimal(16,3) NOT NULL DEFAULT '0.000' COMMENT '平仓价',
  `endprofit` varchar(20) DEFAULT '0' COMMENT '点数/分钟数',
  `endloss` varchar(11) DEFAULT '0' COMMENT '盈亏比例',
  `point` decimal(10,5) unsigned NOT NULL DEFAULT '0.00000' COMMENT '指数变化/盈亏1%',
  `fee` decimal(12,1) DEFAULT NULL COMMENT '总费用',
  `eid` decimal(12,2) NOT NULL COMMENT '1点位、2时间',
  `orderno` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `ptitle` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `commission` decimal(12,1) DEFAULT '0.0' COMMENT '佣金',
  `ploss` decimal(16,2) DEFAULT '0.00' COMMENT '盈亏',
  `display` int(11) DEFAULT '0' COMMENT '0,可查询，1不可查询',
  `isshow` int(1) DEFAULT '0',
  `is_win` tinyint(1) DEFAULT NULL COMMENT '是否盈利1盈利2亏损3无效',
  `kong_type` tinyint(1) DEFAULT '0' COMMENT '0不空1盈利2亏损',
  `sx_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  PRIMARY KEY (`oid`),
  KEY `uidd` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1535 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_order
-- ----------------------------

-- ----------------------------
-- Table structure for wp_order_log
-- ----------------------------
DROP TABLE IF EXISTS `wp_order_log`;
CREATE TABLE `wp_order_log` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) DEFAULT NULL,
  `oid` mediumint(8) DEFAULT NULL,
  `addprice` decimal(10,2) DEFAULT NULL,
  `addpoint` decimal(10,2) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `user_money` decimal(20,2) DEFAULT NULL,
  `is_delete` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1526 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for wp_payment
-- ----------------------------
DROP TABLE IF EXISTS `wp_payment`;
CREATE TABLE `wp_payment` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `pay_name` varchar(288) NOT NULL COMMENT '支付名称',
  `is_use` tinyint(1) NOT NULL COMMENT '是否使用1使用0不使用',
  `pay_point` varchar(8) NOT NULL COMMENT '手续费',
  `pay_conf` text NOT NULL COMMENT '配置信息',
  `isdelete` tinyint(1) DEFAULT NULL COMMENT '是否删除1删除0未删除',
  `dotime` varchar(18) NOT NULL COMMENT '操作时间',
  `pay_order` int(8) DEFAULT NULL COMMENT '排序，数组越大越靠前显示',
  `thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '图片，二维码',
  `account_no` text NOT NULL COMMENT '账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_payment
-- ----------------------------
INSERT INTO `wp_payment` VALUES ('5', '银行卡', '1', '0', 'Chuyển khoản nội địa', '0', '1693747204', null, '', 'BankEximbank NameNGUYEN THANH TINH STK 0815608543\r\n');
INSERT INTO `wp_payment` VALUES ('6', 'USDT充值', '1', '0', 'mcb_usdtpay', '1', '1693737206', null, '', '');
INSERT INTO `wp_payment` VALUES ('7', '在线充值', '0', '0', 'mcb_visapay', '0', '1681401444', null, '', '');

-- ----------------------------
-- Table structure for wp_payorder
-- ----------------------------
DROP TABLE IF EXISTS `wp_payorder`;
CREATE TABLE `wp_payorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `uuid` int(11) NOT NULL DEFAULT '0' COMMENT '后台所属渠道商id',
  `money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `cost` decimal(10,2) DEFAULT NULL COMMENT '手续费2%',
  `istype` int(11) DEFAULT NULL COMMENT '10001表示支付宝，20001表示微信',
  `orderid` varchar(255) DEFAULT NULL COMMENT '订单号',
  `goodsname` varchar(255) DEFAULT NULL COMMENT '订单名称',
  `pay_type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '支付状态：1表示未支付，2表示已经支付',
  `opid` tinyint(3) DEFAULT NULL COMMENT '操作员id(1熊，2周，3董，4李)',
  `ctime` varchar(12) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付订单';

-- ----------------------------
-- Records of wp_payorder
-- ----------------------------

-- ----------------------------
-- Table structure for wp_price_log
-- ----------------------------
DROP TABLE IF EXISTS `wp_price_log`;
CREATE TABLE `wp_price_log` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(18) DEFAULT NULL,
  `oid` mediumint(18) DEFAULT NULL COMMENT '订单id',
  `type` tinyint(1) DEFAULT NULL COMMENT '1增加2减少',
  `account` varchar(18) DEFAULT NULL COMMENT '变动金额',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '说明',
  `time` varchar(18) DEFAULT NULL COMMENT '时间',
  `nowmoney` varchar(18) DEFAULT NULL COMMENT '此刻余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3714 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_price_log
-- ----------------------------
INSERT INTO `wp_price_log` VALUES ('3300', '1058649', '1375', '2', '100', '下单', '下单成功', '1689482409', '9003.84');
INSERT INTO `wp_price_log` VALUES ('3301', '1058649', '1375', '1', '112.64', '结单', '订单到期获利结算', '1689482590', '9116.48');
INSERT INTO `wp_price_log` VALUES ('3302', '1058649', '1376', '2', '100', '下单', '下单成功', '1689482641', '9016.48');
INSERT INTO `wp_price_log` VALUES ('3303', '1058649', '1376', '1', '83.05', '结单', '订单到期获利结算', '1689482821', '9099.53');
INSERT INTO `wp_price_log` VALUES ('3304', '1058649', '1377', '2', '100', '下单', '下单成功', '1689561014', '8999.53');
INSERT INTO `wp_price_log` VALUES ('3305', '1058649', '1377', '1', '118.6', '结单', '订单到期获利结算', '1689561245', '9118.13');
INSERT INTO `wp_price_log` VALUES ('3306', '1058649', '1', '2', '1000', '提现', '提现申请', '1689592049', '8118.13');
INSERT INTO `wp_price_log` VALUES ('3307', '1058649', '1378', '2', '5000', '下单', '下单成功', '1689609556', '3118.13');
INSERT INTO `wp_price_log` VALUES ('3308', '1058649', '1378', '1', '5736.99', '结单', '订单到期获利结算', '1689609868', '8855.12');
INSERT INTO `wp_price_log` VALUES ('3309', '1058649', '2', '2', '100', '提现', '提现申请', '1689616072', '8755.12');
INSERT INTO `wp_price_log` VALUES ('3310', '1058649', '3', '2', '100', '提现', '提现申请', '1689616143', '8655.12');
INSERT INTO `wp_price_log` VALUES ('3311', '1058649', '3', '1', '100.00', '提现', '拒绝申请：', '1689616179', '8755.12');
INSERT INTO `wp_price_log` VALUES ('3312', '1058649', '2', '1', '100.00', '提现', '拒绝申请：', '1689616184', '8855.12');
INSERT INTO `wp_price_log` VALUES ('3313', '1058649', '1', '1', '1000.00', '提现', '拒绝申请：', '1689616189', '9855.12');
INSERT INTO `wp_price_log` VALUES ('3314', '1058649', '1379', '2', '1000', '下单', '下单成功', '1693720663', '8855.12');
INSERT INTO `wp_price_log` VALUES ('3315', '1058649', '1379', '1', '1186.94', '结单', '订单到期获利结算', '1693720846', '10042.06');
INSERT INTO `wp_price_log` VALUES ('3316', '1058655', '7', '1', '1000', '充值', '后台加款', '1693738640', '1000');
INSERT INTO `wp_price_log` VALUES ('3317', '1058655', '6', '1', '100.00', '充值', '会员充值', '1693738648', '1000.00');
INSERT INTO `wp_price_log` VALUES ('3318', '1058653', '5', '1', '500.00', '充值', '会员充值', '1693738656', '0.00');
INSERT INTO `wp_price_log` VALUES ('3319', '1058656', '8', '1', '1000', '充值', '后台加款', '1693738678', '1000');
INSERT INTO `wp_price_log` VALUES ('3320', '1058653', '5', '1', '500.00', '充值', '会员充值', '1693738687', '500.00');
INSERT INTO `wp_price_log` VALUES ('3321', '1058655', '6', '1', '100.00', '充值', '会员充值', '1693738689', '1100.00');
INSERT INTO `wp_price_log` VALUES ('3322', '1058655', '9', '1', '20000.00', '充值', '会员充值', '1693738724', '1000.00');
INSERT INTO `wp_price_log` VALUES ('3323', '1058655', '1380', '2', '5000', '下单', '下单成功', '1693738773', '16000');
INSERT INTO `wp_price_log` VALUES ('3324', '1058655', '1381', '2', '10000', '下单', '下单成功', '1693738946', '6000');
INSERT INTO `wp_price_log` VALUES ('3325', '1058655', '1380', '1', '9120.12', '结单', '订单到期获利结算', '1693738954', '15120.12');
INSERT INTO `wp_price_log` VALUES ('3326', '1058655', '1381', '1', '16577.93', '结单', '订单到期获利结算', '1693739128', '31698.05');
INSERT INTO `wp_price_log` VALUES ('3327', '1058655', '1382', '2', '5000', '下单', '下单成功', '1693739323', '26698.05');
INSERT INTO `wp_price_log` VALUES ('3328', '1058655', '1', '2', '26698', '利息宝', '投资', '1693739456', '26698.05');
INSERT INTO `wp_price_log` VALUES ('3329', '1058655', '1382', '1', '9763.76', '结单', '订单到期获利结算', '1693739506', '9763.81');
INSERT INTO `wp_price_log` VALUES ('3330', '1058655', '1383', '2', '1000', '下单', '下单成功', '1693739847', '8763.81');
INSERT INTO `wp_price_log` VALUES ('3331', '1058655', '1383', '1', '777.48', '结单', '订单到期获利结算', '1693740028', '9541.29');
INSERT INTO `wp_price_log` VALUES ('3332', '1058660', '11', '1', '1000.00', '充值', '会员充值', '1693741609', '0.00');
INSERT INTO `wp_price_log` VALUES ('3333', '1058649', '3', '1', '100.00', '提现', '通过申请：', '1693741626', '9942.06');
INSERT INTO `wp_price_log` VALUES ('3334', '1058680', '21', '1', '20000.00', '充值', '会员充值', '1693741784', '0.00');
INSERT INTO `wp_price_log` VALUES ('3335', '1058671', '20', '1', '1000.00', '充值', '会员充值', '1693741788', '0.00');
INSERT INTO `wp_price_log` VALUES ('3336', '1058664', '19', '1', '1000.00', '充值', '会员充值', '1693741791', '0.00');
INSERT INTO `wp_price_log` VALUES ('3337', '1058677', '18', '1', '10000.00', '充值', '会员充值', '1693741794', '0.00');
INSERT INTO `wp_price_log` VALUES ('3338', '1058670', '23', '1', '10000.00', '充值', '会员充值', '1693741798', '0.00');
INSERT INTO `wp_price_log` VALUES ('3339', '1058676', '22', '1', '10000.00', '充值', '会员充值', '1693741801', '0.00');
INSERT INTO `wp_price_log` VALUES ('3340', '1058675', '17', '1', '5000.00', '充值', '会员充值', '1693741804', '0.00');
INSERT INTO `wp_price_log` VALUES ('3341', '1058664', '16', '1', '1000.00', '充值', '会员充值', '1693741807', '1000.00');
INSERT INTO `wp_price_log` VALUES ('3342', '1058677', '15', '1', '20000.00', '充值', '会员充值', '1693741811', '10000.00');
INSERT INTO `wp_price_log` VALUES ('3343', '1058666', '14', '1', '10000.00', '充值', '会员充值', '1693741814', '0.00');
INSERT INTO `wp_price_log` VALUES ('3344', '1058682', '24', '1', '20000.00', '充值', '会员充值', '1693741827', '0.00');
INSERT INTO `wp_price_log` VALUES ('3345', '1058683', '25', '1', '20000.00', '充值', '会员充值', '1693741843', '0.00');
INSERT INTO `wp_price_log` VALUES ('3346', '1058674', '26', '1', '1000.00', '充值', '会员充值', '1693741848', '0.00');
INSERT INTO `wp_price_log` VALUES ('3347', '1058669', '28', '1', '1000.00', '充值', '会员充值', '1693741853', '0.00');
INSERT INTO `wp_price_log` VALUES ('3348', '1058674', '29', '1', '1000.00', '充值', '会员充值', '1693741857', '1000.00');
INSERT INTO `wp_price_log` VALUES ('3349', '1058683', '27', '1', '20000.00', '充值', '会员充值', '1693741860', '20000.00');
INSERT INTO `wp_price_log` VALUES ('3350', '1058663', '13', '1', '10000.00', '充值', '会员充值', '1693741875', '0.00');
INSERT INTO `wp_price_log` VALUES ('3351', '1058663', '12', '1', '10000.00', '充值', '会员充值', '1693741882', '10000.00');
INSERT INTO `wp_price_log` VALUES ('3352', '1058660', '10', '1', '1000.00', '充值', '会员充值', '1693741886', '1000.00');
INSERT INTO `wp_price_log` VALUES ('3353', '1058668', '30', '1', '20000.00', '充值', '会员充值', '1693741897', '0.00');
INSERT INTO `wp_price_log` VALUES ('3354', '1058658', '31', '1', '20000.00', '充值', '会员充值', '1693741930', '0.00');
INSERT INTO `wp_price_log` VALUES ('3355', '1058669', '32', '1', '10000.00', '充值', '会员充值', '1693741937', '1000.00');
INSERT INTO `wp_price_log` VALUES ('3356', '1058666', '1384', '2', '1000', '下单', '下单成功', '1693741942', '9000');
INSERT INTO `wp_price_log` VALUES ('3357', '1058672', '34', '1', '1000.00', '充值', '会员充值', '1693741966', '0.00');
INSERT INTO `wp_price_log` VALUES ('3358', '1058673', '33', '1', '5000.00', '充值', '会员充值', '1693741970', '0.00');
INSERT INTO `wp_price_log` VALUES ('3359', '1058675', '2', '2', '200', '利息宝', '投资', '1693741978', '5000.00');
INSERT INTO `wp_price_log` VALUES ('3360', '1058675', '3', '2', '200', '利息宝', '投资', '1693741979', '4800.00');
INSERT INTO `wp_price_log` VALUES ('3361', '1058678', '35', '1', '20000.00', '充值', '会员充值', '1693741986', '0.00');
INSERT INTO `wp_price_log` VALUES ('3362', '1058684', '37', '1', '10000.00', '充值', '会员充值', '1693741991', '0.00');
INSERT INTO `wp_price_log` VALUES ('3363', '1058667', '36', '1', '1000.00', '充值', '会员充值', '1693741995', '0.00');
INSERT INTO `wp_price_log` VALUES ('3364', '1058657', '40', '1', '10000.00', '充值', '会员充值', '1693742010', '0.00');
INSERT INTO `wp_price_log` VALUES ('3365', '1058679', '39', '1', '20000.00', '充值', '会员充值', '1693742014', '0.00');
INSERT INTO `wp_price_log` VALUES ('3366', '1058672', '38', '1', '1000.00', '充值', '会员充值', '1693742018', '1000.00');
INSERT INTO `wp_price_log` VALUES ('3367', '1058666', '1384', '1', '1976.79', '结单', '订单到期获利结算', '1693742122', '10976.79');
INSERT INTO `wp_price_log` VALUES ('3368', '1058660', '1385', '2', '1000', '下单', '下单成功', '1693742146', '1000');
INSERT INTO `wp_price_log` VALUES ('3369', '1058676', '1386', '2', '1000', '下单', '下单成功', '1693742161', '9000');
INSERT INTO `wp_price_log` VALUES ('3370', '1058662', '41', '1', '10000.00', '充值', '会员充值', '1693742224', '0.00');
INSERT INTO `wp_price_log` VALUES ('3371', '1058663', '1387', '2', '20000', '下单', '下单成功', '1693742248', '0');
INSERT INTO `wp_price_log` VALUES ('3372', '1058675', '1388', '2', '100', '下单', '下单成功', '1693742279', '4500');
INSERT INTO `wp_price_log` VALUES ('3373', '1058671', '42', '2', '1000.00', '提现', '提现申请', '1693742342', '0.00');
INSERT INTO `wp_price_log` VALUES ('3374', '1058676', '1386', '1', '1646.69', '结单', '订单到期获利结算', '1693742343', '10646.69');
INSERT INTO `wp_price_log` VALUES ('3375', '1058680', '1389', '2', '100', '下单', '下单成功', '1693742385', '19900');
INSERT INTO `wp_price_log` VALUES ('3376', '1058674', '1390', '2', '100', '下单', '下单成功', '1693742402', '1900');
INSERT INTO `wp_price_log` VALUES ('3377', '1058660', '43', '2', '1000', '提现', '提现申请', '1693742410', '0.00');
INSERT INTO `wp_price_log` VALUES ('3378', '1058675', '1391', '2', '300', '下单', '下单成功', '1693742411', '4200');
INSERT INTO `wp_price_log` VALUES ('3379', '1058677', '1392', '2', '100', '下单', '下单成功', '1693742419', '29900');
INSERT INTO `wp_price_log` VALUES ('3380', '1058663', '1387', '1', '14933.2', '结单', '订单到期获利结算', '1693742431', '14933.20');
INSERT INTO `wp_price_log` VALUES ('3381', '1058662', '1393', '2', '1000', '下单', '下单成功', '1693742433', '9000');
INSERT INTO `wp_price_log` VALUES ('3382', '1058672', '1394', '2', '1000', '下单', '下单成功', '1693742446', '1000');
INSERT INTO `wp_price_log` VALUES ('3383', '1058660', '1385', '1', '1194.61', '结单', '订单到期获利结算', '1693742446', '1194.61');
INSERT INTO `wp_price_log` VALUES ('3384', '1058664', '1395', '2', '100', '下单', '下单成功', '1693742446', '1900');
INSERT INTO `wp_price_log` VALUES ('3385', '1058675', '1388', '1', '159.95', '结单', '订单到期获利结算', '1693742461', '4359.95');
INSERT INTO `wp_price_log` VALUES ('3386', '1058673', '1396', '2', '1000', '下单', '下单成功', '1693742473', '4000');
INSERT INTO `wp_price_log` VALUES ('3387', '1058684', '1397', '2', '1000', '下单', '下单成功', '1693742484', '9000');
INSERT INTO `wp_price_log` VALUES ('3388', '1058680', '1398', '2', '1000', '下单', '下单成功', '1693742490', '18900');
INSERT INTO `wp_price_log` VALUES ('3389', '1058675', '1399', '2', '300', '下单', '下单成功', '1693742499', '4059.95');
INSERT INTO `wp_price_log` VALUES ('3390', '1058671', '45', '1', '1000.00', '充值', '会员充值', '1693742532', '0.00');
INSERT INTO `wp_price_log` VALUES ('3391', '1058659', '44', '1', '10000.00', '充值', '会员充值', '1693742536', '0.00');
INSERT INTO `wp_price_log` VALUES ('3392', '1058667', '1400', '2', '100', '下单', '下单成功', '1693742541', '900');
INSERT INTO `wp_price_log` VALUES ('3393', '1058670', '1401', '2', '1000', '下单', '下单成功', '1693742545', '9000');
INSERT INTO `wp_price_log` VALUES ('3394', '1058682', '1402', '2', '1000', '下单', '下单成功', '1693742546', '19000');
INSERT INTO `wp_price_log` VALUES ('3395', '1058668', '1403', '2', '1000', '下单', '下单成功', '1693742554', '19000');
INSERT INTO `wp_price_log` VALUES ('3396', '1058680', '1389', '1', '73.28', '结单', '订单到期获利结算', '1693742565', '18973.28');
INSERT INTO `wp_price_log` VALUES ('3397', '1058671', '1404', '2', '100', '下单', '下单成功', '1693742570', '900');
INSERT INTO `wp_price_log` VALUES ('3398', '1058674', '1390', '1', '76.12', '结单', '订单到期获利结算', '1693742583', '1976.12');
INSERT INTO `wp_price_log` VALUES ('3399', '1058675', '1391', '1', '214.89', '结单', '订单到期获利结算', '1693742593', '4274.84');
INSERT INTO `wp_price_log` VALUES ('3400', '1058659', '1405', '2', '1000', '下单', '下单成功', '1693742597', '9000');
INSERT INTO `wp_price_log` VALUES ('3401', '1058677', '1392', '1', '75.93', '结单', '订单到期获利结算', '1693742599', '29975.93');
INSERT INTO `wp_price_log` VALUES ('3402', '1058663', '46', '2', '2000', '提现', '提现申请', '1693742601', '12933.20');
INSERT INTO `wp_price_log` VALUES ('3403', '1058662', '1393', '1', '1698.2', '结单', '订单到期获利结算', '1693742614', '10698.20');
INSERT INTO `wp_price_log` VALUES ('3404', '1058672', '1394', '1', '737.64', '结单', '订单到期获利结算', '1693742626', '1737.64');
INSERT INTO `wp_price_log` VALUES ('3405', '1058664', '1395', '1', '79.74', '结单', '订单到期获利结算', '1693742626', '1979.74');
INSERT INTO `wp_price_log` VALUES ('3406', '1058658', '1406', '2', '20000', '下单', '下单成功', '1693742647', '0');
INSERT INTO `wp_price_log` VALUES ('3407', '1058680', '1407', '2', '5000', '下单', '下单成功', '1693742648', '13973.28');
INSERT INTO `wp_price_log` VALUES ('3408', '1058675', '1408', '2', '1000', '下单', '下单成功', '1693742656', '3274.84');
INSERT INTO `wp_price_log` VALUES ('3409', '1058673', '1396', '1', '737.14', '结单', '订单到期获利结算', '1693742656', '4737.14');
INSERT INTO `wp_price_log` VALUES ('3410', '1058669', '1409', '2', '5000', '下单', '下单成功', '1693742663', '6000');
INSERT INTO `wp_price_log` VALUES ('3411', '1058684', '1397', '1', '737.11', '结单', '订单到期获利结算', '1693742665', '9737.11');
INSERT INTO `wp_price_log` VALUES ('3412', '1058680', '1398', '1', '722.75', '结单', '订单到期获利结算', '1693742671', '14696.03');
INSERT INTO `wp_price_log` VALUES ('3413', '1058675', '1399', '1', '216.11', '结单', '订单到期获利结算', '1693742680', '3490.95');
INSERT INTO `wp_price_log` VALUES ('3414', '1058678', '1410', '2', '20000', '下单', '下单成功', '1693742681', '0');
INSERT INTO `wp_price_log` VALUES ('3415', '1058675', '1411', '2', '2000', '下单', '下单成功', '1693742690', '1490.95');
INSERT INTO `wp_price_log` VALUES ('3416', '1058664', '1412', '2', '1000', '下单', '下单成功', '1693742700', '979.74');
INSERT INTO `wp_price_log` VALUES ('3417', '1058667', '1400', '1', '76.58', '结单', '订单到期获利结算', '1693742721', '976.58');
INSERT INTO `wp_price_log` VALUES ('3418', '1058670', '1401', '1', '779.66', '结单', '订单到期获利结算', '1693742725', '9779.66');
INSERT INTO `wp_price_log` VALUES ('3419', '1058682', '1402', '1', '749.71', '结单', '订单到期获利结算', '1693742727', '19749.71');
INSERT INTO `wp_price_log` VALUES ('3420', '1058668', '1403', '1', '703.21', '结单', '订单到期获利结算', '1693742736', '19703.21');
INSERT INTO `wp_price_log` VALUES ('3421', '1058662', '1413', '2', '100', '下单', '下单成功', '1693742747', '10598.2');
INSERT INTO `wp_price_log` VALUES ('3422', '1058671', '1404', '1', '73.02', '结单', '订单到期获利结算', '1693742751', '973.02');
INSERT INTO `wp_price_log` VALUES ('3423', '1058659', '1405', '1', '756.97', '结单', '订单到期获利结算', '1693742779', '9756.97');
INSERT INTO `wp_price_log` VALUES ('3424', '1058684', '1414', '2', '1000', '下单', '下单成功', '1693742818', '8737.11');
INSERT INTO `wp_price_log` VALUES ('3425', '1058658', '1406', '1', '14919.27', '结单', '订单到期获利结算', '1693742827', '14919.27');
INSERT INTO `wp_price_log` VALUES ('3426', '1058680', '1407', '1', '3740.11', '结单', '订单到期获利结算', '1693742829', '18436.14');
INSERT INTO `wp_price_log` VALUES ('3427', '1058677', '1415', '2', '1000', '下单', '下单成功', '1693742830', '28975.93');
INSERT INTO `wp_price_log` VALUES ('3428', '1058667', '1416', '2', '900', '下单', '下单成功', '1693742830', '76.58');
INSERT INTO `wp_price_log` VALUES ('3429', '1058675', '1408', '1', '713.64', '结单', '订单到期获利结算', '1693742839', '2204.59');
INSERT INTO `wp_price_log` VALUES ('3430', '1058669', '1409', '1', '3876.59', '结单', '订单到期获利结算', '1693742845', '9876.59');
INSERT INTO `wp_price_log` VALUES ('3431', '1058663', '1417', '2', '1000', '下单', '下单成功', '1693742856', '11933.2');
INSERT INTO `wp_price_log` VALUES ('3432', '1058678', '1410', '1', '14996.79', '结单', '订单到期获利结算', '1693742862', '14996.79');
INSERT INTO `wp_price_log` VALUES ('3433', '1058671', '1418', '2', '100', '下单', '下单成功', '1693742864', '873.02');
INSERT INTO `wp_price_log` VALUES ('3434', '1058675', '1411', '1', '1436.07', '结单', '订单到期获利结算', '1693742872', '3640.66');
INSERT INTO `wp_price_log` VALUES ('3435', '1058664', '1412', '1', '716.6', '结单', '订单到期获利结算', '1693742880', '1696.34');
INSERT INTO `wp_price_log` VALUES ('3436', '1058676', '47', '2', '1000', '提现', '提现申请', '1693742881', '9646.69');
INSERT INTO `wp_price_log` VALUES ('3437', '1058659', '48', '2', '2000', '提现', '提现申请', '1693742885', '7756.97');
INSERT INTO `wp_price_log` VALUES ('3438', '1058682', '1419', '2', '5000', '下单', '下单成功', '1693742899', '14749.71');
INSERT INTO `wp_price_log` VALUES ('3439', '1058675', '1420', '2', '3500', '下单', '下单成功', '1693742924', '140.66');
INSERT INTO `wp_price_log` VALUES ('3440', '1058670', '1421', '2', '1000', '下单', '下单成功', '1693742928', '8779.66');
INSERT INTO `wp_price_log` VALUES ('3441', '1058662', '1413', '1', '159.8', '结单', '订单到期获利结算', '1693742929', '10758.00');
INSERT INTO `wp_price_log` VALUES ('3442', '1058673', '1422', '2', '1000', '下单', '下单成功', '1693742934', '3737.14');
INSERT INTO `wp_price_log` VALUES ('3443', '1058678', '1423', '2', '14996.79', '下单', '下单成功', '1693742940', '0');
INSERT INTO `wp_price_log` VALUES ('3444', '1058657', '1424', '2', '300', '下单', '下单成功', '1693742944', '9700');
INSERT INTO `wp_price_log` VALUES ('3445', '1058660', '1425', '2', '1000', '下单', '下单成功', '1693742947', '194.61');
INSERT INTO `wp_price_log` VALUES ('3446', '1058658', '1426', '2', '10000', '下单', '下单成功', '1693742960', '4919.27');
INSERT INTO `wp_price_log` VALUES ('3447', '1058684', '1414', '1', '1742.09', '结单', '订单到期获利结算', '1693743001', '10479.20');
INSERT INTO `wp_price_log` VALUES ('3448', '1058677', '1415', '1', '1659.75', '结单', '订单到期获利结算', '1693743013', '30635.68');
INSERT INTO `wp_price_log` VALUES ('3449', '1058667', '1416', '1', '1533.07', '结单', '订单到期获利结算', '1693743013', '1609.65');
INSERT INTO `wp_price_log` VALUES ('3450', '1058673', '1427', '2', '1000', '下单', '下单成功', '1693743032', '2737.14');
INSERT INTO `wp_price_log` VALUES ('3451', '1058677', '1428', '2', '1000', '下单', '下单成功', '1693743036', '29635.68');
INSERT INTO `wp_price_log` VALUES ('3452', '1058663', '1417', '1', '1503.67', '结单', '订单到期获利结算', '1693743037', '13436.87');
INSERT INTO `wp_price_log` VALUES ('3453', '1058671', '1418', '1', '165.95', '结单', '订单到期获利结算', '1693743045', '1038.97');
INSERT INTO `wp_price_log` VALUES ('3454', '1058664', '49', '2', '1696', '提现', '提现申请', '1693743050', '0.34');
INSERT INTO `wp_price_log` VALUES ('3455', '1058682', '1419', '1', '9649.14', '结单', '订单到期获利结算', '1693743079', '24398.85');
INSERT INTO `wp_price_log` VALUES ('3456', '1058675', '1420', '1', '5519.51', '结单', '订单到期获利结算', '1693743106', '5660.17');
INSERT INTO `wp_price_log` VALUES ('3457', '1058670', '1421', '1', '1644.42', '结单', '订单到期获利结算', '1693743108', '10424.08');
INSERT INTO `wp_price_log` VALUES ('3458', '1058673', '1422', '1', '1844.57', '结单', '订单到期获利结算', '1693743114', '4581.71');
INSERT INTO `wp_price_log` VALUES ('3459', '1058678', '1423', '1', '27155.2', '结单', '订单到期获利结算', '1693743120', '27155.20');
INSERT INTO `wp_price_log` VALUES ('3460', '1058666', '50', '2', '1000', '提现', '提现申请', '1693743121', '9976.79');
INSERT INTO `wp_price_log` VALUES ('3461', '1058657', '1424', '1', '453.4', '结单', '订单到期获利结算', '1693743128', '10153.40');
INSERT INTO `wp_price_log` VALUES ('3462', '1058658', '1426', '1', '19926.1', '结单', '订单到期获利结算', '1693743142', '24845.37');
INSERT INTO `wp_price_log` VALUES ('3463', '1058663', '1429', '2', '13436.87', '下单', '下单成功', '1693743144', '0');
INSERT INTO `wp_price_log` VALUES ('3464', '1058677', '51', '2', '1000', '提现', '提现申请', '1693743165', '28635.68');
INSERT INTO `wp_price_log` VALUES ('3465', '1058666', '1430', '2', '1000', '下单', '下单成功', '1693743174', '8976.79');
INSERT INTO `wp_price_log` VALUES ('3466', '1058684', '1431', '2', '5000', '下单', '下单成功', '1693743178', '5479.2');
INSERT INTO `wp_price_log` VALUES ('3467', '1058679', '1432', '2', '10000', '下单', '下单成功', '1693743190', '10000');
INSERT INTO `wp_price_log` VALUES ('3468', '1058678', '1433', '2', '27155.2', '下单', '下单成功', '1693743193', '0');
INSERT INTO `wp_price_log` VALUES ('3469', '1058673', '1427', '1', '1828.72', '结单', '订单到期获利结算', '1693743213', '6410.43');
INSERT INTO `wp_price_log` VALUES ('3470', '1058677', '1428', '1', '1767.72', '结单', '订单到期获利结算', '1693743217', '30403.40');
INSERT INTO `wp_price_log` VALUES ('3471', '1058660', '1425', '1', '1107.06', '结单', '订单到期获利结算', '1693743250', '1301.67');
INSERT INTO `wp_price_log` VALUES ('3472', '1058675', '1434', '2', '5000', '下单', '下单成功', '1693743298', '660.17');
INSERT INTO `wp_price_log` VALUES ('3473', '1058686', '52', '1', '10000.00', '充值', '会员充值', '1693743318', '0.00');
INSERT INTO `wp_price_log` VALUES ('3474', '1058671', '1435', '2', '300', '下单', '下单成功', '1693743318', '738.97');
INSERT INTO `wp_price_log` VALUES ('3475', '1058686', '53', '2', '5000', '提现', '提现申请', '1693743321', '5000.00');
INSERT INTO `wp_price_log` VALUES ('3476', '1058663', '1429', '1', '21719.87', '结单', '订单到期获利结算', '1693743325', '21719.87');
INSERT INTO `wp_price_log` VALUES ('3477', '1058660', '1436', '2', '1000', '下单', '下单成功', '1693743328', '301.67');
INSERT INTO `wp_price_log` VALUES ('3478', '1058666', '1430', '1', '1536.99', '结单', '订单到期获利结算', '1693743354', '10513.78');
INSERT INTO `wp_price_log` VALUES ('3479', '1058684', '1431', '1', '7709.56', '结单', '订单到期获利结算', '1693743358', '13188.76');
INSERT INTO `wp_price_log` VALUES ('3480', '1058682', '1437', '2', '5000', '下单', '下单成功', '1693743367', '19398.85');
INSERT INTO `wp_price_log` VALUES ('3481', '1058679', '1432', '1', '18620.91', '结单', '订单到期获利结算', '1693743370', '28620.91');
INSERT INTO `wp_price_log` VALUES ('3482', '1058678', '1433', '1', '44367.33', '结单', '订单到期获利结算', '1693743377', '44367.33');
INSERT INTO `wp_price_log` VALUES ('3483', '1058663', '1438', '2', '21719.87', '下单', '下单成功', '1693743424', '0');
INSERT INTO `wp_price_log` VALUES ('3484', '1058680', '1439', '2', '10000', '下单', '下单成功', '1693743429', '8436.14');
INSERT INTO `wp_price_log` VALUES ('3485', '1058657', '54', '2', '153', '提现', '提现申请', '1693743459', '10000.40');
INSERT INTO `wp_price_log` VALUES ('3486', '1058675', '1434', '1', '9480.3', '结单', '订单到期获利结算', '1693743481', '10140.47');
INSERT INTO `wp_price_log` VALUES ('3487', '1058678', '58', '2', '500', '提现', '提现申请', '1693743491', '43867.33');
INSERT INTO `wp_price_log` VALUES ('3488', '1058671', '1435', '1', '585.3', '结单', '订单到期获利结算', '1693743498', '1324.27');
INSERT INTO `wp_price_log` VALUES ('3489', '1058662', '59', '2', '1000', '提现', '提现申请', '1693743509', '9758.00');
INSERT INTO `wp_price_log` VALUES ('3490', '1058662', '60', '2', '1000', '提现', '提现申请', '1693743510', '8758.00');
INSERT INTO `wp_price_log` VALUES ('3491', '1058662', '61', '2', '1000', '提现', '提现申请', '1693743510', '7758.00');
INSERT INTO `wp_price_log` VALUES ('3492', '1058660', '1436', '1', '1875.86', '结单', '订单到期获利结算', '1693743511', '2177.53');
INSERT INTO `wp_price_log` VALUES ('3493', '1058682', '1437', '1', '7505', '结单', '订单到期获利结算', '1693743550', '26903.85');
INSERT INTO `wp_price_log` VALUES ('3494', '1058662', '1440', '2', '5000', '下单', '下单成功', '1693743562', '2758');
INSERT INTO `wp_price_log` VALUES ('3495', '1058678', '62', '2', '500', '提现', '提现申请', '1693743595', '43367.33');
INSERT INTO `wp_price_log` VALUES ('3496', '1058663', '1438', '1', '38863.82', '结单', '订单到期获利结算', '1693743604', '38863.82');
INSERT INTO `wp_price_log` VALUES ('3497', '1058680', '1439', '1', '15655.74', '结单', '订单到期获利结算', '1693743610', '24091.88');
INSERT INTO `wp_price_log` VALUES ('3498', '1058663', '1441', '2', '38863.82', '下单', '下单成功', '1693743631', '0');
INSERT INTO `wp_price_log` VALUES ('3499', '1058660', '1442', '2', '2000', '下单', '下单成功', '1693743636', '177.53');
INSERT INTO `wp_price_log` VALUES ('3500', '1058675', '1443', '2', '3000', '下单', '下单成功', '1693743644', '7140.47');
INSERT INTO `wp_price_log` VALUES ('3501', '1058679', '63', '2', '8000', '提现', '提现申请', '1693743668', '20620.91');
INSERT INTO `wp_price_log` VALUES ('3502', '1058673', '64', '2', '6410', '提现', '提现申请', '1693743676', '0.43');
INSERT INTO `wp_price_log` VALUES ('3503', '1058662', '1440', '1', '5000.0', '结单', '订单到期获利结算', '1693743742', '7758.00');
INSERT INTO `wp_price_log` VALUES ('3504', '1058666', '1444', '2', '1000', '下单', '下单成功', '1693743765', '9513.78');
INSERT INTO `wp_price_log` VALUES ('3505', '1058662', '1445', '2', '5000', '下单', '下单成功', '1693743803', '2758');
INSERT INTO `wp_price_log` VALUES ('3506', '1058663', '1441', '1', '77007.16', '结单', '订单到期获利结算', '1693743811', '77007.16');
INSERT INTO `wp_price_log` VALUES ('3507', '1058676', '1446', '2', '1000', '下单', '下单成功', '1693743817', '8646.69');
INSERT INTO `wp_price_log` VALUES ('3508', '1058660', '1442', '1', '3879.44', '结单', '订单到期获利结算', '1693743817', '4056.97');
INSERT INTO `wp_price_log` VALUES ('3509', '1058675', '1443', '1', '5955.16', '结单', '订单到期获利结算', '1693743826', '13095.63');
INSERT INTO `wp_price_log` VALUES ('3510', '1058676', '1447', '2', '1000', '下单', '下单成功', '1693743841', '7646.69');
INSERT INTO `wp_price_log` VALUES ('3511', '1058663', '1448', '2', '77007.16', '下单', '下单成功', '1693743856', '0');
INSERT INTO `wp_price_log` VALUES ('3512', '1058666', '1449', '2', '1000', '下单', '下单成功', '1693743858', '8513.78');
INSERT INTO `wp_price_log` VALUES ('3513', '1058675', '1450', '2', '6000', '下单', '下单成功', '1693743862', '7095.63');
INSERT INTO `wp_price_log` VALUES ('3514', '1058676', '1451', '2', '1000', '下单', '下单成功', '1693743886', '6646.69');
INSERT INTO `wp_price_log` VALUES ('3515', '1058666', '1452', '2', '1000', '下单', '下单成功', '1693743894', '7513.78');
INSERT INTO `wp_price_log` VALUES ('3516', '1058666', '1444', '1', '1519.62', '结单', '订单到期获利结算', '1693743945', '9033.40');
INSERT INTO `wp_price_log` VALUES ('3517', '1058673', '66', '1', '5000.00', '充值', '会员充值', '1693743952', '0.43');
INSERT INTO `wp_price_log` VALUES ('3518', '1058673', '65', '1', '5000.00', '充值', '会员充值', '1693743955', '5000.43');
INSERT INTO `wp_price_log` VALUES ('3519', '1058681', '57', '1', '1000.00', '充值', '会员充值', '1693743959', '0.00');
INSERT INTO `wp_price_log` VALUES ('3520', '1058681', '56', '1', '10000.00', '充值', '会员充值', '1693743962', '1000.00');
INSERT INTO `wp_price_log` VALUES ('3521', '1058681', '55', '1', '10000.00', '充值', '会员充值', '1693743966', '11000.00');
INSERT INTO `wp_price_log` VALUES ('3522', '1058677', '1453', '2', '1000', '下单', '下单成功', '1693743967', '29403.4');
INSERT INTO `wp_price_log` VALUES ('3523', '1058662', '1445', '1', '3780.1', '结单', '订单到期获利结算', '1693743984', '6538.10');
INSERT INTO `wp_price_log` VALUES ('3524', '1058676', '1446', '1', '1624.57', '结单', '订单到期获利结算', '1693744000', '8271.26');
INSERT INTO `wp_price_log` VALUES ('3525', '1058676', '1447', '1', '1875.93', '结单', '订单到期获利结算', '1693744023', '10147.19');
INSERT INTO `wp_price_log` VALUES ('3526', '1058663', '1448', '1', '133109.9', '结单', '订单到期获利结算', '1693744039', '133109.90');
INSERT INTO `wp_price_log` VALUES ('3527', '1058666', '1449', '1', '1838.02', '结单', '订单到期获利结算', '1693744039', '10871.42');
INSERT INTO `wp_price_log` VALUES ('3528', '1058675', '1450', '1', '11744.53', '结单', '订单到期获利结算', '1693744042', '18840.16');
INSERT INTO `wp_price_log` VALUES ('3529', '1058662', '1454', '2', '5000', '下单', '下单成功', '1693744058', '1538.1');
INSERT INTO `wp_price_log` VALUES ('3530', '1058676', '1451', '1', '1807.41', '结单', '订单到期获利结算', '1693744066', '11954.60');
INSERT INTO `wp_price_log` VALUES ('3531', '1058666', '1452', '1', '1768.46', '结单', '订单到期获利结算', '1693744075', '12639.88');
INSERT INTO `wp_price_log` VALUES ('3532', '1058670', '67', '2', '2000', '提现', '提现申请', '1693744118', '8424.08');
INSERT INTO `wp_price_log` VALUES ('3533', '1058677', '1453', '1', '1846.82', '结单', '订单到期获利结算', '1693744150', '31250.22');
INSERT INTO `wp_price_log` VALUES ('3534', '1058660', '1455', '2', '4000', '下单', '下单成功', '1693744154', '56.97');
INSERT INTO `wp_price_log` VALUES ('3535', '1058663', '1456', '2', '133109.9', '下单', '下单成功', '1693744181', '0');
INSERT INTO `wp_price_log` VALUES ('3536', '1058662', '1457', '2', '1000', '下单', '下单成功', '1693744206', '538.1');
INSERT INTO `wp_price_log` VALUES ('3537', '1058662', '1454', '1', '3997.23', '结单', '订单到期获利结算', '1693744240', '4535.33');
INSERT INTO `wp_price_log` VALUES ('3538', '1058666', '1458', '2', '1000', '下单', '下单成功', '1693744284', '11639.88');
INSERT INTO `wp_price_log` VALUES ('3539', '1058657', '1459', '2', '1000', '下单', '下单成功', '1693744298', '9000.4');
INSERT INTO `wp_price_log` VALUES ('3540', '1058676', '1460', '2', '1000', '下单', '下单成功', '1693744305', '10954.6');
INSERT INTO `wp_price_log` VALUES ('3541', '1058660', '1455', '1', '6658.34', '结单', '订单到期获利结算', '1693744335', '6715.31');
INSERT INTO `wp_price_log` VALUES ('3542', '1058663', '1456', '1', '230359.78', '结单', '订单到期获利结算', '1693744363', '230359.78');
INSERT INTO `wp_price_log` VALUES ('3543', '1058675', '1461', '2', '18000', '下单', '下单成功', '1693744367', '840.16');
INSERT INTO `wp_price_log` VALUES ('3544', '1058662', '1457', '1', '1559.54', '结单', '订单到期获利结算', '1693744386', '6094.87');
INSERT INTO `wp_price_log` VALUES ('3545', '1058684', '1462', '2', '10000', '下单', '下单成功', '1693744391', '3188.76');
INSERT INTO `wp_price_log` VALUES ('3546', '1058676', '1463', '2', '1000', '下单', '下单成功', '1693744413', '9954.6');
INSERT INTO `wp_price_log` VALUES ('3547', '1058663', '1464', '2', '230359.78', '下单', '下单成功', '1693744419', '0');
INSERT INTO `wp_price_log` VALUES ('3548', '1058662', '1465', '2', '5000', '下单', '下单成功', '1693744421', '1094.87');
INSERT INTO `wp_price_log` VALUES ('3549', '1058666', '1466', '2', '1000', '下单', '下单成功', '1693744431', '10639.88');
INSERT INTO `wp_price_log` VALUES ('3550', '1058666', '1458', '1', '1552.34', '结单', '订单到期获利结算', '1693744465', '12192.22');
INSERT INTO `wp_price_log` VALUES ('3551', '1058657', '1459', '1', '1872.04', '结单', '订单到期获利结算', '1693744479', '10872.44');
INSERT INTO `wp_price_log` VALUES ('3552', '1058676', '1460', '1', '1803.79', '结单', '订单到期获利结算', '1693744485', '11758.39');
INSERT INTO `wp_price_log` VALUES ('3553', '1058676', '1467', '2', '1000', '下单', '下单成功', '1693744531', '10758.39');
INSERT INTO `wp_price_log` VALUES ('3554', '1058675', '1461', '1', '35127.01', '结单', '订单到期获利结算', '1693744548', '35967.17');
INSERT INTO `wp_price_log` VALUES ('3555', '1058684', '1462', '1', '18592.82', '结单', '订单到期获利结算', '1693744572', '21781.58');
INSERT INTO `wp_price_log` VALUES ('3556', '1058675', '1468', '2', '10200', '下单', '下单成功', '1693744578', '25767.17');
INSERT INTO `wp_price_log` VALUES ('3557', '1058666', '1469', '2', '1020', '下单', '下单成功', '1693744591', '11172.22');
INSERT INTO `wp_price_log` VALUES ('3558', '1058676', '1463', '1', '1901.56', '结单', '订单到期获利结算', '1693744594', '12659.95');
INSERT INTO `wp_price_log` VALUES ('3559', '1058663', '1464', '1', '381526.07', '结单', '订单到期获利结算', '1693744600', '381526.07');
INSERT INTO `wp_price_log` VALUES ('3560', '1058662', '1465', '1', '3859.54', '结单', '订单到期获利结算', '1693744602', '4954.41');
INSERT INTO `wp_price_log` VALUES ('3561', '1058670', '1470', '2', '1020', '下单', '下单成功', '1693744603', '7404.08');
INSERT INTO `wp_price_log` VALUES ('3562', '1058666', '1466', '1', '1735.17', '结单', '订单到期获利结算', '1693744612', '12907.39');
INSERT INTO `wp_price_log` VALUES ('3563', '1058686', '71', '2', '5000', '提现', '提现申请', '1693744633', '0.00');
INSERT INTO `wp_price_log` VALUES ('3564', '1058660', '1471', '2', '5100', '下单', '下单成功', '1693744710', '1615.31');
INSERT INTO `wp_price_log` VALUES ('3565', '1058676', '1467', '1', '1716.64', '结单', '订单到期获利结算', '1693744711', '14376.59');
INSERT INTO `wp_price_log` VALUES ('3566', '1058676', '1472', '2', '1020', '下单', '下单成功', '1693744724', '13356.59');
INSERT INTO `wp_price_log` VALUES ('3567', '1058675', '1468', '1', '17747.15', '结单', '订单到期获利结算', '1693744758', '43514.32');
INSERT INTO `wp_price_log` VALUES ('3568', '1058666', '1469', '1', '1506.07', '结单', '订单到期获利结算', '1693744773', '14413.46');
INSERT INTO `wp_price_log` VALUES ('3569', '1058676', '1473', '2', '1020', '下单', '下单成功', '1693744778', '12336.59');
INSERT INTO `wp_price_log` VALUES ('3570', '1058670', '1470', '1', '1648.96', '结单', '订单到期获利结算', '1693744785', '9053.04');
INSERT INTO `wp_price_log` VALUES ('3571', '1058666', '1474', '2', '1020', '下单', '下单成功', '1693744824', '13393.46');
INSERT INTO `wp_price_log` VALUES ('3572', '1058677', '72', '1', '100.00', '充值', '会员充值', '1693744834', '31250.22');
INSERT INTO `wp_price_log` VALUES ('3573', '1058688', '70', '1', '50000.00', '充值', '会员充值', '1693744837', '0.00');
INSERT INTO `wp_price_log` VALUES ('3574', '1058688', '69', '1', '50000.00', '充值', '会员充值', '1693744840', '50000.00');
INSERT INTO `wp_price_log` VALUES ('3575', '1058673', '1475', '2', '1020', '下单', '下单成功', '1693744842', '7651.71');
INSERT INTO `wp_price_log` VALUES ('3576', '1058662', '68', '1', '10000.00', '充值', '会员充值', '1693744844', '4954.41');
INSERT INTO `wp_price_log` VALUES ('3577', '1058677', '1476', '2', '10200', '下单', '下单成功', '1693744851', '21150.22');
INSERT INTO `wp_price_log` VALUES ('3578', '1058655', '73', '2', '9541.29', '提现', '提现申请', '1693744877', '0.00');
INSERT INTO `wp_price_log` VALUES ('3579', '1058660', '1471', '1', '8670.01', '结单', '订单到期获利结算', '1693744890', '10285.32');
INSERT INTO `wp_price_log` VALUES ('3580', '1058668', '74', '2', '19703.21', '提现', '提现申请', '1693744902', '0.00');
INSERT INTO `wp_price_log` VALUES ('3581', '1058676', '1472', '1', '1785.53', '结单', '订单到期获利结算', '1693744906', '14122.12');
INSERT INTO `wp_price_log` VALUES ('3582', '1058688', '1477', '2', '10200', '下单', '下单成功', '1693744926', '89800');
INSERT INTO `wp_price_log` VALUES ('3583', '1058676', '1473', '1', '1979.45', '结单', '订单到期获利结算', '1693744959', '16101.57');
INSERT INTO `wp_price_log` VALUES ('3584', '1058669', '1478', '2', '5100', '下单', '下单成功', '1693744967', '4776.59');
INSERT INTO `wp_price_log` VALUES ('3585', '1058663', '1479', '2', '204000', '下单', '下单成功', '1693744971', '177526.07');
INSERT INTO `wp_price_log` VALUES ('3586', '1058674', '75', '2', '76', '提现', '提现申请', '1693744997', '1900.12');
INSERT INTO `wp_price_log` VALUES ('3587', '1058666', '1474', '1', '1994.4', '结单', '订单到期获利结算', '1693745005', '15387.86');
INSERT INTO `wp_price_log` VALUES ('3588', '1058674', '76', '2', '12', '提现', '提现申请', '1693745010', '1888.12');
INSERT INTO `wp_price_log` VALUES ('3589', '1058673', '1475', '1', '1586.19', '结单', '订单到期获利结算', '1693745022', '9237.90');
INSERT INTO `wp_price_log` VALUES ('3590', '1058677', '1476', '1', '19461.75', '结单', '订单到期获利结算', '1693745031', '40611.97');
INSERT INTO `wp_price_log` VALUES ('3591', '1058660', '1480', '2', '10200', '下单', '下单成功', '1693745042', '85.32');
INSERT INTO `wp_price_log` VALUES ('3592', '1058688', '1477', '1', '7045.09', '结单', '订单到期获利结算', '1693745106', '96845.09');
INSERT INTO `wp_price_log` VALUES ('3593', '1058669', '1478', '1', '8826.15', '结单', '订单到期获利结算', '1693745150', '13602.74');
INSERT INTO `wp_price_log` VALUES ('3594', '1058663', '1479', '1', '314413.83', '结单', '订单到期获利结算', '1693745152', '491939.90');
INSERT INTO `wp_price_log` VALUES ('3595', '1058671', '1481', '2', '1224', '下单', '下单成功', '1693745204', '100.27');
INSERT INTO `wp_price_log` VALUES ('3596', '1058660', '1480', '1', '15251.15', '结单', '订单到期获利结算', '1693745223', '15336.47');
INSERT INTO `wp_price_log` VALUES ('3597', '1058663', '1482', '2', '408000', '下单', '下单成功', '1693745253', '83939.9');
INSERT INTO `wp_price_log` VALUES ('3598', '1058672', '77', '2', '1737.64', '提现', '提现申请', '1693745277', '0.00');
INSERT INTO `wp_price_log` VALUES ('3599', '1058662', '1483', '2', '10200', '下单', '下单成功', '1693745381', '4754.41');
INSERT INTO `wp_price_log` VALUES ('3600', '1058671', '1481', '1', '1890.02', '结单', '订单到期获利结算', '1693745386', '1990.29');
INSERT INTO `wp_price_log` VALUES ('3601', '1058663', '1482', '1', '744378.86', '结单', '订单到期获利结算', '1693745434', '828318.76');
INSERT INTO `wp_price_log` VALUES ('3602', '1058688', '78', '2', '50000', '提现', '提现申请', '1693745439', '46845.09');
INSERT INTO `wp_price_log` VALUES ('3603', '1058688', '79', '2', '20000', '提现', '提现申请', '1693745471', '26845.09');
INSERT INTO `wp_price_log` VALUES ('3604', '1058660', '1484', '2', '15300', '下单', '下单成功', '1693745534', '36.469999999999');
INSERT INTO `wp_price_log` VALUES ('3605', '1058662', '1483', '1', '7540.4', '结单', '订单到期获利结算', '1693745562', '12294.81');
INSERT INTO `wp_price_log` VALUES ('3606', '1058660', '1484', '1', '28371.41', '结单', '订单到期获利结算', '1693745715', '28407.88');
INSERT INTO `wp_price_log` VALUES ('3607', '1058660', '1485', '2', '25500', '下单', '下单成功', '1693745804', '2907.88');
INSERT INTO `wp_price_log` VALUES ('3608', '1058660', '1485', '1', '48064.38', '结单', '订单到期获利结算', '1693745985', '50972.26');
INSERT INTO `wp_price_log` VALUES ('3609', '1058660', '1486', '2', '49980', '下单', '下单成功', '1693746050', '992.26');
INSERT INTO `wp_price_log` VALUES ('3610', '1058660', '1486', '1', '93671.17', '结单', '订单到期获利结算', '1693746232', '94663.43');
INSERT INTO `wp_price_log` VALUES ('3611', '1058660', '1487', '2', '91800', '下单', '下单成功', '1693746437', '2863.43');
INSERT INTO `wp_price_log` VALUES ('3612', '1058660', '1487', '1', '150847.44', '结单', '订单到期获利结算', '1693746618', '153710.87');
INSERT INTO `wp_price_log` VALUES ('3613', '1058660', '1488', '2', '153000', '下单', '下单成功', '1693746798', '710.87');
INSERT INTO `wp_price_log` VALUES ('3614', '1058660', '1488', '1', '233850.78', '结单', '订单到期获利结算', '1693746978', '234561.65');
INSERT INTO `wp_price_log` VALUES ('3615', '1058655', '80', '1', '50000.00', '充值', '会员充值', '1693747399', '0.00');
INSERT INTO `wp_price_log` VALUES ('3616', '1058660', '1489', '2', '224400', '下单', '下单成功', '1693747656', '10161.65');
INSERT INTO `wp_price_log` VALUES ('3617', '1058660', '1489', '1', '333454.13', '结单', '订单到期获利结算', '1693747837', '343615.78');
INSERT INTO `wp_price_log` VALUES ('3618', '1058675', '1490', '2', '40800', '下单', '下单成功', '1693748934', '2714.32');
INSERT INTO `wp_price_log` VALUES ('3619', '1058675', '1490', '1', '76226.76', '结单', '订单到期获利结算', '1693749115', '78941.08');
INSERT INTO `wp_price_log` VALUES ('3620', '1058675', '1491', '2', '76500', '下单', '下单成功', '1693749366', '2441.08');
INSERT INTO `wp_price_log` VALUES ('3621', '1058675', '1491', '1', '143822.48', '结单', '订单到期获利结算', '1693749547', '146263.56');
INSERT INTO `wp_price_log` VALUES ('3622', '1058666', '1492', '2', '1020', '下单', '下单成功', '1693749606', '14367.86');
INSERT INTO `wp_price_log` VALUES ('3623', '1058666', '1492', '1', '1875.88', '结单', '订单到期获利结算', '1693749787', '16243.74');
INSERT INTO `wp_price_log` VALUES ('3624', '1058682', '1493', '2', '5100', '下单', '下单成功', '1693751464', '21803.85');
INSERT INTO `wp_price_log` VALUES ('3625', '1058663', '1494', '2', '612000', '下单', '下单成功', '1693751543', '216318.76');
INSERT INTO `wp_price_log` VALUES ('3626', '1058682', '1493', '1', '9162.8', '结单', '订单到期获利结算', '1693751644', '30966.65');
INSERT INTO `wp_price_log` VALUES ('3627', '1058660', '1495', '2', '336600', '下单', '下单成功', '1693751657', '7015.78');
INSERT INTO `wp_price_log` VALUES ('3628', '1058663', '1494', '1', '947632.6', '结单', '订单到期获利结算', '1693751725', '1163951.36');
INSERT INTO `wp_price_log` VALUES ('3629', '1058663', '1496', '2', '918000', '下单', '下单成功', '1693751835', '245951.36');
INSERT INTO `wp_price_log` VALUES ('3630', '1058660', '1495', '1', '568436.83', '结单', '订单到期获利结算', '1693751839', '575452.61');
INSERT INTO `wp_price_log` VALUES ('3631', '1058663', '1496', '1', '1504104.96', '结单', '订单到期获利结算', '1693752015', '1750056.32');
INSERT INTO `wp_price_log` VALUES ('3632', '1058666', '1497', '2', '1020', '下单', '下单成功', '1693752059', '15223.74');
INSERT INTO `wp_price_log` VALUES ('3633', '1058666', '1497', '1', '1687.39', '结单', '订单到期获利结算', '1693752241', '16911.13');
INSERT INTO `wp_price_log` VALUES ('3634', '1058666', '1498', '2', '102', '下单', '下单成功', '1693753545', '16809.13');
INSERT INTO `wp_price_log` VALUES ('3635', '1058666', '1498', '1', '188.19', '结单', '订单到期获利结算', '1693753725', '16997.32');
INSERT INTO `wp_price_log` VALUES ('3636', '1058666', '1499', '2', '1020', '下单', '下单成功', '1693754006', '15977.32');
INSERT INTO `wp_price_log` VALUES ('3637', '1058666', '1499', '1', '1932.41', '结单', '订单到期获利结算', '1693754188', '17909.73');
INSERT INTO `wp_price_log` VALUES ('3638', '1058663', '1500', '2', '1020000', '下单', '下单成功', '1693754626', '730056.32');
INSERT INTO `wp_price_log` VALUES ('3639', '1058684', '1501', '2', '5100', '下单', '下单成功', '1693754657', '16681.58');
INSERT INTO `wp_price_log` VALUES ('3640', '1058663', '1500', '1', '1998498.74', '结单', '订单到期获利结算', '1693754809', '2728555.06');
INSERT INTO `wp_price_log` VALUES ('3641', '1058684', '1501', '1', '8785.07', '结单', '订单到期获利结算', '1693754840', '25466.65');
INSERT INTO `wp_price_log` VALUES ('3642', '1058663', '1502', '2', '2040000', '下单', '下单成功', '1693754859', '688555.06');
INSERT INTO `wp_price_log` VALUES ('3643', '1058660', '1503', '2', '561000', '下单', '下单成功', '1693754889', '14452.61');
INSERT INTO `wp_price_log` VALUES ('3644', '1058663', '1502', '1', '3274331.34', '结单', '订单到期获利结算', '1693755040', '3962886.40');
INSERT INTO `wp_price_log` VALUES ('3645', '1058670', '1504', '2', '1020', '下单', '下单成功', '1693755067', '8033.04');
INSERT INTO `wp_price_log` VALUES ('3646', '1058660', '1503', '1', '968634.39', '结单', '订单到期获利结算', '1693755070', '983087.00');
INSERT INTO `wp_price_log` VALUES ('3647', '1058681', '1505', '2', '10200', '下单', '下单成功', '1693755122', '10800');
INSERT INTO `wp_price_log` VALUES ('3648', '1058670', '1504', '1', '1519.86', '结单', '订单到期获利结算', '1693755250', '9552.90');
INSERT INTO `wp_price_log` VALUES ('3649', '1058681', '1505', '1', '15806.26', '结单', '订单到期获利结算', '1693755303', '26606.26');
INSERT INTO `wp_price_log` VALUES ('3650', '1058663', '1506', '2', '3060000', '下单', '下单成功', '1693758931', '902886.4');
INSERT INTO `wp_price_log` VALUES ('3651', '1058663', '1506', '1', '5528235.46', '结单', '订单到期获利结算', '1693759120', '6431121.86');
INSERT INTO `wp_price_log` VALUES ('3652', '1058689', '0', '1', '5', '彩金', '注册送彩金', '1693801208', '0');
INSERT INTO `wp_price_log` VALUES ('3653', '1058670', '1507', '2', '1020', '下单', '下单成功', '1693801364', '8532.9');
INSERT INTO `wp_price_log` VALUES ('3654', '1058670', '1507', '1', '1871.85', '结单', '订单到期获利结算', '1693801549', '10404.75');
INSERT INTO `wp_price_log` VALUES ('3655', '1058670', '1508', '2', '1020', '下单', '下单成功', '1693801660', '9384.75');
INSERT INTO `wp_price_log` VALUES ('3656', '1058670', '1508', '1', '1714.89', '结单', '订单到期获利结算', '1693801844', '11099.64');
INSERT INTO `wp_price_log` VALUES ('3657', '1058671', '1509', '2', '510', '下单', '下单成功', '1693803489', '1480.29');
INSERT INTO `wp_price_log` VALUES ('3658', '1058671', '1509', '1', '863.29', '结单', '订单到期获利结算', '1693803671', '2343.58');
INSERT INTO `wp_price_log` VALUES ('3659', '1058663', '1510', '2', '4080000', '下单', '下单成功', '1693804273', '2351121.86');
INSERT INTO `wp_price_log` VALUES ('3660', '1058663', '1510', '1', '7177924.12', '结单', '订单到期获利结算', '1693804460', '9529045.98');
INSERT INTO `wp_price_log` VALUES ('3661', '1058663', '1511', '2', '8160000', '下单', '下单成功', '1693804491', '1369045.98');
INSERT INTO `wp_price_log` VALUES ('3662', '1058663', '1511', '1', '13171062.72', '结单', '订单到期获利结算', '1693804677', '14540108.70');
INSERT INTO `wp_price_log` VALUES ('3663', '1058663', '1512', '2', '13260000', '下单', '下单成功', '1693804771', '1280108.7');
INSERT INTO `wp_price_log` VALUES ('3664', '1058663', '1512', '1', '22843380.95', '结单', '订单到期获利结算', '1693804952', '24123489.65');
INSERT INTO `wp_price_log` VALUES ('3665', '1058666', '1513', '2', '1020', '下单', '下单成功', '1693805204', '16889.73');
INSERT INTO `wp_price_log` VALUES ('3666', '1058666', '85', '2', '5000', '提现', '提现申请', '1693805227', '11889.73');
INSERT INTO `wp_price_log` VALUES ('3667', '1058676', '1514', '2', '1020', '下单', '下单成功', '1693805243', '15081.57');
INSERT INTO `wp_price_log` VALUES ('3668', '1058676', '86', '2', '5000', '提现', '提现申请', '1693805257', '10081.57');
INSERT INTO `wp_price_log` VALUES ('3669', '1058663', '1515', '2', '22440000', '下单', '下单成功', '1693805385', '1683489.65');
INSERT INTO `wp_price_log` VALUES ('3670', '1058666', '1513', '1', '1803.85', '结单', '订单到期获利结算', '1693805385', '13693.58');
INSERT INTO `wp_price_log` VALUES ('3671', '1058676', '1514', '1', '1856.69', '结单', '订单到期获利结算', '1693805425', '11938.26');
INSERT INTO `wp_price_log` VALUES ('3672', '1058663', '1515', '1', '34713995.8', '结单', '订单到期获利结算', '1693805570', '36397485.45');
INSERT INTO `wp_price_log` VALUES ('3673', '1058663', '1516', '2', '30600000', '下单', '下单成功', '1693805582', '5797485.45');
INSERT INTO `wp_price_log` VALUES ('3674', '1058663', '1516', '1', '57916334.65', '结单', '订单到期获利结算', '1693805771', '63713820.10');
INSERT INTO `wp_price_log` VALUES ('3675', '1058676', '1517', '2', '1020', '下单', '下单成功', '1693806085', '10918.26');
INSERT INTO `wp_price_log` VALUES ('3676', '1058676', '1518', '2', '1020', '下单', '下单成功', '1693806092', '9898.26');
INSERT INTO `wp_price_log` VALUES ('3677', '1058676', '1517', '1', '1626.1', '结单', '订单到期获利结算', '1693806272', '11524.36');
INSERT INTO `wp_price_log` VALUES ('3678', '1058676', '1518', '1', '1723.45', '结单', '订单到期获利结算', '1693806281', '13247.81');
INSERT INTO `wp_price_log` VALUES ('3679', '1058663', '1519', '2', '61200000', '下单', '下单成功', '1693807536', '2513820.1');
INSERT INTO `wp_price_log` VALUES ('3680', '1058663', '1519', '1', '90467724.94', '结单', '订单到期获利结算', '1693807719', '92981545.04');
INSERT INTO `wp_price_log` VALUES ('3681', '1058663', '1520', '2', '86700000', '下单', '下单成功', '1693808589', '6281545.04');
INSERT INTO `wp_price_log` VALUES ('3682', '1058670', '1521', '2', '1020', '下单', '下单成功', '1693808822', '10079.64');
INSERT INTO `wp_price_log` VALUES ('3683', '1058670', '1521', '1', '1648.25', '结单', '订单到期获利结算', '1693809013', '11727.89');
INSERT INTO `wp_price_log` VALUES ('3684', '1058663', '1522', '2', '102000000', '下单', '下单成功', '1693809358', '68524032.45');
INSERT INTO `wp_price_log` VALUES ('3685', '1058667', '1523', '2', '1020', '下单', '下单成功', '1693809480', '589.65');
INSERT INTO `wp_price_log` VALUES ('3686', '1058663', '1524', '2', '91800000', '下单', '下单成功', '1693809644', '166375821.82');
INSERT INTO `wp_price_log` VALUES ('3687', '1058667', '1523', '1', '1662.44', '结单', '订单到期获利结算', '1693809669', '2252.09');
INSERT INTO `wp_price_log` VALUES ('3688', '1058676', '1525', '2', '5100', '下单', '下单成功', '1693809789', '8147.81');
INSERT INTO `wp_price_log` VALUES ('3689', '1058670', '1526', '2', '1020', '下单', '下单成功', '1693809957', '10707.89');
INSERT INTO `wp_price_log` VALUES ('3690', '1058676', '1525', '1', '8669.8', '结单', '订单到期获利结算', '1693809971', '16817.61');
INSERT INTO `wp_price_log` VALUES ('3691', '1058684', '1527', '2', '10200', '下单', '下单成功', '1693810001', '15266.65');
INSERT INTO `wp_price_log` VALUES ('3692', '1058663', '87', '2', '100000', '提现', '提现申请', '1693810059', '320947561.61');
INSERT INTO `wp_price_log` VALUES ('3693', '1058670', '1526', '1', '1632.99', '结单', '订单到期获利结算', '1693810141', '12340.88');
INSERT INTO `wp_price_log` VALUES ('3694', '1058684', '1527', '1', '16386.16', '结单', '订单到期获利结算', '1693810183', '31652.81');
INSERT INTO `wp_price_log` VALUES ('3695', '1058667', '1528', '2', '2040', '下单', '下单成功', '1693810446', '212.09');
INSERT INTO `wp_price_log` VALUES ('3696', '1058676', '1529', '2', '1020', '下单', '下单成功', '1693810476', '15797.61');
INSERT INTO `wp_price_log` VALUES ('3697', '1058670', '1530', '2', '1020', '下单', '下单成功', '1693810521', '11320.88');
INSERT INTO `wp_price_log` VALUES ('3698', '1058690', '0', '1', '5', '彩金', '注册送彩金', '1693810582', '0');
INSERT INTO `wp_price_log` VALUES ('3699', '1058667', '1528', '1', '3391.97', '结单', '订单到期获利结算', '1693810630', '3604.06');
INSERT INTO `wp_price_log` VALUES ('3700', '1058676', '1529', '1', '1862.8', '结单', '订单到期获利结算', '1693810662', '17660.41');
INSERT INTO `wp_price_log` VALUES ('3701', '1058670', '1530', '1', '1654.61', '结单', '订单到期获利结算', '1693810702', '12975.49');
INSERT INTO `wp_price_log` VALUES ('3702', '1058689', '84', '1', '10000.00', '充值', '会员充值', '1693810977', '5.00');
INSERT INTO `wp_price_log` VALUES ('3703', '1058664', '83', '1', '5000.00', '充值', '会员充值', '1693810980', '0.34');
INSERT INTO `wp_price_log` VALUES ('3704', '1058685', '82', '1', '1000.00', '充值', '会员充值', '1693810983', '0.00');
INSERT INTO `wp_price_log` VALUES ('3705', '1058677', '81', '1', '10000.00', '充值', '会员充值', '1693810987', '40611.97');
INSERT INTO `wp_price_log` VALUES ('3706', '1058662', '1531', '2', '10200', '下单', '下单成功', '1693811088', '2094.81');
INSERT INTO `wp_price_log` VALUES ('3707', '1058671', '1532', '2', '2040', '下单', '下单成功', '1693811216', '303.58');
INSERT INTO `wp_price_log` VALUES ('3708', '1058667', '1533', '2', '3060', '下单', '下单成功', '1693811250', '544.06');
INSERT INTO `wp_price_log` VALUES ('3709', '1058662', '1531', '1', '18109.82', '结单', '订单到期获利结算', '1693811277', '20204.63');
INSERT INTO `wp_price_log` VALUES ('3710', '1058671', '1532', '1', '3722.75', '结单', '订单到期获利结算', '1693811398', '4026.33');
INSERT INTO `wp_price_log` VALUES ('3711', '1058667', '1533', '1', '5842.17', '结单', '订单到期获利结算', '1693811431', '6386.23');
INSERT INTO `wp_price_log` VALUES ('3712', '1058670', '1534', '2', '1020', '下单', '下单成功', '1693811702', '11955.49');
INSERT INTO `wp_price_log` VALUES ('3713', '1058670', '1534', '1', '1721', '结单', '订单到期获利结算', '1693811882', '13676.49');

-- ----------------------------
-- Table structure for wp_productclass
-- ----------------------------
DROP TABLE IF EXISTS `wp_productclass`;
CREATE TABLE `wp_productclass` (
  `pcid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `pcname` varchar(8) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  PRIMARY KEY (`pcid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_productclass
-- ----------------------------
INSERT INTO `wp_productclass` VALUES ('1', '油', '1');
INSERT INTO `wp_productclass` VALUES ('2', '金属', '1');
INSERT INTO `wp_productclass` VALUES ('3', '啥的萨达是123', '1');
INSERT INTO `wp_productclass` VALUES ('4', '指数', '1');
INSERT INTO `wp_productclass` VALUES ('5', '外汇', '0');

-- ----------------------------
-- Table structure for wp_productdata
-- ----------------------------
DROP TABLE IF EXISTS `wp_productdata`;
CREATE TABLE `wp_productdata` (
  `id` int(28) NOT NULL AUTO_INCREMENT,
  `pid` varchar(18) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Price` varchar(18) DEFAULT NULL,
  `Open` varchar(18) DEFAULT NULL,
  `Close` varchar(18) DEFAULT NULL,
  `High` varchar(18) DEFAULT NULL COMMENT '最高',
  `Low` varchar(18) DEFAULT NULL COMMENT '最低',
  `Diff` varchar(18) DEFAULT NULL COMMENT '振幅',
  `DiffRate` varchar(18) DEFAULT NULL COMMENT '波幅',
  `UpdateTime` varchar(18) DEFAULT NULL,
  `rands` varchar(8) DEFAULT NULL,
  `point` varchar(8) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  `is_deal` tinyint(3) DEFAULT '0' COMMENT '是否交易中',
  `img` varchar(100) DEFAULT NULL COMMENT '图像',
  `procode` varchar(20) DEFAULT NULL COMMENT '请求代码',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序从小到大',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_productdata
-- ----------------------------
INSERT INTO `wp_productdata` VALUES ('9', '11', 'Brazil Index', '5.71647', '5.9703', '5.6315', '6.0775', '5.3407', '0', '0', '1725684661', '', '', '0', '1', null, null, '5');
INSERT INTO `wp_productdata` VALUES ('10', '12', 'USD CHF', '0.84297', '0.8442', '0.8461', '0.8475', '0.8375', '0', '0', '1725684661', '', '', '0', '1', '/public/guoqi/1.png', 'fx_saudusd', '11');
INSERT INTO `wp_productdata` VALUES ('11', '13', 'OMG', '7.79554', '7.7930', '7.7929', '7.7964', '7.7888', '0', '0', '1725684661', '', '', '0', '1', '/public/guoqi/5.png', 'fx_snzdusd', '32');
INSERT INTO `wp_productdata` VALUES ('12', '14', 'XAU/USD', '2496.122', '2517.09', '2517.06', '2529.58', '2485.51', '0', '0', '1725683941', '', '', '0', '1', '/public/jpg/llg.png', 'hf_GC', '0');
INSERT INTO `wp_productdata` VALUES ('13', '15', 'Precious metal', '27.93', '28.833', '28.844', '29.137', '27.707', '0', '0', '1725684301', '', '', '0', '1', '/public/jpg/lls.png', null, '2');
INSERT INTO `wp_productdata` VALUES ('14', '16', 'USD KRW', '1.30235', '1.3000', '1.3016', '1.3036', '1.2949', '0', '0', '1725684661', '', '', '0', '1', '/public/guoqi/6.png', 'fx_seurusd', '12');
INSERT INTO `wp_productdata` VALUES ('15', '17', 'XLM', '32.02699', '32.0290', '32.0350', '32.0880', '31.8140', '0', '0', '1725684661', '', '', '0', '1', '/public/guoqi/7.png', 'fx_susdjpy', '33');
INSERT INTO `wp_productdata` VALUES ('20', '22', 'BTS', '3231.3503', '3261.15', '0', '3274.81', '3231.07', '0', '0', '1725684661', '', '', '0', '1', '/public/pjpg/AU.png', 'sz399300', '35');
INSERT INTO `wp_productdata` VALUES ('21', '23', 'XAG/USD', '27.915', '28.6990', '0', '29.1040', '27.6760', '0', '0', '1725684661', null, null, '0', '1', '/public/jpg/silver.png', null, '1');
INSERT INTO `wp_productdata` VALUES ('27', '29', 'France Index', '1004.33', '1022.000', '0', '1031.250', '1003.500', '0', '0', '1725684661', null, null, '0', '1', '/public/guoqi/2.png', null, '6');
INSERT INTO `wp_productdata` VALUES ('29', '31', 'Swiss Index', '2243.68', '2387.32', '2243.14', '2408.68', '2150.71', '0', '0', '1725684661', null, null, '0', '1', '/public/guoqi/4.png', null, '7');
INSERT INTO `wp_productdata` VALUES ('30', '32', 'DOGE', '1.31226', '1.3176', '1.3158', '1.3237', '1.3107', '0', '0', '1725684661', null, null, '0', '1', '/public/guoqi/7.png', null, '18');
INSERT INTO `wp_productdata` VALUES ('32', '34', 'USDJPY', '142.256', '143.440', '143.511', '143.890', '141.780', '0', '0', '1725684661', null, null, '0', '1', '/public/guoqi/5.png', null, '15');
INSERT INTO `wp_productdata` VALUES ('33', '35', 'UK Index', '125.52183', '130.5803', '125.5259', '134.246', '120.599', '0', '0', '1725684661', null, null, '0', '1', '/public/jpg/GU.png', null, '8');
INSERT INTO `wp_productdata` VALUES ('34', '36', 'EURUSD', '1.10847', '1.1110', '1.1107', '1.1154', '1.1065', '0', '0', '1725684661', null, null, '0', '1', '/public/jpg/EU.png', null, '17');
INSERT INTO `wp_productdata` VALUES ('36', '38', 'US Index', '53986.17023', '56620.11', '53986.16', '57013.28', '52551.12', '0', '0', '1725684661', null, null, '0', '1', '/public/guoqi/3.png', null, '4');
INSERT INTO `wp_productdata` VALUES ('37', '39', 'Japan Index', '68.14003', '69.33', '69.15', '70.13', '67.17', '0', '0', '1725684661', null, null, '0', '1', null, null, '10');
INSERT INTO `wp_productdata` VALUES ('39', '41', 'Korea Index', '2.28887', '2.261', '2.254', '2.294', '2.232', '0', '0', '1725684661', null, null, '0', '1', null, null, '9');
INSERT INTO `wp_productdata` VALUES ('40', '42', 'LTC', '63.825', '66.3', '63.83', '66.37', '61.2', '0', '0', '1725684661', null, null, '0', '1', null, null, '30');
INSERT INTO `wp_productdata` VALUES ('43', '45', 'USD Thai Baht', '0.6174', '0.6220', '0.6219', '0.6253', '0.6155', '0', '0', '1725684722', null, null, '0', '1', null, null, '13');
INSERT INTO `wp_productdata` VALUES ('52', '56', 'OIL/USD', '68.14', '69.33', '69.15', '70.13', '67.17', '0', '0', '1725684722', null, null, '0', '1', null, null, '2');
INSERT INTO `wp_productdata` VALUES ('53', '57', 'SPIF', '101.1700', '101.0500', '101.0700', '101.3900', '100.5500', '0', '0', '1725684722', null, null, '0', '1', null, null, '1');
INSERT INTO `wp_productdata` VALUES ('54', '58', 'NYMEXCNG', '2.289', '2.261', '2.254', '2.294', '2.232', '0', '0', '1725684722', null, null, '0', '1', null, null, '1');
INSERT INTO `wp_productdata` VALUES ('55', '59', 'USD Index', '101.170', '101.050', '101.070', '101.390', '100.550', '0', '0', '1725684722', null, null, '0', '1', null, null, '0');

-- ----------------------------
-- Table structure for wp_productinfo
-- ----------------------------
DROP TABLE IF EXISTS `wp_productinfo`;
CREATE TABLE `wp_productinfo` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `ptitle` varchar(255) DEFAULT NULL COMMENT '标题',
  `cid` int(11) DEFAULT NULL COMMENT '产品分类id',
  `otid` int(11) DEFAULT NULL COMMENT '开市方案id',
  `isopen` int(1) DEFAULT '1',
  `point` varchar(255) DEFAULT NULL COMMENT '点数',
  `point_low` varchar(18) DEFAULT '0.00000' COMMENT '波动最小值',
  `point_top` varchar(18) DEFAULT '0.00000' COMMENT '波动最大值',
  `rands` varchar(18) DEFAULT '0.00000' COMMENT '随机波动范围',
  `content` text COMMENT '备注',
  `time` int(11) DEFAULT NULL COMMENT '添加时间',
  `isdelete` int(1) DEFAULT NULL COMMENT '0',
  `procode` varchar(18) DEFAULT NULL COMMENT ' 产品代码',
  `add_data` double(18,4) DEFAULT '0.0000' COMMENT '除汇率以外的算法',
  `protime` varchar(20) DEFAULT NULL COMMENT '时间玩法间隔',
  `propoint` varchar(10) DEFAULT NULL COMMENT '点位玩法间隔',
  `proscale` varchar(20) NOT NULL DEFAULT '0' COMMENT '波动/盈亏1%',
  `proorder` int(18) DEFAULT '0' COMMENT '排序',
  `img` varchar(128) DEFAULT NULL COMMENT '各种货币的图片',
  `promoney` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_productinfo
-- ----------------------------
INSERT INTO `wp_productinfo` VALUES ('11', 'Brazil Index', '5', '1', '1', '98', '0.00001', '0.00015', '0.008', '', '1681538667', '0', 'ant', '0.0000', '3,5,10,15', '', '0.008', '6', '/public/uploads/20230301/pic_11.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('12', 'USD CHF', '5', '1', '0', '79789', '0.00001', '0.00005', '0.008', '', '1681539026', '0', '29', '0.0000', '3,5,10,15', '', '0.008', '10', '/public/uploads/20230301/pic_12.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('13', 'OMG', '5', '0', '0', '232', '0.00001', '0.00005', '0.008', '', '1681538802', '0', '30', '0.0000', '3,5,10,15', '', '0.008', '10', '/public/uploads/20230301/pic_13.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('14', 'XAU/USD', '5', '0', '1', '6978', '0.001', '0.010', '0.008', '', '1725683204', '0', 'llg', '0.0000', '3,5,10,15', '', '0.008', '4', '/public/uploads/20230203/pic_14.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('15', 'Precious metal', '5', '0', '1', '1234', '0.001', '0.01', '0.004', '', '1681538631', '0', 'lls', '0.0000', '3,5,10,15', null, '0.008', '0', '/public/uploads/20230321/pic_15.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('16', 'USD KRW', '5', '0', '0', '37696', '0.00001', '0.00005', '0.00003', '', '1681539002', '0', '33', '0.0000', '3,5,10,15', '', '0.00002', '10', '/public/uploads/20230301/pic_16.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('17', 'XLM', '5', '0', '0', '6876', '0.00001', '0.00005', '0.00003', '', '1681538793', '0', '34', '0.0000', '3,5,10,15', '', '0.00002', '10', '/public/uploads/20230301/pic_17.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('22', 'BTS', '5', '0', '1', '546', '0.0001', '0.0009', '0.15', '', '1693811909', '0', '43', '0.0000', '3,5,10,15', '', '0.008', '0', '/public/uploads/20230301/pic_22.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('23', 'XAG/USD', '5', null, '1', '434', '0.001', '0.010', '0.005', '', '1693740002', '0', '13', '0.0000', '3,5,10,15', null, '0.008', '0', '/public/uploads/20230203/pic_23.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('29', 'France Index', '5', '1', '1', null, '0.01', '0.10', '0.08', '', '1681622611', '0', '96', '0.0000', '3,5,10,15', null, '0.008', '0', '/public/uploads/20230301/pic_29.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('31', 'Swiss Index', '5', '1', '1', null, '0.03', '0.18', '0.04', '', '1681538685', '0', 'eth', '0.0000', '3,5,10,15', null, '0.008', '0', '/public/uploads/20230301/pic_31.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('32', 'DOGE', '5', '1', '1', null, '0.00001', '0.00020', '0.00010', '', '1681538946', '0', '26', '0.0000', '3,5,10,15', null, '0.008', '0', '/public/uploads/20230301/pic_32.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('34', 'USDJPY', '5', '1', '1', null, '0.005', '0.015', '0.005', '', '1681538965', '0', '31', '0.0000', '3,5,10,15', null, '0.008', '0', '/public/uploads/20230301/pic_34.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('35', 'UK Index', '5', '1', '1', null, '0.00001', '0.00015', '0.00012', '', '1681538735', '0', 'sol', '0.0000', '3,5,10,15', null, '0.008', '0', '/public/uploads/20230301/pic_35.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('36', 'EURUSD', '5', null, '1', null, '0.00001', '0.00005', '0.00003', '', '1681538955', '0', '24', '0.0000', '3,5,10,15', null, '0.008', '0', '/public/uploads/20230301/pic_36.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('38', 'US Index', '5', null, '1', null, '0.00001', '0.00015', '0.008', '', '1681538652', '0', 'btc', '0.0000', '3,5,10,15', null, '0.008', '0', '/public/uploads/20230301/pic_38.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('39', 'Japan Index', '5', null, '1', null, '0.00001', '0.00015', '0.008', '', '1681538773', '0', '116', '0.0000', '3,5,10,15', null, '0.035', '0', '/public/uploads/20230301/pic_39.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('41', 'Korea Index', '5', null, '1', null, '0.00001', '0.00015', '0.008', '', '1681538747', '0', '15', '0.0000', '3,5,10,15', null, '0.008', '0', '/public/uploads/20230301/pic_41.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('42', 'LTC', '5', null, '1', null, '0.001', '0.015', '0.008', '', '1681538930', '0', 'ltc', '0.0000', '3,5,10,15', null, '0.008', '0', '/public/uploads/20230301/pic_42.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('45', 'USD Thai Baht', '5', null, '1', null, '0.001', '0.015', '0.008', '', '1681538990', '0', '27', '0.0000', '3,5,10,15', null, '0.008', '0', '/public/uploads/20230301/pic_45.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('56', 'OIL/USD', '5', null, '1', null, '0.001', '0.009', '0.0008', '国际原油', '1693739887', '0', '14', '0.0000', '3,5,10,15', null, '0.1', '0', '/public/uploads/20230320/pic_56.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('57', 'SPIF', '5', null, '1', null, '0.000009', '0.00015', '0.0008', '美指期货', '1681538612', '0', '11', '0.0000', '3,5,10,15', null, '0.1', '0', '/public/uploads/20230321/pic_57.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('58', 'NYMEXCNG', '5', null, '1', null, '0.00009', '0.00015', '0.0008', '', '1681539068', '0', '15', '0.0000', '3,5,10,15', null, '0.1', '0', '/public/uploads/20230321/pic_58.png', '3000,5000,10000,15000');
INSERT INTO `wp_productinfo` VALUES ('59', 'USD Index', '5', null, '1', null, '0.0009', '0.0015', '0.0008', '', '1693740030', '0', '22', '0.0000', '3,5,10,15', null, '0.1', '0', '/public/uploads/20230321/pic_59.png', '3000,5000,10000,15000');

-- ----------------------------
-- Table structure for wp_productprice
-- ----------------------------
DROP TABLE IF EXISTS `wp_productprice`;
CREATE TABLE `wp_productprice` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `order_min_price` varchar(50) DEFAULT NULL COMMENT '最小下注额',
  `order_max_price` varchar(50) DEFAULT NULL COMMENT '最大下注额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wp_productprice
-- ----------------------------
INSERT INTO `wp_productprice` VALUES ('1', '20', '50000');
INSERT INTO `wp_productprice` VALUES ('2', '100', '100000');
INSERT INTO `wp_productprice` VALUES ('3', '20', '1000000');
INSERT INTO `wp_productprice` VALUES ('4', '10000', '10000000');

-- ----------------------------
-- Table structure for wp_refundlog
-- ----------------------------
DROP TABLE IF EXISTS `wp_refundlog`;
CREATE TABLE `wp_refundlog` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `mch_appid` varchar(28) DEFAULT NULL,
  `mchid` varchar(18) DEFAULT NULL,
  `device_info` varchar(288) DEFAULT NULL,
  `nonce_str` varchar(28) DEFAULT NULL,
  `payment_no` varchar(18) DEFAULT NULL,
  `partner_trade_no` varchar(18) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `result_code` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_refundlog
-- ----------------------------

-- ----------------------------
-- Table structure for wp_reward
-- ----------------------------
DROP TABLE IF EXISTS `wp_reward`;
CREATE TABLE `wp_reward` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `reg_money` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邀请注册奖励',
  `invest_percent` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邀请投注奖励%',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='邀请奖励';

-- ----------------------------
-- Records of wp_reward
-- ----------------------------
INSERT INTO `wp_reward` VALUES ('1', '0.00', '0.00');

-- ----------------------------
-- Table structure for wp_risk
-- ----------------------------
DROP TABLE IF EXISTS `wp_risk`;
CREATE TABLE `wp_risk` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `to_win` text CHARACTER SET utf8 COMMENT '指定客户赢利',
  `to_loss` text CHARACTER SET utf8 COMMENT '指定客户亏损',
  `chance` text CHARACTER SET utf8 COMMENT '风控概率',
  `min_price` varchar(18) CHARACTER SET utf8 DEFAULT NULL COMMENT '最小风控值',
  `min_yk` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '止盈止损下限',
  `max_yk` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '止盈止损上限',
  `min_yk1` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间1止盈',
  `max_yk1` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间1止损',
  `min_yk2` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间2止盈',
  `max_yk2` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间2止损',
  `min_yk3` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间3止盈',
  `max_yk3` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间3止损',
  `min_yk4` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间4止盈',
  `max_yk4` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间4止损',
  `min_gain` decimal(4,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '盈亏下限',
  `max_gain` decimal(4,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '盈亏上限',
  `special_yk` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '强制指定的用户100%输赢',
  `percent` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '盈亏',
  `min_lost` decimal(4,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '未指定，盈亏下限',
  `max_lost` decimal(4,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '未指定，盈亏上限',
  `time1` varchar(5) NOT NULL DEFAULT '' COMMENT '起始时间',
  `time2` varchar(5) NOT NULL DEFAULT '' COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wp_risk
-- ----------------------------
INSERT INTO `wp_risk` VALUES ('8', '1058657|1058679|1058672|1058684|1058667|1058678|1058672|1058673|1058669|1058658|1058668|1058674|1058669|1058683|1058674|1058683|1058682|1058670|1058676|1058680|1058671|1058664|1058677|1058675|1058664|1058677|1058666|1058663|1058663|1058660|1058660|1058655|1058656|1058655|1058655|1058653|1058653|1058671|1058659|1058662', '', '10-1000:50|1000-2000:100|2000-5000:500|5000-10000:20|10000-100000000:10', '10', '20', '50', '50,100', '20,30', '10,20', '10,20', '10,20', '10,20', '10,20', '5,20', '3.0', '8.0', '0', '0.00', '5.0', '8.0', '00:00', '00:01');

-- ----------------------------
-- Table structure for wp_slide
-- ----------------------------
DROP TABLE IF EXISTS `wp_slide`;
CREATE TABLE `wp_slide` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `img` varchar(64) NOT NULL DEFAULT '' COMMENT '幻灯片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='幻灯片';

-- ----------------------------
-- Records of wp_slide
-- ----------------------------

-- ----------------------------
-- Table structure for wp_sysbank
-- ----------------------------
DROP TABLE IF EXISTS `wp_sysbank`;
CREATE TABLE `wp_sysbank` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) NOT NULL DEFAULT '' COMMENT '银行名称',
  `bank_addr` varchar(255) NOT NULL DEFAULT '' COMMENT '开户网点',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '户名',
  `card_no` varchar(255) NOT NULL DEFAULT '' COMMENT '账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='入款银行';

-- ----------------------------
-- Records of wp_sysbank
-- ----------------------------
INSERT INTO `wp_sysbank` VALUES ('1', 'Eximbank ', 'Ngân hàng thương mại cổ phần Xuất Nhập khẩu Việt Nam', ' NGUYEN THANH TINH ', '0815608543');

-- ----------------------------
-- Table structure for wp_userbind
-- ----------------------------
DROP TABLE IF EXISTS `wp_userbind`;
CREATE TABLE `wp_userbind` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `btime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_userbind
-- ----------------------------

-- ----------------------------
-- Table structure for wp_usercode
-- ----------------------------
DROP TABLE IF EXISTS `wp_usercode`;
CREATE TABLE `wp_usercode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) NOT NULL COMMENT '所属用户id',
  `code` varchar(6) NOT NULL COMMENT '邀请码',
  `type` varchar(11) NOT NULL COMMENT '渠道ID',
  `time` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_usercode
-- ----------------------------

-- ----------------------------
-- Table structure for wp_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `wp_userinfo`;
CREATE TABLE `wp_userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `upwd` varchar(32) NOT NULL,
  `epwd` varchar(32) DEFAULT NULL COMMENT '交易密码',
  `utel` varchar(32) DEFAULT NULL,
  `utime` int(20) DEFAULT NULL COMMENT '注册时间',
  `agenttype` int(20) DEFAULT '0' COMMENT '0普通客户，1申请经纪人中，2经纪人',
  `otype` int(11) NOT NULL DEFAULT '0' COMMENT '0普通会员，2会员单位，1经纪人,3超级管理员,1和2已废弃，101为代理商',
  `ustatus` int(11) NOT NULL DEFAULT '0' COMMENT '0正常状态，1冻结状态，',
  `oid` varchar(28) DEFAULT NULL COMMENT '上线字段',
  `address` varchar(30) DEFAULT NULL COMMENT '地址',
  `portrait` varchar(100) DEFAULT NULL COMMENT '头像',
  `lastlog` int(20) DEFAULT NULL COMMENT '最后登录时间',
  `lastip` varchar(15) NOT NULL DEFAULT '' COMMENT 'IP',
  `managername` varchar(20) DEFAULT NULL COMMENT '上线用户名',
  `comname` varchar(20) DEFAULT NULL COMMENT '公司名称',
  `comqua` varchar(50) DEFAULT NULL COMMENT '公司资质',
  `rebate` varchar(11) DEFAULT NULL COMMENT '返点',
  `feerebate` varchar(11) DEFAULT '0' COMMENT '手续费返点',
  `usertype` int(11) DEFAULT '0' COMMENT '0不是微信用户。1是微信用户',
  `wxtype` int(11) DEFAULT '0' COMMENT '1表示微信还没注册，0微信已注册成会员。',
  `openid` varchar(50) DEFAULT NULL COMMENT '存微信用户的id',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `icard` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `logintime` varchar(18) DEFAULT NULL,
  `usermoney` decimal(18,2) DEFAULT '0.00',
  `freeze` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '冻结',
  `userpoint` int(10) DEFAULT '100' COMMENT '积分',
  `minprice` decimal(10,2) DEFAULT NULL,
  `sessionkey` varchar(32) DEFAULT '',
  `domain` varchar(18) NOT NULL DEFAULT '' COMMENT '注册域名',
  `online` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1在线 0不在线',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `log_caijin` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1送彩金 0不送',
  `scard` varchar(32) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `utel` (`utel`)
) ENGINE=InnoDB AUTO_INCREMENT=1058691 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_userinfo
-- ----------------------------
INSERT INTO `wp_userinfo` VALUES ('1058647', 'admin', '123456', '123456', 'admin@admin.com', '1480061674', '2', '3', '0', '', '', '', '1725682935', '49.228.36.71', '', '', '', '', '0', '0', '0', '', 'admin', '', '1526017454', '0.00', '0.00', '100', '0.00', '', '', '0', '0', '1', null);
INSERT INTO `wp_userinfo` VALUES ('1058649', 'ggabram', '123456', '123456', 'ggabram', '1674905731', '0', '0', '0', '1058650', null, null, '1725684648', '49.228.36.71', null, null, null, null, '0', '0', '0', null, '高高', '211410199608131876', '1725684648', '9942.06', '17200.00', '100', null, '51440', '', '1', '1725684650', '1', null);

-- ----------------------------
-- Table structure for wp_userinvest
-- ----------------------------
DROP TABLE IF EXISTS `wp_userinvest`;
CREATE TABLE `wp_userinvest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'UID',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '客户名',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '标ID',
  `days` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '天数',
  `money` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '本金',
  `interest` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '分红 或 利息',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1待分红 2已分红',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投资时间',
  `totime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回款时间',
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客户投资';

-- ----------------------------
-- Records of wp_userinvest
-- ----------------------------

-- ----------------------------
-- Table structure for wp_webconfig
-- ----------------------------
DROP TABLE IF EXISTS `wp_webconfig`;
CREATE TABLE `wp_webconfig` (
  `id` int(11) NOT NULL,
  `isopen` int(11) NOT NULL DEFAULT '0' COMMENT '0开启，1关闭',
  `webname` varchar(20) DEFAULT NULL COMMENT '网站名称',
  `onelevel` varchar(20) NOT NULL,
  `twolevel` varchar(20) NOT NULL,
  `Pscale` varchar(20) NOT NULL,
  `begintime` int(20) DEFAULT NULL COMMENT '休市开始时间',
  `endtime` int(20) DEFAULT NULL COMMENT '休市结束时间',
  `notice` varchar(100) DEFAULT NULL COMMENT '公告',
  `isnotice` int(10) DEFAULT '0' COMMENT '0开启，1关闭',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_webconfig
-- ----------------------------

-- ----------------------------
-- Table structure for wp_wechat
-- ----------------------------
DROP TABLE IF EXISTS `wp_wechat`;
CREATE TABLE `wp_wechat` (
  `wcid` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) DEFAULT NULL COMMENT 'AppID(应用ID)',
  `appsecret` varchar(255) DEFAULT NULL COMMENT 'AppSecret(应用密钥)',
  `wxname` varchar(255) DEFAULT NULL COMMENT '公众号名称',
  `wxlogin` varchar(255) DEFAULT NULL COMMENT '微信原始账号',
  `wxurl` varchar(255) DEFAULT NULL COMMENT 'url服务器地址',
  `token` varchar(255) DEFAULT NULL COMMENT '令牌',
  `encodingaeskey` varchar(255) DEFAULT NULL COMMENT '消息加密解密秘钥',
  `parterid` int(11) DEFAULT NULL COMMENT '微信商户账号',
  `parterkey` varchar(255) DEFAULT NULL COMMENT '32位密码',
  PRIMARY KEY (`wcid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_wechat
-- ----------------------------

-- ----------------------------
-- Table structure for wp_words
-- ----------------------------
DROP TABLE IF EXISTS `wp_words`;
CREATE TABLE `wp_words` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(200) NOT NULL DEFAULT '' COMMENT '常用语',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常 -1不正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服常用语';

-- ----------------------------
-- Records of wp_words
-- ----------------------------

-- ----------------------------
-- View structure for wp_view_proinfo
-- ----------------------------
DROP VIEW IF EXISTS `wp_view_proinfo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`site`@`127.0.0.1` SQL SECURITY INVOKER VIEW `wp_view_proinfo` AS select `wp_productdata`.`is_deal` AS `is_deal`,`wp_productdata`.`Low` AS `Low`,`wp_productdata`.`High` AS `High`,`wp_productdata`.`Close` AS `Close`,`wp_productdata`.`Open` AS `Open`,`wp_productdata`.`Price` AS `Price`,`wp_productdata`.`isdelete` AS `isdelete`,`wp_productdata`.`Name` AS `Name`,`wp_productdata`.`pid` AS `pid`,`wp_productdata`.`sort` AS `sort`,`wp_productdata`.`UpdateTime` AS `UpdateTime`,`wp_productinfo`.`img` AS `img`,`wp_productdata`.`Diff` AS `Diff`,`wp_productdata`.`DiffRate` AS `DiffRate` from (`wp_productinfo` join `wp_productdata`) where (`wp_productinfo`.`pid` = `wp_productdata`.`pid`) ;
