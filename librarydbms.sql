/*
 Navicat Premium Data Transfer

 Source Server         : mysql-localhost
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : librarydbms

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 19/12/2019 14:21:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `admin_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `note` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE,
  INDEX `ix_admin_admin_id`(`admin_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('10', '10aa', 'Abe', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('11', '11aa', 'Abel', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('12', '12aa', 'Adonis', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('13', '13aa', 'Adolf', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('14', '14aa', 'Albee', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('15', '15aa', 'Anna', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('16', '16aa', 'Ava', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('17', '17aa', 'Emma', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('18', '18aa', 'Cindy', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('19', '19aa', 'Susan', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('20', '20aa', 'Maggie', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('21', '21aa', 'Andy', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('22', '22aa', 'Judy', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('23', '23aa', 'Helen', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('24', '24aa', 'Lucy', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('25', '25aa', 'Karen', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('26', '26aa', 'Sam', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('27', '27aa', 'Sydeny', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('28', '28aa', 'Clara', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('29', '29aa', 'Zoey', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('30', '30aa', 'Evelyn', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('31', '31aa', 'Ruby', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('32', '32aa', 'Donna', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('33', '33aa', 'Edith', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('34', '34aa', 'Ella', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('35', '35aa', 'Ellen', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('36', '36aa', 'Gina', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('37', '37aa', 'Gloria', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('38', '38aa', 'Hebe', 'man', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('39', '39aa', 'Heidi', 'woman', '13344455577', 'admin');
INSERT INTO `admin` VALUES ('40', '40aa', 'Lvy', 'man', '13344455577', 'admin');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `ISBN` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `book_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `author` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_concern` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `location` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_rent` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`ISBN`) USING BTREE,
  INDEX `ix_book_ISBN`(`ISBN`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('978-7-144-00300-0', '高等数学', 'Zoey', '21世纪出版社', '数学', '二楼1011', 1);
INSERT INTO `book` VALUES ('978-7-144-00300-1', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1017', 1);
INSERT INTO `book` VALUES ('978-7-144-00300-2', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1023', 0);
INSERT INTO `book` VALUES ('978-7-144-00300-3', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1029', 1);
INSERT INTO `book` VALUES ('978-7-144-00300-4', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1035', 0);
INSERT INTO `book` VALUES ('978-7-144-00300-5', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1041', 1);
INSERT INTO `book` VALUES ('978-7-144-00300-6', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1047', 0);
INSERT INTO `book` VALUES ('978-7-144-00300-7', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1053', 1);
INSERT INTO `book` VALUES ('978-7-144-00300-8', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1042', 0);
INSERT INTO `book` VALUES ('978-7-144-00300-9', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1045', 1);
INSERT INTO `book` VALUES ('978-7-144-00301-0', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1012', 1);
INSERT INTO `book` VALUES ('978-7-144-00301-1', '高等数学', 'Zoey', '22世纪出版社', '数学', '二楼1015', 1);
INSERT INTO `book` VALUES ('978-7-144-00301-2', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1024', 0);
INSERT INTO `book` VALUES ('978-7-144-00301-3', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1030', 1);
INSERT INTO `book` VALUES ('978-7-144-00301-4', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1036', 0);
INSERT INTO `book` VALUES ('978-7-144-00301-5', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1042', 1);
INSERT INTO `book` VALUES ('978-7-144-00301-6', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1048', 0);
INSERT INTO `book` VALUES ('978-7-144-00301-7', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1054', 1);
INSERT INTO `book` VALUES ('978-7-144-00301-8', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1060', 0);
INSERT INTO `book` VALUES ('978-7-144-00301-9', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1046', 1);
INSERT INTO `book` VALUES ('978-7-144-00302-0', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1013', 0);
INSERT INTO `book` VALUES ('978-7-144-00302-1', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1016', 0);
INSERT INTO `book` VALUES ('978-7-144-00302-2', '高等数学', 'Zoey', '23世纪出版社', '数学', '二楼1019', 0);
INSERT INTO `book` VALUES ('978-7-144-00302-3', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1031', 0);
INSERT INTO `book` VALUES ('978-7-144-00302-4', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1037', 0);
INSERT INTO `book` VALUES ('978-7-144-00302-5', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1043', 0);
INSERT INTO `book` VALUES ('978-7-144-00302-6', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1049', 0);
INSERT INTO `book` VALUES ('978-7-144-00302-7', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1055', 0);
INSERT INTO `book` VALUES ('978-7-144-00302-8', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1061', 0);
INSERT INTO `book` VALUES ('978-7-144-00302-9', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1067', 0);
INSERT INTO `book` VALUES ('978-7-144-00303-0', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1014', 0);
INSERT INTO `book` VALUES ('978-7-144-00303-1', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1017', 0);
INSERT INTO `book` VALUES ('978-7-144-00303-2', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1020', 0);
INSERT INTO `book` VALUES ('978-7-144-00303-3', '高等数学', 'Zoey', '24世纪出版社', '数学', '二楼1023', 0);
INSERT INTO `book` VALUES ('978-7-144-00303-4', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1038', 0);
INSERT INTO `book` VALUES ('978-7-144-00303-5', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1044', 0);
INSERT INTO `book` VALUES ('978-7-144-00303-6', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1050', 0);
INSERT INTO `book` VALUES ('978-7-144-00303-7', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1056', 0);
INSERT INTO `book` VALUES ('978-7-144-00303-8', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1062', 0);
INSERT INTO `book` VALUES ('978-7-144-00303-9', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1068', 0);
INSERT INTO `book` VALUES ('978-7-144-00304-0', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1011', 0);
INSERT INTO `book` VALUES ('978-7-144-00304-1', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1018', 0);
INSERT INTO `book` VALUES ('978-7-144-00304-2', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1021', 0);
INSERT INTO `book` VALUES ('978-7-144-00304-3', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1024', 0);
INSERT INTO `book` VALUES ('978-7-144-00304-4', '高等数学', 'Zoey', '25世纪出版社', '数学', '二楼1027', 0);
INSERT INTO `book` VALUES ('978-7-144-00304-5', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1045', 0);
INSERT INTO `book` VALUES ('978-7-144-00304-6', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1051', 0);
INSERT INTO `book` VALUES ('978-7-144-00304-7', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1057', 0);
INSERT INTO `book` VALUES ('978-7-144-00304-8', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1063', 0);
INSERT INTO `book` VALUES ('978-7-144-00304-9', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1069', 0);
INSERT INTO `book` VALUES ('978-7-144-00305-0', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1012', 0);
INSERT INTO `book` VALUES ('978-7-144-00305-1', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1018', 0);
INSERT INTO `book` VALUES ('978-7-144-00305-2', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1022', 0);
INSERT INTO `book` VALUES ('978-7-144-00305-3', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1025', 0);
INSERT INTO `book` VALUES ('978-7-144-00305-4', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1028', 0);
INSERT INTO `book` VALUES ('978-7-144-00305-5', '高等数学', 'Zoey', '26世纪出版社', '数学', '二楼1031', 0);
INSERT INTO `book` VALUES ('978-7-144-00305-6', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1052', 0);
INSERT INTO `book` VALUES ('978-7-144-00305-7', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1058', 0);
INSERT INTO `book` VALUES ('978-7-144-00305-8', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1064', 0);
INSERT INTO `book` VALUES ('978-7-144-00305-9', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1070', 0);
INSERT INTO `book` VALUES ('978-7-144-00306-0', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1013', 0);
INSERT INTO `book` VALUES ('978-7-144-00306-1', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1019', 0);
INSERT INTO `book` VALUES ('978-7-144-00306-2', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1025', 0);
INSERT INTO `book` VALUES ('978-7-144-00306-3', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1026', 0);
INSERT INTO `book` VALUES ('978-7-144-00306-4', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1029', 0);
INSERT INTO `book` VALUES ('978-7-144-00306-5', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1032', 0);
INSERT INTO `book` VALUES ('978-7-144-00306-6', '高等数学', 'Zoey', '27世纪出版社', '数学', '二楼1035', 0);
INSERT INTO `book` VALUES ('978-7-144-00306-7', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1059', 0);
INSERT INTO `book` VALUES ('978-7-144-00306-8', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1065', 0);
INSERT INTO `book` VALUES ('978-7-144-00306-9', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1071', 0);
INSERT INTO `book` VALUES ('978-7-144-00307-0', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1014', 0);
INSERT INTO `book` VALUES ('978-7-144-00307-1', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1020', 0);
INSERT INTO `book` VALUES ('978-7-144-00307-2', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1026', 0);
INSERT INTO `book` VALUES ('978-7-144-00307-3', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1032', 0);
INSERT INTO `book` VALUES ('978-7-144-00307-4', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1030', 0);
INSERT INTO `book` VALUES ('978-7-144-00307-5', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1033', 0);
INSERT INTO `book` VALUES ('978-7-144-00307-6', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1036', 0);
INSERT INTO `book` VALUES ('978-7-144-00307-7', '高等数学', 'Zoey', '28世纪出版社', '数学', '二楼1039', 0);
INSERT INTO `book` VALUES ('978-7-144-00307-8', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1066', 0);
INSERT INTO `book` VALUES ('978-7-144-00307-9', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1072', 0);
INSERT INTO `book` VALUES ('978-7-144-00308-0', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1015', 0);
INSERT INTO `book` VALUES ('978-7-144-00308-1', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1021', 0);
INSERT INTO `book` VALUES ('978-7-144-00308-2', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1027', 0);
INSERT INTO `book` VALUES ('978-7-144-00308-3', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1033', 0);
INSERT INTO `book` VALUES ('978-7-144-00308-4', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1039', 0);
INSERT INTO `book` VALUES ('978-7-144-00308-5', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1034', 0);
INSERT INTO `book` VALUES ('978-7-144-00308-6', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1037', 0);
INSERT INTO `book` VALUES ('978-7-144-00308-7', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1040', 0);
INSERT INTO `book` VALUES ('978-7-144-00308-8', '高等数学', 'Zoey', '29世纪出版社', '数学', '二楼1043', 0);
INSERT INTO `book` VALUES ('978-7-144-00308-9', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1073', 0);
INSERT INTO `book` VALUES ('978-7-144-00309-0', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1016', 0);
INSERT INTO `book` VALUES ('978-7-144-00309-1', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1022', 0);
INSERT INTO `book` VALUES ('978-7-144-00309-2', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1028', 0);
INSERT INTO `book` VALUES ('978-7-144-00309-3', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1034', 0);
INSERT INTO `book` VALUES ('978-7-144-00309-4', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1040', 0);
INSERT INTO `book` VALUES ('978-7-144-00309-5', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1046', 0);
INSERT INTO `book` VALUES ('978-7-144-00309-6', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1038', 0);
INSERT INTO `book` VALUES ('978-7-144-00309-7', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1041', 0);
INSERT INTO `book` VALUES ('978-7-144-00309-8', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1044', 0);
INSERT INTO `book` VALUES ('978-7-144-00309-9', '高等数学', 'Zoey', '30世纪出版社', '数学', '二楼1047', 0);
INSERT INTO `book` VALUES ('978-7-155-00300-0', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1048', 0);
INSERT INTO `book` VALUES ('978-7-155-00300-1', '高等数学', 'Zoey', '31世纪出版社', '数学', '二楼1051', 0);
INSERT INTO `book` VALUES ('978-7-155-00300-2', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1087', 0);
INSERT INTO `book` VALUES ('978-7-155-00300-3', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1093', 0);
INSERT INTO `book` VALUES ('978-7-155-00300-4', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1099', 0);
INSERT INTO `book` VALUES ('978-7-155-00300-5', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1105', 0);
INSERT INTO `book` VALUES ('978-7-155-00300-6', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1111', 0);
INSERT INTO `book` VALUES ('978-7-155-00300-7', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1117', 0);
INSERT INTO `book` VALUES ('978-7-155-00300-8', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1123', 0);
INSERT INTO `book` VALUES ('978-7-155-00300-9', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1082', 0);
INSERT INTO `book` VALUES ('978-7-155-00301-0', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1049', 0);
INSERT INTO `book` VALUES ('978-7-155-00301-1', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1052', 0);
INSERT INTO `book` VALUES ('978-7-155-00301-2', '高等数学', 'Zoey', '32世纪出版社', '数学', '二楼1055', 0);
INSERT INTO `book` VALUES ('978-7-155-00301-3', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1094', 0);
INSERT INTO `book` VALUES ('978-7-155-00301-4', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1100', 0);
INSERT INTO `book` VALUES ('978-7-155-00301-5', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1106', 0);
INSERT INTO `book` VALUES ('978-7-155-00301-6', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1112', 0);
INSERT INTO `book` VALUES ('978-7-155-00301-7', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1118', 0);
INSERT INTO `book` VALUES ('978-7-155-00301-8', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1124', 0);
INSERT INTO `book` VALUES ('978-7-155-00301-9', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1130', 0);
INSERT INTO `book` VALUES ('978-7-155-00302-0', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1050', 0);
INSERT INTO `book` VALUES ('978-7-155-00302-1', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1053', 0);
INSERT INTO `book` VALUES ('978-7-155-00302-2', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1056', 0);
INSERT INTO `book` VALUES ('978-7-155-00302-3', '高等数学', 'Zoey', '33世纪出版社', '数学', '二楼1059', 0);
INSERT INTO `book` VALUES ('978-7-155-00302-4', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1101', 0);
INSERT INTO `book` VALUES ('978-7-155-00302-5', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1107', 0);
INSERT INTO `book` VALUES ('978-7-155-00302-6', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1113', 0);
INSERT INTO `book` VALUES ('978-7-155-00302-7', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1119', 0);
INSERT INTO `book` VALUES ('978-7-155-00302-8', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1125', 0);
INSERT INTO `book` VALUES ('978-7-155-00302-9', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1131', 0);
INSERT INTO `book` VALUES ('978-7-155-00303-0', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1074', 0);
INSERT INTO `book` VALUES ('978-7-155-00303-1', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1054', 0);
INSERT INTO `book` VALUES ('978-7-155-00303-2', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1057', 0);
INSERT INTO `book` VALUES ('978-7-155-00303-3', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1060', 0);
INSERT INTO `book` VALUES ('978-7-155-00303-4', '高等数学', 'Zoey', '34世纪出版社', '数学', '二楼1063', 0);
INSERT INTO `book` VALUES ('978-7-155-00303-5', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1108', 0);
INSERT INTO `book` VALUES ('978-7-155-00303-6', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1114', 0);
INSERT INTO `book` VALUES ('978-7-155-00303-7', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1120', 0);
INSERT INTO `book` VALUES ('978-7-155-00303-8', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1126', 0);
INSERT INTO `book` VALUES ('978-7-155-00303-9', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1132', 0);
INSERT INTO `book` VALUES ('978-7-155-00304-0', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1075', 0);
INSERT INTO `book` VALUES ('978-7-155-00304-1', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1081', 0);
INSERT INTO `book` VALUES ('978-7-155-00304-2', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1058', 0);
INSERT INTO `book` VALUES ('978-7-155-00304-3', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1061', 0);
INSERT INTO `book` VALUES ('978-7-155-00304-4', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1064', 0);
INSERT INTO `book` VALUES ('978-7-155-00304-5', '高等数学', 'Zoey', '35世纪出版社', '数学', '二楼1067', 0);
INSERT INTO `book` VALUES ('978-7-155-00304-6', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1115', 0);
INSERT INTO `book` VALUES ('978-7-155-00304-7', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1121', 0);
INSERT INTO `book` VALUES ('978-7-155-00304-8', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1127', 0);
INSERT INTO `book` VALUES ('978-7-155-00304-9', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1133', 0);
INSERT INTO `book` VALUES ('978-7-155-00305-0', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1076', 0);
INSERT INTO `book` VALUES ('978-7-155-00305-1', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1082', 0);
INSERT INTO `book` VALUES ('978-7-155-00305-2', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1088', 0);
INSERT INTO `book` VALUES ('978-7-155-00305-3', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1062', 0);
INSERT INTO `book` VALUES ('978-7-155-00305-4', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1065', 0);
INSERT INTO `book` VALUES ('978-7-155-00305-5', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1068', 0);
INSERT INTO `book` VALUES ('978-7-155-00305-6', '高等数学', 'Zoey', '36世纪出版社', '数学', '二楼1071', 0);
INSERT INTO `book` VALUES ('978-7-155-00305-7', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1122', 0);
INSERT INTO `book` VALUES ('978-7-155-00305-8', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1128', 0);
INSERT INTO `book` VALUES ('978-7-155-00305-9', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1134', 0);
INSERT INTO `book` VALUES ('978-7-155-00306-0', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1077', 0);
INSERT INTO `book` VALUES ('978-7-155-00306-1', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1083', 0);
INSERT INTO `book` VALUES ('978-7-155-00306-2', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1089', 0);
INSERT INTO `book` VALUES ('978-7-155-00306-3', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1095', 0);
INSERT INTO `book` VALUES ('978-7-155-00306-4', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1066', 0);
INSERT INTO `book` VALUES ('978-7-155-00306-5', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1069', 0);
INSERT INTO `book` VALUES ('978-7-155-00306-6', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1072', 0);
INSERT INTO `book` VALUES ('978-7-155-00306-7', '高等数学', 'Zoey', '37世纪出版社', '数学', '二楼1075', 0);
INSERT INTO `book` VALUES ('978-7-155-00306-8', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1129', 0);
INSERT INTO `book` VALUES ('978-7-155-00306-9', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1135', 0);
INSERT INTO `book` VALUES ('978-7-155-00307-0', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1078', 0);
INSERT INTO `book` VALUES ('978-7-155-00307-1', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1084', 0);
INSERT INTO `book` VALUES ('978-7-155-00307-2', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1090', 0);
INSERT INTO `book` VALUES ('978-7-155-00307-3', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1096', 0);
INSERT INTO `book` VALUES ('978-7-155-00307-4', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1102', 0);
INSERT INTO `book` VALUES ('978-7-155-00307-5', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1070', 0);
INSERT INTO `book` VALUES ('978-7-155-00307-6', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1073', 0);
INSERT INTO `book` VALUES ('978-7-155-00307-7', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1076', 0);
INSERT INTO `book` VALUES ('978-7-155-00307-8', '高等数学', 'Zoey', '38世纪出版社', '数学', '二楼1079', 0);
INSERT INTO `book` VALUES ('978-7-155-00307-9', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1136', 0);
INSERT INTO `book` VALUES ('978-7-155-00308-0', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1079', 0);
INSERT INTO `book` VALUES ('978-7-155-00308-1', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1085', 0);
INSERT INTO `book` VALUES ('978-7-155-00308-2', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1091', 0);
INSERT INTO `book` VALUES ('978-7-155-00308-3', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1097', 0);
INSERT INTO `book` VALUES ('978-7-155-00308-4', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1103', 0);
INSERT INTO `book` VALUES ('978-7-155-00308-5', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1109', 0);
INSERT INTO `book` VALUES ('978-7-155-00308-6', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1074', 0);
INSERT INTO `book` VALUES ('978-7-155-00308-7', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1077', 0);
INSERT INTO `book` VALUES ('978-7-155-00308-8', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1080', 0);
INSERT INTO `book` VALUES ('978-7-155-00308-9', '高等数学', 'Zoey', '39世纪出版社', '数学', '二楼1083', 0);
INSERT INTO `book` VALUES ('978-7-155-00309-0', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1080', 0);
INSERT INTO `book` VALUES ('978-7-155-00309-1', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1086', 0);
INSERT INTO `book` VALUES ('978-7-155-00309-2', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1092', 0);
INSERT INTO `book` VALUES ('978-7-155-00309-3', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1098', 0);
INSERT INTO `book` VALUES ('978-7-155-00309-4', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1104', 0);
INSERT INTO `book` VALUES ('978-7-155-00309-5', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1110', 0);
INSERT INTO `book` VALUES ('978-7-155-00309-6', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1116', 0);
INSERT INTO `book` VALUES ('978-7-155-00309-7', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1078', 0);
INSERT INTO `book` VALUES ('978-7-155-00309-8', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1081', 0);
INSERT INTO `book` VALUES ('978-7-155-00309-9', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1084', 0);
INSERT INTO `book` VALUES ('978-7-166-00300-0', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1085', 0);
INSERT INTO `book` VALUES ('978-7-166-00300-1', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1088', 0);
INSERT INTO `book` VALUES ('978-7-166-00300-2', '高等数学', 'Zoey', '41世纪出版社', '数学', '二楼1091', 0);
INSERT INTO `book` VALUES ('978-7-166-00300-3', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1157', 0);
INSERT INTO `book` VALUES ('978-7-166-00300-4', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1163', 0);
INSERT INTO `book` VALUES ('978-7-166-00300-5', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1169', 0);
INSERT INTO `book` VALUES ('978-7-166-00300-6', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1175', 0);
INSERT INTO `book` VALUES ('978-7-166-00300-7', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1181', 0);
INSERT INTO `book` VALUES ('978-7-166-00300-8', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1187', 0);
INSERT INTO `book` VALUES ('978-7-166-00300-9', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1193', 0);
INSERT INTO `book` VALUES ('978-7-166-00301-0', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1086', 0);
INSERT INTO `book` VALUES ('978-7-166-00301-1', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1089', 0);
INSERT INTO `book` VALUES ('978-7-166-00301-2', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1092', 0);
INSERT INTO `book` VALUES ('978-7-166-00301-3', '高等数学', 'Zoey', '42世纪出版社', '数学', '二楼1095', 0);
INSERT INTO `book` VALUES ('978-7-166-00301-4', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1164', 0);
INSERT INTO `book` VALUES ('978-7-166-00301-5', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1170', 0);
INSERT INTO `book` VALUES ('978-7-166-00301-6', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1176', 0);
INSERT INTO `book` VALUES ('978-7-166-00301-7', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1182', 0);
INSERT INTO `book` VALUES ('978-7-166-00301-8', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1188', 0);
INSERT INTO `book` VALUES ('978-7-166-00301-9', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1194', 0);
INSERT INTO `book` VALUES ('978-7-166-00302-0', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1137', 0);
INSERT INTO `book` VALUES ('978-7-166-00302-1', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1090', 0);
INSERT INTO `book` VALUES ('978-7-166-00302-2', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1093', 0);
INSERT INTO `book` VALUES ('978-7-166-00302-3', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1096', 0);
INSERT INTO `book` VALUES ('978-7-166-00302-4', '高等数学', 'Zoey', '43世纪出版社', '数学', '二楼1099', 0);
INSERT INTO `book` VALUES ('978-7-166-00302-5', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1171', 0);
INSERT INTO `book` VALUES ('978-7-166-00302-6', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1177', 0);
INSERT INTO `book` VALUES ('978-7-166-00302-7', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1183', 0);
INSERT INTO `book` VALUES ('978-7-166-00302-8', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1189', 0);
INSERT INTO `book` VALUES ('978-7-166-00302-9', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1195', 0);
INSERT INTO `book` VALUES ('978-7-166-00303-0', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1138', 0);
INSERT INTO `book` VALUES ('978-7-166-00303-1', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1144', 0);
INSERT INTO `book` VALUES ('978-7-166-00303-2', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1094', 0);
INSERT INTO `book` VALUES ('978-7-166-00303-3', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1097', 0);
INSERT INTO `book` VALUES ('978-7-166-00303-4', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1100', 0);
INSERT INTO `book` VALUES ('978-7-166-00303-5', '高等数学', 'Zoey', '44世纪出版社', '数学', '二楼1103', 0);
INSERT INTO `book` VALUES ('978-7-166-00303-6', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1178', 0);
INSERT INTO `book` VALUES ('978-7-166-00303-7', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1184', 0);
INSERT INTO `book` VALUES ('978-7-166-00303-8', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1190', 0);
INSERT INTO `book` VALUES ('978-7-166-00303-9', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1196', 0);
INSERT INTO `book` VALUES ('978-7-166-00304-0', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1139', 0);
INSERT INTO `book` VALUES ('978-7-166-00304-1', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1145', 0);
INSERT INTO `book` VALUES ('978-7-166-00304-2', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1151', 0);
INSERT INTO `book` VALUES ('978-7-166-00304-3', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1098', 0);
INSERT INTO `book` VALUES ('978-7-166-00304-4', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1101', 0);
INSERT INTO `book` VALUES ('978-7-166-00304-5', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1104', 0);
INSERT INTO `book` VALUES ('978-7-166-00304-6', '高等数学', 'Zoey', '45世纪出版社', '数学', '二楼1107', 0);
INSERT INTO `book` VALUES ('978-7-166-00304-7', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1185', 0);
INSERT INTO `book` VALUES ('978-7-166-00304-8', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1191', 0);
INSERT INTO `book` VALUES ('978-7-166-00304-9', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1197', 0);
INSERT INTO `book` VALUES ('978-7-166-00305-0', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1140', 0);
INSERT INTO `book` VALUES ('978-7-166-00305-1', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1146', 0);
INSERT INTO `book` VALUES ('978-7-166-00305-2', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1152', 0);
INSERT INTO `book` VALUES ('978-7-166-00305-3', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1158', 0);
INSERT INTO `book` VALUES ('978-7-166-00305-4', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1102', 0);
INSERT INTO `book` VALUES ('978-7-166-00305-5', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1105', 0);
INSERT INTO `book` VALUES ('978-7-166-00305-6', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1108', 0);
INSERT INTO `book` VALUES ('978-7-166-00305-7', '高等数学', 'Zoey', '46世纪出版社', '数学', '二楼1111', 0);
INSERT INTO `book` VALUES ('978-7-166-00305-8', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1192', 0);
INSERT INTO `book` VALUES ('978-7-166-00305-9', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1198', 0);
INSERT INTO `book` VALUES ('978-7-166-00306-0', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1141', 0);
INSERT INTO `book` VALUES ('978-7-166-00306-1', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1147', 0);
INSERT INTO `book` VALUES ('978-7-166-00306-2', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1153', 0);
INSERT INTO `book` VALUES ('978-7-166-00306-3', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1159', 0);
INSERT INTO `book` VALUES ('978-7-166-00306-4', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1165', 0);
INSERT INTO `book` VALUES ('978-7-166-00306-5', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1106', 0);
INSERT INTO `book` VALUES ('978-7-166-00306-6', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1109', 0);
INSERT INTO `book` VALUES ('978-7-166-00306-7', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1112', 0);
INSERT INTO `book` VALUES ('978-7-166-00306-8', '高等数学', 'Zoey', '47世纪出版社', '数学', '二楼1115', 0);
INSERT INTO `book` VALUES ('978-7-166-00306-9', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1199', 0);
INSERT INTO `book` VALUES ('978-7-166-00307-0', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1142', 0);
INSERT INTO `book` VALUES ('978-7-166-00307-1', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1148', 0);
INSERT INTO `book` VALUES ('978-7-166-00307-2', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1154', 0);
INSERT INTO `book` VALUES ('978-7-166-00307-3', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1160', 0);
INSERT INTO `book` VALUES ('978-7-166-00307-4', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1166', 0);
INSERT INTO `book` VALUES ('978-7-166-00307-5', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1172', 0);
INSERT INTO `book` VALUES ('978-7-166-00307-6', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1110', 0);
INSERT INTO `book` VALUES ('978-7-166-00307-7', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1113', 0);
INSERT INTO `book` VALUES ('978-7-166-00307-8', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1116', 0);
INSERT INTO `book` VALUES ('978-7-166-00307-9', '高等数学', 'Zoey', '48世纪出版社', '数学', '二楼1119', 0);
INSERT INTO `book` VALUES ('978-7-166-00308-0', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1143', 0);
INSERT INTO `book` VALUES ('978-7-166-00308-1', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1149', 0);
INSERT INTO `book` VALUES ('978-7-166-00308-2', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1155', 0);
INSERT INTO `book` VALUES ('978-7-166-00308-3', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1161', 0);
INSERT INTO `book` VALUES ('978-7-166-00308-4', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1167', 0);
INSERT INTO `book` VALUES ('978-7-166-00308-5', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1173', 0);
INSERT INTO `book` VALUES ('978-7-166-00308-6', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1179', 0);
INSERT INTO `book` VALUES ('978-7-166-00308-7', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1114', 0);
INSERT INTO `book` VALUES ('978-7-166-00308-8', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1117', 0);
INSERT INTO `book` VALUES ('978-7-166-00308-9', '英语六级', 'Evelyn', '高等教育出版社', '英语', '二楼1120', 0);
INSERT INTO `book` VALUES ('978-7-166-00309-0', '高等数学', 'Zoey', '40世纪出版社', '数学', '二楼1087', 0);
INSERT INTO `book` VALUES ('978-7-166-00309-1', '净化心灵', 'Maggie', '高等教育出版社', '语文', '三楼1150', 0);
INSERT INTO `book` VALUES ('978-7-166-00309-2', '数据库', 'Hebe', '高等教育出版社', '计算机', '三楼1156', 0);
INSERT INTO `book` VALUES ('978-7-166-00309-3', '计算机网络', 'Gloria', '高等教育出版社', '计算机', '三楼1162', 0);
INSERT INTO `book` VALUES ('978-7-166-00309-4', '操作系统', 'Gina', '高等教育出版社', '计算机', '三楼1168', 0);
INSERT INTO `book` VALUES ('978-7-166-00309-5', '计算机原理', 'Ellen', '中国法治出版社', '计算机', '三楼1174', 0);
INSERT INTO `book` VALUES ('978-7-166-00309-6', '考研数学', 'Ella', '机械工业出版社', '数学', '三楼1180', 0);
INSERT INTO `book` VALUES ('978-7-166-00309-7', '论语', 'Edith', '人民邮电出版社', '语文', '三楼1186', 0);
INSERT INTO `book` VALUES ('978-7-166-00309-8', '平凡的世界', 'Donna', '清华大学出版社', '语文', '二楼1118', 0);
INSERT INTO `book` VALUES ('978-7-166-00309-9', '离散数学', 'Ruby', '三联出版社', '数学', '二楼1121', 0);

-- ----------------------------
-- Table structure for rent
-- ----------------------------
DROP TABLE IF EXISTS `rent`;
CREATE TABLE `rent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `student_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `student_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `begin_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_return` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_rent_student_id`(`student_id`) USING BTREE,
  INDEX `ix_rent_ISBN`(`ISBN`) USING BTREE,
  CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rent
-- ----------------------------
INSERT INTO `rent` VALUES (10, '978-7-144-00300-0', '高等数学', '100', 'Abe', '2019-09-10', '2019-10-10', 0);
INSERT INTO `rent` VALUES (11, '978-7-144-00300-1', '净化心灵', '101', 'Abel', '2019-12-10', '2020-01-10', 0);
INSERT INTO `rent` VALUES (12, '978-7-144-00300-2', '数据库', '102', 'Adonis', '2019-09-15', '2019-10-15', 1);
INSERT INTO `rent` VALUES (13, '978-7-144-00300-3', '计算机网络', '103', 'Adolf', '2019-12-15', '2020-01-15', 0);
INSERT INTO `rent` VALUES (14, '978-7-144-00300-4', '操作系统', '100', 'Abe', '2019-11-01', '2019-12-01', 1);
INSERT INTO `rent` VALUES (15, '978-7-144-00300-5', '计算机原理', '101', 'Abel', '2019-11-30', '2019-12-31', 0);
INSERT INTO `rent` VALUES (16, '978-7-144-00300-6', '考研数学', '102', 'Adonis', '2019-09-10', '2019-10-10', 1);
INSERT INTO `rent` VALUES (17, '978-7-144-00300-7', '论语', '103', 'Adolf', '2019-12-10', '2020-01-10', 0);
INSERT INTO `rent` VALUES (18, '978-7-144-00300-8', '平凡的世界', '100', 'Abe', '2019-09-15', '2019-10-15', 1);
INSERT INTO `rent` VALUES (19, '978-7-144-00300-9', '离散数学', '101', 'Abel', '2019-12-15', '2020-01-15', 0);
INSERT INTO `rent` VALUES (20, '978-7-144-00301-0', '英语六级', '102', 'Adonis', '2019-11-01', '2019-12-01', 0);
INSERT INTO `rent` VALUES (21, '978-7-144-00301-1', '高等数学', '103', 'Adolf', '2019-11-30', '2019-12-31', 0);
INSERT INTO `rent` VALUES (22, '978-7-144-00301-2', '净化心灵', '100', 'Abe', '2019-09-10', '2019-10-10', 1);
INSERT INTO `rent` VALUES (23, '978-7-144-00301-3', '数据库', '101', 'Abel', '2019-12-10', '2020-01-10', 0);
INSERT INTO `rent` VALUES (24, '978-7-144-00301-4', '计算机网络', '102', 'Adonis', '2019-09-15', '2019-10-15', 1);
INSERT INTO `rent` VALUES (25, '978-7-144-00301-5', '操作系统', '103', 'Adolf', '2019-12-15', '2020-01-15', 0);
INSERT INTO `rent` VALUES (26, '978-7-144-00301-6', '计算机原理', '100', 'Abe', '2019-11-01', '2019-12-01', 1);
INSERT INTO `rent` VALUES (27, '978-7-144-00301-7', '考研数学', '101', 'Abel', '2019-11-30', '2019-12-31', 0);
INSERT INTO `rent` VALUES (28, '978-7-144-00301-8', '论语', '102', 'Adonis', '2019-09-10', '2019-10-10', 1);
INSERT INTO `rent` VALUES (29, '978-7-144-00301-9', '平凡的世界', '103', 'Adolf', '2019-12-10', '2020-01-10', 0);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `student_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `student_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `college` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_number` int(11) NULL DEFAULT NULL,
  `note` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`) USING BTREE,
  INDEX `ix_student_student_id`(`student_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('100', '100aa', 'Abe', 'woman', '计算机学院', '软件工程', '13344455577', 1, 'student');
INSERT INTO `student` VALUES ('101', '101aa', 'Abel', 'man', '网络空间安全学院', '信息安全', '13344455577', 5, 'student');
INSERT INTO `student` VALUES ('102', '102aa', 'Adonis', 'woman', '数字媒体学院', '数字媒体', '13344455577', 1, 'student');
INSERT INTO `student` VALUES ('103', '103aa', 'Adolf', 'man', '人文与法学院', '法学', '13344455577', 5, 'student');
INSERT INTO `student` VALUES ('104', '104aa', 'Albee', 'woman', '管理学院', '人力资源', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('105', '105aa', 'Anna', 'woman', '理学院', '数学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('106', '106aa', 'Ava', 'man', '通信工程学院', '通信工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('107', '107aa', 'Emma', 'woman', '经济学院', '经济', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('108', '108aa', 'Cindy', 'man', '机械学院', '机械', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('109', '109aa', 'Susan', 'man', '自动化学院', '自动化', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('110', '110aa', 'Maggie', 'woman', '计算机学院', '软件工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('111', '111aa', 'Andy', 'man', '网络空间安全学院', '信息安全', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('112', '112aa', 'Judy', 'woman', '数字媒体学院', '数字媒体', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('113', '113aa', 'Helen', 'man', '人文与法学院', '法学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('114', '114aa', 'Lucy', 'woman', '管理学院', '人力资源', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('115', '115aa', 'Karen', 'man', '理学院', '数学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('116', '116aa', 'Sam', 'woman', '通信工程学院', '通信工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('117', '117aa', 'Sydeny', 'man', '经济学院', '经济', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('118', '118aa', 'Clara', 'woman', '机械学院', '机械', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('119', '119aa', 'Zoey', 'man', '自动化学院', '自动化', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('120', '120aa', 'Evelyn', 'man', '计算机学院', '软件工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('121', '121aa', 'Ruby', 'man', '网络空间安全学院', '信息安全', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('122', '122aa', 'Donna', 'man', '数字媒体学院', '数字媒体', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('123', '123aa', 'Edith', 'woman', '人文与法学院', '法学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('124', '124aa', 'Ella', 'woman', '管理学院', '人力资源', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('125', '125aa', 'Ellen', 'man', '理学院', '数学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('126', '126aa', 'Gina', 'woman', '通信工程学院', '通信工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('127', '127aa', 'Gloria', 'man', '经济学院', '经济', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('128', '128aa', 'Hebe', 'man', '机械学院', '机械', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('129', '129aa', 'Heidi', 'woman', '自动化学院', '自动化', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('130', '130aa', 'Lvy', 'man', '计算机学院', '软件工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('131', '131aa', 'Cindy', 'woman', '网络空间安全学院', '信息安全', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('132', '132aa', 'Susan', 'man', '数字媒体学院', '数字媒体', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('133', '133aa', 'Maggie', 'woman', '人文与法学院', '法学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('134', '134aa', 'Andy', 'man', '管理学院', '人力资源', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('135', '135aa', 'Judy', 'woman', '理学院', '数学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('136', '136aa', 'Helen', 'woman', '通信工程学院', '通信工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('137', '137aa', 'Lucy', 'man', '经济学院', '经济', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('138', '138aa', 'Karen', 'woman', '机械学院', '机械', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('139', '139aa', 'Sam', 'man', '自动化学院', '自动化', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('140', '140aa', 'Sydeny', 'man', '计算机学院', '软件工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('141', '141aa', 'Clara', 'woman', '网络空间安全学院', '信息安全', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('142', '142aa', 'Zoey', 'man', '数字媒体学院', '数字媒体', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('143', '143aa', 'Evelyn', 'woman', '人文与法学院', '法学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('144', '144aa', 'Ruby', 'man', '管理学院', '人力资源', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('145', '145aa', 'Donna', 'woman', '理学院', '数学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('146', '146aa', 'Edith', 'man', '通信工程学院', '通信工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('147', '147aa', 'Ella', 'woman', '经济学院', '经济', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('148', '148aa', 'Ellen', 'man', '机械学院', '机械', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('149', '149aa', 'Gina', 'woman', '自动化学院', '自动化', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('150', '150aa', 'Gloria', 'man', '计算机学院', '软件工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('151', '151aa', 'Hebe', 'man', '网络空间安全学院', '信息安全', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('152', '152aa', 'Heidi', 'man', '数字媒体学院', '数字媒体', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('153', '153aa', 'Lvy', 'man', '人文与法学院', '法学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('154', '154aa', 'Gloria', 'woman', '管理学院', '人力资源', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('155', '155aa', 'Hebe', 'woman', '理学院', '数学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('156', '156aa', 'Heidi', 'man', '通信工程学院', '通信工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('157', '157aa', 'Lvy', 'woman', '经济学院', '经济', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('158', '158aa', 'Cindy', 'man', '机械学院', '机械', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('159', '159aa', 'Susan', 'man', '自动化学院', '自动化', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('160', '160aa', 'Maggie', 'woman', '计算机学院', '软件工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('161', '161aa', 'Andy', 'man', '网络空间安全学院', '信息安全', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('162', '162aa', 'Judy', 'woman', '数字媒体学院', '数字媒体', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('163', '163aa', 'Helen', 'man', '人文与法学院', '法学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('164', '164aa', 'Lucy', 'woman', '管理学院', '人力资源', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('165', '165aa', 'Karen', 'man', '理学院', '数学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('166', '166aa', 'Sam', 'woman', '通信工程学院', '通信工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('167', '167aa', 'Sydeny', 'woman', '经济学院', '经济', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('168', '168aa', 'Clara', 'man', '机械学院', '机械', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('169', '169aa', 'Zoey', 'woman', '自动化学院', '自动化', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('170', '170aa', 'Evelyn', 'man', '计算机学院', '软件工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('171', '171aa', 'Ruby', 'man', '网络空间安全学院', '信息安全', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('172', '172aa', 'Abe', 'woman', '数字媒体学院', '数字媒体', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('173', '173aa', 'Abel', 'man', '人文与法学院', '法学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('174', '174aa', 'Adonis', 'woman', '管理学院', '人力资源', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('175', '175aa', 'Adolf', 'man', '理学院', '数学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('176', '176aa', 'Albee', 'woman', '通信工程学院', '通信工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('177', '177aa', 'Anna', 'man', '经济学院', '经济', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('178', '178aa', 'Ava', 'woman', '机械学院', '机械', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('179', '179aa', 'Emma', 'man', '自动化学院', '自动化', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('180', '180aa', 'Cindy', 'woman', '计算机学院', '软件工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('181', '181aa', 'Susan', 'man', '网络空间安全学院', '信息安全', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('182', '182aa', 'Maggie', 'man', '数字媒体学院', '数字媒体', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('183', '183aa', 'Andy', 'man', '人文与法学院', '法学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('184', '184aa', 'Judy', 'man', '管理学院', '人力资源', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('185', '185aa', 'Helen', 'woman', '理学院', '数学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('186', '186aa', 'Lucy', 'woman', '通信工程学院', '通信工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('187', '187aa', 'Karen', 'man', '经济学院', '经济', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('188', '188aa', 'Sam', 'woman', '机械学院', '机械', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('189', '189aa', 'Sydeny', 'man', '自动化学院', '自动化', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('190', '190aa', 'Clara', 'man', '计算机学院', '软件工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('191', '191aa', 'Zoey', 'woman', '网络空间安全学院', '信息安全', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('192', '192aa', 'Evelyn', 'man', '数字媒体学院', '数字媒体', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('193', '193aa', 'Ruby', 'woman', '人文与法学院', '法学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('194', '194aa', 'Donna', 'man', '管理学院', '人力资源', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('195', '195aa', 'Edith', 'woman', '理学院', '数学', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('196', '196aa', 'Ella', 'man', '通信工程学院', '通信工程', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('197', '197aa', 'Ellen', 'woman', '经济学院', '经济', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('198', '198aa', 'Gina', 'woman', '机械学院', '机械', '13344455577', 0, 'student');
INSERT INTO `student` VALUES ('199', '199aa', 'Gloria', 'man', '自动化学院', '自动化', '13344455577', 0, 'student');

SET FOREIGN_KEY_CHECKS = 1;
