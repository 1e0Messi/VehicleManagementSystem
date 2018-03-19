/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : vms

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-19 10:24:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accident
-- ----------------------------
DROP TABLE IF EXISTS `accident`;
CREATE TABLE `accident` (
  `accid` varchar(4) NOT NULL,
  `time` varchar(20) NOT NULL,
  `carid` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `listid` varchar(10) NOT NULL,
  `personid` varchar(10) NOT NULL,
  `addr` varchar(20) NOT NULL,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`accid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of accident
-- ----------------------------
INSERT INTO `accident` VALUES ('2', '咩咩', '6', '6', '6', '6', '6', '6');
INSERT INTO `accident` VALUES ('3', '3', '3', '3', '3', '3', '3', '3');
INSERT INTO `accident` VALUES ('33', 'MIAO', '喵喵', '1', '1', '1', '1', '1');
INSERT INTO `accident` VALUES ('5', '5', '5', '5', '5', '555', '5', '5');
