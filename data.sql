/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : data

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-05-30 18:04:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_attendworkers`
-- ----------------------------
DROP TABLE IF EXISTS `tb_attendworkers`;
CREATE TABLE `tb_attendworkers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meetingID` int(11) NOT NULL,
  `workerID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_attendworkers
-- ----------------------------
INSERT INTO `tb_attendworkers` VALUES ('3', '8', '6');
INSERT INTO `tb_attendworkers` VALUES ('4', '8', '7');
INSERT INTO `tb_attendworkers` VALUES ('5', '9', '6');
INSERT INTO `tb_attendworkers` VALUES ('6', '9', '7');
INSERT INTO `tb_attendworkers` VALUES ('12', '12', '6');
INSERT INTO `tb_attendworkers` VALUES ('13', '12', '7');
INSERT INTO `tb_attendworkers` VALUES ('14', '12', '9');
INSERT INTO `tb_attendworkers` VALUES ('15', '12', '6');
INSERT INTO `tb_attendworkers` VALUES ('34', '19', '7');
INSERT INTO `tb_attendworkers` VALUES ('35', '19', '6');
INSERT INTO `tb_attendworkers` VALUES ('36', '19', '9');
INSERT INTO `tb_attendworkers` VALUES ('37', '19', '8');
INSERT INTO `tb_attendworkers` VALUES ('38', '20', '9');
INSERT INTO `tb_attendworkers` VALUES ('39', '20', '8');
INSERT INTO `tb_attendworkers` VALUES ('44', '24', '9');
INSERT INTO `tb_attendworkers` VALUES ('45', '24', '8');
INSERT INTO `tb_attendworkers` VALUES ('46', '25', '6');
INSERT INTO `tb_attendworkers` VALUES ('47', '25', '9');
INSERT INTO `tb_attendworkers` VALUES ('48', '26', '6');
INSERT INTO `tb_attendworkers` VALUES ('49', '26', '7');
INSERT INTO `tb_attendworkers` VALUES ('50', '28', '10');
INSERT INTO `tb_attendworkers` VALUES ('51', '28', '9');
INSERT INTO `tb_attendworkers` VALUES ('52', '28', '8');

-- ----------------------------
-- Table structure for `tb_department`
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO `tb_department` VALUES ('1', '人事部');
INSERT INTO `tb_department` VALUES ('2', '销售部');
INSERT INTO `tb_department` VALUES ('3', '市场部');
INSERT INTO `tb_department` VALUES ('4', '技术部');
INSERT INTO `tb_department` VALUES ('5', '财务部');
INSERT INTO `tb_department` VALUES ('6', '后勤部');

-- ----------------------------
-- Table structure for `tb_equipmentapply`
-- ----------------------------
DROP TABLE IF EXISTS `tb_equipmentapply`;
CREATE TABLE `tb_equipmentapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meetingID` int(11) NOT NULL COMMENT '议会编号',
  `equipmentID` int(20) NOT NULL COMMENT '设备编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_equipmentapply
-- ----------------------------
INSERT INTO `tb_equipmentapply` VALUES ('1', '3', '4');
INSERT INTO `tb_equipmentapply` VALUES ('10', '8', '2');
INSERT INTO `tb_equipmentapply` VALUES ('11', '8', '4');
INSERT INTO `tb_equipmentapply` VALUES ('12', '9', '2');
INSERT INTO `tb_equipmentapply` VALUES ('13', '9', '4');
INSERT INTO `tb_equipmentapply` VALUES ('16', '12', '4');
INSERT INTO `tb_equipmentapply` VALUES ('17', '12', '2');
INSERT INTO `tb_equipmentapply` VALUES ('22', '19', '2');
INSERT INTO `tb_equipmentapply` VALUES ('23', '19', '4');
INSERT INTO `tb_equipmentapply` VALUES ('24', '20', '1');
INSERT INTO `tb_equipmentapply` VALUES ('26', '24', '1');
INSERT INTO `tb_equipmentapply` VALUES ('27', '28', '4');
INSERT INTO `tb_equipmentapply` VALUES ('28', '28', '1');
INSERT INTO `tb_equipmentapply` VALUES ('29', '28', '4');

-- ----------------------------
-- Table structure for `tb_equipments`
-- ----------------------------
DROP TABLE IF EXISTS `tb_equipments`;
CREATE TABLE `tb_equipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipmentID` varchar(20) NOT NULL,
  `equipmentName` varchar(50) DEFAULT NULL,
  `belongTo` varchar(10) NOT NULL,
  `storeTime` date NOT NULL,
  `equipType` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_equipments
-- ----------------------------
INSERT INTO `tb_equipments` VALUES ('2', '112-121-200 ', '', 'A-211', '2011-08-09', '1');
INSERT INTO `tb_equipments` VALUES ('4', 'NSI23-232-100', '', '仓库', '2013-02-05', '2');
INSERT INTO `tb_equipments` VALUES ('5', 'NSI23-232-111', '', '仓库', '2013-02-12', '2');
INSERT INTO `tb_equipments` VALUES ('6', '4895', '', '1支', '2017-05-16', '3');

-- ----------------------------
-- Table structure for `tb_equiptypes`
-- ----------------------------
DROP TABLE IF EXISTS `tb_equiptypes`;
CREATE TABLE `tb_equiptypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_equiptypes
-- ----------------------------
INSERT INTO `tb_equiptypes` VALUES ('1', '麦克风');
INSERT INTO `tb_equiptypes` VALUES ('2', '投影仪');
INSERT INTO `tb_equiptypes` VALUES ('3', '激光笔');
INSERT INTO `tb_equiptypes` VALUES ('4', '遥控器');

-- ----------------------------
-- Table structure for `tb_homes`
-- ----------------------------
DROP TABLE IF EXISTS `tb_homes`;
CREATE TABLE `tb_homes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '间房编号',
  `homeNo` varchar(10) NOT NULL COMMENT '间号房',
  `address` varchar(100) NOT NULL COMMENT '会议室地址',
  `space` int(11) DEFAULT NULL COMMENT '可容纳人数',
  `hosterID` varchar(20) DEFAULT NULL COMMENT '负责人ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_homes
-- ----------------------------
INSERT INTO `tb_homes` VALUES ('3', 'A-206', '昌平区昌盛路26号中软国际科技中心', '50', 'lily');
INSERT INTO `tb_homes` VALUES ('4', 'A-207', '昌平区昌盛路26号中软国际科技中心', '60', 'worker');

-- ----------------------------
-- Table structure for `tb_login`
-- ----------------------------
DROP TABLE IF EXISTS `tb_login`;
CREATE TABLE `tb_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workerID` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `roleID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_login
-- ----------------------------
INSERT INTO `tb_login` VALUES ('1', 'admin', 'admin', '1');
INSERT INTO `tb_login` VALUES ('2', '张三', '123456', '0');
INSERT INTO `tb_login` VALUES ('15', 'lily', 'lily', '0');
INSERT INTO `tb_login` VALUES ('16', 'worker', 'worker', '0');
INSERT INTO `tb_login` VALUES ('18', 'john', 'john', '0');
INSERT INTO `tb_login` VALUES ('20', '', '', '0');
INSERT INTO `tb_login` VALUES ('21', '', '', '0');
INSERT INTO `tb_login` VALUES ('22', '', '', '0');
INSERT INTO `tb_login` VALUES ('23', '小李', '小李', '0');

-- ----------------------------
-- Table structure for `tb_meetingapply`
-- ----------------------------
DROP TABLE IF EXISTS `tb_meetingapply`;
CREATE TABLE `tb_meetingapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workerID` varchar(20) NOT NULL,
  `topic` varchar(100) DEFAULT NULL,
  `documentLink` varchar(50) DEFAULT NULL,
  `homeID` int(11) NOT NULL,
  `attendance` int(11) NOT NULL,
  `beginTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `applyTime` datetime NOT NULL,
  `statusID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_meetingapply
-- ----------------------------
INSERT INTO `tb_meetingapply` VALUES ('3', 'worker', 'One', '1364274104011.xls', '2', '48', '2013-03-28 09:10:00', '2013-03-28 10:20:00', '2013-03-26 13:01:44', '0');
INSERT INTO `tb_meetingapply` VALUES ('8', 'worker', 'Five', '1364286478054.txt', '3', '49', '2013-03-27 08:30:00', '2013-03-27 09:10:00', '2013-03-26 16:27:58', '1');
INSERT INTO `tb_meetingapply` VALUES ('9', 'worker', 'Six', '1364286734007.doc', '1', '100', '2013-03-28 08:10:00', '2013-03-28 11:20:00', '2013-03-26 16:32:13', '1');
INSERT INTO `tb_meetingapply` VALUES ('12', 'john', 'Nine', '1364351355400.txt', '4', '55', '2013-03-28 14:20:00', '2013-03-28 16:10:00', '2013-03-27 10:29:15', '1');
INSERT INTO `tb_meetingapply` VALUES ('19', 'worker', 'dskfdsk', '1364371095567.doc', '4', '55', '2013-03-30 08:10:00', '2013-03-30 10:10:00', '2013-03-27 15:58:15', '1');
INSERT INTO `tb_meetingapply` VALUES ('20', 'worker', 'dsfsdfd', '1364540408087.xls', '2', '35', '2013-03-30 08:30:00', '2013-03-30 10:10:00', '2013-03-29 15:00:07', '0');
INSERT INTO `tb_meetingapply` VALUES ('24', 'worker', ' 测试', '1364542130773.xlsx', '2', '40', '2013-03-26 08:30:00', '2013-03-26 11:10:00', '2013-03-29 15:28:50', '0');
INSERT INTO `tb_meetingapply` VALUES ('25', 'john', 'lele', '1364542278198.xls', '2', '22', '2013-03-27 10:00:00', '2013-03-27 11:00:00', '2013-03-29 15:31:18', '1');
INSERT INTO `tb_meetingapply` VALUES ('26', 'john', 'kuka', '1364542380404.xls', '1', '66', '2013-03-14 07:00:00', '2013-03-14 08:00:00', '2013-03-29 15:33:00', '1');
INSERT INTO `tb_meetingapply` VALUES ('27', 'john', 'kuka', '1364542424444.xls', '1', '66', '2013-03-14 07:00:00', '2013-03-14 08:00:00', '2013-03-29 15:33:44', '1');
INSERT INTO `tb_meetingapply` VALUES ('28', 'mszhang', 'fdsss', '1364623573155.doc', '2', '20', '2013-04-16 08:30:00', '2013-04-16 10:20:00', '2013-03-30 14:06:13', '1');

-- ----------------------------
-- Table structure for `tb_meetingapplystauts`
-- ----------------------------
DROP TABLE IF EXISTS `tb_meetingapplystauts`;
CREATE TABLE `tb_meetingapplystauts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statusName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_meetingapplystauts
-- ----------------------------
INSERT INTO `tb_meetingapplystauts` VALUES ('1', '使用中');
INSERT INTO `tb_meetingapplystauts` VALUES ('2', '预约中');

-- ----------------------------
-- Table structure for `tb_position`
-- ----------------------------
DROP TABLE IF EXISTS `tb_position`;
CREATE TABLE `tb_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `positionName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_position
-- ----------------------------
INSERT INTO `tb_position` VALUES ('1', '员工');
INSERT INTO `tb_position` VALUES ('2', '经理');
INSERT INTO `tb_position` VALUES ('3', '总监');

-- ----------------------------
-- Table structure for `tb_role`
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL,
  `roleName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('0', '普通用户');
INSERT INTO `tb_role` VALUES ('1', '管理员');

-- ----------------------------
-- Table structure for `tb_schedule`
-- ----------------------------
DROP TABLE IF EXISTS `tb_schedule`;
CREATE TABLE `tb_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homeID` int(11) NOT NULL COMMENT '会议室编号',
  `meetingID` int(11) DEFAULT NULL,
  `beginTime` datetime NOT NULL COMMENT '占用开始时间',
  `endTime` datetime NOT NULL COMMENT '占用结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_schedule
-- ----------------------------
INSERT INTO `tb_schedule` VALUES ('1', '2', '3', '2013-03-28 09:10:00', '2013-03-28 10:20:00');
INSERT INTO `tb_schedule` VALUES ('5', '3', '8', '2013-03-27 08:30:00', '2013-03-27 09:10:00');
INSERT INTO `tb_schedule` VALUES ('6', '1', '9', '2013-03-28 08:10:00', '2013-03-28 11:20:00');
INSERT INTO `tb_schedule` VALUES ('9', '4', '12', '2013-03-28 14:20:00', '2013-03-28 16:10:00');
INSERT INTO `tb_schedule` VALUES ('16', '4', '19', '2013-03-30 08:10:00', '2013-03-30 10:10:00');
INSERT INTO `tb_schedule` VALUES ('17', '2', '20', '2013-03-30 08:30:00', '2013-03-30 10:10:00');
INSERT INTO `tb_schedule` VALUES ('21', '2', '24', '2013-03-26 08:30:00', '2013-03-26 11:10:00');
INSERT INTO `tb_schedule` VALUES ('22', '2', '25', '2013-03-27 10:00:00', '2013-03-27 11:00:00');
INSERT INTO `tb_schedule` VALUES ('23', '1', '26', '2013-03-14 07:00:00', '2013-03-14 08:00:00');
INSERT INTO `tb_schedule` VALUES ('24', '1', '27', '2013-03-14 07:00:00', '2013-03-14 08:00:00');
INSERT INTO `tb_schedule` VALUES ('25', '2', '28', '2013-04-16 08:30:00', '2013-04-16 10:20:00');

-- ----------------------------
-- Table structure for `tb_workers`
-- ----------------------------
DROP TABLE IF EXISTS `tb_workers`;
CREATE TABLE `tb_workers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workerID` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `userGroup` varchar(10) NOT NULL COMMENT '用户组',
  `telephone` char(11) DEFAULT NULL,
  `sex` char(2) NOT NULL,
  `birthday` date NOT NULL,
  `departmentID` int(11) DEFAULT NULL COMMENT '所属部门编号',
  `positionID` int(11) DEFAULT NULL COMMENT '属所职位编号',
  `eMail` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_workers
-- ----------------------------
INSERT INTO `tb_workers` VALUES ('1', 'admin', 'yarson', '管理员', '15568829886', '男', '1989-09-10', null, null, '493484854@qq.com');
INSERT INTO `tb_workers` VALUES ('6', 'lily', '莉莉', '普通用户', '15143018923', '男', '1990-10-11', '1', '1', '3434@163.com');
INSERT INTO `tb_workers` VALUES ('7', 'worker', 'yarson', '普通用户', '15534567898', '男', '1995-03-14', '3', '1', '2323@163.com');
INSERT INTO `tb_workers` VALUES ('9', 'john', 'John', '普通用户', '18734343432', '男', '1988-02-16', '4', '2', 'john@hotmail.com');
INSERT INTO `tb_workers` VALUES ('11', '小李', '李四', '普通用户', '13549537448', '男', '2017-05-09', '5', '1', '1354312@163.com');
