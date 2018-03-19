/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : vms

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-19 10:23:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for income_management
-- ----------------------------
DROP TABLE IF EXISTS `income_management`;
CREATE TABLE `income_management` (
  `id` varchar(10) NOT NULL,
  `time` varchar(8) NOT NULL,
  `carID` varchar(10) NOT NULL,
  `amount` int(20) NOT NULL,
  `applicantID` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of income_management
-- ----------------------------
INSERT INTO `income_management` VALUES ('1', '3', '3', '3', '3');
INSERT INTO `income_management` VALUES ('11', '11', '11', '0', '11');
INSERT INTO `income_management` VALUES ('2', '2', '2', '0', '1');
