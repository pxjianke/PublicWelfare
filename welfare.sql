/*
Navicat MySQL Data Transfer

Source Server         : admin
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : welfare

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-09-09 18:14:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `pass_word` varchar(50) NOT NULL,
  `create_Time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('12', 'username', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-04-10 09:53:28');
INSERT INTO `user` VALUES ('15', 'faye.wang@servasoft.com', '6aa382322f039edf44cf499591a96761', '2017-04-14 14:43:42');
INSERT INTO `user` VALUES ('16', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-04-25 10:59:12');

-- ----------------------------
-- Table structure for welfare_chimas
-- ----------------------------
DROP TABLE IF EXISTS `welfare_chimas`;
CREATE TABLE `welfare_chimas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welfare_chimas
-- ----------------------------

-- ----------------------------
-- Table structure for welfare_list
-- ----------------------------
DROP TABLE IF EXISTS `welfare_list`;
CREATE TABLE `welfare_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welfare_list
-- ----------------------------
INSERT INTO `welfare_list` VALUES ('1', '菜单一');
INSERT INTO `welfare_list` VALUES ('2', '菜单二');
INSERT INTO `welfare_list` VALUES ('3', '菜单三');
INSERT INTO `welfare_list` VALUES ('4', '菜单4');

-- ----------------------------
-- Table structure for welfare_menu
-- ----------------------------
DROP TABLE IF EXISTS `welfare_menu`;
CREATE TABLE `welfare_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welfare_menu
-- ----------------------------
INSERT INTO `welfare_menu` VALUES ('1', '男装', '2017-09-08 17:16:27');
INSERT INTO `welfare_menu` VALUES ('2', '新品', '2017-09-08 17:17:37');
INSERT INTO `welfare_menu` VALUES ('3', '女装', '2017-09-08 17:17:47');
INSERT INTO `welfare_menu` VALUES ('4', '配饰', '2017-09-08 17:17:56');
INSERT INTO `welfare_menu` VALUES ('5', '童装', '2017-09-08 17:18:02');
INSERT INTO `welfare_menu` VALUES ('6', '名品', '2017-09-09 17:18:09');

-- ----------------------------
-- Table structure for welfare_menu_title_list
-- ----------------------------
DROP TABLE IF EXISTS `welfare_menu_title_list`;
CREATE TABLE `welfare_menu_title_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_menudId` int(11) NOT NULL,
  `list_menuId` int(11) NOT NULL,
  `menu_Id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welfare_menu_title_list
-- ----------------------------
INSERT INTO `welfare_menu_title_list` VALUES ('1', '1', '1', '1');
INSERT INTO `welfare_menu_title_list` VALUES ('2', '2', '1', '1');
INSERT INTO `welfare_menu_title_list` VALUES ('3', '3', '1', '1');
INSERT INTO `welfare_menu_title_list` VALUES ('4', '1', '2', '1');

-- ----------------------------
-- Table structure for welfare_mp
-- ----------------------------
DROP TABLE IF EXISTS `welfare_mp`;
CREATE TABLE `welfare_mp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welfare_mp
-- ----------------------------
INSERT INTO `welfare_mp` VALUES ('1', '美特斯邦威', 'http://localhost:8080/PublicWelfare_view/shop/images/f1.jpg', '2017-09-09 03:03:22', 'GO');
INSERT INTO `welfare_mp` VALUES ('2', '阿迪达斯', 'http://localhost:8080/PublicWelfare_view/shop/images/f1.jpg', '2017-09-09 03:03:25', 'GO');
INSERT INTO `welfare_mp` VALUES ('3', '耐克', 'http://localhost:8080/PublicWelfare_view/shop/images/f1.jpg', '2017-09-09 03:03:29', 'GO');
INSERT INTO `welfare_mp` VALUES ('4', '耐克2', 'http://localhost:8080/PublicWelfare_view/shop/images/f1.jpg', '2017-09-09 03:08:07', '去吧');

-- ----------------------------
-- Table structure for welfare_sp
-- ----------------------------
DROP TABLE IF EXISTS `welfare_sp`;
CREATE TABLE `welfare_sp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `ms` varchar(255) DEFAULT NULL,
  `fl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welfare_sp
-- ----------------------------
INSERT INTO `welfare_sp` VALUES ('1', '鞋子', 'http://localhost:8080/PublicWelfare_view/shop/images/p5.jpg', '描述', 'a');

-- ----------------------------
-- Table structure for welfare_sp_colors
-- ----------------------------
DROP TABLE IF EXISTS `welfare_sp_colors`;
CREATE TABLE `welfare_sp_colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `colors` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welfare_sp_colors
-- ----------------------------

-- ----------------------------
-- Table structure for welfare_sp_tm
-- ----------------------------
DROP TABLE IF EXISTS `welfare_sp_tm`;
CREATE TABLE `welfare_sp_tm` (
  `id` int(11) NOT NULL,
  `tm_id` int(11) DEFAULT NULL,
  `sp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welfare_sp_tm
-- ----------------------------
INSERT INTO `welfare_sp_tm` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for welfare_title
-- ----------------------------
DROP TABLE IF EXISTS `welfare_title`;
CREATE TABLE `welfare_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welfare_title
-- ----------------------------
INSERT INTO `welfare_title` VALUES ('1', '标题一');
INSERT INTO `welfare_title` VALUES ('2', '标题二');
INSERT INTO `welfare_title` VALUES ('3', '标题三');

-- ----------------------------
-- Table structure for welfare_tm
-- ----------------------------
DROP TABLE IF EXISTS `welfare_tm`;
CREATE TABLE `welfare_tm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welfare_tm
-- ----------------------------
INSERT INTO `welfare_tm` VALUES ('1', '特卖鞋子');
INSERT INTO `welfare_tm` VALUES ('2', '特卖女装');
INSERT INTO `welfare_tm` VALUES ('3', '特卖箱包');
