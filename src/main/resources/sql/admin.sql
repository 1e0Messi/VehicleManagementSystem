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

 Date: 24/03/2018 19:42:22
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
INSERT INTO `admin` VALUES ('001', '缑元彪', '男', '15378963210', '1458435761@163.com', '546242565266853728', '中国重庆AA区BB路CC小区DD号', '2016-03-04', '001', 0);
INSERT INTO `admin` VALUES ('002', '黎光耀', '男', '54562442561', '66666666@qq.com', '512548865545532584', '中国四川成都双流县HH路JJ校区KK号', '2017-02-22', '002', 1);
INSERT INTO `admin` VALUES ('003', '王业青', '男', '13564528946', '9999999999@163.com', '256485168451236759', '中国四川成都双流县HH路JJ校区KK号', '2015-01-01', '003', 1);
INSERT INTO `admin` VALUES ('004', '王五', '男', '15224563214', '147852369@qq.com', '852147963252525222', '中国四川绵阳游仙区JK路JK小区JK号', '2016-03-05', '004', 1);
INSERT INTO `admin` VALUES ('005', '张三', '男', '13645612356', '5529884552@qq.com', '125252478963251456', '中国四川绵阳游仙区GG路GG小区GG号', '2014-02-22', '005', 1);
INSERT INTO `admin` VALUES ('006', '六六', '女', '52636487952', '15625874125@qq.com', '555212125489652565', '中国四川成都双流县JK路JK小区JK号', '2018-08-03', '006', 1);
INSERT INTO `admin` VALUES ('007', '七七', '女', '52522556623', '1555565555@qq.com', '155215561651616565', '中国四川成都双流县JK路JK小区JA号', '2015-05-22', '007', 1);
INSERT INTO `admin` VALUES ('008', '小明', '男', '14785244563', '15624444445@qq.com', '555255125225525225', '中国四川成都双流县JK路JK小区JB号', '2015-08-03', '008', 1);
INSERT INTO `admin` VALUES ('009', '小红', '女', '15697854125', '1544444444455@qq.com', '562326518984513258', '中国四川成都双流县JK路JK小区JC号', '2017-12-23', '009', 1);
INSERT INTO `admin` VALUES ('010', '小花', '女', '12569866986', '15611111111@qq.com', '283354589225571858', '中国四川成都双流县JK路JK小区JD号', '2016-11-22', '010', 1);
INSERT INTO `admin` VALUES ('011', '小亮', '男', '15478947894', '156888888888@qq.com', '555212125455555888', '中国四川成都双流县JK路JK小区JE号', '2018-01-11', '011', 1);
INSERT INTO `admin` VALUES ('012', '小吴', '女', '12458796325', '15678787875@qq.com', '555212125489125456', '中国四川成都双流县JK路JK小区JF号', '2017-11-11', '012', 1);
INSERT INTO `admin` VALUES ('013', '小程', '女', '25414852546', '14545784575@qq.com', '555212125484444444', '中国四川成都双流县JK路JK小区JH号', '2016-11-11', '013', 1);

SET FOREIGN_KEY_CHECKS = 1;
