/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : vms

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-22 09:45:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for outbound
-- ----------------------------
DROP TABLE IF EXISTS `outbound`;
CREATE TABLE `outbound` (
  `id` varchar(10) NOT NULL,
  `time` varchar(20) NOT NULL,
  `staff_ID` varchar(10) NOT NULL,
  `state` varchar(20) NOT NULL,
  `carid` varchar(10) NOT NULL,
  `outboundkmiles` int(11) NOT NULL,
  `inboundkmiles` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outbound
-- ----------------------------
INSERT INTO `outbound` VALUES ('1', '2018-03-16', '1', '已回车', '川A：4321', '1800', '1810');
INSERT INTO `outbound` VALUES ('10', '2018-03-05', '3', '已回车', '川A：4444', '4444', '4445');
INSERT INTO `outbound` VALUES ('11', '2018-03-06', '4', '已回车', '川A：5555', '5555', '5556');
INSERT INTO `outbound` VALUES ('2', '2018-03-20', '1', '已回车', '川A：1472', '1810', '1820');
INSERT INTO `outbound` VALUES ('3', '2018-03-01', '1', '已回车', '川A：1234', '1700', '1710');
INSERT INTO `outbound` VALUES ('4', '2018-03-01', '2', '未回车', '川A：1472', '1500', '1510');
INSERT INTO `outbound` VALUES ('5', '2018-03-02', '3', '已回车', '川A：1234', '1600', '1610');
INSERT INTO `outbound` VALUES ('6', '2018-03-03', '2', '已回车', '川A：4321', '1900', '1910');
INSERT INTO `outbound` VALUES ('7', '2018-03-03', '3', '已回车 ', '川A：2222', '1620', '1621');
INSERT INTO `outbound` VALUES ('8', '2018-03-03', '4', '未回车', '川A：1234', '6666', '6668');
INSERT INTO `outbound` VALUES ('9', '2018-03-04', '2', '未回车', '川A：2589', '3654', '3655');
