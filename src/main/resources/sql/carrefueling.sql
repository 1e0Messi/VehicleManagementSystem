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

 Date: 23/03/2018 20:12:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carrefueling
-- ----------------------------
DROP TABLE IF EXISTS `carrefueling`;
CREATE TABLE `carrefueling`  (
  `id` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `oilcardid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carrefueling
-- ----------------------------
INSERT INTO `carrefueling` VALUES ('1', '1', '1', '1', '1');
INSERT INTO `carrefueling` VALUES ('2', '2018-03-06', '1', '1', '1');
INSERT INTO `carrefueling` VALUES ('3', '2018-03-05', '1', '1', '1');
INSERT INTO `carrefueling` VALUES ('4', '2018-03-12', '1', '1', '1');
INSERT INTO `carrefueling` VALUES ('5', '', '1', '2', '1');
INSERT INTO `carrefueling` VALUES ('6', '2018-03-02', '', '', '');
INSERT INTO `carrefueling` VALUES ('7', '2018-03-20', '', '', '');
INSERT INTO `carrefueling` VALUES ('8', '2018-03-28 15:53:04', '', '', '');
INSERT INTO `carrefueling` VALUES ('9', '2018-03-21 01:50:52', '', '', '');

SET FOREIGN_KEY_CHECKS = 1;
