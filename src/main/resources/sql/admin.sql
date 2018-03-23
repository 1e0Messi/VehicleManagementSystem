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

 Date: 23/03/2018 20:12:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_card` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `authority` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('0', '1', '男', '1111111111', '1@qq.com', '1111111111111111', '11', '2018-03-22', '1', 1);
INSERT INTO `admin` VALUES ('000001', '1', '男', '11111111111', '1@qq.com', '5555555', '11', '2018-03-05', '2', 1);
INSERT INTO `admin` VALUES ('001', '缑元彪', '男', '15378963210', '1458435761@163.com', '546242565266853728', '中国重庆AA区BB路CC小区DD号', '2016-03-04', '001', 0);
INSERT INTO `admin` VALUES ('002', '黎光耀', '男', '54562442561', '66666666@qq.com', '512548865545532584', '中国四川成都双流县HH路JJ校区KK号', '2017-02-22', '002', 1);
INSERT INTO `admin` VALUES ('003', '王业青', '男', '13564528946', '9999999999@163.com', '256485168451236759', '中国四川成都双流县HH路JJ校区KK号', '2015-01-01', '003', 1);
INSERT INTO `admin` VALUES ('1', '1', '男', '111111111111', '1@qq.com', '2222222222222', '2', '2018-03-22', '2', 1);
INSERT INTO `admin` VALUES ('10', '1', '男', '111111111111', '1@qq.com', '12222222222222', '2', '2018-03-13', '2', 1);
INSERT INTO `admin` VALUES ('12122', '2', '男', '2222222222222', '22@qq.com', '6666666666666', '6', '2018-03-17', '6', 1);
INSERT INTO `admin` VALUES ('2', '2', '2', '2', '2', '2', '2', '2', '1', 1);
INSERT INTO `admin` VALUES ('3', '3', '3', '3', '3', '3', '3', '3', '1', 1);
INSERT INTO `admin` VALUES ('4', '4', '4', '4', '4', '4', '4', '4', '41', 1);

SET FOREIGN_KEY_CHECKS = 1;
