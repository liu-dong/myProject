/*
Navicat MySQL Data Transfer

Source Server         : LD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : my_data

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-05-29 15:50:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(36) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `loginName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` int(4) NOT NULL,
  `sex` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
