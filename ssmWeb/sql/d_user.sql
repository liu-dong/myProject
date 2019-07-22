/*
Navicat MySQL Data Transfer

Source Server         : LD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : my_data

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-07-22 17:20:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for d_user
-- ----------------------------
DROP TABLE IF EXISTS `d_user`;
CREATE TABLE `d_user` (
  `id` varchar(36) NOT NULL COMMENT '主键id',
  `user_type` int(1) DEFAULT '2' COMMENT '用户类型 （2：普通、1：管理员、0：超级管理员）',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `person_id` varchar(50) NOT NULL COMMENT '人员id',
  `real_name` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `last_login_time` datetime DEFAULT NULL COMMENT '上传登录时间',
  `login_count` int(11) DEFAULT NULL COMMENT '登录次数',
  `user_status` int(1) NOT NULL DEFAULT '0' COMMENT '用户状态（0：正常、）',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
