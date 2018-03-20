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

 Date: 19/03/2018 09:46:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for vehicleinformation
-- ----------------------------
DROP TABLE IF EXISTS `vehicleinformation`;
CREATE TABLE `vehicleinformation`  (
  `carID` int(11) NOT NULL,
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
INSERT INTO `vehicleinformation` VALUES (123, '奥迪', 'A6L', '川A:12345', '1', '维修', '2017');
INSERT INTO `vehicleinformation` VALUES (221, '大众', 'SUV', '川A:12345', '2', '维修', '2018');
INSERT INTO `vehicleinformation` VALUES (234, '宝马', 'X5', '川A:22213', '1', '维修', '2018');

SET FOREIGN_KEY_CHECKS = 1;
