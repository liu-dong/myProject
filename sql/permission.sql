/*
Navicat MySQL Data Transfer

Source Server         : LD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : my_data

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-06-03 14:53:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` varchar(36) NOT NULL,
  `permission_name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1423b054837e11e9877b00ff8b578937', 'select');
INSERT INTO `permission` VALUES ('142a6c26837e11e9877b00ff8b578937', 'update');
INSERT INTO `permission` VALUES ('142e6209837e11e9877b00ff8b578937', 'insert');
INSERT INTO `permission` VALUES ('ec7dd157837d11e9877b00ff8b578937', 'delete');
