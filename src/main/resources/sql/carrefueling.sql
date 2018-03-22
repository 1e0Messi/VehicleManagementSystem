/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : vms

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-22 09:44:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for carrefueling
-- ----------------------------
DROP TABLE IF EXISTS `carrefueling`;
CREATE TABLE `carrefueling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(20) NOT NULL,
  `carid` varchar(20) NOT NULL,
  `oilcardid` varchar(20) NOT NULL,
  `money` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carrefueling
-- ----------------------------
INSERT INTO `carrefueling` VALUES ('1', '2018-03-01-07-20', '川A：1234', '1', '300');
INSERT INTO `carrefueling` VALUES ('2', '2018-03-01-07-30', '川A：1472', '2', '200');
INSERT INTO `carrefueling` VALUES ('3', '2018-03-01-08-16', '川A：4321', '3', '400');
INSERT INTO `carrefueling` VALUES ('4', '2018-03-06-17-20', '川A：1234', '1', '200');
INSERT INTO `carrefueling` VALUES ('5', '2018-03-07-18-30', '川A：1472', '2', '300');
INSERT INTO `carrefueling` VALUES ('6', '2018-03-08-19-22', '川A：4321', '3', '400');
INSERT INTO `carrefueling` VALUES ('7', '2018-03-08-19-33', '川A：1111', '2', '500');
INSERT INTO `carrefueling` VALUES ('8', '2018-03-15-13-22', '川A：2222', '6', '300');
INSERT INTO `carrefueling` VALUES ('9', '2018-03-17-15-00', '川A：1234', '5', '600');
INSERT INTO `carrefueling` VALUES ('10', '2018-03-16-22-00', '川A：4725', '2', '700');
INSERT INTO `carrefueling` VALUES ('11', '2018-03-16-23-00', '川A：7778', '6', '500');
