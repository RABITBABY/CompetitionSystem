/*
Navicat MySQL Data Transfer

Source Server         : hw
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : competition

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2016-11-28 15:14:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `administer`
-- ----------------------------
DROP TABLE IF EXISTS `administer`;
CREATE TABLE `administer` (
  `adminNo` varchar(20) NOT NULL COMMENT '账号',
  `password` varchar(45) NOT NULL COMMENT '密码',
  `adminName` varchar(50) DEFAULT NULL COMMENT '姓名',
  `department` varchar(50) DEFAULT NULL COMMENT '系',
  PRIMARY KEY (`adminNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administer
-- ----------------------------
INSERT INTO `administer` VALUES ('12345', '236523', null, null);
INSERT INTO `administer` VALUES ('12354', '2154', null, null);
INSERT INTO `administer` VALUES ('201306114450', '111111', null, null);
INSERT INTO `administer` VALUES ('201306114451', '000000', null, null);

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `articleId` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `pubDate` date DEFAULT NULL COMMENT '发布日期',
  `pubUser` varchar(50) DEFAULT NULL COMMENT '发布用户',
  `articleType` int(30) DEFAULT NULL COMMENT '发布的类型（1--竞赛信息,2—动态,3—预告）\r\n',
  PRIMARY KEY (`articleId`),
  KEY `pubUser` (`pubUser`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`pubUser`) REFERENCES `administer` (`adminNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for `awards`
-- ----------------------------
DROP TABLE IF EXISTS `awards`;
CREATE TABLE `awards` (
  `awardsId` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(23) DEFAULT NULL COMMENT '竞赛名称',
  `date` date DEFAULT NULL COMMENT '竞赛时间',
  `hunit` varchar(45) DEFAULT NULL COMMENT '主办单位',
  `prizeId` int(11) DEFAULT NULL COMMENT '获奖等级',
  `levelId` int(11) DEFAULT NULL COMMENT '竞赛等级',
  `groupsNo` int(45) DEFAULT NULL COMMENT '获奖组别',
  `isPublish` int(11) DEFAULT '0' COMMENT '发布状态(0未，1发布)',
  PRIMARY KEY (`awardsId`),
  KEY `award_grade` (`prizeId`),
  KEY `FKAC40D1B69954ECC3` (`groupsNo`),
  KEY `FKAC40D1B68EA1F525` (`prizeId`),
  KEY `FKAC40D1B6A549AF89` (`levelId`),
  CONSTRAINT `FKAC40D1B68EA1F525` FOREIGN KEY (`prizeId`) REFERENCES `prize` (`prizeId`),
  CONSTRAINT `FKAC40D1B69954ECC3` FOREIGN KEY (`groupsNo`) REFERENCES `groups` (`groupsNo`),
  CONSTRAINT `FKAC40D1B6A549AF89` FOREIGN KEY (`levelId`) REFERENCES `level` (`levelId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of awards
-- ----------------------------
INSERT INTO `awards` VALUES ('1', '甲骨文java程序设计', '2016-11-15', '甲骨文公司', '3', '1', '1', '0');
INSERT INTO `awards` VALUES ('2', '蓝桥杯', '2016-11-21', '蓝桥杯公司', '1', '2', '2', '0');

-- ----------------------------
-- Table structure for `budget`
-- ----------------------------
DROP TABLE IF EXISTS `budget`;
CREATE TABLE `budget` (
  `budgetId` int(11) NOT NULL AUTO_INCREMENT,
  `comId` int(11) DEFAULT NULL COMMENT '序号',
  `subject` varchar(45) DEFAULT NULL COMMENT '支出科目',
  `sum` int(11) DEFAULT NULL COMMENT '金额',
  `reasons` varchar(45) DEFAULT NULL COMMENT '计算依据及理由',
  `bugetId` int(11) NOT NULL,
  PRIMARY KEY (`budgetId`),
  KEY `decl_bud` (`comId`),
  CONSTRAINT `com_bud` FOREIGN KEY (`comId`) REFERENCES `competition` (`comId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of budget
-- ----------------------------

-- ----------------------------
-- Table structure for `competition`
-- ----------------------------
DROP TABLE IF EXISTS `competition`;
CREATE TABLE `competition` (
  `comId` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `comName` varchar(23) DEFAULT NULL COMMENT '竞赛名称',
  `teacherNo` int(14) NOT NULL COMMENT '竞赛负责人',
  `unit` varchar(45) DEFAULT NULL COMMENT '所在单位',
  `levelId` int(3) NOT NULL COMMENT '竞赛类别',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮箱',
  `date` date DEFAULT NULL COMMENT '填表日期',
  `host` varchar(45) DEFAULT NULL COMMENT '院级以上竞赛举办者',
  `time` date DEFAULT NULL COMMENT '竞赛时间',
  `place` varchar(45) DEFAULT NULL COMMENT '竞赛地点',
  `object` varchar(12) DEFAULT NULL COMMENT '参赛对象',
  `people` int(11) DEFAULT NULL COMMENT '人数',
  `sponsor` varchar(45) DEFAULT NULL COMMENT '校外资助单位',
  `plan` varchar(45) DEFAULT NULL COMMENT '学科竞赛实施方案',
  `tgoal` varchar(45) DEFAULT NULL COMMENT '能力训练目标',
  `wgoal` varchar(45) DEFAULT NULL COMMENT '竞赛获奖目标',
  `sopinion` varchar(45) DEFAULT NULL COMMENT '校外资助单位意见',
  `slsign` varchar(45) DEFAULT NULL COMMENT '资助单位负责人签字',
  `slsdate` date DEFAULT NULL COMMENT '资助单位负责人签字日期',
  `uopinion` varchar(45) DEFAULT NULL COMMENT '竞赛组织实施单位意见',
  `dsign` varchar(45) DEFAULT NULL COMMENT '系部签字',
  `dsdate` date DEFAULT NULL COMMENT '系部签字日期',
  `tdopinion` varchar(45) DEFAULT NULL COMMENT '教学处意见',
  `olsign` varchar(45) DEFAULT NULL COMMENT '竞赛办公室负责人签字',
  `olsdate` date DEFAULT NULL COMMENT '竞赛办公室负责人签字日期',
  `lsign` varchar(45) DEFAULT NULL COMMENT '负责人签字',
  `lsdate` date DEFAULT NULL COMMENT '负责人签字日期',
  `status` int(2) DEFAULT NULL COMMENT '申报状态。0等待系主任审批 1.等待教学处审批 2申报成功3申报失败',
  PRIMARY KEY (`comId`),
  KEY `level_com` (`levelId`),
  KEY `tno` (`teacherNo`),
  KEY `FKBEB591BF6741EFEB` (`teacherNo`),
  CONSTRAINT `FKBEB591BF6741EFEB` FOREIGN KEY (`teacherNo`) REFERENCES `teacher` (`teacherNo`),
  CONSTRAINT `level_com` FOREIGN KEY (`levelId`) REFERENCES `level` (`levelId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of competition
-- ----------------------------
INSERT INTO `competition` VALUES ('1', '甲骨文', '1', null, '1', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `competition` VALUES ('2', '软件设计大赛', '2', null, '2', null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `competition` VALUES ('3', '美术杯', '1', null, '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `departmentId` int(11) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(255) DEFAULT NULL COMMENT '系部名称',
  PRIMARY KEY (`departmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '计算机系');
INSERT INTO `department` VALUES ('2', '外语系');
INSERT INTO `department` VALUES ('3', '会计系');

-- ----------------------------
-- Table structure for `fileupload`
-- ----------------------------
DROP TABLE IF EXISTS `fileupload`;
CREATE TABLE `fileupload` (
  `fileId` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `fileName` int(11) DEFAULT NULL COMMENT '文件名',
  `saveName` varchar(100) DEFAULT NULL COMMENT '存储名',
  `uploadDate` date DEFAULT NULL COMMENT '上传日期',
  `uploadUser` varchar(50) DEFAULT NULL COMMENT '上传用户',
  PRIMARY KEY (`fileId`),
  KEY `uploadUser` (`uploadUser`),
  CONSTRAINT `fileupload_ibfk_1` FOREIGN KEY (`uploadUser`) REFERENCES `administer` (`adminNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fileupload
-- ----------------------------

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `groupsNo` int(11) NOT NULL AUTO_INCREMENT,
  `comId` int(11) DEFAULT NULL,
  `groupsName` varchar(45) DEFAULT NULL COMMENT '组名',
  `teacherNo` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '报名状态（0.正在审核2.审核未通过 3.等待缴费4报名成功 5比赛结束）',
  PRIMARY KEY (`groupsNo`),
  KEY `com_id` (`comId`),
  KEY `FK_2klbi1qhox9yt1b0j5ovl5lbe` (`teacherNo`),
  KEY `FKB63DD9D4EDBA9C01` (`comId`),
  KEY `FKB63DD9D46741EFEB` (`teacherNo`),
  KEY `FKB63DD9D4CB59385B` (`comId`),
  CONSTRAINT `FKB63DD9D46741EFEB` FOREIGN KEY (`teacherNo`) REFERENCES `teacher` (`teacherNo`),
  CONSTRAINT `FKB63DD9D4CB59385B` FOREIGN KEY (`comId`) REFERENCES `project` (`comId`),
  CONSTRAINT `FKB63DD9D4EDBA9C01` FOREIGN KEY (`comId`) REFERENCES `competition` (`comId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('1', '1', '三剑侠', '1', '4');
INSERT INTO `groups` VALUES ('2', '2', '一剑侠', '1', '4');
INSERT INTO `groups` VALUES ('3', '3', 'xxx', '1', '4');

-- ----------------------------
-- Table structure for `groupsdetail`
-- ----------------------------
DROP TABLE IF EXISTS `groupsdetail`;
CREATE TABLE `groupsdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `groupsNo` int(11) DEFAULT NULL COMMENT '组号',
  `studentNo` int(11) DEFAULT NULL COMMENT '学号',
  PRIMARY KEY (`id`),
  KEY `gno` (`groupsNo`),
  KEY `sno` (`studentNo`),
  KEY `FKC52F2F459954ECC3` (`groupsNo`),
  KEY `FKC52F2F45F2872A5D` (`studentNo`),
  CONSTRAINT `FKC52F2F459954ECC3` FOREIGN KEY (`groupsNo`) REFERENCES `groups` (`groupsNo`),
  CONSTRAINT `FKC52F2F45F2872A5D` FOREIGN KEY (`studentNo`) REFERENCES `student` (`studentNo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupsdetail
-- ----------------------------
INSERT INTO `groupsdetail` VALUES ('1', '1', '1');
INSERT INTO `groupsdetail` VALUES ('2', '1', '2');
INSERT INTO `groupsdetail` VALUES ('3', '2', '1');
INSERT INTO `groupsdetail` VALUES ('4', '3', '1');

-- ----------------------------
-- Table structure for `hours`
-- ----------------------------
DROP TABLE IF EXISTS `hours`;
CREATE TABLE `hours` (
  `hoursId` int(11) NOT NULL DEFAULT '0',
  `comId` int(11) DEFAULT NULL COMMENT '序号',
  `type` varchar(45) DEFAULT NULL COMMENT '课时类型',
  `hours` int(11) DEFAULT NULL COMMENT '课时数',
  `remarks` varchar(45) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`hoursId`),
  KEY `decl_hour` (`comId`),
  CONSTRAINT `com_hour` FOREIGN KEY (`comId`) REFERENCES `competition` (`comId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hours
-- ----------------------------

-- ----------------------------
-- Table structure for `level`
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `levelId` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `levelName` varchar(15) DEFAULT NULL COMMENT '竞赛等级',
  PRIMARY KEY (`levelId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES ('1', '国家级');
INSERT INTO `level` VALUES ('2', '省级');
INSERT INTO `level` VALUES ('3', '市级');
INSERT INTO `level` VALUES ('4', '校级 ');

-- ----------------------------
-- Table structure for `material`
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `materialId` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `studentNo` int(11) DEFAULT NULL COMMENT '学号',
  `materialName` varchar(50) DEFAULT NULL COMMENT '材料名称',
  `materialPic` varchar(50) DEFAULT NULL COMMENT '材料图片',
  PRIMARY KEY (`materialId`),
  KEY `FK11D36527F2872A5D` (`studentNo`),
  CONSTRAINT `FK11D36527F2872A5D` FOREIGN KEY (`studentNo`) REFERENCES `student` (`studentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material
-- ----------------------------

-- ----------------------------
-- Table structure for `prize`
-- ----------------------------
DROP TABLE IF EXISTS `prize`;
CREATE TABLE `prize` (
  `prizeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `prizeName` varchar(15) DEFAULT NULL COMMENT '获奖等级',
  PRIMARY KEY (`prizeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prize
-- ----------------------------
INSERT INTO `prize` VALUES ('1', '一等奖');
INSERT INTO `prize` VALUES ('2', '二等奖');
INSERT INTO `prize` VALUES ('3', '三等奖');
INSERT INTO `prize` VALUES ('4', '优秀奖');

-- ----------------------------
-- Table structure for `production`
-- ----------------------------
DROP TABLE IF EXISTS `production`;
CREATE TABLE `production` (
  `proId` int(11) NOT NULL AUTO_INCREMENT COMMENT '作品序号',
  `proName` varchar(45) DEFAULT NULL COMMENT '作品名称',
  `award` varchar(30) DEFAULT NULL COMMENT '奖项',
  `membersName` varchar(50) NOT NULL COMMENT '组员名称',
  `introduction` text COMMENT '作品介绍',
  `pic` varchar(45) DEFAULT NULL COMMENT '作品图片',
  PRIMARY KEY (`proId`),
  KEY `id` (`proId`),
  KEY `gno` (`membersName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of production
-- ----------------------------

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `comId` int(11) NOT NULL COMMENT '竞赛ID',
  `comName` varchar(23) DEFAULT NULL COMMENT '竞赛名称',
  `levelId` int(11) DEFAULT NULL COMMENT '竞赛等级',
  `hunit` varchar(45) DEFAULT NULL COMMENT '主办单位',
  `sOrganizer` varchar(45) DEFAULT NULL COMMENT '校承办单位',
  `introduction` text COMMENT '竞赛简介',
  `applyBeginDate` varchar(45) DEFAULT NULL COMMENT '报名开始时间',
  `applyEndDate` varchar(45) DEFAULT NULL COMMENT '报名结束时间',
  `comDate` varchar(45) DEFAULT NULL COMMENT '比赛时间',
  `cost` decimal(10,2) DEFAULT NULL COMMENT '报名费',
  `status` int(11) DEFAULT NULL COMMENT '比赛状态(0.赛前准备 1比赛结束)',
  `isPublish` int(11) NOT NULL DEFAULT '0' COMMENT '发布状态',
  PRIMARY KEY (`comId`),
  KEY `pro_gra` (`levelId`),
  CONSTRAINT `level_pro` FOREIGN KEY (`levelId`) REFERENCES `level` (`levelId`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1', '甲骨文', '1', null, null, null, '2016-10-01', '2016-10-03', '2016-10-11', '300.00', '0', '0');
INSERT INTO `project` VALUES ('2', '软件设计比赛', '2', null, null, null, '2016-11-01', '2016-11-02', '2016-11-22', '200.00', '0', '0');
INSERT INTO `project` VALUES ('3', '美术杯', '2', null, null, null, '2016-01-01', '2016-01-10', '2016-03-10', '0.00', '0', '0');

-- ----------------------------
-- Table structure for `schedule`
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `scheduleId` int(11) NOT NULL AUTO_INCREMENT,
  `comId` int(11) DEFAULT NULL COMMENT '序号',
  `teacherNo` int(11) DEFAULT NULL COMMENT '职工号',
  `content` varchar(45) DEFAULT NULL COMMENT '培训内容',
  `position` varchar(45) DEFAULT NULL COMMENT '培训地点',
  `date` date DEFAULT NULL COMMENT '培训日期',
  `hours` int(11) DEFAULT NULL COMMENT '学时',
  PRIMARY KEY (`scheduleId`),
  KEY `decl_sche` (`comId`),
  KEY `decl_no` (`teacherNo`),
  KEY `FKD66692976741EFEB` (`teacherNo`),
  CONSTRAINT `com_sch` FOREIGN KEY (`comId`) REFERENCES `competition` (`comId`),
  CONSTRAINT `FKD66692976741EFEB` FOREIGN KEY (`teacherNo`) REFERENCES `teacher` (`teacherNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule
-- ----------------------------

-- ----------------------------
-- Table structure for `standard`
-- ----------------------------
DROP TABLE IF EXISTS `standard`;
CREATE TABLE `standard` (
  `standardId` int(11) NOT NULL AUTO_INCREMENT COMMENT '奖励标准ID',
  `levelId` int(3) DEFAULT NULL COMMENT '获奖类别(外键)',
  `prizeId` int(6) DEFAULT NULL COMMENT '获奖等级(外键)',
  `student` int(11) DEFAULT NULL COMMENT '奖励标准（学生）',
  `teacher` int(11) DEFAULT NULL COMMENT '奖励标准（老师）',
  PRIMARY KEY (`standardId`),
  KEY `stan_type` (`levelId`),
  KEY `stan_grade` (`prizeId`),
  KEY `FK4E3D1EBD8EA1F525` (`prizeId`),
  CONSTRAINT `stan_grade` FOREIGN KEY (`prizeId`) REFERENCES `prize` (`prizeId`),
  CONSTRAINT `stan_type` FOREIGN KEY (`levelId`) REFERENCES `level` (`levelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of standard
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentNo` int(11) NOT NULL COMMENT '学号',
  `studentName` varchar(15) DEFAULT NULL COMMENT '姓名',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别',
  `departmentId` int(15) DEFAULT NULL COMMENT '学院',
  `profession` varchar(15) DEFAULT NULL COMMENT '专业',
  `classNo` int(11) DEFAULT NULL COMMENT '班级',
  `grade` int(11) DEFAULT NULL COMMENT '年级',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机',
  `email` varchar(45) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(45) NOT NULL COMMENT '密码',
  PRIMARY KEY (`studentNo`),
  KEY `FK8FFE823B77CD9A99` (`departmentId`),
  CONSTRAINT `FK8FFE823B77CD9A99` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'max', '女', '1', '商业软件工程', '1', '2013', '18829839888', '53635657@qq.com', '123456');
INSERT INTO `student` VALUES ('2', 'huanwen', '女', '1', '商业软件工程', '1', '2013', '18829839888', '53635657@qq.com', '111111');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacherNo` int(11) NOT NULL COMMENT '职工号',
  `teacherName` varchar(14) DEFAULT NULL COMMENT '姓名',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别',
  `birth` date DEFAULT NULL COMMENT '出生日期',
  `departmentId` int(30) DEFAULT NULL COMMENT '部门',
  `subject` varchar(15) DEFAULT NULL COMMENT '科室',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `title` varchar(10) DEFAULT NULL COMMENT '职称',
  `post` varchar(45) DEFAULT NULL COMMENT '职务',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮箱',
  `type` varchar(10) DEFAULT NULL COMMENT '教职工类型',
  `direction` varchar(45) DEFAULT NULL COMMENT '教学研究方向',
  `education` varchar(45) DEFAULT NULL COMMENT '学历',
  `lab` int(11) DEFAULT '0' COMMENT '是否实验人员',
  `password` varchar(45) NOT NULL COMMENT '密码',
  `examiner` int(11) DEFAULT '0' COMMENT '是否审批人员',
  `department` tinyblob,
  PRIMARY KEY (`teacherNo`),
  KEY `no` (`teacherNo`),
  KEY `FKAA31CBE277CD9A99` (`departmentId`),
  CONSTRAINT `FKAA31CBE277CD9A99` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'max', null, null, null, null, null, null, null, null, null, null, null, '0', '123456', '0', null);
INSERT INTO `teacher` VALUES ('2', 'admin', null, null, null, null, null, null, null, null, null, null, null, '0', '000000', '0', null);
