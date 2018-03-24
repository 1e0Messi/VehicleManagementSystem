/*
Navicat MySQL Data Transfer

Source Server         : asdasd
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : vms

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-03-24 20:02:14
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
INSERT INTO `oilcard` VALUES ('1', '500', '1', '1');
INSERT INTO `oilcard` VALUES ('2', '1000', '0', '1');
INSERT INTO `oilcard` VALUES ('3', '500', '1', '2');
INSERT INTO `oilcard` VALUES ('4', '1000', '0', '2');
INSERT INTO `oilcard` VALUES ('5', '500', '1', '3');
INSERT INTO `oilcard` VALUES ('6', '1000', '0', '3');
