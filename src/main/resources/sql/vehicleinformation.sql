/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : vms

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-22 09:45:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vehicleinformation
-- ----------------------------
DROP TABLE IF EXISTS `vehicleinformation`;
CREATE TABLE `vehicleinformation` (
  `carID` varchar(11) NOT NULL,
  `carname` varchar(20) NOT NULL,
  `ctype` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `age` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `AIP` varchar(20) DEFAULT NULL COMMENT '年检期限',
  PRIMARY KEY (`carID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of vehicleinformation
-- ----------------------------
INSERT INTO `vehicleinformation` VALUES ('1', '奥迪', '奥迪A4', '川A：1234', '3', '出车', '2019');
INSERT INTO `vehicleinformation` VALUES ('10', '现代', '北京现代', '川A：4444', '6', '出车', '2022');
INSERT INTO `vehicleinformation` VALUES ('11', '雷克萨斯', '凌志雷克萨斯', '川A：9999', '9', '出车', '2023');
INSERT INTO `vehicleinformation` VALUES ('2', '奥迪', 'A6L', '川A：1472', '1', '维修', '2017');
INSERT INTO `vehicleinformation` VALUES ('3', '宝马', '宝马3', '川A：3421', '2', '维修', '2018');
INSERT INTO `vehicleinformation` VALUES ('4', '奥拓', '垃圾奥拓', '川A：1472', '5', '维修', '2019');
INSERT INTO `vehicleinformation` VALUES ('5', '吴文欢的宾利', '宾利慕尚', '琼A：0000', '1', '待命', '2020');
INSERT INTO `vehicleinformation` VALUES ('6', '陈俊宇的马自达', '马自达', '闽A：1324', '9', '维修', '2011');
INSERT INTO `vehicleinformation` VALUES ('7', '卡宴', '卡宴', '川A：5555', '6', '出车', '2019');
INSERT INTO `vehicleinformation` VALUES ('8', '天籁', '尼桑天籁', '川A：4869', '8', '出车', '2033');
INSERT INTO `vehicleinformation` VALUES ('9', '卡罗拉', '本田卡罗拉', '川A：6666', '5', '维修', '2019');
