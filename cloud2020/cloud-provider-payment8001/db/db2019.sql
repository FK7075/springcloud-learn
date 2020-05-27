/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50645
 Source Host           : localhost:3306
 Source Schema         : db2019

 Target Server Type    : MySQL
 Target Server Version : 50645
 File Encoding         : 65001

 Date: 27/05/2020 18:34:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `serial` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES (123, 'Jack');
INSERT INTO `payment` VALUES (124, 'Lucy');
INSERT INTO `payment` VALUES (125, 'Tom');

SET FOREIGN_KEY_CHECKS = 1;
