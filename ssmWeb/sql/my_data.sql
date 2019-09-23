/*
Navicat MySQL Data Transfer

Source Server         : LD
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : my_data

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-09-23 23:15:57
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

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` varchar(36) NOT NULL,
  `permission_name` varchar(50) NOT NULL COMMENT '权限名称',
  `permission_type` int(1) NOT NULL DEFAULT '0' COMMENT '权限类型  0：菜单权限、1：操作权限',
  `resource_id` varchar(36) NOT NULL COMMENT '资源id(菜单表id)',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='人员信息表';

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(36) NOT NULL COMMENT '主键id',
  `role_name` varchar(100) NOT NULL COMMENT '角色名称',
  `remark` varchar(150) DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

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
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `parent_id` varchar(36) DEFAULT NULL COMMENT '上级菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `menu_level` int(1) NOT NULL DEFAULT '1' COMMENT '菜单所在的层级',
  `menu_icon` varchar(100) DEFAULT NULL COMMENT '小图标样式',
  `menu_order` int(1) DEFAULT '0' COMMENT '菜单显示顺序',
  `menu_url` varchar(100) DEFAULT NULL COMMENT '菜单链接，没有用“#”表示',
  `menu_path` varchar(255) DEFAULT NULL COMMENT '菜单路径',
  `menu_status` int(1) DEFAULT '1' COMMENT '菜单状态 0：不显示、1：显示',
  `has_child` int(1) NOT NULL DEFAULT '0' COMMENT '是否有子菜单 0：无 1：有',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
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
