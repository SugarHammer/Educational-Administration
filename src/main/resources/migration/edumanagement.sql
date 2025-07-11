/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : edumanagement

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 28/10/2020 09:41:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_annualassessment
-- ----------------------------
DROP TABLE IF EXISTS `t_annualassessment`;
CREATE TABLE `t_annualassessment`  (
  `id` bigint(20) NOT NULL,
  `id_teacher` bigint(20) NULL DEFAULT NULL,
  `year` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personalSummary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `opinionDepartment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `opinion1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `opinion2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `opinionOnself` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_15`(`id_teacher`) USING BTREE,
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`id_teacher`) REFERENCES `t_teacher` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '年度考核' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_business
-- ----------------------------
DROP TABLE IF EXISTS `t_business`;
CREATE TABLE `t_business`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_teacher` bigint(20) NULL DEFAULT NULL,
  `year` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年',
  `dateOfBirth` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出生年月',
  `trem` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学期',
  `classes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '班级',
  `courseName` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '课程名',
  `theoryClass` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '理论课时',
  `guidingExperiment` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指导实验',
  `guidingDesign` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指导设计',
  `guidingInternship` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指导实习',
  `guideComprehensiveExperiment` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指导综合实验',
  `totalClass` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总课时',
  `totalWorkload` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作量合计',
  `textbookName` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '编写教材名称',
  `publishingUnitAndTime` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '出版单位及时间',
  `chiefEditor` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '主编（审）',
  `jointlyEdited` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '参编（审）',
  `planningTextbook` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '规划教材',
  `schoolBasedTextbook` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '校本教材',
  `other` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '其他',
  `paperTitle` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '论文篇名',
  `publishingSituation` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '发表（获奖）情况',
  `level` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '级别',
  `ranking` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '本人排名',
  `hostSubject` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '主持或参加课题/项目名称',
  `cooperationUnit` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '批准（合作）单位',
  `category` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '类别',
  `myRole` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '本人角色',
  `awards` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '获奖情况',
  `academicGroup` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '参加学术团体情况',
  `ContinuingEducation` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '继续教育情况',
  `otherJobs` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '担任其他工作情况',
  `sick` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '病休情况',
  `compassionateLeave` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '事假情况',
  `beLate` int(10) NULL DEFAULT NULL COMMENT '迟到次数',
  `leaveEarly` int(10) NULL DEFAULT NULL COMMENT '早退次数',
  `tuneClass` int(10) NULL DEFAULT NULL COMMENT '调课次数',
  `missingClass` int(10) NULL DEFAULT NULL COMMENT '缺课次数',
  `disciplinaryPenalty` int(10) NULL DEFAULT NULL COMMENT '违纪扣分',
  `teachingOpinion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '教研室意见',
  `departmentOpinion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '部门意见',
  `schoolOpinion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '学校意见',
  `bak1` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `bak2` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `bak3` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `bak4` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `remark` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_teacher`(`id_teacher`) USING BTREE,
  CONSTRAINT `t_business_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `t_teacher` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师学期业务情况登记表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_class
-- ----------------------------
DROP TABLE IF EXISTS `t_class`;
CREATE TABLE `t_class`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班名',
  `id_specialty` bigint(20) NOT NULL COMMENT '专业id',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_3`(`id_specialty`) USING BTREE,
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`id_specialty`) REFERENCES `t_specialty` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_class
-- ----------------------------
INSERT INTO `t_class` VALUES (29, '计软2017-1', 29, NULL);
INSERT INTO `t_class` VALUES (30, '计软2017-2', 29, NULL);
INSERT INTO `t_class` VALUES (31, '移应2017-2', 30, NULL);
INSERT INTO `t_class` VALUES (32, '移应2017-1', 30, NULL);
INSERT INTO `t_class` VALUES (33, '软测2017-1', 31, NULL);
INSERT INTO `t_class` VALUES (34, '计软2018-1', 29, NULL);
INSERT INTO `t_class` VALUES (35, '计软2018-2', 29, NULL);
INSERT INTO `t_class` VALUES (36, '计软2018-3', 29, NULL);
INSERT INTO `t_class` VALUES (37, '计软2018-4', 29, NULL);
INSERT INTO `t_class` VALUES (38, '计软2018-5', 29, NULL);
INSERT INTO `t_class` VALUES (39, '移应2018-1', 30, NULL);
INSERT INTO `t_class` VALUES (40, '移应2018-2', 30, NULL);
INSERT INTO `t_class` VALUES (41, '软测2018-1', 31, NULL);
INSERT INTO `t_class` VALUES (42, '计软2019-1', 29, NULL);
INSERT INTO `t_class` VALUES (43, '计软2019-2', 29, NULL);
INSERT INTO `t_class` VALUES (44, '计软2019-3', 29, NULL);
INSERT INTO `t_class` VALUES (45, '计软2019-4', 29, NULL);
INSERT INTO `t_class` VALUES (46, '计软2019-5', 29, NULL);
INSERT INTO `t_class` VALUES (47, '移应2019-1', 30, NULL);
INSERT INTO `t_class` VALUES (48, '移应2019-2', 30, NULL);

-- ----------------------------
-- Table structure for t_debriefing
-- ----------------------------
DROP TABLE IF EXISTS `t_debriefing`;
CREATE TABLE `t_debriefing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_teacher` bigint(20) NULL DEFAULT NULL,
  `year` bigint(20) NULL DEFAULT NULL,
  `term` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teachingTask` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `achievementsInScientificResearch` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `otherWork` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `winAward` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_12`(`id_teacher`) USING BTREE,
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`id_teacher`) REFERENCES `t_teacher` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学期述职表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_debriefingofyear
-- ----------------------------
DROP TABLE IF EXISTS `t_debriefingofyear`;
CREATE TABLE `t_debriefingofyear`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_teacher` bigint(20) NULL DEFAULT NULL,
  `year` bigint(20) NULL DEFAULT NULL,
  `teachingTask` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '基本教学任务',
  `achievementsInScientificResearch` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '科学研究成果',
  `otherWork` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `winAward` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '获奖情况',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_13`(`id_teacher`) USING BTREE,
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`id_teacher`) REFERENCES `t_teacher` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '年度述职表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_evaluationofspecialandtechnical
-- ----------------------------
DROP TABLE IF EXISTS `t_evaluationofspecialandtechnical`;
CREATE TABLE `t_evaluationofspecialandtechnical`  (
  `id` bigint(20) NOT NULL,
  `id_teacher` bigint(20) NULL DEFAULT NULL,
  `mainAchievements` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `year` varbinary(20) NULL DEFAULT NULL,
  `term` varbinary(20) NULL DEFAULT NULL,
  `attendance` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rewardsAndPunishments` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `opinionDepartment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `opinionUnit` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `opinionOnself` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_14`(`id_teacher`) USING BTREE,
  CONSTRAINT `FK_Reference_14` FOREIGN KEY (`id_teacher`) REFERENCES `t_teacher` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'evaluation of special and technical personnel\r\n专业技术人员考核' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_institute
-- ----------------------------
DROP TABLE IF EXISTS `t_institute`;
CREATE TABLE `t_institute`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `institute_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '院系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_institute
-- ----------------------------
INSERT INTO `t_institute` VALUES (3, '信息工程学院', NULL);
INSERT INTO `t_institute` VALUES (4, '经济管理学院', NULL);

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cotent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `id_institute` bigint(20) NULL DEFAULT NULL,
  `id_admin` bigint(20) NOT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_7`(`id_admin`) USING BTREE,
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`id_admin`) REFERENCES `t_subadmin` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_projectType` bigint(20) NOT NULL COMMENT '课题类型',
  `id_projectSource` bigint(20) NOT NULL COMMENT '课题来源',
  `id_teacher` bigint(20) NOT NULL COMMENT '教师',
  `projectName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课题名称',
  `marchSpecialty` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `filePath` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件位置',
  `teacherNames` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '李1&陈大大， 多个教师名字',
  `selectCount` int(11) NULL DEFAULT NULL COMMENT '选报人数',
  `select_flag` int(11) NOT NULL COMMENT '可选状态：0 未关闭 1 已关闭;',
  `verifyProject_flag` int(11) NOT NULL COMMENT '课题状态：0 未审核 1 审核未通过 2 审核通过',
  `release_flag` int(11) NOT NULL COMMENT '发布标志：0 未发布 1 已发布',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_10`(`id_teacher`) USING BTREE,
  INDEX `FK_Reference_8`(`id_projectType`) USING BTREE,
  INDEX `FK_Reference_9`(`id_projectSource`) USING BTREE,
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`id_teacher`) REFERENCES `t_teacher` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`id_projectType`) REFERENCES `t_projecttype` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`id_projectSource`) REFERENCES `t_projectsource` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES (61, 10, 10, 153, '基于SSM的教务综合管理系统', '软件技术,移动应用,软件测试', 'F:\\kongjian\\Git\\educationaladministration\\target\\classes\\static\\model\\153\\基于SSM的教务综合管理系统任务书.doc', '张三', 3, 0, 2, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_project` VALUES (62, 10, 10, 154, '基于B/S架构&android平台的学生手机管理系统 ', '软件技术', 'F:\\kongjian\\Git\\educationaladministration\\target\\classes\\static\\model\\154\\基于BS架构&android平台的学生手机管理系统 .docx', '李四', 2, 0, 2, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_project` VALUES (64, 10, 10, 153, '123', '软件技术', 'D:\\idea\\educationaladministration\\target\\classes\\static\\model\\153\\计软18-1-7-刘振远.docx', '张三&张三', 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_project` VALUES (65, 10, 10, 154, '毕业设计', '软件技术,移动应用,软件测试', 'D:\\idea\\educationaladministration\\educationaladministration\\target\\target\\classes\\static\\model\\154\\计软18-1-7-刘振远.docx', '李四&张三', 0, 0, 2, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_project` VALUES (66, 10, 10, 155, '教师管理系统', '软件技术,移动应用,软件测试', 'D:\\idea\\educationaladministration\\target\\classes\\static\\model\\155\\教师管理系统课件.docx', '郭老师', 0, 1, 2, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_project` VALUES (67, 10, 10, 155, '学生管理系统', '软件技术,移动应用', 'D:\\idea\\educationaladministration\\target\\classes\\static\\model\\155\\学生管理系统.docx', '郭老师&李老师', 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_project` VALUES (68, 10, 10, 161, '计算机图形学', '移动应用,软件技术,软件测试', 'D:\\idea\\educationaladministration\\target\\classes\\static\\model\\161\\植物大战僵尸 中文版.data', '李凤强&杜煜鑫', 1, 0, 2, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_project` VALUES (69, 10, 10, 160, '中小学生管理系统', '移动应用,软件技术,软件测试', 'D:\\idea\\educationaladministration\\target\\classes\\static\\model\\160\\1.txt', '杜老师&李凤强', 1, 0, 2, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_project` VALUES (70, 10, 12, 153, '酒店管理系统', '软件技术,移动应用,软件测试', 'D:\\idea\\educationaladministration\\target\\classes\\static\\model\\153\\计软18-1-7-刘振远.docx', '张三', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_project` VALUES (71, 10, 10, 162, '学生管理系统', '软件技术', 'D:\\idea\\educationaladministration\\target\\classes\\static\\model\\162\\4.jpg', '张书航', 0, 0, 2, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_project` VALUES (72, 10, 10, 161, '课题22', '移动应用,软件测试', 'D:\\idea\\educationaladministration\\target\\classes\\static\\model\\161\\Asus_Keyboard_Hotkeys_Driver_V2020.zip', '李凤强&杜煜鑫', 0, 0, 2, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_project` VALUES (73, 10, 12, 160, '百分百能通过课程', '移动应用,软件技术', 'D:\\idea\\educationaladministration\\target\\classes\\static\\model\\160\\2.txt', '杜老师&没有', 0, 0, 2, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_project` VALUES (74, 10, 10, 163, '招聘管理系统', '软件技术', 'D:\\idea\\educationaladministration\\target\\classes\\static\\model\\163\\计软18-1-7-刘振远.docx', '刘振远', 0, 0, 2, 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_projectselected
-- ----------------------------
DROP TABLE IF EXISTS `t_projectselected`;
CREATE TABLE `t_projectselected`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_student` bigint(20) NOT NULL,
  `id_project` bigint(20) NOT NULL,
  `stuSelect_flag` bigint(20) NOT NULL COMMENT '当前状态 0 未选题，1 选题待审核，2 选题未通过，3 选题通过',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '选题情况表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_projectselected
-- ----------------------------
INSERT INTO `t_projectselected` VALUES (102, 7646, 61, 1, NULL);
INSERT INTO `t_projectselected` VALUES (103, 7647, 61, 3, NULL);
INSERT INTO `t_projectselected` VALUES (104, 7648, 62, 1, NULL);
INSERT INTO `t_projectselected` VALUES (105, 7649, 61, 1, NULL);
INSERT INTO `t_projectselected` VALUES (106, 7650, 62, 1, NULL);
INSERT INTO `t_projectselected` VALUES (113, 7658, 68, 3, NULL);
INSERT INTO `t_projectselected` VALUES (124, 7662, 69, 1, NULL);

-- ----------------------------
-- Table structure for t_projectsource
-- ----------------------------
DROP TABLE IF EXISTS `t_projectsource`;
CREATE TABLE `t_projectsource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sourceName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课题来源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_projectsource
-- ----------------------------
INSERT INTO `t_projectsource` VALUES (10, '教学科研', NULL);
INSERT INTO `t_projectsource` VALUES (11, '社会实践', NULL);
INSERT INTO `t_projectsource` VALUES (12, '生产实践', NULL);

-- ----------------------------
-- Table structure for t_projecttype
-- ----------------------------
DROP TABLE IF EXISTS `t_projecttype`;
CREATE TABLE `t_projecttype`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课题类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_projecttype
-- ----------------------------
INSERT INTO `t_projecttype` VALUES (10, '软件工程', NULL);
INSERT INTO `t_projecttype` VALUES (11, '应用研究', NULL);
INSERT INTO `t_projecttype` VALUES (12, '工程设计', NULL);
INSERT INTO `t_projecttype` VALUES (13, '工程实践', NULL);

-- ----------------------------
-- Table structure for t_section
-- ----------------------------
DROP TABLE IF EXISTS `t_section`;
CREATE TABLE `t_section`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教研室名字',
  `id_institute` bigint(20) NOT NULL COMMENT '院系id',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_1`(`id_institute`) USING BTREE,
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`id_institute`) REFERENCES `t_institute` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教研室表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_section
-- ----------------------------
INSERT INTO `t_section` VALUES (24, '软件教研室', 3, NULL);
INSERT INTO `t_section` VALUES (25, '网络教研室', 3, NULL);
INSERT INTO `t_section` VALUES (27, '多媒体教研室', 3, NULL);
INSERT INTO `t_section` VALUES (28, '现代信息技术教研室', 3, NULL);

-- ----------------------------
-- Table structure for t_specialty
-- ----------------------------
DROP TABLE IF EXISTS `t_specialty`;
CREATE TABLE `t_specialty`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `specialty_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_section` bigint(20) NOT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_2`(`id_section`) USING BTREE,
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`id_section`) REFERENCES `t_section` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专业方向表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_specialty
-- ----------------------------
INSERT INTO `t_specialty` VALUES (29, '软件技术', 24, NULL);
INSERT INTO `t_specialty` VALUES (30, '移动应用', 24, NULL);
INSERT INTO `t_specialty` VALUES (31, '软件测试', 24, NULL);

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stuNum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_class` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_4`(`id_class`) USING BTREE,
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`id_class`) REFERENCES `t_class` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7684 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES (7646, '计软2017-1-01', '1', 29, '学生1', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7647, '计软2017-1-02', '2', 29, '学生2', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7648, '计软2017-1-03', '3', 29, '学生3', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7649, '计软2017-1-04', '4', 29, '学生4', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7650, '计软2017-1-05', '5', 29, '学生5', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7656, '移应2018-1-43', '43', 39, '高骏', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7657, '移应2018-1-45', '45', 40, '黄嘉豪', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7658, '移应2018-1-11', '11', 39, '李凤强', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7659, '移应2018-2-40', '40', 40, '刘南婷', '女', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7660, '移应2018-2-13', '13', 40, '侯志强', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7661, '移应2018-2-6', '6', 40, '罗阳', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7662, '移应2018-2-37', '37', 40, '杜煜兴', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7663, '移应2018-2-41', '41', 40, '贺宗', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7664, '软测2018-1-12', '12', 41, '王婕妤', '女', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7665, '软测2018-1-21', '21', 41, '张书航', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7666, '软测2018-1-18', '18', 41, '曾俊杰', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7667, '计软2018-1-13', '13', 34, '唐巧云', '女', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7668, '计软2018-1-7', '7', 34, '刘振远', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7669, '计软2018-2-28', '28', 35, '何沅洲', '男', '111111', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7670, '计软2018-2-27', '27', 35, '郭银波', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7671, '计软2018-2-16', '16', 35, '向鹏', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7672, '移应2019-2-20', '20', 48, '毛钱', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7673, '移应2019-2-25', '25', 48, '王澳龙', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7674, '移应2019-2-11', '11', 48, '杨丽华', '女', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7675, '移应2019-2-37', '37', 48, '刘亚婷', '女', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7676, '移应2019-2-38', '38', 48, '黄粤湘', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7677, '移应2019-2-39', '39', 48, '邓浩宇', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7678, '计软2019-1-2', '2', 42, '王意辉', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7679, '计软2019-1-42', '42', 42, '王玉娟', '女', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7680, '计软2019-1-41', '41', 42, '何萧', '女', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7681, '计软2019-3-22', '22', 44, '贺亚军', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7682, '计软2019-3-45', '45', 44, '雷雨轩', '男', '000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_student` VALUES (7683, '计软2019-5-3', '3', 46, '杨昕睿', '男', '000000', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_subadmin
-- ----------------------------
DROP TABLE IF EXISTS `t_subadmin`;
CREATE TABLE `t_subadmin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_institute` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_6`(`id_institute`) USING BTREE,
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`id_institute`) REFERENCES `t_institute` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '子管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_subadmin
-- ----------------------------
INSERT INTO `t_subadmin` VALUES (8, 'administrator1', '000000', 3);
INSERT INTO `t_subadmin` VALUES (9, '经管admin', '000000', 4);

-- ----------------------------
-- Table structure for t_superadmin
-- ----------------------------
DROP TABLE IF EXISTS `t_superadmin`;
CREATE TABLE `t_superadmin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_superadmin
-- ----------------------------
INSERT INTO `t_superadmin` VALUES (1, 'superadmin1', '000000', NULL);

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '教师id',
  `userName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名字',
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `gender` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别\r\n\r\n',
  `id_section` bigint(20) NOT NULL COMMENT '教研室id',
  `verify_flag` int(11) NOT NULL COMMENT '身份 0 教师 1审查员',
  `politicalStatus` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `education` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教育',
  `degree` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '等级\r\n',
  `participationDate` date NULL DEFAULT NULL COMMENT '参与时间',
  `administrativeDuty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行政职责',
  `technicalPosition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技术职务',
  `technicalPositionGeted` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技术定位',
  `duty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职责',
  `IDcardNo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `bak1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '保留字段1',
  `bak2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '保留字段2',
  `bak3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '保留字段3',
  `bak4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '保留字段4',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_teacher_idSection`(`id_section`) USING BTREE,
  CONSTRAINT `FK_teacher_idSection` FOREIGN KEY (`id_section`) REFERENCES `t_section` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 165 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES (153, 'rj张三', '张三', '000000', '男', 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_teacher` VALUES (154, 'rj李四', '李四', '000000', '男', 24, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_teacher` VALUES (155, 'rj郭老师', '郭老师', '000000', '男', 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_teacher` VALUES (156, 'rj向鹏', '向鹏', '000000', '男', 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_teacher` VALUES (157, 'rj刘南婷', '刘南婷', '000000', '女', 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_teacher` VALUES (158, 'rj贺宗', '贺宗', '000000', '男', 24, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_teacher` VALUES (159, 'rj黄嘉豪', '黄嘉豪', '000000', '男', 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_teacher` VALUES (160, 'rj杜老师', '杜老师', '000000', '哈哈哈哈哈', 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_teacher` VALUES (161, 'rj李凤强', '李凤强', '000000', '男', 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_teacher` VALUES (162, 'rj张书航', '张书航', '000000', '男', 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_teacher` VALUES (163, 'rj刘振远', '刘振远', '000000', '男', 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_workapproval
-- ----------------------------
DROP TABLE IF EXISTS `t_workapproval`;
CREATE TABLE `t_workapproval`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_type` bigint(20) NOT NULL,
  `id_teacher` bigint(20) NOT NULL,
  `workTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `begin_date` date NOT NULL,
  `end_date` date NOT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `member` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成员',
  `workContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作内容',
  `appovalFlag` int(11) NOT NULL COMMENT '批准标志',
  `sumbitDate` date NOT NULL COMMENT '提交时间',
  `appovalDate` date NULL DEFAULT NULL COMMENT '批准时间',
  `id_subAdmin` bigint(20) NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_16`(`id_teacher`) USING BTREE,
  INDEX `FK_Reference_17`(`id_type`) USING BTREE,
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`id_teacher`) REFERENCES `t_teacher` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_17` FOREIGN KEY (`id_type`) REFERENCES `t_workapprovaltype` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作审批表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_workapprovaldata
-- ----------------------------
DROP TABLE IF EXISTS `t_workapprovaldata`;
CREATE TABLE `t_workapprovaldata`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_workapproval` bigint(20) NOT NULL,
  `news` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dataRar` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` int(11) NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_18`(`id_workapproval`) USING BTREE,
  CONSTRAINT `FK_Reference_18` FOREIGN KEY (`id_workapproval`) REFERENCES `t_workapproval` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作审批资料上传表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_workapprovaltype
-- ----------------------------
DROP TABLE IF EXISTS `t_workapprovaltype`;
CREATE TABLE `t_workapprovaltype`  (
  `id` bigint(20) NOT NULL,
  `typeName` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作审批类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_workload
-- ----------------------------
DROP TABLE IF EXISTS `t_workload`;
CREATE TABLE `t_workload`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_teacher` bigint(20) NOT NULL COMMENT '老师',
  `year` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年',
  `term` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学期',
  `classes` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '班级',
  `courseName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程名',
  `classHourOfPlan` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '计划课时',
  `jointClass` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '合班课',
  `extracurricularExperiment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课外实验',
  `sum1` float NULL DEFAULT NULL,
  `courseDesign` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程设计',
  `on_campusPractice` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '校内实训',
  `off_campusTraining` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '校外实训',
  `GraduationPractice` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '毕业实习',
  `sum2` float NULL DEFAULT NULL,
  `sum1AddSum2` float NULL DEFAULT NULL,
  `rsrProjectName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '项目名',
  `rsrProjectBrief` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '项目摘要',
  `rsrProjectStatus` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '项目完成情况',
  `rsrConversionWorkload` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '折算标准工作量',
  `rsrPProjectLeader` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '项目负责人',
  `rsrWorkload` float NULL DEFAULT NULL COMMENT '教研科研工作量',
  `sProjectName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '补助工作量 项目名',
  `sProjectBrief` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sProjectStatus` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sConversionWorkload` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sPProjectLeader` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sectionVerify` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `instituteVerify` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `subsidyworkload` float NULL DEFAULT NULL,
  `totalSum` float NULL DEFAULT NULL,
  `bak1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bak4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_19`(`id_teacher`) USING BTREE,
  CONSTRAINT `FK_Reference_19` FOREIGN KEY (`id_teacher`) REFERENCES `t_teacher` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作量申报/审核表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
