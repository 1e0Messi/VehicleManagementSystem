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

 Date: 23/03/2018 20:13:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for outbound
-- ----------------------------
DROP TABLE IF EXISTS `outbound`;
CREATE TABLE `outbound`  (
  `id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `staff_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `outboundkmiles` int(11) NOT NULL,
  `inboundkmiles` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of outbound
-- ----------------------------
INSERT INTO `outbound` VALUES ('1', '2018-03-28 03:00:00', '1', '已回车', '1', 1800, 1810);
INSERT INTO `outbound` VALUES ('10', '2018-02-02 16:45:32', '1', '1', '1', 1, 1);
INSERT INTO `outbound` VALUES ('11', '2018-01-10 18:23:23', '1', '1', '1', 1, 1);
INSERT INTO `outbound` VALUES ('12', '2018-12-21 20:21:00', '1', '1', '1', 1, 1);
INSERT INTO `outbound` VALUES ('13', '2018-12-10 22:21:00', '1', '1', '1', 1, 1);
INSERT INTO `outbound` VALUES ('14', '2018-05-20 23:01:00', '1', '1', '1', 1, 1);
INSERT INTO `outbound` VALUES ('15', '2018-12-21 10:21:12', '1', '1', '1', 1, 1);
INSERT INTO `outbound` VALUES ('16', '2017-11-10 07:10:21', '1', '1', '1', 1, 1);
INSERT INTO `outbound` VALUES ('2', '2018-03-28 01:50:00', '1', '已回车', '1', 1810, 1820);
INSERT INTO `outbound` VALUES ('3', '2018-03-28 04:05:00', '1', '1', '1', 1, 111);
INSERT INTO `outbound` VALUES ('4', '2018-03-28 06:52:00', '1', '1', '1', 1, 1);
INSERT INTO `outbound` VALUES ('6', '2018-03-28 08:52:00', '1', '1', '1', 1, 1);
INSERT INTO `outbound` VALUES ('7', '2018-03-28 10:54:00', '1', '1', '1', 1, 1);
INSERT INTO `outbound` VALUES ('8', '2018-03-28 12:54:00', '1', '1', '1', 1, 1);
INSERT INTO `outbound` VALUES ('9', '2018-03-28 14:25:00', '1', '1', '1', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
