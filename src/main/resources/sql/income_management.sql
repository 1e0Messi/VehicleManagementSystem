/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : vms

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-22 09:44:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for income_management
-- ----------------------------
DROP TABLE IF EXISTS `income_management`;
CREATE TABLE `income_management` (
  `id` varchar(10) NOT NULL,
  `time` varchar(20) NOT NULL,
  `carID` varchar(10) NOT NULL,
  `amount` int(20) NOT NULL,
  `applicantID` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of income_management
-- ----------------------------
INSERT INTO `income_management` VALUES ('1', '2018-03-21', '川A：1234', '325', '2');
INSERT INTO `income_management` VALUES ('10', '2018-03-06', '川A：4321', '300', '3');
INSERT INTO `income_management` VALUES ('11', '2018-03-01', '川A：1234', '200', '2');
INSERT INTO `income_management` VALUES ('12', '2018-03-02', '川A：1234', '300', '1');
INSERT INTO `income_management` VALUES ('13', '2018-03-04', '川A：1234', '200', '3');
INSERT INTO `income_management` VALUES ('14', '2018-03-05', '川A：1234', '600', '1');
INSERT INTO `income_management` VALUES ('15', '2018-03-06', '川A：1472', '800', '2');
INSERT INTO `income_management` VALUES ('16', '2018-03-07', '川A：1234', '600', '3');
INSERT INTO `income_management` VALUES ('17', '2018-03-09', '川A：1472', '412', '3');
INSERT INTO `income_management` VALUES ('18', '2018-03-10', '川A：4321', '500', '2');
INSERT INTO `income_management` VALUES ('19', '2018-03-11', '川A：1234', '200', '1');
INSERT INTO `income_management` VALUES ('2', '2018-03-14', '川A：3421', '600', '1');
INSERT INTO `income_management` VALUES ('21', '2018-03-02', '川A：1472', '300', '2');
INSERT INTO `income_management` VALUES ('22', '2018-03-03', '川A：1472', '600', '2');
INSERT INTO `income_management` VALUES ('23', '2018-03-09', '川A：4725', '500', '2');
INSERT INTO `income_management` VALUES ('3', '2017-03-22', '川A：5678', '622', '2');
INSERT INTO `income_management` VALUES ('4', '2017-03-08', '川A：1472', '250', '3');
INSERT INTO `income_management` VALUES ('5', '2018-01-11', '川A：4725', '300', '1');
INSERT INTO `income_management` VALUES ('7', '2018-02-15', '川A：4725', '500', '2');
INSERT INTO `income_management` VALUES ('8', '2018-03-06', '川A：1234', '1234', '3');
INSERT INTO `income_management` VALUES ('9', '2018-01-03', '川A：4725', '134', '1');
