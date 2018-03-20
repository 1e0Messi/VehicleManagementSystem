/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : vms

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-19 10:23:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fee
-- ----------------------------
DROP TABLE IF EXISTS `fee`;
CREATE TABLE `fee` (
  `feeid` varchar(4) NOT NULL,
  `time` varchar(20) NOT NULL,
  `carid` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `applicantid` varchar(10) NOT NULL,
  `approverid` varchar(10) NOT NULL,
  `text` varchar(100) NOT NULL,
  PRIMARY KEY (`feeid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fee
-- ----------------------------
INSERT INTO `fee` VALUES ('1', '0', '0', '0', '0', '0', '0', '0');
