/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : vms

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-22 09:44:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `id_card` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `authority` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('001', '缑元彪', '男', '15378963210', '1458435761@163.com', '546242565266853728', '中国重庆AA区BB路CC小区DD号', '2016-03-04', '001', '0');
INSERT INTO `admin` VALUES ('002', '黎光耀', '男', '54562442561', '66666666@qq.com', '512548865545532584', '中国四川成都双流县HH路JJ校区KK号', '2017-02-22', '002', '1');
INSERT INTO `admin` VALUES ('003', '王业青', '男', '13564528946', '9999999999@163.com', '256485168451236759', '中国四川成都双流县HH路JJ校区KK号', '2015-01-01', '003', '1');
