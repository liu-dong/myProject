/*
Navicat MySQL Data Transfer

Source Server         : LD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : my_data

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-05-29 17:48:58
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
  `present_address` varchar(100) DEFAULT NULL COMMENT '现住址',
  `native_place` varchar(100) DEFAULT NULL COMMENT '籍贯',
  `individual_resume` varchar(255) DEFAULT NULL COMMENT '个人简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('0204592fd871428a869ae60bf8e75e87', '刘东', '23', '1995-12-31 00:00:00', '0', '15170519059', '964708273@qq.com', '广东省广州广州', '江西丰城', null);
INSERT INTO `person` VALUES ('28080a4a9dd74c6484bf87e72b5a32d8', '刘东', '23', '2018-12-30 00:00:00', '0', '15170511634', '964708273@qq.com', '广东省广州市黄埔区', '江西丰城', '向往的生活');
INSERT INTO `person` VALUES ('381581e3137346f5b8648f379a44b473', '刘东', '23', '1995-12-31 00:00:00', '0', '15170519059', '964708273@qq.com', '广东省广州广州', '江西丰城', null);
INSERT INTO `person` VALUES ('c6aac6ec57f74a2f99bc4a75047d93a6', '刘东', '23', '2018-12-30 00:00:00', '0', '15170510500', '964708273@qq.com', '广东省广州市天河区', '江西丰城', null);
