/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : cqupt

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-05-02 14:37:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `ID` int(10) NOT NULL COMMENT 'The ID of class(13001807)',
  `grade` int(10) DEFAULT NULL COMMENT 'the time of student arrive at college',
  `number` int(10) DEFAULT NULL COMMENT 'student number',
  `classification` varchar(20) DEFAULT NULL COMMENT 'Whether the class is common,intensive.Input YSE or NO.',
  PRIMARY KEY (`ID`),
  CONSTRAINT `college` FOREIGN KEY (`ID`) REFERENCES `college` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `ID` int(10) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT 'This table is for recording the kind of colleges.',
  `major` varchar(30) NOT NULL DEFAULT '' COMMENT ' To recording the main major of the colleage.',
  `number` int(10) NOT NULL COMMENT 'the population of student.',
  PRIMARY KEY (`ID`)
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
  `colleage` int(10) NOT NULL COMMENT 'student''s college',
  `class` int(10) NOT NULL COMMENT 'student'' class',
  `name` varchar(30) NOT NULL COMMENT 'student name',
  `age` int(10) NOT NULL COMMENT 'student age',
  `gender` varchar(10) NOT NULL COMMENT 'boy or girl.',
  `phone` int(10) DEFAULT NULL COMMENT 'student phone number.',
  PRIMARY KEY (`ID`),
  KEY `class` (`class`),
  CONSTRAINT `class` FOREIGN KEY (`class`) REFERENCES `class` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
