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

 Date: 23/03/2018 20:12:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accident
-- ----------------------------
DROP TABLE IF EXISTS `accident`;
CREATE TABLE `accident`  (
  `accid` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `listid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `personid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addr` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`accid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accident
-- ----------------------------
INSERT INTO `accident` VALUES ('10', '2016-03-09', '1', '事故', '4', '1', '1', '1');
INSERT INTO `accident` VALUES ('12', '2016-07-07', '1', '违章', '1', '1', '1', '1');
INSERT INTO `accident` VALUES ('16', '2017-03-15', '64', '违章', '13', '51', '12', '16');
INSERT INTO `accident` VALUES ('2', '2018-03-20', '6', '违章', '6', '6', '6', '6');
INSERT INTO `accident` VALUES ('3', '2018-03-21', '3', '违章', '3', '3', '3', '3');
INSERT INTO `accident` VALUES ('33', '2018-03-20', '喵喵', '违章', '1', '1', '1', '1');
INSERT INTO `accident` VALUES ('4', '2018-03-16', '2', '违章', '4', '7', '3', '2');
INSERT INTO `accident` VALUES ('5', '2018-05-16', '1', '违章', '1', '1', '1', '1');
INSERT INTO `accident` VALUES ('6', '2018-05-23', '1', '违章', '1', '1', '1', '1');
INSERT INTO `accident` VALUES ('7', '2018-05-25', '1', '事故', '4', '8', '7', '7');
INSERT INTO `accident` VALUES ('8', '2018-03-13', '2', '违章', '2', '2', '2', '2');
INSERT INTO `accident` VALUES ('9', '2018-03-15', '7', '事故', '1', '1', '1', '1');

SET FOREIGN_KEY_CHECKS = 1;
