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

 Date: 23/03/2018 20:14:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for driver
-- ----------------------------
DROP TABLE IF EXISTS `driver`;
CREATE TABLE `driver`  (
  `staff_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `staff_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nationality` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `political_party` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `family_place` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ID_card` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `badgeID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `home_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `indate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`staff_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of driver
-- ----------------------------
INSERT INTO `driver` VALUES ('1', '孙孙孙', '男', '滁州', '1980-02-03', '群众', 'chuzhoukunqu', '0302019', 'A2', '13500000001', 'm13500000001@163.com', '7');
INSERT INTO `driver` VALUES ('100135', '杨35', '女', '武汉', '1995-04-05', '群众', '武汉昆区恒大35栋5单元', '403020198204051135', 'A1', '18900000135', 'm18900000135@163.com', '5');
INSERT INTO `driver` VALUES ('100136', '张35', '女', '武汉', '1980-04-05', '群众', '武汉昆区恒大36栋6单元', '403020198204051136', 'A2', '18900000136', 'm18900000136@163.com', '7');
INSERT INTO `driver` VALUES ('100137', '孙35', '女', '武汉', '1990-04-05', '群众', '武汉昆区恒大37栋7单元', '403020198204051137', 'B1', '18900000137', 'm18900000137@163.com', '6');
INSERT INTO `driver` VALUES ('100138', '赵35', '女', '武汉', '1995-04-05', '群众', '武汉昆区恒大38栋8单元', '403020198204051138', 'B1', '18900000138', 'm18900000138@163.com', '4');
INSERT INTO `driver` VALUES ('100139', '杨36', '女', '武汉', '1980-04-05', '群众', '武汉昆区恒大39栋9单元', '403020198204051139', 'C1', '18900000139', 'm18900000139@163.com', '8');
INSERT INTO `driver` VALUES ('100140', '张36', '女', '武汉', '1970-04-05', '群众', '武汉昆区恒大40栋0单元', '403020198204051140', 'A1', '18900000140', 'm18900000140@163.com', '5');
INSERT INTO `driver` VALUES ('100141', '孙36', '女', '武汉', '1970-04-05', '群众', '武汉昆区恒大41栋1单元', '403020198204051141', 'A2', '18900000141', 'm18900000141@163.com', '7');
INSERT INTO `driver` VALUES ('101010', '李大师', '男', '湖北', '1963-04-03', '群众', '武汉大街', '165565645864646864', 'v1', '13546513513', 'm13541531453@133.com', '4');

SET FOREIGN_KEY_CHECKS = 1;
