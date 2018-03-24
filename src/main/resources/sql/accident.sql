/*
Navicat MySQL Data Transfer

Source Server         : asdasd
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : vms

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-03-24 19:53:43
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
INSERT INTO `accident` VALUES ('1', '2018-08-13', '1', '违章', '46', '1', '1', '1');
INSERT INTO `accident` VALUES ('10', '2014-03-18', '3', '违章', '9', '9', '9', '9');
INSERT INTO `accident` VALUES ('11', '2015-03-10', '6', '事故', '6', '6', '6', '6');
INSERT INTO `accident` VALUES ('12', '2018-08-13', '6', '事故', '6', '6', '6', '6');
INSERT INTO `accident` VALUES ('14', '2018-06-14', '11', '违章', '3', '4', '4', '4');
INSERT INTO `accident` VALUES ('15', '2018-10-10', '10', '事故', '10', '10', '10', '10');
INSERT INTO `accident` VALUES ('3', '2017-03-13', '3', '违章', '3', '3', '3', '3');
INSERT INTO `accident` VALUES ('4', '2018-08-07', '1', '违章', '1', '1', '1', '1');
INSERT INTO `accident` VALUES ('5', '2018-08-06', '2', '事故', '2', '2', '2', '2');
INSERT INTO `accident` VALUES ('6', '2017-03-07', '3', '违章', '5', '5', '5', '5');
INSERT INTO `accident` VALUES ('7', '2017-06-20', '8', '事故', '8', '8', '8', '8');
INSERT INTO `accident` VALUES ('8', '2014-09-09', '11', '违章', '11', '11', '11', '11');
INSERT INTO `accident` VALUES ('9', '2014-03-10', '5', '违章', '5', '5', '5', '5');
