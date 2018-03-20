/*
Navicat MySQL Data Transfer

Source Server         : asdasd
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : vsm

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-03-20 10:04:37
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
INSERT INTO `outbound` VALUES ('1', '2018-03-16', '1', '已回车', '1', '1800', '1810');
INSERT INTO `outbound` VALUES ('2', '2018-03-20', '1', '已回车', '1', '1810', '1820');
