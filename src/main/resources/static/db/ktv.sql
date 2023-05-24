/*
 Navicat Premium Data Transfer

 Source Server         : local_mysql8.0（3306）
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : ktv

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 24/05/2023 08:12:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `psw` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for canteen
-- ----------------------------
DROP TABLE IF EXISTS `canteen`;
CREATE TABLE `canteen`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sum` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '歌曲编号',
  `type` int NULL DEFAULT NULL COMMENT '音乐类型0流行歌曲1其他',
  `music_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '歌曲名称',
  `musicer` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '歌手',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of canteen
-- ----------------------------
INSERT INTO `canteen` VALUES (5, '9998', 1, '1411', '1112');
INSERT INTO `canteen` VALUES (6, '9997', 1, '1110', '1122');
INSERT INTO `canteen` VALUES (8, '5', 0, '5', '7');

-- ----------------------------
-- Table structure for carte
-- ----------------------------
DROP TABLE IF EXISTS `carte`;
CREATE TABLE `carte`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜名',
  `money` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '价格',
  `type` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型 菜肴0 汤1 甜品2 饮品3',
  `taste` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '口味',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of carte
-- ----------------------------
INSERT INTO `carte` VALUES (7, '紫菜蛋花汤', '9', '1', '咸鲜');
INSERT INTO `carte` VALUES (8, '酸梅汤', '12', '3', '酸甜');
INSERT INTO `carte` VALUES (9, '啤酒', '8', '3', '');
INSERT INTO `carte` VALUES (10, '红酒', '6666', '0', '甜');
INSERT INTO `carte` VALUES (11, '人头马', '30000', '3', '斩龙诀');
INSERT INTO `carte` VALUES (12, '小麦果汁', '1010', '1', '1111');

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `number` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ps` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (4, '888', '1', '888', '888', '888');
INSERT INTO `client` VALUES (5, '8889', '0', '111', '111', '111');

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sum` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '房间',
  `date` datetime NULL DEFAULT NULL COMMENT '日期',
  `discount` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `money` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `money1` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES (1, '1001', '2021-05-04 22:10:43', '55', '111', '55');
INSERT INTO `dingdan` VALUES (2, '5555', '2021-05-04 00:00:00', '100', '200', '');
INSERT INTO `dingdan` VALUES (3, '5555', '2021-05-04 00:00:00', '55', '55', '55');
INSERT INTO `dingdan` VALUES (4, '101010', '2021-05-12 00:00:00', '10101', '111', '111');

-- ----------------------------
-- Table structure for indent
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sum` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '房间号',
  `name` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '顾客姓名',
  `number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '顾客身份证号码',
  `phone` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '顾客手机号',
  `reserve_day` date NULL DEFAULT NULL COMMENT '预定时间',
  `creat_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `money` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '押金',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES (26, '1110', '111', '11', '0101', '2023-05-08', NULL, '111');
INSERT INTO `indent` VALUES (28, '1122', '1122', '1122', '1122', '2023-05-23', NULL, '11\0');
INSERT INTO `indent` VALUES (29, '1141', '11', '11', '11', NULL, '2023-05-23', '11');
INSERT INTO `indent` VALUES (30, '111', '111', '1100', '10101', '2023-05-24', '2023-05-23', '101');

-- ----------------------------
-- Table structure for kefang
-- ----------------------------
DROP TABLE IF EXISTS `kefang`;
CREATE TABLE `kefang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sum` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房间号码',
  `money` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '价格',
  `type` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '房间类型（大床）',
  `windows` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '窗户',
  `clean` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '清洁状态',
  `level` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '房间高级等级',
  `size` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '房间大小',
  PRIMARY KEY (`id`, `sum`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kefang
-- ----------------------------
INSERT INTO `kefang` VALUES (71, '1000', '40', '3', '2', '0', '1', '1');
INSERT INTO `kefang` VALUES (72, '1111', '1000', '0', '0', '0', '0', '1010');
INSERT INTO `kefang` VALUES (73, '1110', '1000', '0', '0', '0', '0', '10');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `sex` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `year` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `number` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `type` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '职业',
  `branch` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门',
  `birthday` date NULL DEFAULT NULL,
  `phone` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES (2, '10', '0', '11', '0', '5', '0', '2021-01-01', '5');
INSERT INTO `person` VALUES (4, '啊', '0', '100', '520', '3', '1', '2021-03-11', '5');
INSERT INTO `person` VALUES (14, '啊', '0', '', '', '0', '0', '2021-03-21', '6');
INSERT INTO `person` VALUES (16, '99', '0', '9', '9', '0', '3', '2021-03-02', '99');
INSERT INTO `person` VALUES (19, '11', '0', '11', '11', '6', '1', '2023-05-24', '11');

-- ----------------------------
-- Table structure for reserve
-- ----------------------------
DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sum` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '房间号',
  `name` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '顾客姓名',
  `number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '顾客身份证号码',
  `phone` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '顾客手机号',
  `creat_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `reserve_day` date NULL DEFAULT NULL COMMENT '预定时间',
  `money` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '押金',
  `status` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '入住状态0/1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reserve
-- ----------------------------
INSERT INTO `reserve` VALUES (10, '111', '111', '1100', '10101', '2023-05-24', '2023-05-24', '101', '1');
INSERT INTO `reserve` VALUES (11, '1122', '1122', '1122', '1122', '2023-05-23', '2023-05-23', '11\0', '1');
INSERT INTO `reserve` VALUES (13, '101', '111', '10', '111', '2023-05-03', '2023-05-03', '1111', '1');
INSERT INTO `reserve` VALUES (14, '1110', '111', '11', '0101', '2023-05-08', '2023-05-08', '111', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `psw` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '1', '1');
INSERT INTO `user` VALUES (2, '2', '2');
INSERT INTO `user` VALUES (3, '3', '3');
INSERT INTO `user` VALUES (4, '111', '111');
INSERT INTO `user` VALUES (5, '772', '772');

SET FOREIGN_KEY_CHECKS = 1;
