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

 Date: 23/03/2018 20:13:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for income_management
-- ----------------------------
DROP TABLE IF EXISTS `income_management`;
CREATE TABLE `income_management`  (
  `id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` int(20) NOT NULL,
  `applicantID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of income_management
-- ----------------------------
INSERT INTO `income_management` VALUES ('1', '2018-03-01', '3', 300, '3');
INSERT INTO `income_management` VALUES ('10', '2018-03-06', '川A：4321', 3000, '3');
INSERT INTO `income_management` VALUES ('11', '2018-03-01', '川A：1234', 2000, '2');
INSERT INTO `income_management` VALUES ('12', '2018-04-02', '川A：1234', 3000, '1');
INSERT INTO `income_management` VALUES ('13', '2018-06-04', '川A：1234', 2000, '3');
INSERT INTO `income_management` VALUES ('14', '2018-05-05', '川A：1234', 6000, '1');
INSERT INTO `income_management` VALUES ('15', '2018-12-06', '川A：1472', 8000, '2');
INSERT INTO `income_management` VALUES ('16', '2018-06-07', '川A：1234', 6000, '3');
INSERT INTO `income_management` VALUES ('17', '2018-05-09', '川A：1472', 4120, '3');
INSERT INTO `income_management` VALUES ('18', '2018-02-06', '川A：4321', 5000, '2');
INSERT INTO `income_management` VALUES ('19', '2018-11-11', '川A：1234', 2000, '1');
INSERT INTO `income_management` VALUES ('2', '2018-10-14', '川A：3421', 6000, '1');
INSERT INTO `income_management` VALUES ('21', '2018-09-02', '川A：1472', 3000, '2');
INSERT INTO `income_management` VALUES ('22', '2018-08-03', '川A：1472', 6000, '2');
INSERT INTO `income_management` VALUES ('222', '2018-07-02', '222', 10000, '22222');
INSERT INTO `income_management` VALUES ('23', '2018-06-09', '川A：4725', 5000, '2');
INSERT INTO `income_management` VALUES ('3', '2017-05-22', '川A：5678', 6220, '2');
INSERT INTO `income_management` VALUES ('4', '2017-04-08', '川A：1472', 2500, '3');
INSERT INTO `income_management` VALUES ('5', '2018-01-11', '川A：4725', 3000, '1');
INSERT INTO `income_management` VALUES ('7', '2018-02-15', '川A：4725', 5000, '2');
INSERT INTO `income_management` VALUES ('8', '2018-03-06', '川A：1234', 12340, '3');
INSERT INTO `income_management` VALUES ('9', '2018-01-03', '川A：4725', 1340, '1');

SET FOREIGN_KEY_CHECKS = 1;
