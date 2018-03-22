/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : vms

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-22 09:44:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fee
-- ----------------------------
DROP TABLE IF EXISTS `fee`;
CREATE TABLE `fee` (
  `feeid` varchar(10) NOT NULL,
  `time` varchar(20) NOT NULL,
  `carid` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `applicantid` varchar(10) NOT NULL,
  `approverid` varchar(10) NOT NULL,
  `text` varchar(100) NOT NULL,
  PRIMARY KEY (`feeid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fee
-- ----------------------------
INSERT INTO `fee` VALUES ('1', '2018-03-16', '川A·8888', '加油', '500', '1', '1', '无');
INSERT INTO `fee` VALUES ('10', '2018-02-15', '川D·2487', '修车', '30', '10', '10', '方向盘脱落');
INSERT INTO `fee` VALUES ('11', '2018-03-07', '川A·7469', '加油', '1000', '11', '11', '无');
INSERT INTO `fee` VALUES ('12', '2018-03-22', '川D·3580', '加油', '700', '12', '12', '无');
INSERT INTO `fee` VALUES ('13', '2018-02-14', '川D·7324', '修车', '1000', '13', '13', '车胎漏气');
INSERT INTO `fee` VALUES ('14', '2018-03-22', '川D·3497', '保养', '3000', '14', '14', '安装GPS');
INSERT INTO `fee` VALUES ('15', '2018-03-13', '川A·5493', '保养', '1000', '15', '15', '更换尾翼');
INSERT INTO `fee` VALUES ('2', '2018-01-16', '川A·0001', '修车', '50', '2', '2', '车门打不开');
INSERT INTO `fee` VALUES ('3', '2018-03-14', '川A·9527', '加油', '200', '3', '3', '无');
INSERT INTO `fee` VALUES ('4', '2018-03-21', '川D·9028', '洗车', '100', '4', '4', '无');
INSERT INTO `fee` VALUES ('5', '2018-02-16', '川A·5807', '修车', '200', '5', '5', '车灯坏了');
INSERT INTO `fee` VALUES ('6', '2018-03-16', '川D·0865', '修车', '1000', '6', '6', '空调没冷气');
INSERT INTO `fee` VALUES ('7', '2018-03-25', '川A·8543', '保养', '100', '7', '7', '上漆');
INSERT INTO `fee` VALUES ('8', '2018-03-02', '川D·9769', '修车', '300', '8', '8', '漏油');
INSERT INTO `fee` VALUES ('9', '2018-02-05', '川A·7895', '修车', '200', '9', '9', '广播没声音');
