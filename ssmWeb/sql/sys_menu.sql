/*
Navicat MySQL Data Transfer

Source Server         : LD
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : my_data

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-09-23 23:15:18
*/

SET FOREIGN_KEY_CHECKS=0;

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
