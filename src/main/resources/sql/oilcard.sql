/*
Navicat MySQL Data Transfer

Source Server         : asdasd
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : vsm

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-03-20 10:04:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oilcard
-- ----------------------------
DROP TABLE IF EXISTS `oilcard`;
CREATE TABLE `oilcard` (
  `oilcardid` varchar(20) NOT NULL,
  `balance` varchar(20) NOT NULL,
  `hierarchy` int(10) NOT NULL,
  `carid` varchar(20) NOT NULL,
  PRIMARY KEY (`oilcardid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oilcard
-- ----------------------------
INSERT INTO `oilcard` VALUES ('0001', '500', '1', '0001');
INSERT INTO `oilcard` VALUES ('0002', '1000', '0', '0001');
