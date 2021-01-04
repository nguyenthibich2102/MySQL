/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : lich_chieu_phim_code

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 27/12/2020 23:20:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lich_chieu
-- ----------------------------
DROP TABLE IF EXISTS `lich_chieu`;
CREATE TABLE `lich_chieu`  (
  `MA_LICH` int(11) NOT NULL AUTO_INCREMENT,
  `MA_RAP` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `MA_PHIM` char(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `THOI_GIAN` datetime(0) NULL DEFAULT NULL,
  `SO_LUONG_VE` smallint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`MA_LICH`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lich_chieu
-- ----------------------------
INSERT INTO `lich_chieu` VALUES (1, 'aa', 'aaa1', '2020-12-02 22:40:38', 21);
INSERT INTO `lich_chieu` VALUES (2, 'aa', 'aaa3', '2020-12-09 22:44:59', 200);
INSERT INTO `lich_chieu` VALUES (3, 'aa', 'aaa4', '2020-12-08 22:45:04', 30);
INSERT INTO `lich_chieu` VALUES (4, 'aa', 'aaa5', '2020-11-17 22:45:10', 123);
INSERT INTO `lich_chieu` VALUES (5, 'aa', 'aaa6', '2020-12-15 22:45:17', 243);
INSERT INTO `lich_chieu` VALUES (6, 'aa', 'aaa7', '2020-12-15 22:45:22', 245);
INSERT INTO `lich_chieu` VALUES (7, 'aa', 'aaa8', '2020-12-23 22:45:28', 26);
INSERT INTO `lich_chieu` VALUES (8, 'aa', 'aaa9', '2020-12-31 22:45:33', 56);
INSERT INTO `lich_chieu` VALUES (9, 'aa', 'aaa10', '2020-11-29 22:45:41', 40);
INSERT INTO `lich_chieu` VALUES (10, 'aa', 'aaa11', '2020-11-15 22:45:47', 123);

-- ----------------------------
-- Table structure for phim
-- ----------------------------
DROP TABLE IF EXISTS `phim`;
CREATE TABLE `phim`  (
  `MA_PHIM` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TEN_PHIM` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MA_THE_LOAI` int(11) NULL DEFAULT NULL,
  `NGAY_PHAT_HANH` datetime(0) NULL DEFAULT NULL,
  `HANG_SAN_XUAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MA_PHIM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phim
-- ----------------------------
INSERT INTO `phim` VALUES ('b', 'b', 2, '2020-12-01 00:00:00', 'c');
INSERT INTO `phim` VALUES ('c', 'c', 3, '2020-12-01 00:00:00', 'd');
INSERT INTO `phim` VALUES ('d', 'd', 5, '2020-12-01 00:00:00', 'e');
INSERT INTO `phim` VALUES ('e', 'e', 4, '2020-12-01 00:00:00', 'f');
INSERT INTO `phim` VALUES ('ff', 'g', 4, '2020-12-01 00:00:00', 'h`');
INSERT INTO `phim` VALUES ('qw', 'ew', 4, '2020-12-01 00:00:00', 'l');
INSERT INTO `phim` VALUES ('rd', 'dh', 4, '2020-12-01 00:00:00', 'j');
INSERT INTO `phim` VALUES ('sd', 'e', 4, '2020-12-01 00:00:00', 'm');
INSERT INTO `phim` VALUES ('wa', 'f', 4, '2020-12-01 00:00:00', 'k');

-- ----------------------------
-- Table structure for tblrap
-- ----------------------------
DROP TABLE IF EXISTS `tblrap`;
CREATE TABLE `tblrap`  (
  `MA_RAP` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TEN_RAP` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DIA_CHI` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MA_RAP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tblrap
-- ----------------------------
INSERT INTO `tblrap` VALUES ('a1', 'MegaStar', 'Hà Nội');
INSERT INTO `tblrap` VALUES ('a2', 'ABC', 'Hà Nội');
INSERT INTO `tblrap` VALUES ('a3', 'ABD', 'Hà Nội');
INSERT INTO `tblrap` VALUES ('a4', 'ABE', 'Hà Nội');
INSERT INTO `tblrap` VALUES ('a5', 'ABF', 'Hà Nội');
INSERT INTO `tblrap` VALUES ('a6', 'ABR', 'Hà Nội');
INSERT INTO `tblrap` VALUES ('a7', 'ABY', 'Hà Nội');
INSERT INTO `tblrap` VALUES ('a8', 'ABT', 'Hà Nội');
INSERT INTO `tblrap` VALUES ('a9', 'ABN', 'Hà Nội');
INSERT INTO `tblrap` VALUES ('b1', 'ABCQQ', 'Hà Nội');

SET FOREIGN_KEY_CHECKS = 1;
