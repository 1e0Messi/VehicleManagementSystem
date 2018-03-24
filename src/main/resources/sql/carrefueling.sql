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

 Date: 24/03/2018 19:50:12
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
INSERT INTO `carrefueling` VALUES ('1', '2018-03-28 14:53:04', '1', '1', '800');
INSERT INTO `carrefueling` VALUES ('10', '2018-03-28 13:53:04', '10', '10', '1023');
INSERT INTO `carrefueling` VALUES ('11', '2018-03-21 05:50:52', '11', '11', '1254');
INSERT INTO `carrefueling` VALUES ('12', '2018-03-28 17:53:04', '15', '15', '225');
INSERT INTO `carrefueling` VALUES ('13', '2018-03-21 09:50:52', '14', '14', '532');
INSERT INTO `carrefueling` VALUES ('14', '2018-03-28 17:53:04', '16', '16', '1225');
INSERT INTO `carrefueling` VALUES ('15', '2018-03-21 09:50:52', '17', '17', '1532');
INSERT INTO `carrefueling` VALUES ('16', '2018-03-28 20:53:04', '19', '19', '1225');
INSERT INTO `carrefueling` VALUES ('17', '2018-03-21 09:50:52', '18', '18', '532');
INSERT INTO `carrefueling` VALUES ('2', '2018-03-21 00:50:52', '2', '2', '555');
INSERT INTO `carrefueling` VALUES ('3', '2018-03-28 11:53:04', '3', '3', '305');
INSERT INTO `carrefueling` VALUES ('4', '2018-03-21 02:50:52', '4', '4', '500');
INSERT INTO `carrefueling` VALUES ('5', '2018-03-28 10:53:04', '5', '5', '652');
INSERT INTO `carrefueling` VALUES ('6', '2018-03-21 04:50:52', '6', '6', '455');
INSERT INTO `carrefueling` VALUES ('8', '2018-03-28 15:53:04', '7', '7', '454');
INSERT INTO `carrefueling` VALUES ('9', '2018-03-21 01:50:52', '8', '8', '548');

SET FOREIGN_KEY_CHECKS = 1;
