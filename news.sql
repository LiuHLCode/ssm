/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : news

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 09/02/2023 14:27:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info`  (
  `i_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adddate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `hits` int NULL DEFAULT NULL,
  `maxid` int NULL DEFAULT NULL,
  `minid` int NULL DEFAULT NULL,
  PRIMARY KEY (`i_id`) USING BTREE,
  INDEX `m_id`(`maxid`) USING BTREE,
  INDEX `minid`(`minid`) USING BTREE,
  CONSTRAINT `info_ibfk_1` FOREIGN KEY (`maxid`) REFERENCES `max_menu` (`max_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `info_ibfk_2` FOREIGN KEY (`minid`) REFERENCES `min_menu` (`min_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES (1, 'aa', '2020-12-17', 'lhl', '        7月1日是党的生日，也是2017届毕业生离校的日子，又一批优秀的学子告别母校，去创造属于他们自己的精彩人生，空气中弥漫着离别和不舍。为保障毕业生安全、方便离校，为了给2017届毕业生提供更好的送站服务，信息工程学院教工党支部两周前已开始筹备安排“爱心车队”的相关事宜。党员教师积极报名参加，筛选出8辆车况良好、熟悉路况、驾驶技术娴熟的爱心私家车为毕业生提供送站服务。 爱心车队的志愿者们，见到需要送站的毕业生们热情问候，主动把行李装上后备箱。“三年前入校时是学校把我们从车站迎接到了校园，没想到毕业了，老师们会把我们送到车站，这让我们感到十分的感动，感谢他们。”一位即将坐上爱心车离开的同学如是说。 在送到目的地后，爱心车队的志愿者们还提醒毕业生们注意旅途安全，不要拉下物品，叮嘱他们经常关注母校，常和老师联系。 学院重视毕业生离校工作，积极地为毕业生提供无微不至的优质服务和人文关怀，使他们在毕业之际再次感受学校对他们的关心、关爱。让我们共同祝愿我院2017届毕业生前程似锦，在未来的工作岗位上谱写出令母校骄傲的辉煌篇章。', 3, 1, 1);
INSERT INTO `info` VALUES (2, 'aa', '2020-12-17', 'å', '        7月1日是党的生日，也是2017届毕业生离校的日子，又一批优秀的学子告别母校，去创造属于他们自己的精彩人生，空气中弥漫着离别和不舍。为保障毕业生安全、方便离校，为了给2017届毕业生提供更好的送站服务，信息工程学院教工党支部两周前已开始筹备安排“爱心车队”的相关事宜。党员教师积极报名参加，筛选出8辆车况良好、熟悉路况、驾驶技术娴熟的爱心私家车为毕业生提供送站服务。 爱心车队的志愿者们，见到需要送站的毕业生们热情问候，主动把行李装上后备箱。“三年前入校时是学校把我们从车站迎接到了校园，没想到毕业了，老师们会把我们送到车站，这让我们感到十分的感动，感谢他们。”一位即将坐上爱心车离开的同学如是说。 在送到目的地后，爱心车队的志愿者们还提醒毕业生们注意旅途安全，不要拉下物品，叮嘱他们经常关注母校，常和老师联系。 学院重视毕业生离校工作，积极地为毕业生提供无微不至的优质服务和人文关怀，使他们在毕业之际再次感受学校对他们的关心、关爱。让我们共同祝愿我院2017届毕业生前程似锦，在未来的工作岗位上谱写出令母校骄傲的辉煌篇章。', 2, 2, 1);
INSERT INTO `info` VALUES (3, 'aa', '2020-12-17', 'å', '        7月1日是党的生日，也是2017届毕业生离校的日子，又一批优秀的学子告别母校，去创造属于他们自己的精彩人生，空气中弥漫着离别和不舍。为保障毕业生安全、方便离校，为了给2017届毕业生提供更好的送站服务，信息工程学院教工党支部两周前已开始筹备安排“爱心车队”的相关事宜。党员教师积极报名参加，筛选出8辆车况良好、熟悉路况、驾驶技术娴熟的爱心私家车为毕业生提供送站服务。 爱心车队的志愿者们，见到需要送站的毕业生们热情问候，主动把行李装上后备箱。“三年前入校时是学校把我们从车站迎接到了校园，没想到毕业了，老师们会把我们送到车站，这让我们感到十分的感动，感谢他们。”一位即将坐上爱心车离开的同学如是说。 在送到目的地后，爱心车队的志愿者们还提醒毕业生们注意旅途安全，不要拉下物品，叮嘱他们经常关注母校，常和老师联系。 学院重视毕业生离校工作，积极地为毕业生提供无微不至的优质服务和人文关怀，使他们在毕业之际再次感受学校对他们的关心、关爱。让我们共同祝愿我院2017届毕业生前程似锦，在未来的工作岗位上谱写出令母校骄傲的辉煌篇章。', 2, 2, 1);
INSERT INTO `info` VALUES (4, 'aa', '2020-12-17', 'å', '        7月1日是党的生日，也是2017届毕业生离校的日子，又一批优秀的学子告别母校，去创造属于他们自己的精彩人生，空气中弥漫着离别和不舍。为保障毕业生安全、方便离校，为了给2017届毕业生提供更好的送站服务，信息工程学院教工党支部两周前已开始筹备安排“爱心车队”的相关事宜。党员教师积极报名参加，筛选出8辆车况良好、熟悉路况、驾驶技术娴熟的爱心私家车为毕业生提供送站服务。 爱心车队的志愿者们，见到需要送站的毕业生们热情问候，主动把行李装上后备箱。“三年前入校时是学校把我们从车站迎接到了校园，没想到毕业了，老师们会把我们送到车站，这让我们感到十分的感动，感谢他们。”一位即将坐上爱心车离开的同学如是说。 在送到目的地后，爱心车队的志愿者们还提醒毕业生们注意旅途安全，不要拉下物品，叮嘱他们经常关注母校，常和老师联系。 学院重视毕业生离校工作，积极地为毕业生提供无微不至的优质服务和人文关怀，使他们在毕业之际再次感受学校对他们的关心、关爱。让我们共同祝愿我院2017届毕业生前程似锦，在未来的工作岗位上谱写出令母校骄傲的辉煌篇章。', 3, 3, 1);
INSERT INTO `info` VALUES (5, 'aa', '2020-12-17', 'å', '        7月1日是党的生日，也是2017届毕业生离校的日子，又一批优秀的学子告别母校，去创造属于他们自己的精彩人生，空气中弥漫着离别和不舍。为保障毕业生安全、方便离校，为了给2017届毕业生提供更好的送站服务，信息工程学院教工党支部两周前已开始筹备安排“爱心车队”的相关事宜。党员教师积极报名参加，筛选出8辆车况良好、熟悉路况、驾驶技术娴熟的爱心私家车为毕业生提供送站服务。 爱心车队的志愿者们，见到需要送站的毕业生们热情问候，主动把行李装上后备箱。“三年前入校时是学校把我们从车站迎接到了校园，没想到毕业了，老师们会把我们送到车站，这让我们感到十分的感动，感谢他们。”一位即将坐上爱心车离开的同学如是说。 在送到目的地后，爱心车队的志愿者们还提醒毕业生们注意旅途安全，不要拉下物品，叮嘱他们经常关注母校，常和老师联系。 学院重视毕业生离校工作，积极地为毕业生提供无微不至的优质服务和人文关怀，使他们在毕业之际再次感受学校对他们的关心、关爱。让我们共同祝愿我院2017届毕业生前程似锦，在未来的工作岗位上谱写出令母校骄傲的辉煌篇章。', 3, 4, 1);
INSERT INTO `info` VALUES (14, '学院7', '2020-2-1', '刘', '        7月1日是党的生日，也是2017届毕业生离校的日子，又一批优秀的学子告别母校，去创造属于他们自己的精彩人生，空气中弥漫着离别和不舍。为保障毕业生安全、方便离校，为了给2017届毕业生提供更好的送站服务，信息工程学院教工党支部两周前已开始筹备安排“爱心车队”的相关事宜。党员教师积极报名参加，筛选出8辆车况良好、熟悉路况、驾驶技术娴熟的爱心私家车为毕业生提供送站服务。 爱心车队的志愿者们，见到需要送站的毕业生们热情问候，主动把行李装上后备箱。“三年前入校时是学校把我们从车站迎接到了校园，没想到毕业了，老师们会把我们送到车站，这让我们感到十分的感动，感谢他们。”一位即将坐上爱心车离开的同学如是说。 在送到目的地后，爱心车队的志愿者们还提醒毕业生们注意旅途安全，不要拉下物品，叮嘱他们经常关注母校，常和老师联系。 学院重视毕业生离校工作，积极地为毕业生提供无微不至的优质服务和人文关怀，使他们在毕业之际再次感受学校对他们的关心、关爱。让我们共同祝愿我院2017届毕业生前程似锦，在未来的工作岗位上谱写出令母校骄傲的辉煌篇章。\r\n', 5, 3, 1);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `m_id` int NOT NULL AUTO_INCREMENT,
  `u_m_id` int NULL DEFAULT NULL,
  `m_m_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of manager
-- ----------------------------

-- ----------------------------
-- Table structure for max_menu
-- ----------------------------
DROP TABLE IF EXISTS `max_menu`;
CREATE TABLE `max_menu`  (
  `max_id` int NOT NULL AUTO_INCREMENT,
  `max_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hot` int NULL DEFAULT NULL,
  PRIMARY KEY (`max_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of max_menu
-- ----------------------------
INSERT INTO `max_menu` VALUES (1, '学校新闻', 0);
INSERT INTO `max_menu` VALUES (2, '学院新闻', 2);
INSERT INTO `max_menu` VALUES (3, '教务管理', 0);
INSERT INTO `max_menu` VALUES (4, '教育背景', 0);
INSERT INTO `max_menu` VALUES (9, '更多内容', 1);

-- ----------------------------
-- Table structure for min_menu
-- ----------------------------
DROP TABLE IF EXISTS `min_menu`;
CREATE TABLE `min_menu`  (
  `min_id` int NOT NULL AUTO_INCREMENT,
  `min_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mm_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`min_id`) USING BTREE,
  INDEX `mm_id`(`mm_id`) USING BTREE,
  CONSTRAINT `min_menu_ibfk_1` FOREIGN KEY (`mm_id`) REFERENCES `max_menu` (`max_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of min_menu
-- ----------------------------
INSERT INTO `min_menu` VALUES (1, '新闻1', 1);
INSERT INTO `min_menu` VALUES (3, '新闻2', 2);
INSERT INTO `min_menu` VALUES (6, '新闻3', 1);
INSERT INTO `min_menu` VALUES (7, '新闻3', 1);
INSERT INTO `min_menu` VALUES (8, '新闻4', 1);
INSERT INTO `min_menu` VALUES (9, '新闻5', 2);
INSERT INTO `min_menu` VALUES (11, '新闻6', 9);
INSERT INTO `min_menu` VALUES (12, '12', 9);
INSERT INTO `min_menu` VALUES (13, '123', 9);
INSERT INTO `min_menu` VALUES (14, '1234', 9);
INSERT INTO `min_menu` VALUES (15, 'aa', 9);

-- ----------------------------
-- Table structure for moneyuser
-- ----------------------------
DROP TABLE IF EXISTS `moneyuser`;
CREATE TABLE `moneyuser`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of moneyuser
-- ----------------------------
INSERT INTO `moneyuser` VALUES (1, '1001', 4889);
INSERT INTO `moneyuser` VALUES (2, '1002', 5111);

-- ----------------------------
-- Table structure for persistent_logins
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins`  (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `series` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of persistent_logins
-- ----------------------------

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'ROLE_ADMIN', '超级管理员');
INSERT INTO `sys_role` VALUES (2, 'ROLE_USER', '普通用户');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `rid` int NOT NULL,
  `pid` int NOT NULL,
  PRIMARY KEY (`rid`, `pid`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `sys_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `rid` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(555) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `username`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'aa', '$2a$10$cNzUgpPlGm.C/qxcpzqgau6zJPRhiOUpVay87T3aP5NQgzmOgcILa', 1);
INSERT INTO `sys_user` VALUES (2, 'bb', '$2a$10$O8gk1j.q24POM8jX4/gaBO7/lwRyyNvITmxIosau0ouxrWy7Dz/Ny', 1);
INSERT INTO `sys_user` VALUES (3, 'cc', 'cc', 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `uid` int NOT NULL DEFAULT 0,
  `rid` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`, `rid`) USING BTREE,
  INDEX `rids`(`rid`) USING BTREE,
  CONSTRAINT `rids` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `uids` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (3, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jobs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES (1, '22', '22', '22');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'aa', 'aa', 1);

SET FOREIGN_KEY_CHECKS = 1;
