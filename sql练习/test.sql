# Host: localhost  (Version: 5.5.53)
# Date: 2019-01-01 16:48:26
# Generator: MySQL-Front 5.3  (Build 4.234)

#
# Structure for table "courses"
#

DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `courseno` varchar(20) NOT NULL,
  `coursenm` varchar(100) NOT NULL,
  PRIMARY KEY (`courseno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程表';

#
# Data for table "courses"
#

INSERT INTO `courses` VALUES ('C001','大学语文'),('C002','新视野英语'),('C003','离散数学'),('C004','概率论与数理统计'),('C005','线性代数'),('C006','高等数学(一)'),('C007','高等数学(二)');

#
# Structure for table "score"
#

DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `stuid` varchar(16) NOT NULL,
  `courseno` varchar(20) NOT NULL,
  `scores` float DEFAULT NULL,
  PRIMARY KEY (`stuid`,`courseno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "score"
#

INSERT INTO `score` VALUES ('1001','C001',67),('1001','C002',87),('1001','C003',83),('1001','C004',88),('1001','C005',77),('1002','C001',68),('1002','C002',88),('1002','C003',84),('1002','C004',89),('1002','C005',78),('1003','C001',69),('1003','C002',89),('1003','C003',85),('1003','C004',90),('1003','C005',79),('1004','C001',70),('1004','C002',90),('1004','C003',86),('1004','C004',91),('1005','C001',71),('1005','C002',91),('1005','C003',87),('1005','C004',92),('1006','C001',72),('1006','C002',92),('1006','C003',88),('1006','C004',93);

#
# Structure for table "student"
#

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stuid` varchar(16) NOT NULL COMMENT '学号',
  `stunm` varchar(20) NOT NULL COMMENT '学生姓名',
  PRIMARY KEY (`stuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "student"
#

INSERT INTO `student` VALUES ('1001','张三'),('1002','李四'),('1003','赵二'),('1004','王五'),('1005','刘青'),('1006','周明');

