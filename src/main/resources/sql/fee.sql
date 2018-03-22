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

 Date: 22/03/2018 15:37:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fee
-- ----------------------------
DROP TABLE IF EXISTS `fee`;
CREATE TABLE `fee`  (
  `feeid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `carid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cost` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `applicantid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `approverid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `text` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`feeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee
-- ----------------------------
INSERT INTO `fee` VALUES ('1', '2018-01-16', '川A·8888', '加油', '500', '1', '1', '无');
INSERT INTO `fee` VALUES ('10', '2018-03-21', '川D·9028', '洗车', '100', '4', '4', '无');
INSERT INTO `fee` VALUES ('11', '2018-03-16', '川A·5807', '修车', '200', '5', '5', '车灯坏了');
INSERT INTO `fee` VALUES ('12', '2018-03-16', '川D·0865', '保养', '1000', '6', '6', '空调没冷气');
INSERT INTO `fee` VALUES ('13', '2018-04-25', '川A·8543', '保养', '100', '7', '7', '上漆');
INSERT INTO `fee` VALUES ('135', '2018-11-07', '川A·7469', '修车', '1600', '11', '11', '无');
INSERT INTO `fee` VALUES ('14', '2018-04-02', '川D·9769', '修车', '300', '8', '8', '漏油');
INSERT INTO `fee` VALUES ('15', '2018-04-05', '川A·7895', '洗车', '200', '9', '9', '广播没声音');
INSERT INTO `fee` VALUES ('16', '2018-04-16', '川A·8888', '加油', '500', '1', '1', '无');
INSERT INTO `fee` VALUES ('17', '2018-05-15', '川D·2487', '洗车', '300', '10', '10', '方向盘脱落');
INSERT INTO `fee` VALUES ('18', '2018-05-07', '川A·7469', '修车', '1050', '11', '11', '无');
INSERT INTO `fee` VALUES ('19', '2018-05-22', '川D·3580', '保养', '600', '12', '12', '无');
INSERT INTO `fee` VALUES ('2', '2018-01-15', '川D·2487', '洗车', '30', '10', '10', '方向盘脱落');
INSERT INTO `fee` VALUES ('20', '2018-05-14', '川D·7324', '加油', '1600', '13', '13', '车胎漏气');
INSERT INTO `fee` VALUES ('21', '2018-06-22', '川D·3497', '保养', '2000', '14', '14', '安装GPS');
INSERT INTO `fee` VALUES ('22', '2018-06-13', '川A·5493', '修车', '6000', '15', '15', '更换尾翼');
INSERT INTO `fee` VALUES ('23', '2018-06-16', '川A·0001', '洗车', '50', '2', '2', '车门打不开');
INSERT INTO `fee` VALUES ('24', '2018-06-14', '川A·9527', '加油', '1200', '3', '3', '无');
INSERT INTO `fee` VALUES ('25', '2018-07-21', '川D·9028', '洗车', '1500', '4', '4', '无');
INSERT INTO `fee` VALUES ('26', '2018-07-16', '川A·5807', '修车', '2000', '5', '5', '车灯坏了');
INSERT INTO `fee` VALUES ('27', '2018-07-16', '川D·0865', '保养', '1000', '6', '6', '空调没冷气');
INSERT INTO `fee` VALUES ('28', '2018-07-25', '川A·8543', '保养', '100', '7', '7', '上漆');
INSERT INTO `fee` VALUES ('29', '2018-08-02', '川D·9769', '修车', '3000', '8', '8', '漏油');
INSERT INTO `fee` VALUES ('3', '2018-01-07', '川A·7469', '修车', '1000', '11', '11', '无');
INSERT INTO `fee` VALUES ('30', '2018-08-05', '川A·7895', '保养', '200', '9', '9', '广播没声音');
INSERT INTO `fee` VALUES ('31', '2018-08-16', '川A·8888', '加油', '5000', '1', '1', '无');
INSERT INTO `fee` VALUES ('33', '2018-02-14', '川A·9527', '加油', '200', '3', '3', '无');
INSERT INTO `fee` VALUES ('34', '2018-02-21', '川D·9028', '洗车', '100', '4', '4', '无');
INSERT INTO `fee` VALUES ('35', '2018-02-16', '川A·5807', '修车', '200', '5', '5', '车灯坏了');
INSERT INTO `fee` VALUES ('36', '2018-02-16', '川D·0865', '修车', '1000', '6', '6', '空调没冷气');
INSERT INTO `fee` VALUES ('37', '2018-08-15', '川D·2487', '洗车', '30', '10', '10', '方向盘脱落');
INSERT INTO `fee` VALUES ('38', '2018-09-07', '川A·7469', '修车', '1000', '11', '11', '无');
INSERT INTO `fee` VALUES ('39', '2018-09-22', '川D·3580', '保养', '700', '12', '12', '无');
INSERT INTO `fee` VALUES ('4', '2018-01-22', '川D·3580', '保养', '700', '12', '12', '无');
INSERT INTO `fee` VALUES ('40', '2018-09-14', '川D·7324', '加油', '1000', '13', '13', '车胎漏气');
INSERT INTO `fee` VALUES ('41', '2018-09-22', '川D·3497', '洗车', '3000', '14', '14', '安装GPS');
INSERT INTO `fee` VALUES ('42', '2018-10-07', '川A·7469', '修车', '1210', '11', '11', '无');
INSERT INTO `fee` VALUES ('45', '2018-10-22', '川D·3580', '保养', '2700', '12', '12', '无');
INSERT INTO `fee` VALUES ('46', '2018-10-14', '川D·7324', '加油', '1000', '13', '13', '车胎漏气');
INSERT INTO `fee` VALUES ('5', '2018-02-14', '川D·7324', '加油', '1000', '13', '13', '车胎漏气');
INSERT INTO `fee` VALUES ('555', '2018-11-22', '川D·3580', '保养', '1700', '12', '12', '无');
INSERT INTO `fee` VALUES ('6', '2018-02-22', '川D·3497', '保养', '3000', '14', '14', '安装GPS');
INSERT INTO `fee` VALUES ('65', '2018-10-22', '川D·3497', '洗车', '2000', '14', '14', '安装GPS');
INSERT INTO `fee` VALUES ('666', '2018-12-22', '川D·3497', '洗车', '5000', '14', '14', '安装GPS');
INSERT INTO `fee` VALUES ('7', '2018-02-13', '川A·5493', '修车', '1000', '15', '15', '更换尾翼');
INSERT INTO `fee` VALUES ('8', '2018-02-16', '川A·0001', '洗车', '50', '2', '2', '车门打不开');
INSERT INTO `fee` VALUES ('81', '2018-12-07', '川A·7469', '修车', '3000', '11', '11', '无');
INSERT INTO `fee` VALUES ('84', '2018-11-22', '川D·3497', '洗车', '2500', '14', '14', '安装GPS');
INSERT INTO `fee` VALUES ('87', '2018-11-14', '川D·7324', '加油', '1500', '13', '13', '车胎漏气');
INSERT INTO `fee` VALUES ('9', '2018-03-14', '川A·9527', '加油', '200', '3', '3', '无');
INSERT INTO `fee` VALUES ('98', '2018-12-22', '川D·3580', '保养', '1400', '12', '12', '无');
INSERT INTO `fee` VALUES ('99', '2018-12-14', '川D·7324', '加油', '2500', '13', '13', '车胎漏气');

SET FOREIGN_KEY_CHECKS = 1;
