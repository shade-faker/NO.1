##作业
/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : cqupt

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-05-01 10:48:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `grade` int(10) NOT NULL COMMENT 'the time of student arrive at college',
  `ID` int(10) DEFAULT NULL COMMENT 'The ID of class(13001807)',
  `number` int(10) DEFAULT NULL COMMENT 'student number',
  `classification` varchar(20) DEFAULT NULL COMMENT 'Whether the class is common,intensive.Input YSE or NO.',
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `name` varchar(30) NOT NULL COMMENT 'This table is for recording the kind of colleges.',
  `major` varchar(30) NOT NULL DEFAULT '' COMMENT ' To recording the main major of the colleage.',
  `number` int(10) NOT NULL COMMENT 'the population of student.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ID` int(10) NOT NULL COMMENT 'student id',
  `name` varchar(30) NOT NULL COMMENT 'student name',
  `age` int(10) NOT NULL COMMENT 'student age',
  `gender` varchar(10) NOT NULL COMMENT 'boy or girl.',
  `nation` varchar(20) NOT NULL COMMENT 'nationailty of student',
  `city` varchar(30) NOT NULL COMMENT 'where from.',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
