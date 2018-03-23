/*
 Navicat Premium Data Transfer

 Source Server         : lgy
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 23/03/2018 20:13:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for vehicleinformation
-- ----------------------------
DROP TABLE IF EXISTS `vehicleinformation`;
CREATE TABLE `vehicleinformation`  (
  `carID` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ctype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `AIP` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '年检期限',
  PRIMARY KEY (`carID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicleinformation
-- ----------------------------
INSERT INTO `vehicleinformation` VALUES ('1', '奥迪', '奥迪A4', '川A：1234', '3', '出车', '2019');
INSERT INTO `vehicleinformation` VALUES ('10', '现代', '北京现代', '川A：4444', '6', '出车', '2022');
INSERT INTO `vehicleinformation` VALUES ('11', '雷克萨斯', '凌志雷克萨斯', '川A：9999', '9', '出车', '2023');
INSERT INTO `vehicleinformation` VALUES ('123', '奥迪', 'A6L', '川A:12345', '1', '维修', '201788');
INSERT INTO `vehicleinformation` VALUES ('2', '奥迪', 'A6L', '川A：1472', '1', '维修', '2017');
INSERT INTO `vehicleinformation` VALUES ('221', '大众', 'SUV', '川A:12345', '2', '维修', '2018');
INSERT INTO `vehicleinformation` VALUES ('3', '4', '5', '6', '7', '5', '6');
INSERT INTO `vehicleinformation` VALUES ('4', '奥拓', '垃圾奥拓', '川A：1472', '5', '维修', '2019');
INSERT INTO `vehicleinformation` VALUES ('5', '吴文欢的宾利', '宾利慕尚', '琼A：0000', '1', '待命', '2020');
INSERT INTO `vehicleinformation` VALUES ('6', '陈俊宇的马自达', '马自达', '闽A：1324', '9', '维修', '2011');
INSERT INTO `vehicleinformation` VALUES ('7', '卡宴', '卡宴', '川A：5555', '6', '出车', '2019');
INSERT INTO `vehicleinformation` VALUES ('8', '天籁', '尼桑天籁', '川A：4869', '8', '出车', '2033');
INSERT INTO `vehicleinformation` VALUES ('9', '卡罗拉', '本田卡罗拉', '川A：6666', '5', '维修', '2019');

SET FOREIGN_KEY_CHECKS = 1;
