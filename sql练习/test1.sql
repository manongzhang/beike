# Host: localhost  (Version: 5.5.53)
# Date: 2019-05-11 08:15:41
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "course"
#

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` varchar(20) NOT NULL DEFAULT '',
  `c_name` varchar(20) NOT NULL DEFAULT '',
  `t_id` varchar(20) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "course"
#

/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('01','语文','02'),('02','数学','01'),('03','英语','03');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

#
# Structure for table "score"
#

DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `s_id` varchar(20) NOT NULL DEFAULT '',
  `c_id` varchar(20) NOT NULL DEFAULT '',
  `s_score` int(3) DEFAULT NULL,
  PRIMARY KEY (`s_id`,`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "score"
#

/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES ('01','01',80),('01','02',90),('01','03',99),('02','01',70),('02','02',60),('02','03',80),('03','01',80),('03','02',80),('03','03',80),('04','01',50),('04','02',30),('04','03',20),('05','01',76),('05','02',87),('06','01',31),('06','03',34),('07','02',89),('07','03',98);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;

#
# Structure for table "student"
#

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_id` varchar(20) NOT NULL DEFAULT '',
  `s_name` varchar(20) NOT NULL DEFAULT '',
  `s_birth` varchar(20) NOT NULL DEFAULT '',
  `s_sex` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "student"
#

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('01','赵雷','1990-01-01','男'),('02','钱电','1990-12-21','男'),('03','孙风','1990-05-20','男'),('04','李云','1990-08-06','男'),('05','周梅','1991-12-01','女'),('06','吴兰','1992-03-01','女'),('07','郑竹','1989-07-01','女'),('08','王菊','1990-01-20','女');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

#
# Structure for table "teacher"
#

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_id` varchar(20) NOT NULL DEFAULT '',
  `t_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "teacher"
#

/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('01','张三'),('02','李四'),('03','王五');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
