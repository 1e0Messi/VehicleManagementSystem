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

 Date: 24/03/2018 20:19:41
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
INSERT INTO `outbound` VALUES ('1', '2018-03-28 03:00:00', '002', '已回车', '1', 1800, 1810);
INSERT INTO `outbound` VALUES ('10', '2018-02-02 16:45:32', '003', '已回车', '10', 1800, 1815);
INSERT INTO `outbound` VALUES ('11', '2018-01-10 18:23:23', '002', '已回车', '11', 1800, 1825);
INSERT INTO `outbound` VALUES ('12', '2018-12-21 20:21:00', '002', '已回车', '2', 1800, 1836);
INSERT INTO `outbound` VALUES ('13', '2018-12-10 22:21:00', '002', '已回车', '3', 1800, 1866);
INSERT INTO `outbound` VALUES ('14', '2018-05-20 23:01:00', '002', '已回车', '4', 1800, 1889);
INSERT INTO `outbound` VALUES ('15', '2018-12-21 10:21:12', '002', '已回车', '5', 1800, 1902);
INSERT INTO `outbound` VALUES ('16', '2017-11-10 07:10:21', '002', '已回车', '6', 1800, 1903);
INSERT INTO `outbound` VALUES ('2', '2018-03-28 01:50:00', '002', '已回车', '7', 1800, 1904);
INSERT INTO `outbound` VALUES ('3', '2018-03-28 04:05:00', '002', '已回车', '8', 1800, 1906);
INSERT INTO `outbound` VALUES ('4', '2018-03-28 06:52:00', '002', '已回车', '9', 1800, 1909);
INSERT INTO `outbound` VALUES ('6', '2018-03-28 08:52:00', '002', '已回车', '1', 1800, 1990);
INSERT INTO `outbound` VALUES ('7', '2018-03-28 10:54:00', '002', '已回车', '7', 1800, 1955);
INSERT INTO `outbound` VALUES ('8', '2018-03-28 12:54:00', '002', '已回车', '8', 1800, 1988);
INSERT INTO `outbound` VALUES ('9', '2018-03-28 14:25:00', '002', '已回车', '1', 1800, 1911);

SET FOREIGN_KEY_CHECKS = 1;
