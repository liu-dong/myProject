/*
Navicat MySQL Data Transfer

Source Server         : LD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : my_data

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-07-22 17:21:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `identity_card` varchar(36) NOT NULL COMMENT '身份证',
  `age` int(1) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL COMMENT '出生日期',
  `sex` smallint(1) DEFAULT NULL COMMENT '0：男、1：女',
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `present_address` varchar(100) DEFAULT NULL COMMENT '现住址',
  `native_place` varchar(100) DEFAULT NULL COMMENT '籍贯',
  `individual_resume` varchar(255) DEFAULT NULL COMMENT '个人简介',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
