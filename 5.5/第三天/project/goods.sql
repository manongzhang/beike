/*
Navicat MySQL Data Transfer

Source Server         : al_lnmp
Source Server Version : 50723
Source Host           : 47.93.42.222:3306
Source Database       : goods

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-10-25 10:21:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_name` varchar(50) DEFAULT NULL,
  `about_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('2', '企业文化', '潜力无限');
INSERT INTO `about` VALUES ('3', '经营理念', null);
INSERT INTO `about` VALUES ('4', '发展历程', null);
INSERT INTO `about` VALUES ('5', '资质荣誉', null);
INSERT INTO `about` VALUES ('6', '厂房设置', null);
INSERT INTO `about` VALUES ('7', '社会责任', null);
INSERT INTO `about` VALUES ('8', '公司简介', '大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代');

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `apply_name` varchar(50) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `apply_content` text,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`apply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('1', '1惠州市重点路段LED路灯项目 ·惠州市重点路段LED路灯项', '1', '大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代123', 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('2', '惠州市重点路段LED路灯项目 ·惠州市重点路段LED路灯项', '1', '大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代456', 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('3', '惠州市重点路段LED路灯项目 ·惠州市重点路段LED路灯项', '1', '大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代789', 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('4', '惠州市重点路段LED路灯项目 ·惠州市重点路段LED路灯项', '1', null, 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('5', '惠州市重点路段LED路灯项目 ·惠州市重点路段LED路灯项', '1', null, 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('6', '惠州市重点路段LED路灯项目 ·惠州市重点路段LED路灯项', '1', null, 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('7', '惠州市重点路段LED路灯项目 ·惠州市重点路段LED路灯项', '1', null, 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('8', '惠州市重点路段LED路灯项目 ·惠州市重点路段LED路灯项', '1', null, 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('9', '1惠州市重点路段LED路灯项目', '2', null, 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('10', '惠州市重点路段LED路灯项目 ', '2', null, 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('11', '惠州市重点路段LED路灯项目 ', '2', null, 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('12', '惠州市重点路段LED路灯项目 ', '2', null, 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('13', '惠州市重点路段LED路灯项目 ', '2', null, 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('14', '惠州市重点路段LED路灯项目 ', '2', null, 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('15', '惠州市重点路段LED路灯项目 ', '2', null, 'images/cast_list_01.jpg');
INSERT INTO `apply` VALUES ('16', '惠州市重点路段LED路灯项目 ', '2', null, 'images/cast_list_01.jpg');

-- ----------------------------
-- Table structure for apply_class
-- ----------------------------
DROP TABLE IF EXISTS `apply_class`;
CREATE TABLE `apply_class` (
  `apply_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`apply_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply_class
-- ----------------------------
INSERT INTO `apply_class` VALUES ('1', '照明应用');
INSERT INTO `apply_class` VALUES ('2', '场景体验');
INSERT INTO `apply_class` VALUES ('3', '照明案例');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', 'LED T8灯管', '3');
INSERT INTO `class` VALUES ('2', 'LED射灯', '3');
INSERT INTO `class` VALUES ('3', 'LED软光灯', '3');
INSERT INTO `class` VALUES ('4', 'LED泛光灯', '3');
INSERT INTO `class` VALUES ('5', 'LED洗墙灯', '3');
INSERT INTO `class` VALUES ('6', 'LED彩光灯', '3');

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `details_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `goods_name` varchar(50) DEFAULT NULL,
  `goods_model` varchar(50) DEFAULT NULL,
  `goods_power` varchar(50) DEFAULT NULL,
  `goods_color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES ('1', '1', '芯片封装d', 'ASP-04AL-F02 / A02 / F01 / A0', '200LW / 310LW / 320LW', '2700K / 4200123');
INSERT INTO `details` VALUES ('2', '2', '芯片封装d', 'ASP-04AL-F02 / A02 / F01 / A0', '200LW / 310LW / 320LW', '2700K / 4200123');

-- ----------------------------
-- Table structure for details_desc
-- ----------------------------
DROP TABLE IF EXISTS `details_desc`;
CREATE TABLE `details_desc` (
  `details_desc_id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_name` varchar(255) DEFAULT NULL,
  `content` text,
  `details_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`details_desc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of details_desc
-- ----------------------------
INSERT INTO `details_desc` VALUES ('1', '详细说明1', '盖带是指一种应用于电子包装领域的带状产品。可在外力或加热的情况下封合在载带的表面，形成闭合的空间，用于保护、包装电子元器件。 【产品特性】RBS002上盖带，对于PS/ABS等多项材质之载带具稳定性能，可提供电子元件良好之包装、保护、运送及表面着装等特性。', '1');
INSERT INTO `details_desc` VALUES ('2', '详细说明2', '我是详细说明2', '1');
INSERT INTO `details_desc` VALUES ('3', '详细说明8', '盖带是指一种应用于电子包装领域的带状产品。可在外力或加热的情况下封合在载带的表面，形成闭合的空间，用于保护、包装电子元器件。 【产品特性】RBS002上盖带，对于PS/ABS等多项材质之载带具稳定性能，可提供电子元件良好之包装、保护、运送及表面着装等特性。', '2');
INSERT INTO `details_desc` VALUES ('4', '详细说明9', '我是详细说明2', '2');

-- ----------------------------
-- Table structure for error
-- ----------------------------
DROP TABLE IF EXISTS `error`;
CREATE TABLE `error` (
  `error_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `error_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`error_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of error
-- ----------------------------
INSERT INTO `error` VALUES ('1', '123', '123');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(50) DEFAULT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `goods_desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '芯片封装d', 'images/index_nav01.png', '优越品质 绿色环保');
INSERT INTO `goods` VALUES ('2', 'LED电源d', 'images/index_nav02.png', '专业技术 高效耐用');
INSERT INTO `goods` VALUES ('3', 'LED灯具d', 'images/index_nav03.png', '领先科技 节能高效');
INSERT INTO `goods` VALUES ('4', '通讯模块d', 'images/index_nav04.png', '超强信号 优质体验');

-- ----------------------------
-- Table structure for hot_desc
-- ----------------------------
DROP TABLE IF EXISTS `hot_desc`;
CREATE TABLE `hot_desc` (
  `hot_desc_id` int(11) NOT NULL AUTO_INCREMENT,
  `hot_desc` text,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hot_desc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hot_desc
-- ----------------------------
INSERT INTO `hot_desc` VALUES ('1', '测试商品的详情介绍1', '1');

-- ----------------------------
-- Table structure for hot_img
-- ----------------------------
DROP TABLE IF EXISTS `hot_img`;
CREATE TABLE `hot_img` (
  `hot_img_int` int(11) NOT NULL AUTO_INCREMENT,
  `hot_img` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hot_img_int`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hot_img
-- ----------------------------
INSERT INTO `hot_img` VALUES ('1', 'images/index-content-left-01.png', '1');
INSERT INTO `hot_img` VALUES ('2', 'images/index-content-left-01.png', '1');
INSERT INTO `hot_img` VALUES ('3', 'images/index-content-left-01.png', '1');

-- ----------------------------
-- Table structure for nav
-- ----------------------------
DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav` (
  `nav_id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_name` varchar(50) DEFAULT NULL,
  `nav_url` varchar(100) DEFAULT NULL,
  `nav_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`nav_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nav
-- ----------------------------
INSERT INTO `nav` VALUES ('2', '关于我们', 'http://47.93.42.222/index.php?act=goods/about', '2');
INSERT INTO `nav` VALUES ('3', '产品中心', 'http://47.93.42.222/index.php?act=goods/product_list', '3');
INSERT INTO `nav` VALUES ('4', '新闻动态', 'http://47.93.42.222/index.php?act=goods/new_list', '4');
INSERT INTO `nav` VALUES ('5', '产品应用', 'http://47.93.42.222/index.php?act=goods/case_list', '5');
INSERT INTO `nav` VALUES ('6', '联系我们', 'http://47.93.42.222/index.php?act=goods/contact', '6');
INSERT INTO `nav` VALUES ('7', '首页', 'http://47.93.42.222/index.php?act=goods/index', '1');

-- ----------------------------
-- Table structure for new
-- ----------------------------
DROP TABLE IF EXISTS `new`;
CREATE TABLE `new` (
  `new_id` int(11) NOT NULL AUTO_INCREMENT,
  `new_name` varchar(255) DEFAULT NULL,
  `new_content` longtext,
  `addtime` datetime DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`new_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of new
-- ----------------------------
INSERT INTO `new` VALUES ('1', '热看LED产业，组建光电技术公司激流扬帆', '我只是测试用的新闻1号', '2018-10-16 19:06:23', '1');
INSERT INTO `new` VALUES ('2', '热看LED产业，组建光电技术公司激流扬帆', '我只是测试用的新闻2号', '2018-10-16 19:06:28', '1');
INSERT INTO `new` VALUES ('3', '热看LED产业，组建光电技术公司激流扬帆', '我只是测试用的新闻3号', '2018-10-16 19:06:30', '1');
INSERT INTO `new` VALUES ('4', '热看LED产业，组建光电技术公司激流扬帆', null, '2018-10-16 19:06:33', '1');
INSERT INTO `new` VALUES ('5', '热看LED产业，组建光电技术公司激流扬帆', null, '2018-10-16 19:06:36', '1');
INSERT INTO `new` VALUES ('6', '热看LED产业，组建光电技术公司激流扬帆', null, '2018-10-16 19:06:38', '1');
INSERT INTO `new` VALUES ('7', '热看LED产业，组建光电技术公司激流扬帆2', '', '2018-10-16 19:06:38', '2');
INSERT INTO `new` VALUES ('8', '热看LED产业，组建光电技术公司激流扬帆2', '', '2018-10-16 19:06:38', '2');

-- ----------------------------
-- Table structure for new_class
-- ----------------------------
DROP TABLE IF EXISTS `new_class`;
CREATE TABLE `new_class` (
  `new_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`new_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of new_class
-- ----------------------------
INSERT INTO `new_class` VALUES ('1', '公司新闻');
INSERT INTO `new_class` VALUES ('2', '产品资讯');
INSERT INTO `new_class` VALUES ('3', '营销动态');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `img_photo` varchar(100) DEFAULT NULL,
  `hot` int(11) DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'LED T8灯管1', '1', 'images/product_01.jpg', '1');
INSERT INTO `product` VALUES ('2', 'LED T8灯管2', '1', 'images/product_01.jpg', '0');
INSERT INTO `product` VALUES ('3', 'LED T8灯管3', '1', 'images/product_01.jpg', '0');
INSERT INTO `product` VALUES ('4', 'LED T8灯管4', '1', 'images/product_01.jpg', '0');
INSERT INTO `product` VALUES ('5', 'LED T8灯管5', '2', 'images/product_01.jpg', '0');
INSERT INTO `product` VALUES ('6', 'LED T8灯管6', '2', 'images/product_01.jpg', '0');
INSERT INTO `product` VALUES ('7', 'LED T8灯管7', '2', 'images/product_01.jpg', '0');
INSERT INTO `product` VALUES ('8', 'LED T8灯管8', '2', 'images/product_01.jpg', '0');
INSERT INTO `product` VALUES ('9', 'LED T8灯9', '1', 'images/product_01.jpg', '0');
INSERT INTO `product` VALUES ('10', 'LED T8灯管10', '1', 'images/product_01.jpg', '0');
INSERT INTO `product` VALUES ('11', 'LED T8灯管11', '1', 'images/product_01.jpg', '0');
INSERT INTO `product` VALUES ('12', 'LED T8灯管12', '1', 'images/product_01.jpg', '0');
INSERT INTO `product` VALUES ('13', 'LED T8灯管13', '1', 'images/product_01.jpg', '0');
INSERT INTO `product` VALUES ('14', 'LED T8灯管14', '1', 'images/product_01.jpg', '0');

-- ----------------------------
-- Table structure for swiper
-- ----------------------------
DROP TABLE IF EXISTS `swiper`;
CREATE TABLE `swiper` (
  `swiper_id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`swiper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of swiper
-- ----------------------------
INSERT INTO `swiper` VALUES ('1', 'http://47.93.42.222/public/images/index_banner.jpg');
INSERT INTO `swiper` VALUES ('2', 'http://47.93.42.222/public/images/index_banner.jpg');
INSERT INTO `swiper` VALUES ('3', 'http://47.93.42.222/public/images/index_banner.jpg');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(255) DEFAULT NULL,
  `test_user` varchar(255) DEFAULT NULL,
  `test_address` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `is_del` int(11) DEFAULT '0',
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '这是测试数据', '测试用户', '中国', '2018-10-20 09:33:45', '0', '1');
INSERT INTO `test` VALUES ('2', '这是测试数据', '测试用户', '中国', '2018-10-20 09:33:45', '0', '1');
INSERT INTO `test` VALUES ('3', '这是测试数据', '测试用户', '中国', '2018-10-20 09:33:45', '0', '1');
INSERT INTO `test` VALUES ('4', '这是测试数据', '测试用户', '中国', '2018-10-20 09:33:45', '0', '1');
INSERT INTO `test` VALUES ('5', '这是测试数据', '测试用户', '中国', '2018-10-20 09:33:45', '0', '0');
INSERT INTO `test` VALUES ('6', '这是测试数据', '测试用户', '中国', '2018-10-20 09:33:45', '0', '0');
INSERT INTO `test` VALUES ('7', '这是测试数据', '测试用户', '中国', '2018-10-20 09:33:45', '0', '0');
INSERT INTO `test` VALUES ('8', '这是测试数据', '测试用户', '中国', '2018-10-20 09:33:45', '0', '0');
INSERT INTO `test` VALUES ('9', '这是测试数据', '测试用户', '中国', '2018-10-20 09:33:45', '0', '0');
INSERT INTO `test` VALUES ('10', '这是测试数据', '测试用户', '中国', '2018-10-20 09:33:45', '0', '0');
INSERT INTO `test` VALUES ('11', '这是测试数据', '测试用户', '中国', '2018-10-20 09:33:45', '0', '0');
INSERT INTO `test` VALUES ('12', '这是测试数据', '测试用户', '中国', '2018-10-20 09:33:45', '0', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'zhangsan', '123');
INSERT INTO `users` VALUES ('2', '田七', '19');
INSERT INTO `users` VALUES ('3', '162671000619', '123');
INSERT INTO `users` VALUES ('4', 'lisi', '789');
INSERT INTO `users` VALUES ('8', '在', '123');
