/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : vms

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 24/03/2018 20:01:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `startTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `endTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adminID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '欢迎加入本公司', '2018-3-24', '2018-3-26', '热烈欢迎XXXXXXXXXX加入公司成为一员', '001');
INSERT INTO `notice` VALUES (12, '周五休假', '2018-03-19', '2018-03-23', '考虑到大家辛苦了，个大家放个假', '001');
INSERT INTO `notice` VALUES (13, '今年发年终奖', '2017-12-01', '2018-12-31', '由于今年业绩很好，给诸位发奖金', '001');
INSERT INTO `notice` VALUES (14, '周六加班', '2018-03-01', '2018-03-04', '大家一起加班吧！！', '001');

SET FOREIGN_KEY_CHECKS = 1;
