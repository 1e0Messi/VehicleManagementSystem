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

 Date: 23/03/2018 20:13:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for oilcard
-- ----------------------------
DROP TABLE IF EXISTS `oilcard`;
CREATE TABLE `oilcard`  (
  `oilcardid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `balance` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hierarchy` int(10) NOT NULL,
  `carid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`oilcardid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oilcard
-- ----------------------------
INSERT INTO `oilcard` VALUES ('0001', '500', 1, '0001');
INSERT INTO `oilcard` VALUES ('0002', '1000', 0, '0001');
INSERT INTO `oilcard` VALUES ('1', '500', 1, '川A：1234');
INSERT INTO `oilcard` VALUES ('10', '4566', 1, '川A：2458、');
INSERT INTO `oilcard` VALUES ('11', '6544', 0, '川A：7954');
INSERT INTO `oilcard` VALUES ('2', '1000', 0, '川A：1472');
INSERT INTO `oilcard` VALUES ('3', '600', 1, '川A：4321');
INSERT INTO `oilcard` VALUES ('4', '6000', 1, '川A：1111');
INSERT INTO `oilcard` VALUES ('5', '600', 0, '川A：8888');
INSERT INTO `oilcard` VALUES ('6', '6000', 0, '川A：6666');
INSERT INTO `oilcard` VALUES ('7', '5000', 1, '川A：1472');
INSERT INTO `oilcard` VALUES ('8', '600', 1, '川A：2587');
INSERT INTO `oilcard` VALUES ('9', '400', 0, '川A：4679');

SET FOREIGN_KEY_CHECKS = 1;
