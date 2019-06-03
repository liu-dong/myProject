/*
Navicat MySQL Data Transfer

Source Server         : LD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : my_data

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-06-03 14:53:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL COMMENT '用户id',
  `role_id` varchar(36) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('c78d23a4837e11e9877b00ff8b578937', 'b209584264cc11e9ae05b083fe7c6f06', 'b34f76f9837d11e9877b00ff8b578937');
INSERT INTO `user_role` VALUES ('dba886e9837e11e9877b00ff8b578937', 'ac8a7b3470a711e986f7b083fe7c6f06', 'a6842b8c837d11e9877b00ff8b578937');
