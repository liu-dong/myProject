/*
Navicat MySQL Data Transfer

Source Server         : LD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : my_data

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-06-03 14:53:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(36) NOT NULL,
  `role_name` varchar(100) NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('a6842b8c837d11e9877b00ff8b578937', 'user');
INSERT INTO `role` VALUES ('b34f76f9837d11e9877b00ff8b578937', 'administrator');
