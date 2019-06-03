/*
Navicat MySQL Data Transfer

Source Server         : LD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : my_data

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-06-03 14:53:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL DEFAULT '' COMMENT '角色id',
  `permission_id` varchar(36) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1e289a13837e11e9877b00ff8b578937', 'b34f76f9837d11e9877b00ff8b578937', '1423b054837e11e9877b00ff8b578937');
INSERT INTO `role_permission` VALUES ('6dba6a81837e11e9877b00ff8b578937', 'b34f76f9837d11e9877b00ff8b578937', '142a6c26837e11e9877b00ff8b578937');
INSERT INTO `role_permission` VALUES ('6dbddbc1837e11e9877b00ff8b578937', 'b34f76f9837d11e9877b00ff8b578937', '142e6209837e11e9877b00ff8b578937');
INSERT INTO `role_permission` VALUES ('6dc368d9837e11e9877b00ff8b578937', 'b34f76f9837d11e9877b00ff8b578937', 'ec7dd157837d11e9877b00ff8b578937');
INSERT INTO `role_permission` VALUES ('93a46cf5837e11e9877b00ff8b578937', 'a6842b8c837d11e9877b00ff8b578937', '1423b054837e11e9877b00ff8b578937');
