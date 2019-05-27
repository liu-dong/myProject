/*
Navicat MySQL Data Transfer

Source Server         : LD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-05-27 15:10:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(1) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL COMMENT '出生日期',
  `sex` smallint(1) DEFAULT NULL COMMENT '0：男、1：女',
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `presentAddress` varchar(100) DEFAULT NULL COMMENT '现住址',
  `nativePlace` varchar(100) DEFAULT NULL COMMENT '籍贯',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
