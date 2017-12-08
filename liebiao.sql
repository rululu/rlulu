/*
Navicat MySQL Data Transfer

Source Server         : ruisen
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : liebiao

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2017-12-08 11:13:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for biao
-- ----------------------------
DROP TABLE IF EXISTS `biao`;
CREATE TABLE `biao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of biao
-- ----------------------------
INSERT INTO `biao` VALUES ('1', 'asd');
INSERT INTO `biao` VALUES ('2', 'asddsf');
INSERT INTO `biao` VALUES ('3', 'dfgdfg');
INSERT INTO `biao` VALUES ('4', 'h drgd');
INSERT INTO `biao` VALUES ('5', 'sg sg');
INSERT INTO `biao` VALUES ('6', 'dh refg df');
INSERT INTO `biao` VALUES ('7', 'drrgd');
INSERT INTO `biao` VALUES ('8', 'dfg drgdj');
INSERT INTO `biao` VALUES ('9', 'd d hfg ');

-- ----------------------------
-- Table structure for lbiao
-- ----------------------------
DROP TABLE IF EXISTS `lbiao`;
CREATE TABLE `lbiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `head` varchar(255) DEFAULT NULL,
  `jiage` varchar(255) DEFAULT NULL,
  `con1` varchar(255) DEFAULT NULL,
  `con2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lbiao
-- ----------------------------
INSERT INTO `lbiao` VALUES ('1', '05.jpg', 'Don\'t Bother Jumper Dress', '$75.00', 'Brand info', 'Founded by Gemma Shiel in 2001 in a garage, Lazy Oaf are a British streetwear label who focus on driving irreverence into everything they do.');
INSERT INTO `lbiao` VALUES ('2', '06.jpg', 'Watermelon Dungaree Dress', '$75.00', 'rand info', 'Founded by Gemma Shiel in 2001 in a garage, Lazy Oaf are a British streetwear label who focus on driving irreverence into everything they do.');
INSERT INTO `lbiao` VALUES ('3', '05.jpg', 'Don\'t Bother Jumper Dress', '$75.00', 'rand info', 'Founded by Gemma Shiel in 2001 in a garage, Lazy Oaf are a British streetwear label who focus on driving irreverence into everything they do.');
INSERT INTO `lbiao` VALUES ('4', '06.jpg', 'Watermelon Dungaree Dress', '$75.00', 'rand info', 'Founded by Gemma Shiel in 2001 in a garage, Lazy Oaf are a British streetwear label who focus on driving irreverence into everything they do.');
