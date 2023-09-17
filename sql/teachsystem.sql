/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : teachsystem

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 02/06/2023 19:10:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (4, 'tb_student', '学生信息表', 'Student', 'crud', 'com.ruoyi.system', 'system', 'student', '学生信息', 'luna', NULL, 'admin', '2023-03-25 23:08:02', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (5, 'sys_file_info', '文件信息表', 'FileInfo', 'crud', 'com.luna.project.system', 'system', 'info', '文件信息', 'luna', NULL, 'admin', '2023-03-28 15:29:22', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (6, 'sys_cuisine', '菜品信息表', 'Cuisine', 'crud', 'com.luna.project.system', 'system', 'cuisine', '菜品信息', 'luna', NULL, 'admin', '2023-03-28 20:59:15', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (10, 'sys_lesson_know', '课时知识点信息', 'LessonKnow', 'crud', 'edu.yctc.project.system', 'system', 'know', '课时知识点信息', 'yctc', NULL, 'admin', '2023-04-19 11:51:07', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (11, 'sys_news', '通知表', 'News', 'crud', 'edu.yctc.project.system', 'system', 'news', '通知', 'yctc', NULL, 'admin', '2023-04-19 11:55:07', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (14, 'sys_knowledge_student_state', '知识点和学生状态关联表', 'KnowledgeStudentState', 'crud', 'edu.yctc.project.system', 'system', 'knowledgeStudentState', '知识点和学生状态关联', 'yctc', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2023-04-19 13:18:40', '', '2023-04-19 14:43:11', '');
INSERT INTO `gen_table` VALUES (15, 'sys_checkpicture', '检测图片表', 'Checkpicture', 'crud', 'edu.yctc.project.system', 'system', 'checkpicture', '检测图片', 'yctc', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2023-04-19 13:51:21', '', '2023-04-19 13:51:53', '');
INSERT INTO `gen_table` VALUES (17, 'sys_picture_knowledge', '图片和知识点关联表', 'PictureKnowledge', 'crud', 'edu.yctc.project.system', 'system', 'pictureKnowledge', '图片和知识点关联', 'yctc', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2023-04-19 14:14:24', '', '2023-04-19 14:14:44', '');
INSERT INTO `gen_table` VALUES (18, 'sys_user_news', '用户和通知关联表', 'UserNews', 'crud', 'edu.yctc.project.system', 'system', 'userNews', '用户和通知关联', 'yctc', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2023-04-19 14:49:52', '', '2023-04-19 14:50:07', '');
INSERT INTO `gen_table` VALUES (19, 'sys_knowledge_picture', '图片和知识点关联表', 'KnowledgePicture', 'crud', 'edu.yctc.project.system', 'system', 'knowledgePicture', '图片和知识点关联', 'yctc', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2023-04-19 15:36:01', '', '2023-04-19 15:37:51', '');
INSERT INTO `gen_table` VALUES (20, 'sys_user_applyClassroom', '教室申请表', 'UserApplyclassroom', 'crud', 'edu.yctc.project.system', 'system', 'applyClassroom', '教室申请', 'yctc', NULL, 'admin', '2023-04-21 18:47:18', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (21, 'sys_knowledge', '知识点概览', 'Knowledge', 'crud', 'edu.yctc.project.system', 'system', 'knowledge', '知识点概览', 'yctc', NULL, 'admin', '2023-04-21 21:43:07', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (22, 'sys_building_floor', '楼层信息', 'BuildingFloor', 'crud', 'edu.yctc.project.system', 'system', 'floor', '楼层信息', 'yctc', NULL, 'admin', '2023-04-22 09:42:02', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (22, '4', 'student_id', '编号', 'int(11)', 'Long', 'studentId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-25 23:08:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (23, '4', 'student_name', '学生名称', 'varchar(30)', 'String', 'studentName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-03-25 23:08:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (24, '4', 'student_age', '年龄', 'int(3)', 'Integer', 'studentAge', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-25 23:08:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (25, '4', 'student_sex', '性别（0男 1女 2未知）', 'char(1)', 'String', 'studentSex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2023-03-25 23:08:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (26, '4', 'student_status', '状态（0正常 1停用）', 'char(1)', 'String', 'studentStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2023-03-25 23:08:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (27, '4', 'student_birthday', '生日', 'datetime', 'Date', 'studentBirthday', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-03-25 23:08:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (28, '4', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 7, 'admin', '2023-03-25 23:08:03', '', NULL);
INSERT INTO `gen_table_column` VALUES (29, '5', 'file_id', '文件id', 'int(11)', 'Long', 'fileId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-28 15:29:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (30, '5', 'file_name', '文件名称', 'varchar(50)', 'String', 'fileName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-03-28 15:29:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (31, '5', 'file_path', '文件路径', 'varchar(255)', 'String', 'filePath', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-28 15:29:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (32, '6', 'cuisine_id', '菜品id', 'int(11)', 'Long', 'cuisineId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-28 20:59:15', '', NULL);
INSERT INTO `gen_table_column` VALUES (33, '6', 'cuisine_name', '菜品名称', 'varchar(50)', 'String', 'cuisineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-03-28 20:59:15', '', NULL);
INSERT INTO `gen_table_column` VALUES (34, '6', 'cuisine_path', '菜品图片路径', 'varchar(255)', 'String', 'cuisinePath', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-28 20:59:15', '', NULL);
INSERT INTO `gen_table_column` VALUES (35, '6', 'cuisine_number', '今日菜品份数', 'int(3)', 'Integer', 'cuisineNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-28 20:59:15', '', NULL);
INSERT INTO `gen_table_column` VALUES (36, '6', 'cuisine_price', '菜品价格', 'double(5,2)', 'Double', 'cuisinePrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-28 20:59:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (50, '10', 'id', NULL, 'bigint(20) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-19 11:51:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (51, '10', 'lesson_id', '课程编号', 'bigint(20) unsigned', 'Long', 'lessonId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-19 11:51:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (52, '10', 'knowledge_id', '知识点编号', 'bigint(20)', 'Long', 'knowledgeId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-19 11:51:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (53, '10', 'create_time', '创建时间', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2023-04-19 11:51:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (54, '10', 'modify_time', '修改时间', 'datetime(6)', 'Date', 'modifyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-04-19 11:51:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (55, '11', 'id', '编号', 'bigint(20) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-19 11:55:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (56, '11', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-19 11:55:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (57, '11', 'content', '内容', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-19 11:55:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (58, '11', 'create_time', '创建时间', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2023-04-19 11:55:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (59, '11', 'modify_time', '修改时间', 'datetime(6)', 'Date', 'modifyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-04-19 11:55:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (66, '14', 'id', '编号', 'bigint(20) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-19 13:18:40', NULL, '2023-04-19 14:43:11');
INSERT INTO `gen_table_column` VALUES (67, '14', 'user_id', '用户id', 'bigint(20) unsigned', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-19 13:18:41', NULL, '2023-04-19 14:43:11');
INSERT INTO `gen_table_column` VALUES (68, '14', 'lesson_id', '课程id', 'bigint(20) unsigned', 'Long', 'lessonId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-19 13:18:41', NULL, '2023-04-19 14:43:11');
INSERT INTO `gen_table_column` VALUES (69, '14', 'state', '状态', 'int(1) unsigned', 'Integer', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-19 13:18:41', NULL, '2023-04-19 14:43:11');
INSERT INTO `gen_table_column` VALUES (70, '14', 'scan_start_time', '开始扫描时间', 'datetime(6)', 'Date', 'scanStartTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-04-19 13:18:41', NULL, '2023-04-19 14:43:11');
INSERT INTO `gen_table_column` VALUES (71, '14', 'scan_end_time', '结束扫描时间', 'datetime(6)', 'Date', 'scanEndTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-04-19 13:18:41', NULL, '2023-04-19 14:43:11');
INSERT INTO `gen_table_column` VALUES (72, '14', 'knowledge_id', '知识点id', 'bigint(20) unsigned', 'Long', 'knowledgeId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-04-19 13:18:41', NULL, '2023-04-19 14:43:11');
INSERT INTO `gen_table_column` VALUES (73, '14', 'create_time', '创建时间', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-04-19 13:18:41', NULL, '2023-04-19 14:43:11');
INSERT INTO `gen_table_column` VALUES (74, '14', 'modify_time', '修改时间', 'datetime(6)', 'Date', 'modifyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2023-04-19 13:18:41', NULL, '2023-04-19 14:43:12');
INSERT INTO `gen_table_column` VALUES (75, '15', 'id', '编号', 'int(10)', 'Integer', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-19 13:51:21', NULL, '2023-04-19 13:51:53');
INSERT INTO `gen_table_column` VALUES (76, '15', 'pictureId', '图片编号', 'int(255)', 'Long', 'pictureid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-19 13:51:21', NULL, '2023-04-19 13:51:53');
INSERT INTO `gen_table_column` VALUES (77, '15', 'intflag', '状态标记', 'int(11)', 'Long', 'intflag', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-19 13:51:21', NULL, '2023-04-19 13:51:53');
INSERT INTO `gen_table_column` VALUES (78, '15', 'knowledgeid', '知识点编号', 'int(11)', 'Long', 'knowledgeid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-19 13:51:21', NULL, '2023-04-19 13:51:53');
INSERT INTO `gen_table_column` VALUES (82, '17', 'id', '编号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-19 14:14:25', NULL, '2023-04-19 14:14:44');
INSERT INTO `gen_table_column` VALUES (83, '17', 'picture', '识别到的照片', 'varchar(255)', 'String', 'picture', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-19 14:14:25', NULL, '2023-04-19 14:14:44');
INSERT INTO `gen_table_column` VALUES (84, '17', 'knowledgeid', '知识点编号', 'int(11)', 'Long', 'knowledgeid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-19 14:14:25', NULL, '2023-04-19 14:14:44');
INSERT INTO `gen_table_column` VALUES (85, '18', 'id', '编号', 'bigint(20) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-19 14:49:52', NULL, '2023-04-19 14:50:07');
INSERT INTO `gen_table_column` VALUES (86, '18', 'user_id', '用户id', 'bigint(20) unsigned', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-19 14:49:52', NULL, '2023-04-19 14:50:07');
INSERT INTO `gen_table_column` VALUES (87, '18', 'news_id', '消息id', 'bigint(20) unsigned', 'Long', 'newsId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-19 14:49:52', NULL, '2023-04-19 14:50:07');
INSERT INTO `gen_table_column` VALUES (88, '18', 'state', '阅读状态', 'int(11) unsigned', 'Long', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-19 14:49:52', NULL, '2023-04-19 14:50:07');
INSERT INTO `gen_table_column` VALUES (89, '18', 'create_time', '创建时间', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-19 14:49:53', NULL, '2023-04-19 14:50:07');
INSERT INTO `gen_table_column` VALUES (90, '18', 'modify_time', '修改时间', 'datetime(6)', 'Date', 'modifyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-04-19 14:49:53', NULL, '2023-04-19 14:50:07');
INSERT INTO `gen_table_column` VALUES (91, '19', 'id', '编号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-19 15:36:01', NULL, '2023-04-19 15:37:51');
INSERT INTO `gen_table_column` VALUES (92, '19', 'picture', '识别到的照片', 'varchar(255)', 'String', 'picture', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-19 15:36:01', NULL, '2023-04-19 15:37:51');
INSERT INTO `gen_table_column` VALUES (93, '19', 'knowledgeid', '知识点编号', 'int(11)', 'Long', 'knowledgeid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-19 15:36:01', NULL, '2023-04-19 15:37:51');
INSERT INTO `gen_table_column` VALUES (94, '20', 'id', '编号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-21 18:47:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (95, '20', 'user_id', '用户编号', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-21 18:47:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (96, '20', 'classroom_id', '申请教室编号', 'bigint(20)', 'Long', 'classroomId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-21 18:47:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (97, '20', 'lesson_id', '申请课时', 'bigint(20)', 'Long', 'lessonId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-21 18:47:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (98, '20', 'create_time', '申请时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-21 18:47:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (99, '21', 'id', '编号', 'bigint(20) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-21 21:43:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (100, '21', 'content', '知识点描述', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-21 21:43:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (101, '21', 'length', '预计时长', 'double(20,1) unsigned', 'Double', 'length', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-21 21:43:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (102, '21', 'lesson_id', '课时', 'bigint(20)', 'Long', 'lessonId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-21 21:43:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (103, '21', 'create_time', '创建时间', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-04-21 21:43:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (104, '21', 'modify_time', '修改时间', 'datetime(6)', 'Date', 'modifyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-04-21 21:43:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (105, '22', 'id', '编号', 'bigint(20) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-22 09:42:03', '', NULL);
INSERT INTO `gen_table_column` VALUES (106, '22', 'building', '楼号', 'varchar(50)', 'String', 'building', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-22 09:42:03', '', NULL);
INSERT INTO `gen_table_column` VALUES (107, '22', 'floor', '楼层', 'varchar(50)', 'String', 'floor', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-22 09:42:03', '', NULL);
INSERT INTO `gen_table_column` VALUES (108, '22', 'create_time', '创建时间', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2023-04-22 09:42:03', '', NULL);
INSERT INTO `gen_table_column` VALUES (109, '22', 'modify_time', '修改时间', 'datetime(6)', 'Date', 'modifyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-04-22 09:42:03', '', NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME100', 'DEFAULT', '0 0 23 * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fired_time` bigint NOT NULL,
  `sched_time` bigint NOT NULL,
  `priority` int NOT NULL,
  `state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'edu.yctc.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F50455254494553737200276564752E796374632E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E0009787200286564752E796374632E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000186E87A61E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000132740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME100', 'DEFAULT', NULL, 'edu.yctc.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F50455254494553737200276564752E796374632E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E0009787200286564752E796374632E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707400007372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000187A3B0FCD0787074001DE9878DE7BDAEE688BFE997B4E78AB6E68081E6AF8FE5A4A93233E782B97070707400013174000C302030203233202A202A203F7400126170706C792E64656C526F6F6D537461746574000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000064740012E9878DE7BDAEE688BFE997B4E78AB6E6808174000131740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'edu.yctc.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F50455254494553737200276564752E796374632E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E0009787200286564752E796374632E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000186E87A61E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'edu.yctc.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F50455254494553737200276564752E796374632E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E0009787200286564752E796374632E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000186E87A61E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_checkin_time` bigint NOT NULL,
  `checkin_interval` bigint NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('lunaScheduler', 'improve1585894432841', 1585895837645, 15000);
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-KPQRQ371685161690360', 1685168278425, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `repeat_count` bigint NOT NULL,
  `repeat_interval` bigint NOT NULL,
  `times_triggered` bigint NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `int_prop_1` int NULL DEFAULT NULL,
  `int_prop_2` int NULL DEFAULT NULL,
  `long_prop_1` bigint NULL DEFAULT NULL,
  `long_prop_2` bigint NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint NULL DEFAULT NULL,
  `prev_fire_time` bigint NULL DEFAULT NULL,
  `priority` int NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `start_time` bigint NOT NULL,
  `end_time` bigint NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `QRTZ_TRIGGERS_ibfk_1`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1685161690000, -1, 5, 'PAUSED', 'CRON', 1685161690000, 0, NULL, 1, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME100', 'DEFAULT', 'TASK_CLASS_NAME100', 'DEFAULT', NULL, 1685199600000, -1, 5, 'PAUSED', 'CRON', 1685161690000, 0, NULL, -1, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1685161695000, -1, 5, 'PAUSED', 'CRON', 1685161690000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1685161700000, -1, 5, 'PAUSED', 'CRON', 1685161690000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_academy
-- ----------------------------
DROP TABLE IF EXISTS `sys_academy`;
CREATE TABLE `sys_academy`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `academy` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '学院名称',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_academy`(`academy` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = big5 COLLATE = big5_chinese_ci COMMENT = '学院' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_academy
-- ----------------------------
INSERT INTO `sys_academy` VALUES (1, '信息工程学院', '2023-03-05 21:51:11.000000', '2023-03-05 21:51:11.000000');
INSERT INTO `sys_academy` VALUES (2, '文学院', '2023-04-15 09:10:39.941000', '2023-04-17 19:15:40.000000');
INSERT INTO `sys_academy` VALUES (3, '教育与科学学院', '2023-04-17 19:16:04.000000', '2023-04-17 19:16:06.000000');
INSERT INTO `sys_academy` VALUES (4, '医学院', '2023-05-08 12:10:13.074000', '2023-05-08 00:00:00.000000');

-- ----------------------------
-- Table structure for sys_attendance
-- ----------------------------
DROP TABLE IF EXISTS `sys_attendance`;
CREATE TABLE `sys_attendance`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '用户编号',
  `lesson_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '课时编号',
  `attend_state` int UNSIGNED NULL DEFAULT NULL COMMENT '出勤情况',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_attendance`(`user_id` ASC, `lesson_id` ASC) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_lesson_id`(`lesson_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '学生考勤点名汇总表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_attendance
-- ----------------------------
INSERT INTO `sys_attendance` VALUES (1695, 1, 582, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1696, 1, 583, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:00:00.000000');
INSERT INTO `sys_attendance` VALUES (1697, 1, 584, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1698, 1, 585, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1699, 1, 586, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1700, 1, 587, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1701, 1, 588, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1702, 1, 589, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1703, 1, 590, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1704, 1, 591, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1705, 1, 592, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1706, 1, 593, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1707, 1, 594, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1708, 1, 595, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1709, 2, 582, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1710, 2, 583, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1711, 2, 584, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1712, 2, 585, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1713, 2, 586, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1714, 2, 587, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1715, 2, 588, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1716, 2, 589, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1717, 2, 590, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1718, 2, 591, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1719, 2, 592, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1720, 2, 593, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1721, 2, 594, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1722, 2, 595, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1723, 3, 582, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1724, 3, 583, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1725, 3, 584, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1726, 3, 585, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1727, 3, 586, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1728, 3, 587, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1729, 3, 588, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1730, 3, 589, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1731, 3, 590, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1732, 3, 591, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1733, 3, 592, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1734, 3, 593, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1735, 3, 594, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1736, 3, 595, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1737, 4, 582, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1738, 4, 583, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1739, 4, 584, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1740, 4, 585, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1741, 4, 586, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1742, 4, 587, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1743, 4, 588, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1744, 4, 589, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1745, 4, 590, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1746, 4, 591, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1747, 4, 592, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1748, 4, 593, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1749, 4, 594, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1750, 4, 595, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1751, 5, 582, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1752, 5, 583, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1753, 5, 584, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1754, 5, 585, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1755, 5, 586, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1756, 5, 587, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1757, 5, 588, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1758, 5, 589, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1759, 5, 590, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1760, 5, 591, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1761, 5, 592, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1762, 5, 593, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1763, 5, 594, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1764, 5, 595, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1765, 6, 582, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1766, 6, 583, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1767, 6, 584, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1768, 6, 585, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1769, 6, 586, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1770, 6, 587, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1771, 6, 588, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1772, 6, 589, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1773, 6, 590, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1774, 6, 591, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1775, 6, 592, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1776, 6, 593, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1777, 6, 594, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1778, 6, 595, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1779, 7, 582, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1780, 7, 583, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1781, 7, 584, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1782, 7, 585, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1783, 7, 586, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1784, 7, 587, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1785, 7, 588, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1786, 7, 589, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1787, 7, 590, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1788, 7, 591, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1789, 7, 592, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1790, 7, 593, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1791, 7, 594, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1792, 7, 595, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1793, 8, 582, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1794, 8, 583, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1795, 8, 584, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1796, 8, 585, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1797, 8, 586, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1798, 8, 587, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1799, 8, 588, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1800, 8, 589, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1801, 8, 590, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1802, 8, 591, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1803, 8, 592, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1804, 8, 593, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1805, 8, 594, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1806, 8, 595, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1807, 9, 582, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1808, 9, 583, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1809, 9, 584, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1810, 9, 585, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1811, 9, 586, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1812, 9, 587, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1813, 9, 588, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1814, 9, 589, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1815, 9, 590, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1816, 9, 591, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1817, 9, 592, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1818, 9, 593, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1819, 9, 594, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1820, 9, 595, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1821, 10, 582, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1822, 10, 583, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1823, 10, 584, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1824, 10, 585, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1825, 10, 586, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1826, 10, 587, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1827, 10, 588, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1828, 10, 589, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1829, 10, 590, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1830, 10, 591, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1831, 10, 592, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1832, 10, 593, 0, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1833, 10, 594, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1834, 10, 595, 1, '2023-04-18 00:52:10.964000', '2023-04-18 00:52:10.964000');
INSERT INTO `sys_attendance` VALUES (1835, 11, 596, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1836, 11, 597, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1837, 11, 598, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1838, 11, 599, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1839, 11, 600, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1840, 11, 601, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1841, 11, 602, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1842, 11, 603, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1843, 11, 604, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1844, 11, 605, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1845, 11, 606, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1846, 11, 607, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1847, 11, 608, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1848, 11, 609, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1849, 12, 596, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1850, 12, 597, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1851, 12, 598, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1852, 12, 599, 1, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1853, 12, 600, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1854, 12, 601, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1855, 12, 602, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1856, 12, 603, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1857, 12, 604, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1858, 12, 605, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1859, 12, 606, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1860, 12, 607, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1861, 12, 608, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1862, 12, 609, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1863, 13, 596, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1864, 13, 597, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1865, 13, 598, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1866, 13, 599, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1867, 13, 600, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1868, 13, 601, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1869, 13, 602, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1870, 13, 603, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1871, 13, 604, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1872, 13, 605, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1873, 13, 606, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1874, 13, 607, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1875, 13, 608, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1876, 13, 609, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1877, 14, 596, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1878, 14, 597, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1879, 14, 598, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1880, 14, 599, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1881, 14, 600, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1882, 14, 601, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1883, 14, 602, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1884, 14, 603, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1885, 14, 604, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1886, 14, 605, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1887, 14, 606, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1888, 14, 607, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1889, 14, 608, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1890, 14, 609, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1891, 15, 596, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1892, 15, 597, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1893, 15, 598, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1894, 15, 599, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1895, 15, 600, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1896, 15, 601, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1897, 15, 602, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1898, 15, 603, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1899, 15, 604, 1, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1900, 15, 605, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1901, 15, 606, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1902, 15, 607, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1903, 15, 608, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1904, 15, 609, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1905, 16, 596, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1906, 16, 597, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1907, 16, 598, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1908, 16, 599, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1909, 16, 600, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1910, 16, 601, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1911, 16, 602, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1912, 16, 603, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1913, 16, 604, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1914, 16, 605, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1915, 16, 606, 1, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1916, 16, 607, 1, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1917, 16, 608, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1918, 16, 609, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1919, 17, 596, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1920, 17, 597, 1, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1921, 17, 598, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1922, 17, 599, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1923, 17, 600, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1924, 17, 601, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1925, 17, 602, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1926, 17, 603, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1927, 17, 604, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1928, 17, 605, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1929, 17, 606, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1930, 17, 607, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1931, 17, 608, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1932, 17, 609, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1933, 18, 596, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1934, 18, 597, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1935, 18, 598, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1936, 18, 599, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1937, 18, 600, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1938, 18, 601, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1939, 18, 602, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1940, 18, 603, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1941, 18, 604, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1942, 18, 605, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1943, 18, 606, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1944, 18, 607, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1945, 18, 608, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1946, 18, 609, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1947, 19, 596, 1, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1948, 19, 597, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1949, 19, 598, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1950, 19, 599, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1951, 19, 600, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1952, 19, 601, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1953, 19, 602, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1954, 19, 603, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1955, 19, 604, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1956, 19, 605, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1957, 19, 606, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1958, 19, 607, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1959, 19, 608, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1960, 19, 609, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1961, 20, 596, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1962, 20, 597, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1963, 20, 598, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1964, 20, 599, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1965, 20, 600, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1966, 20, 601, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1967, 20, 602, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1968, 20, 603, 1, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1969, 20, 604, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1970, 20, 605, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1971, 20, 606, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1972, 20, 607, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1973, 20, 608, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1974, 20, 609, 0, '2023-04-18 00:53:41.092000', '2023-04-18 00:53:41.092000');
INSERT INTO `sys_attendance` VALUES (1975, 21, 610, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1976, 21, 611, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1977, 21, 612, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1978, 21, 613, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1979, 21, 614, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1980, 21, 615, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1981, 21, 616, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1982, 21, 617, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1983, 21, 618, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1984, 21, 619, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1985, 21, 620, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1986, 21, 621, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1987, 21, 622, 1, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1988, 21, 623, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1989, 22, 610, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1990, 22, 611, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1991, 22, 612, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1992, 22, 613, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1993, 22, 614, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1994, 22, 615, 1, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1995, 22, 616, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1996, 22, 617, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1997, 22, 618, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1998, 22, 619, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (1999, 22, 620, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2000, 22, 621, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2001, 22, 622, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2002, 22, 623, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2003, 23, 610, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2004, 23, 611, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2005, 23, 612, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2006, 23, 613, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2007, 23, 614, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2008, 23, 615, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2009, 23, 616, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2010, 23, 617, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2011, 23, 618, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2012, 23, 619, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2013, 23, 620, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2014, 23, 621, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2015, 23, 622, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2016, 23, 623, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2017, 24, 610, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2018, 24, 611, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2019, 24, 612, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2020, 24, 613, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2021, 24, 614, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2022, 24, 615, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2023, 24, 616, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2024, 24, 617, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2025, 24, 618, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2026, 24, 619, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2027, 24, 620, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2028, 24, 621, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2029, 24, 622, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2030, 24, 623, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2031, 25, 610, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2032, 25, 611, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2033, 25, 612, 1, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2034, 25, 613, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2035, 25, 614, 1, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2036, 25, 615, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2037, 25, 616, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2038, 25, 617, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2039, 25, 618, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2040, 25, 619, 1, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2041, 25, 620, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2042, 25, 621, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2043, 25, 622, 1, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2044, 25, 623, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2045, 26, 610, 1, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2046, 26, 611, 1, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2047, 26, 612, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2048, 26, 613, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2049, 26, 614, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2050, 26, 615, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2051, 26, 616, 1, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2052, 26, 617, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2053, 26, 618, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2054, 26, 619, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2055, 26, 620, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2056, 26, 621, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2057, 26, 622, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2058, 26, 623, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2059, 27, 610, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2060, 27, 611, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2061, 27, 612, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2062, 27, 613, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2063, 27, 614, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2064, 27, 615, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2065, 27, 616, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2066, 27, 617, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2067, 27, 618, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2068, 27, 619, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2069, 27, 620, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2070, 27, 621, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2071, 27, 622, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2072, 27, 623, 1, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2073, 28, 610, 1, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2074, 28, 611, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2075, 28, 612, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2076, 28, 613, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2077, 28, 614, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2078, 28, 615, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2079, 28, 616, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2080, 28, 617, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2081, 28, 618, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2082, 28, 619, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2083, 28, 620, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2084, 28, 621, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2085, 28, 622, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2086, 28, 623, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2087, 29, 610, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2088, 29, 611, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2089, 29, 612, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2090, 29, 613, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2091, 29, 614, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2092, 29, 615, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2093, 29, 616, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2094, 29, 617, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2095, 29, 618, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2096, 29, 619, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2097, 29, 620, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2098, 29, 621, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2099, 29, 622, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');
INSERT INTO `sys_attendance` VALUES (2100, 29, 623, 0, '2023-04-18 00:55:15.111000', '2023-04-18 00:55:15.111000');

-- ----------------------------
-- Table structure for sys_building_floor
-- ----------------------------
DROP TABLE IF EXISTS `sys_building_floor`;
CREATE TABLE `sys_building_floor`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `building` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '楼号',
  `floor` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '楼层',
  `create_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = big5 COLLATE = big5_chinese_ci COMMENT = '楼层信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_building_floor
-- ----------------------------
INSERT INTO `sys_building_floor` VALUES (1, '主楼', '一楼', '2023-04-17 19:28:40.380890', '2023-04-17 19:28:40.380890');
INSERT INTO `sys_building_floor` VALUES (2, '主楼', '二楼', '2023-03-04 13:07:12.000000', '2023-03-04 13:08:03.000000');
INSERT INTO `sys_building_floor` VALUES (3, '主楼', '三楼', '2023-03-04 13:07:12.000000', '2023-03-04 13:08:03.000000');
INSERT INTO `sys_building_floor` VALUES (4, '主楼', '四楼', '2023-04-17 19:29:29.828814', '2023-04-17 19:29:29.828814');
INSERT INTO `sys_building_floor` VALUES (5, '主楼', '五楼', '2023-04-17 19:29:29.982756', '2023-04-17 19:29:29.982756');
INSERT INTO `sys_building_floor` VALUES (6, '三号楼', '一楼', '2023-04-17 19:29:30.136689', '2023-04-17 19:29:30.136689');
INSERT INTO `sys_building_floor` VALUES (7, '三号楼', '二楼', '2023-04-17 19:29:45.212309', '2023-04-17 19:29:45.212309');
INSERT INTO `sys_building_floor` VALUES (8, '三号楼', '三楼', '2023-04-17 19:29:45.365259', '2023-04-17 19:29:45.365259');
INSERT INTO `sys_building_floor` VALUES (10, '四号楼', '一楼', '2023-04-17 19:29:54.698256', '2023-04-17 19:29:54.698256');
INSERT INTO `sys_building_floor` VALUES (11, '四号楼', '二楼', '2023-04-17 19:30:02.982706', '2023-04-17 19:30:02.982706');
INSERT INTO `sys_building_floor` VALUES (12, '四号楼', '三楼', '2023-04-17 19:30:11.762113', '2023-04-17 19:30:11.762113');
INSERT INTO `sys_building_floor` VALUES (13, '五号楼', '一楼', '2023-04-17 19:30:24.645943', '2023-04-17 19:30:24.645943');
INSERT INTO `sys_building_floor` VALUES (14, '五号楼', '二楼', '2023-04-17 19:30:43.248482', '2023-04-17 19:30:43.248482');
INSERT INTO `sys_building_floor` VALUES (15, '五号楼', '三楼', '2023-04-17 19:30:43.404299', '2023-04-17 19:30:43.404299');
INSERT INTO `sys_building_floor` VALUES (16, '六号楼', '一楼', '2023-04-17 19:30:46.739178', '2023-04-17 19:30:46.739178');
INSERT INTO `sys_building_floor` VALUES (17, '五号楼', '二楼', '2023-04-17 19:30:46.894115', '2023-04-17 19:30:46.894115');
INSERT INTO `sys_building_floor` VALUES (18, '五号楼', '三楼', '2023-04-17 19:30:47.055979', '2023-04-17 19:30:47.055979');

-- ----------------------------
-- Table structure for sys_checkpicture
-- ----------------------------
DROP TABLE IF EXISTS `sys_checkpicture`;
CREATE TABLE `sys_checkpicture`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pictureId` int NULL DEFAULT NULL COMMENT '图片编号',
  `intflag` int NULL DEFAULT NULL COMMENT '状态标记',
  `knowledgeid` int NULL DEFAULT NULL COMMENT '知识点编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 393 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '检测图片表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_checkpicture
-- ----------------------------
INSERT INTO `sys_checkpicture` VALUES (51, 749, 1, 34);
INSERT INTO `sys_checkpicture` VALUES (52, 750, 1, 34);
INSERT INTO `sys_checkpicture` VALUES (53, 751, 1, 34);
INSERT INTO `sys_checkpicture` VALUES (54, 752, 1, 37);
INSERT INTO `sys_checkpicture` VALUES (55, 753, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (56, 754, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (57, 755, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (58, 756, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (59, 757, 1, 34);
INSERT INTO `sys_checkpicture` VALUES (60, 758, 1, 31);
INSERT INTO `sys_checkpicture` VALUES (61, 759, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (62, 760, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (63, 761, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (64, 762, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (65, 763, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (66, 764, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (67, 765, 1, 32);
INSERT INTO `sys_checkpicture` VALUES (68, 766, 1, 31);
INSERT INTO `sys_checkpicture` VALUES (69, 767, 1, 31);
INSERT INTO `sys_checkpicture` VALUES (70, 768, 1, 31);
INSERT INTO `sys_checkpicture` VALUES (71, 769, 1, 31);
INSERT INTO `sys_checkpicture` VALUES (72, 770, 1, 31);
INSERT INTO `sys_checkpicture` VALUES (73, 771, 1, 34);
INSERT INTO `sys_checkpicture` VALUES (74, 772, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (75, 773, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (76, 774, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (77, 775, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (78, 776, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (79, 777, 1, 777);
INSERT INTO `sys_checkpicture` VALUES (80, 778, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (81, 779, 1, 35);
INSERT INTO `sys_checkpicture` VALUES (82, 780, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (83, 781, 1, 36);
INSERT INTO `sys_checkpicture` VALUES (84, 782, 1, 36);
INSERT INTO `sys_checkpicture` VALUES (85, 783, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (86, 784, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (87, 785, 1, 37);
INSERT INTO `sys_checkpicture` VALUES (88, 786, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (89, 787, 1, 31);
INSERT INTO `sys_checkpicture` VALUES (90, 788, 1, 38);
INSERT INTO `sys_checkpicture` VALUES (91, 789, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (92, 790, 1, 39);
INSERT INTO `sys_checkpicture` VALUES (93, 791, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (94, 792, 1, 39);
INSERT INTO `sys_checkpicture` VALUES (95, 793, 1, 40);
INSERT INTO `sys_checkpicture` VALUES (96, 794, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (97, 795, 1, 31);
INSERT INTO `sys_checkpicture` VALUES (98, 796, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (99, 797, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (100, 798, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (332, 799, 1, 31);
INSERT INTO `sys_checkpicture` VALUES (333, 800, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (334, 801, 1, 36);
INSERT INTO `sys_checkpicture` VALUES (335, 802, 1, NULL);
INSERT INTO `sys_checkpicture` VALUES (336, 803, 1, 31);
INSERT INTO `sys_checkpicture` VALUES (393, 777, 0, 777);

-- ----------------------------
-- Table structure for sys_class_score
-- ----------------------------
DROP TABLE IF EXISTS `sys_class_score`;
CREATE TABLE `sys_class_score`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '用户编号',
  `lesson_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '课时编号',
  `score` double(8, 3) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '课程评分',
  `create_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2955 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '学生上课评分汇总' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_class_score
-- ----------------------------
INSERT INTO `sys_class_score` VALUES (2463, 1, 582, 0083.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2464, 1, 583, 0078.000, '2023-04-23 12:58:17.185905', '2023-04-23 00:00:00.000000');
INSERT INTO `sys_class_score` VALUES (2465, 1, 584, 0091.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2466, 1, 585, 0063.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2467, 1, 586, 0097.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2468, 1, 587, 0059.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2469, 1, 588, 0052.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2470, 1, 589, 0060.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2471, 1, 590, 0086.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2472, 1, 591, 0096.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2473, 1, 592, 0081.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2474, 1, 593, 0061.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2475, 1, 594, 0089.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2476, 1, 595, 0096.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2477, 2, 582, 0056.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2478, 2, 583, 0098.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2479, 2, 584, 0061.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2480, 2, 585, 0088.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2481, 2, 586, 0091.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2482, 2, 587, 0092.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2483, 2, 588, 0057.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2484, 2, 589, 0054.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2485, 2, 590, 0058.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2486, 2, 591, 0060.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2487, 2, 592, 0077.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2488, 2, 593, 0084.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2489, 2, 594, 0065.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2490, 2, 595, 0097.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2491, 3, 582, 0069.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2492, 3, 583, 0066.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2493, 3, 584, 0065.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2494, 3, 585, 0088.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2495, 3, 586, 0081.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2496, 3, 587, 0092.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2497, 3, 588, 0080.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2498, 3, 589, 0053.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2499, 3, 590, 0098.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2500, 3, 591, 0063.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2501, 3, 592, 0073.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2502, 3, 593, 0085.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2503, 3, 594, 0078.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2504, 3, 595, 0070.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2505, 4, 582, 0096.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2506, 4, 583, 0059.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2507, 4, 584, 0071.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2508, 4, 585, 0099.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2509, 4, 586, 0076.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2510, 4, 587, 0089.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2511, 4, 588, 0084.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2512, 4, 589, 0075.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2513, 4, 590, 0065.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2514, 4, 591, 0052.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2515, 4, 592, 0051.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2516, 4, 593, 0099.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2517, 4, 594, 0076.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2518, 4, 595, 0060.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2519, 5, 582, 0073.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2520, 5, 583, 0083.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2521, 5, 584, 0096.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2522, 5, 585, 0099.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2523, 5, 586, 0057.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2524, 5, 587, 0053.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2525, 5, 588, 0082.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2526, 5, 589, 0052.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2527, 5, 590, 0055.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2528, 5, 591, 0071.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2529, 5, 592, 0082.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2530, 5, 593, 0054.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2531, 5, 594, 0064.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2532, 5, 595, 0074.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2533, 6, 582, 0099.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2534, 6, 583, 0071.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2535, 6, 584, 0063.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2536, 6, 585, 0078.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2537, 6, 586, 0053.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2538, 6, 587, 0086.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2539, 6, 588, 0053.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2540, 6, 589, 0096.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2541, 6, 590, 0085.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2542, 6, 591, 0097.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2543, 6, 592, 0070.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2544, 6, 593, 0093.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2545, 6, 594, 0062.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2546, 6, 595, 0079.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2547, 7, 582, 0094.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2548, 7, 583, 0080.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2549, 7, 584, 0072.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2550, 7, 585, 0072.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2551, 7, 586, 0094.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2552, 7, 587, 0091.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2553, 7, 588, 0071.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2554, 7, 589, 0097.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2555, 7, 590, 0061.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2556, 7, 591, 0057.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2557, 7, 592, 0086.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2558, 7, 593, 0064.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2559, 7, 594, 0066.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2560, 7, 595, 0073.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2561, 8, 582, 0071.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2562, 8, 583, 0088.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2563, 8, 584, 0074.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2564, 8, 585, 0078.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2565, 8, 586, 0097.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2566, 8, 587, 0079.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2567, 8, 588, 0050.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2568, 8, 589, 0071.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2569, 8, 590, 0083.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2570, 8, 591, 0060.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2571, 8, 592, 0082.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2572, 8, 593, 0052.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2573, 8, 594, 0060.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2574, 8, 595, 0058.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2575, 9, 582, 0050.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2576, 9, 583, 0056.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2577, 9, 584, 0060.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2578, 9, 585, 0077.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2579, 9, 586, 0050.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2580, 9, 587, 0068.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2581, 9, 588, 0064.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2582, 9, 589, 0075.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2583, 9, 590, 0062.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2584, 9, 591, 0079.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2585, 9, 592, 0050.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2586, 9, 593, 0062.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2587, 9, 594, 0094.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2588, 9, 595, 0073.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2589, 10, 582, 0070.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2590, 10, 583, 0095.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2591, 10, 584, 0054.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2592, 10, 585, 0052.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2593, 10, 586, 0090.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2594, 10, 587, 0055.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2595, 10, 588, 0051.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2596, 10, 589, 0082.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2597, 10, 590, 0080.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2598, 10, 591, 0066.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2599, 10, 592, 0096.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2600, 10, 593, 0085.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2601, 10, 594, 0063.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2602, 10, 595, 0079.000, '2023-04-23 12:41:51.774000', '2023-04-23 12:41:51.774000');
INSERT INTO `sys_class_score` VALUES (2603, 11, 596, 0067.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2604, 11, 597, 0063.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2605, 11, 598, 0097.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2606, 11, 599, 0094.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2607, 11, 600, 0076.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2608, 11, 601, 0094.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2609, 11, 602, 0067.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2610, 11, 603, 0092.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2611, 11, 604, 0053.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2612, 11, 605, 0061.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2613, 11, 606, 0068.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2614, 11, 607, 0055.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2615, 11, 608, 0056.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2616, 11, 609, 0061.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2617, 12, 596, 0063.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2618, 12, 597, 0090.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2619, 12, 598, 0065.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2620, 12, 599, 0069.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2621, 12, 600, 0085.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2622, 12, 601, 0076.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2623, 12, 602, 0051.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2624, 12, 603, 0055.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2625, 12, 604, 0071.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2626, 12, 605, 0055.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2627, 12, 606, 0073.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2628, 12, 607, 0070.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2629, 12, 608, 0073.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2630, 12, 609, 0054.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2631, 13, 596, 0093.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2632, 13, 597, 0077.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2633, 13, 598, 0099.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2634, 13, 599, 0053.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2635, 13, 600, 0096.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2636, 13, 601, 0070.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2637, 13, 602, 0083.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2638, 13, 603, 0052.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2639, 13, 604, 0085.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2640, 13, 605, 0098.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2641, 13, 606, 0093.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2642, 13, 607, 0066.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2643, 13, 608, 0091.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2644, 13, 609, 0066.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2645, 14, 596, 0090.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2646, 14, 597, 0092.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2647, 14, 598, 0097.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2648, 14, 599, 0091.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2649, 14, 600, 0059.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2650, 14, 601, 0083.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2651, 14, 602, 0072.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2652, 14, 603, 0055.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2653, 14, 604, 0076.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2654, 14, 605, 0080.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2655, 14, 606, 0092.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2656, 14, 607, 0095.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2657, 14, 608, 0088.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2658, 14, 609, 0061.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2659, 15, 596, 0098.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2660, 15, 597, 0080.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2661, 15, 598, 0055.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2662, 15, 599, 0077.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2663, 15, 600, 0064.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2664, 15, 601, 0088.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2665, 15, 602, 0092.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2666, 15, 603, 0053.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2667, 15, 604, 0068.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2668, 15, 605, 0095.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2669, 15, 606, 0058.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2670, 15, 607, 0079.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2671, 15, 608, 0080.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2672, 15, 609, 0050.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2673, 16, 596, 0089.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2674, 16, 597, 0074.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2675, 16, 598, 0064.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2676, 16, 599, 0055.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2677, 16, 600, 0067.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2678, 16, 601, 0056.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2679, 16, 602, 0073.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2680, 16, 603, 0062.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2681, 16, 604, 0059.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2682, 16, 605, 0054.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2683, 16, 606, 0051.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2684, 16, 607, 0090.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2685, 16, 608, 0070.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2686, 16, 609, 0061.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2687, 17, 596, 0097.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2688, 17, 597, 0070.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2689, 17, 598, 0093.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2690, 17, 599, 0066.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2691, 17, 600, 0084.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2692, 17, 601, 0058.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2693, 17, 602, 0058.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2694, 17, 603, 0079.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2695, 17, 604, 0071.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2696, 17, 605, 0081.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2697, 17, 606, 0097.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2698, 17, 607, 0084.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2699, 17, 608, 0068.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2700, 17, 609, 0068.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2701, 18, 596, 0081.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2702, 18, 597, 0065.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2703, 18, 598, 0052.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2704, 18, 599, 0054.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2705, 18, 600, 0092.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2706, 18, 601, 0072.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2707, 18, 602, 0078.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2708, 18, 603, 0073.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2709, 18, 604, 0053.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2710, 18, 605, 0078.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2711, 18, 606, 0077.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2712, 18, 607, 0050.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2713, 18, 608, 0054.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2714, 18, 609, 0083.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2715, 19, 596, 0064.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2716, 19, 597, 0067.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2717, 19, 598, 0050.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2718, 19, 599, 0070.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2719, 19, 600, 0062.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2720, 19, 601, 0085.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2721, 19, 602, 0054.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2722, 19, 603, 0094.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2723, 19, 604, 0057.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2724, 19, 605, 0090.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2725, 19, 606, 0059.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2726, 19, 607, 0054.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2727, 19, 608, 0097.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2728, 19, 609, 0098.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2729, 20, 596, 0067.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2730, 20, 597, 0083.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2731, 20, 598, 0083.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2732, 20, 599, 0064.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2733, 20, 600, 0097.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2734, 20, 601, 0076.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2735, 20, 602, 0061.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2736, 20, 603, 0097.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2737, 20, 604, 0071.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2738, 20, 605, 0085.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2739, 20, 606, 0059.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2740, 20, 607, 0090.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2741, 20, 608, 0084.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2742, 20, 609, 0071.000, '2023-04-23 12:46:56.423000', '2023-04-23 12:46:56.423000');
INSERT INTO `sys_class_score` VALUES (2743, 21, 610, 0092.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2744, 21, 611, 0090.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2745, 21, 612, 0091.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2746, 21, 613, 0051.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2747, 21, 614, 0081.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2748, 21, 615, 0085.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2749, 21, 616, 0068.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2750, 21, 617, 0098.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2751, 21, 618, 0070.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2752, 21, 619, 0072.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2753, 21, 620, 0053.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2754, 21, 621, 0097.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2755, 21, 622, 0089.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2756, 21, 623, 0081.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2757, 22, 610, 0065.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2758, 22, 611, 0050.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2759, 22, 612, 0098.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2760, 22, 613, 0083.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2761, 22, 614, 0055.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2762, 22, 615, 0090.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2763, 22, 616, 0063.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2764, 22, 617, 0084.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2765, 22, 618, 0099.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2766, 22, 619, 0096.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2767, 22, 620, 0095.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2768, 22, 621, 0064.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2769, 22, 622, 0091.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2770, 22, 623, 0050.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2771, 23, 610, 0068.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2772, 23, 611, 0069.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2773, 23, 612, 0077.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2774, 23, 613, 0091.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2775, 23, 614, 0068.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2776, 23, 615, 0057.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2777, 23, 616, 0058.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2778, 23, 617, 0084.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2779, 23, 618, 0065.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2780, 23, 619, 0094.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2781, 23, 620, 0094.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2782, 23, 621, 0050.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2783, 23, 622, 0086.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2784, 23, 623, 0055.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2785, 24, 610, 0078.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2786, 24, 611, 0097.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2787, 24, 612, 0085.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2788, 24, 613, 0053.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2789, 24, 614, 0051.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2790, 24, 615, 0073.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2791, 24, 616, 0091.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2792, 24, 617, 0071.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2793, 24, 618, 0077.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2794, 24, 619, 0085.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2795, 24, 620, 0081.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2796, 24, 621, 0089.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2797, 24, 622, 0060.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2798, 24, 623, 0062.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2799, 25, 610, 0061.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2800, 25, 611, 0070.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2801, 25, 612, 0090.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2802, 25, 613, 0063.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2803, 25, 614, 0055.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2804, 25, 615, 0083.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2805, 25, 616, 0089.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2806, 25, 617, 0074.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2807, 25, 618, 0064.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2808, 25, 619, 0067.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2809, 25, 620, 0096.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2810, 25, 621, 0088.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2811, 25, 622, 0058.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2812, 25, 623, 0084.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2813, 26, 610, 0089.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2814, 26, 611, 0083.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2815, 26, 612, 0075.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2816, 26, 613, 0081.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2817, 26, 614, 0059.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2818, 26, 615, 0069.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2819, 26, 616, 0094.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2820, 26, 617, 0060.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2821, 26, 618, 0078.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2822, 26, 619, 0058.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2823, 26, 620, 0086.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2824, 26, 621, 0066.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2825, 26, 622, 0078.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2826, 26, 623, 0052.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2827, 27, 610, 0070.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2828, 27, 611, 0051.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2829, 27, 612, 0056.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2830, 27, 613, 0074.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2831, 27, 614, 0092.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2832, 27, 615, 0050.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2833, 27, 616, 0052.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2834, 27, 617, 0070.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2835, 27, 618, 0093.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2836, 27, 619, 0052.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2837, 27, 620, 0053.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2838, 27, 621, 0099.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2839, 27, 622, 0096.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2840, 27, 623, 0063.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2841, 28, 610, 0055.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2842, 28, 611, 0093.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2843, 28, 612, 0090.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2844, 28, 613, 0097.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2845, 28, 614, 0078.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2846, 28, 615, 0072.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2847, 28, 616, 0063.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2848, 28, 617, 0058.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2849, 28, 618, 0055.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2850, 28, 619, 0070.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2851, 28, 620, 0094.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2852, 28, 621, 0092.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2853, 28, 622, 0056.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2854, 28, 623, 0065.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2855, 29, 610, 0099.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2856, 29, 611, 0068.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2857, 29, 612, 0080.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2858, 29, 613, 0056.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2859, 29, 614, 0095.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2860, 29, 615, 0052.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2861, 29, 616, 0093.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2862, 29, 617, 0081.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2863, 29, 618, 0094.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2864, 29, 619, 0086.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2865, 29, 620, 0084.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2866, 29, 621, 0095.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2867, 29, 622, 0090.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2868, 29, 623, 0070.000, '2023-04-23 12:55:26.238000', '2023-04-23 12:55:26.238000');
INSERT INTO `sys_class_score` VALUES (2953, 32, 583, 0077.400, '2023-04-23 14:02:50.000000', '2023-04-23 14:02:50.000000');
INSERT INTO `sys_class_score` VALUES (2954, 32, 597, 0076.100, '2023-04-23 14:02:50.000000', '2023-04-23 14:02:50.000000');
INSERT INTO `sys_class_score` VALUES (2955, 32, 611, 0074.556, '2023-04-23 14:02:50.000000', '2023-04-23 14:02:50.000000');

-- ----------------------------
-- Table structure for sys_classes
-- ----------------------------
DROP TABLE IF EXISTS `sys_classes`;
CREATE TABLE `sys_classes`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `academy_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '学院编号',
  `dept_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '专业编号',
  `number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '班级编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = big5 COLLATE = big5_chinese_ci COMMENT = '班级信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_classes
-- ----------------------------
INSERT INTO `sys_classes` VALUES (1, 1, 103, '1801');
INSERT INTO `sys_classes` VALUES (2, 1, 104, '1802');
INSERT INTO `sys_classes` VALUES (3, 1, 105, '1803');
INSERT INTO `sys_classes` VALUES (4, 1, 106, '1804');
INSERT INTO `sys_classes` VALUES (5, 1, 107, '1805');
INSERT INTO `sys_classes` VALUES (6, 1, 105, '1806');
INSERT INTO `sys_classes` VALUES (7, 1, 106, '1807');
INSERT INTO `sys_classes` VALUES (8, 1, 103, '1808');
INSERT INTO `sys_classes` VALUES (9, 1, 104, '1809');
INSERT INTO `sys_classes` VALUES (10, 2, 108, '1801');
INSERT INTO `sys_classes` VALUES (11, 2, 109, '1802');
INSERT INTO `sys_classes` VALUES (12, 2, 108, '1803');
INSERT INTO `sys_classes` VALUES (13, 1, 104, '1810');
INSERT INTO `sys_classes` VALUES (14, 1, 105, '1811');

-- ----------------------------
-- Table structure for sys_classroom
-- ----------------------------
DROP TABLE IF EXISTS `sys_classroom`;
CREATE TABLE `sys_classroom`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '教室id',
  `building_floor_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '楼层号id',
  `number` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '楼层号',
  `equipment_id` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '设备id',
  `create_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '教室' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_classroom
-- ----------------------------
INSERT INTO `sys_classroom` VALUES (1, 1, 'A101', '1', '2023-04-17 19:34:12.648432', '2023-04-17 19:34:12.648432');
INSERT INTO `sys_classroom` VALUES (2, 1, 'A102', '2', '2023-04-17 19:34:22.367133', '2023-04-17 19:34:22.367133');
INSERT INTO `sys_classroom` VALUES (3, 1, 'A103', '3', '2023-04-17 19:34:22.521514', '2023-04-17 19:34:22.521514');
INSERT INTO `sys_classroom` VALUES (4, 1, 'A104', '4', '2023-04-17 19:34:22.734034', '2023-04-17 19:34:22.734034');
INSERT INTO `sys_classroom` VALUES (5, 1, 'A105', '5', '2023-04-17 19:34:22.894926', '2023-04-17 19:34:22.894926');
INSERT INTO `sys_classroom` VALUES (6, 1, 'A106', '6', '2023-04-17 19:34:23.047838', '2023-04-17 19:34:23.047838');
INSERT INTO `sys_classroom` VALUES (7, 1, 'B101', '7', '2023-04-17 19:34:23.201733', '2023-04-17 19:34:23.201733');
INSERT INTO `sys_classroom` VALUES (8, 1, 'B102', '8', '2023-04-17 19:34:23.354982', '2023-04-17 19:34:23.354982');
INSERT INTO `sys_classroom` VALUES (9, 1, 'B103', '9', '2023-04-17 19:34:23.509578', '2023-04-17 19:34:23.509578');
INSERT INTO `sys_classroom` VALUES (10, 1, 'B104', '10', '2023-04-17 19:34:23.662553', '2023-04-17 19:34:23.662553');
INSERT INTO `sys_classroom` VALUES (11, 1, 'B105', '11', '2023-04-17 19:34:23.815493', '2023-04-17 19:34:23.815493');
INSERT INTO `sys_classroom` VALUES (12, 1, 'B106', '12', '2023-04-17 19:34:23.980359', '2023-04-17 19:34:23.980359');
INSERT INTO `sys_classroom` VALUES (13, 2, 'A201', '13', '2023-04-17 19:35:15.695950', '2023-04-17 19:35:15.695950');
INSERT INTO `sys_classroom` VALUES (14, 2, 'A202', '14', '2023-04-17 19:35:25.821420', '2023-04-17 19:35:25.821420');
INSERT INTO `sys_classroom` VALUES (15, 2, 'A203', '15', '2023-04-17 19:35:29.271761', '2023-04-17 19:35:29.271761');
INSERT INTO `sys_classroom` VALUES (16, 2, 'A204', '16', '2023-04-17 19:35:33.273392', '2023-04-17 19:35:33.273392');
INSERT INTO `sys_classroom` VALUES (17, 2, 'A205', '17', '2023-04-17 19:35:36.122565', '2023-04-17 19:35:36.122565');
INSERT INTO `sys_classroom` VALUES (18, 2, 'A206', '18', '2023-04-17 19:35:38.556055', '2023-04-17 19:35:38.556055');
INSERT INTO `sys_classroom` VALUES (19, 2, 'B201', '19', '2023-04-17 19:35:53.842154', '2023-04-17 19:35:53.842154');

-- ----------------------------
-- Table structure for sys_classroom_state
-- ----------------------------
DROP TABLE IF EXISTS `sys_classroom_state`;
CREATE TABLE `sys_classroom_state`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `classroom_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '教室编号',
  `lesson_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '课时编号',
  `state` int NULL DEFAULT NULL COMMENT '教室状态',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 268 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '教室占用情况' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_classroom_state
-- ----------------------------
INSERT INTO `sys_classroom_state` VALUES (255, 1, 678, 1, '2023-04-17 22:24:43.000000', '2023-04-22 10:25:08.000000');
INSERT INTO `sys_classroom_state` VALUES (256, 2, 679, 1, '2023-04-17 22:24:43.000000', '2023-04-21 22:37:17.000000');
INSERT INTO `sys_classroom_state` VALUES (257, 3, 680, 1, '2023-04-17 22:24:43.000000', '2023-04-22 21:09:06.000000');
INSERT INTO `sys_classroom_state` VALUES (258, 4, 0, 0, '2023-04-17 22:24:43.000000', '2023-04-21 20:36:55.000000');
INSERT INTO `sys_classroom_state` VALUES (259, 5, NULL, 0, '2023-04-17 22:24:43.000000', '2023-04-17 22:24:43.000000');
INSERT INTO `sys_classroom_state` VALUES (260, 6, NULL, 0, '2023-04-17 22:24:43.000000', '2023-04-17 22:24:43.000000');
INSERT INTO `sys_classroom_state` VALUES (261, 7, NULL, 0, '2023-04-17 22:24:43.000000', '2023-04-17 22:24:43.000000');
INSERT INTO `sys_classroom_state` VALUES (262, 8, NULL, 0, '2023-04-17 22:24:43.000000', '2023-04-17 22:24:43.000000');
INSERT INTO `sys_classroom_state` VALUES (263, 9, NULL, 0, '2023-04-17 22:24:43.000000', '2023-04-17 22:24:43.000000');
INSERT INTO `sys_classroom_state` VALUES (264, 10, NULL, 0, '2023-04-17 22:24:43.000000', '2023-04-17 22:24:43.000000');
INSERT INTO `sys_classroom_state` VALUES (265, 11, NULL, 0, '2023-04-17 22:24:43.000000', '2023-04-17 22:24:43.000000');
INSERT INTO `sys_classroom_state` VALUES (266, 12, NULL, 0, '2023-04-17 22:24:43.000000', '2023-04-17 22:24:43.000000');
INSERT INTO `sys_classroom_state` VALUES (267, 13, NULL, 0, '2023-04-17 22:24:43.000000', '2023-04-17 22:24:43.000000');
INSERT INTO `sys_classroom_state` VALUES (268, 14, NULL, 0, '2023-04-17 22:24:43.000000', '2023-04-17 22:24:43.000000');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-03-16 11:33:00', 'admin', '2023-03-16 19:51:46', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (113, '开通注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2023-03-27 21:40:51', '', NULL, '开通注册功能');

-- ----------------------------
-- Table structure for sys_course
-- ----------------------------
DROP TABLE IF EXISTS `sys_course`;
CREATE TABLE `sys_course`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `number` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程号',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `lesson_sum` int NULL DEFAULT NULL COMMENT '课时(第几课时)',
  `year` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '开课学年',
  `term` int UNSIGNED NULL DEFAULT NULL COMMENT '开课学期',
  `dept_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '开课专业',
  `classes_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '开课班级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '课程信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_course
-- ----------------------------
INSERT INTO `sys_course` VALUES (1, '20086401', 'C语言', 64, '2023-2024学年', 0, 103, '1');
INSERT INTO `sys_course` VALUES (2, '20086402', '人文教育', 64, '2023-2024学年', 0, 109, '1');
INSERT INTO `sys_course` VALUES (3, '20086781', '数据结构', 64, '2023-2024学年', 0, 106, '1');
INSERT INTO `sys_course` VALUES (4, '20086404', '高等数学B1', 64, '2023-2024学年', 0, 107, '1');
INSERT INTO `sys_course` VALUES (5, '20086405', '算法设计', 64, '2023-2024学年', 0, 105, '1');
INSERT INTO `sys_course` VALUES (6, '20086406', 'JAVA初级程序设计', 64, '2023-2024学年', 0, 103, '1');
INSERT INTO `sys_course` VALUES (7, '20086411', '计算机网络', 64, '2023-2024学年', 0, 107, '1');
INSERT INTO `sys_course` VALUES (8, '20086407', '操作系统', 64, '2023-2024学年', 1, 103, '1');
INSERT INTO `sys_course` VALUES (9, '20086408', '离散数学', 64, '2023-2024学年', 1, 107, '1');
INSERT INTO `sys_course` VALUES (10, '20086409', '马克思主义思想', 64, '2023-2024学年', 1, 108, '1');
INSERT INTO `sys_course` VALUES (11, '20086410', '大学英语', 64, '2023-2019学年', 1, 103, '1');
INSERT INTO `sys_course` VALUES (12, '20086510', '计算机导论', 64, '2023-2019学年', 1, 103, '1');
INSERT INTO `sys_course` VALUES (13, '20086511', '数学建模', 64, '2023-2019学年', 1, 103, '1');
INSERT INTO `sys_course` VALUES (14, '20086512', 'UML统一建模语言', 64, '2023-2019学年', 1, 103, '1');
INSERT INTO `sys_course` VALUES (15, '20087401', 'C语言', 64, '2023-2019学年', 0, 103, '2');
INSERT INTO `sys_course` VALUES (16, '2008402', '人文教育', 64, '2023-2019学年', 0, 103, '2');
INSERT INTO `sys_course` VALUES (17, '20086781', '数据结构', 64, '2023-2019学年', 0, 103, '2');
INSERT INTO `sys_course` VALUES (18, '20086404', '高等数学B1', 64, '2023-2019学年', 0, 103, '2');
INSERT INTO `sys_course` VALUES (19, '20086405', '算法设计', 64, '2023-2019学年', 0, 103, '2');
INSERT INTO `sys_course` VALUES (20, '20086406', 'JAVA初级程序设计', 64, '2023-2019学年', 0, 103, '2');
INSERT INTO `sys_course` VALUES (21, '20086411', '计算机网络', 64, '2023-2019学年', 0, 103, '2');
INSERT INTO `sys_course` VALUES (22, '20086407', '操作系统', 64, '2023-2019学年', 1, 103, '2');
INSERT INTO `sys_course` VALUES (23, '20086408', '离散数学', 64, '2023-2019学年', 1, 103, '2');
INSERT INTO `sys_course` VALUES (24, '20086409', '马克思主义思想', 64, '2023-2019学年', 1, 103, '2');
INSERT INTO `sys_course` VALUES (25, '20086410', '大学英语', 64, '2023-2019学年', 1, 103, '2');
INSERT INTO `sys_course` VALUES (26, '20086510', '计算机导论', 64, '2023-2019学年', 1, 103, '2');
INSERT INTO `sys_course` VALUES (27, '20086511', '数学建模', 64, '2023-2019学年', 1, 103, '2');
INSERT INTO `sys_course` VALUES (28, '20086512', 'UML统一建模语言', 64, '2023-2019学年', 1, 103, '2');
INSERT INTO `sys_course` VALUES (29, '20087401', 'C语言', 64, '2023-2019学年', 0, 103, '3');
INSERT INTO `sys_course` VALUES (30, '2008402', '人文教育', 64, '2023-2019学年', 0, 103, '3');
INSERT INTO `sys_course` VALUES (31, '20086781', '数据结构', 64, '2023-2019学年', 0, 103, '3');
INSERT INTO `sys_course` VALUES (32, '20086404', '高等数学B1', 64, '2023-2019学年', 0, 103, '3');
INSERT INTO `sys_course` VALUES (33, '20086405', '算法设计', 64, '2023-2019学年', 0, 103, '3');
INSERT INTO `sys_course` VALUES (34, '20086406', 'JAVA初级程序设计', 64, '2023-2019学年', 0, 103, '3');
INSERT INTO `sys_course` VALUES (35, '20086411', '计算机网络', 64, '2023-2019学年', 0, 103, '3');
INSERT INTO `sys_course` VALUES (36, '20086407', '操作系统', 64, '2023-2019学年', 1, 103, '3');
INSERT INTO `sys_course` VALUES (37, '20086408', '离散数学', 64, '2023-2019学年', 1, 103, '3');
INSERT INTO `sys_course` VALUES (38, '20086409', '马克思主义思想', 64, '2023-2019学年', 1, 103, '3');
INSERT INTO `sys_course` VALUES (39, '20086410', '大学英语', 64, '2023-2019学年', 1, 103, '3');
INSERT INTO `sys_course` VALUES (40, '20086510', '计算机导论', 64, '2023-2019学年', 1, 103, '3');
INSERT INTO `sys_course` VALUES (41, '20086511', '数学建模', 64, '2023-2019学年', 1, 103, '3');
INSERT INTO `sys_course` VALUES (42, '20086512', 'UML统一建模语言', 64, '2023-2019学年', 1, 103, '3');

-- ----------------------------
-- Table structure for sys_course_stu
-- ----------------------------
DROP TABLE IF EXISTS `sys_course_stu`;
CREATE TABLE `sys_course_stu`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '用户编号',
  `course_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '课程编号',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 661 CHARACTER SET = big5 COLLATE = big5_chinese_ci COMMENT = '学生课程信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_course_stu
-- ----------------------------
INSERT INTO `sys_course_stu` VALUES (256, 1, 1, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (257, 1, 2, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (258, 1, 3, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (259, 1, 4, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (260, 1, 5, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (261, 1, 6, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (262, 1, 7, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (263, 1, 8, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (264, 1, 9, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (265, 1, 10, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (266, 1, 11, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (267, 1, 12, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (268, 1, 13, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (269, 1, 14, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (270, 2, 1, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (271, 2, 2, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (272, 2, 3, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (273, 2, 4, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (274, 2, 5, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (275, 2, 6, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (276, 2, 7, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (277, 2, 8, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (278, 2, 9, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (279, 2, 10, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (280, 2, 11, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (281, 2, 12, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (282, 2, 13, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (283, 2, 14, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (284, 3, 1, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (285, 3, 2, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (286, 3, 3, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (287, 3, 4, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (288, 3, 5, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (289, 3, 6, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (290, 3, 7, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (291, 3, 8, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (292, 3, 9, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (293, 3, 10, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (294, 3, 11, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (295, 3, 12, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (296, 3, 13, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (297, 3, 14, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (298, 4, 1, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (299, 4, 2, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (300, 4, 3, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (301, 4, 4, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (302, 4, 5, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (303, 4, 6, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (304, 4, 7, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (305, 4, 8, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (306, 4, 9, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (307, 4, 10, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (308, 4, 11, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (309, 4, 12, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (310, 4, 13, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (311, 4, 14, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (312, 5, 1, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (313, 5, 2, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (314, 5, 3, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (315, 5, 4, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (316, 5, 5, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (317, 5, 6, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (318, 5, 7, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (319, 5, 8, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (320, 5, 9, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (321, 5, 10, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (322, 5, 11, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (323, 5, 12, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (324, 5, 13, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (325, 5, 14, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (326, 6, 1, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (327, 6, 2, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (328, 6, 3, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (329, 6, 4, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (330, 6, 5, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (331, 6, 6, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (332, 6, 7, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (333, 6, 8, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (334, 6, 9, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (335, 6, 10, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (336, 6, 11, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (337, 6, 12, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (338, 6, 13, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (339, 6, 14, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (340, 7, 1, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (341, 7, 2, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (342, 7, 3, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (343, 7, 4, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (344, 7, 5, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (345, 7, 6, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (346, 7, 7, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (347, 7, 8, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (348, 7, 9, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (349, 7, 10, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (350, 7, 11, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (351, 7, 12, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (352, 7, 13, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (353, 7, 14, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (354, 8, 1, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (355, 8, 2, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (356, 8, 3, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (357, 8, 4, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (358, 8, 5, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (359, 8, 6, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (360, 8, 7, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (361, 8, 8, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (362, 8, 9, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (363, 8, 10, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (364, 8, 11, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (365, 8, 12, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (366, 8, 13, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (367, 8, 14, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (368, 9, 1, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (369, 9, 2, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (370, 9, 3, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (371, 9, 4, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (372, 9, 5, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (373, 9, 6, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (374, 9, 7, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (375, 9, 8, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (376, 9, 9, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (377, 9, 10, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (378, 9, 11, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (379, 9, 12, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (380, 9, 13, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (381, 9, 14, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (382, 10, 1, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (383, 10, 2, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (384, 10, 3, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (385, 10, 4, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (386, 10, 5, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (387, 10, 6, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (388, 10, 7, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (389, 10, 8, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (390, 10, 9, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (391, 10, 10, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (392, 10, 11, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (393, 10, 12, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (394, 10, 13, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (395, 10, 14, '2023-04-18 14:42:13.312000', '2023-04-18 14:42:13.312000');
INSERT INTO `sys_course_stu` VALUES (396, 11, 15, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (397, 11, 16, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (398, 11, 17, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (399, 11, 18, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (400, 11, 19, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (401, 11, 20, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (402, 11, 21, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (403, 11, 22, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (404, 11, 23, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (405, 11, 24, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (406, 11, 25, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (407, 11, 26, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (408, 11, 27, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (409, 11, 28, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (410, 12, 15, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (411, 12, 16, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (412, 12, 17, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (413, 12, 18, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (414, 12, 19, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (415, 12, 20, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (416, 12, 21, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (417, 12, 22, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (418, 12, 23, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (419, 12, 24, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (420, 12, 25, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (421, 12, 26, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (422, 12, 27, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (423, 12, 28, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (424, 13, 15, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (425, 13, 16, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (426, 13, 17, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (427, 13, 18, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (428, 13, 19, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (429, 13, 20, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (430, 13, 21, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (431, 13, 22, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (432, 13, 23, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (433, 13, 24, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (434, 13, 25, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (435, 13, 26, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (436, 13, 27, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (437, 13, 28, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (438, 14, 15, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (439, 14, 16, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (440, 14, 17, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (441, 14, 18, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (442, 14, 19, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (443, 14, 20, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (444, 14, 21, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (445, 14, 22, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (446, 14, 23, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (447, 14, 24, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (448, 14, 25, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (449, 14, 26, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (450, 14, 27, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (451, 14, 28, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (452, 15, 15, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (453, 15, 16, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (454, 15, 17, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (455, 15, 18, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (456, 15, 19, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (457, 15, 20, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (458, 15, 21, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (459, 15, 22, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (460, 15, 23, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (461, 15, 24, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (462, 15, 25, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (463, 15, 26, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (464, 15, 27, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (465, 15, 28, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (466, 16, 15, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (467, 16, 16, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (468, 16, 17, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (469, 16, 18, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (470, 16, 19, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (471, 16, 20, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (472, 16, 21, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (473, 16, 22, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (474, 16, 23, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (475, 16, 24, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (476, 16, 25, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (477, 16, 26, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (478, 16, 27, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (479, 16, 28, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (480, 17, 15, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (481, 17, 16, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (482, 17, 17, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (483, 17, 18, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (484, 17, 19, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (485, 17, 20, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (486, 17, 21, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (487, 17, 22, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (488, 17, 23, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (489, 17, 24, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (490, 17, 25, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (491, 17, 26, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (492, 17, 27, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (493, 17, 28, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (494, 18, 15, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (495, 18, 16, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (496, 18, 17, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (497, 18, 18, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (498, 18, 19, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (499, 18, 20, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (500, 18, 21, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (501, 18, 22, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (502, 18, 23, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (503, 18, 24, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (504, 18, 25, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (505, 18, 26, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (506, 18, 27, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (507, 18, 28, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (508, 19, 15, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (509, 19, 16, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (510, 19, 17, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (511, 19, 18, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (512, 19, 19, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (513, 19, 20, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (514, 19, 21, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (515, 19, 22, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (516, 19, 23, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (517, 19, 24, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (518, 19, 25, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (519, 19, 26, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (520, 19, 27, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (521, 19, 28, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (522, 20, 15, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (523, 20, 16, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (524, 20, 17, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (525, 20, 18, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (526, 20, 19, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (527, 20, 20, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (528, 20, 21, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (529, 20, 22, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (530, 20, 23, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (531, 20, 24, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (532, 20, 25, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (533, 20, 26, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (534, 20, 27, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (535, 20, 28, '2023-04-18 14:43:13.850000', '2023-04-18 14:43:13.850000');
INSERT INTO `sys_course_stu` VALUES (536, 21, 29, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (537, 21, 30, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (538, 21, 31, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (539, 21, 32, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (540, 21, 33, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (541, 21, 34, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (542, 21, 35, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (543, 21, 36, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (544, 21, 37, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (545, 21, 38, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (546, 21, 39, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (547, 21, 40, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (548, 21, 41, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (549, 21, 42, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (550, 22, 29, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (551, 22, 30, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (552, 22, 31, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (553, 22, 32, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (554, 22, 33, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (555, 22, 34, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (556, 22, 35, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (557, 22, 36, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (558, 22, 37, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (559, 22, 38, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (560, 22, 39, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (561, 22, 40, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (562, 22, 41, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (563, 22, 42, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (564, 23, 29, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (565, 23, 30, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (566, 23, 31, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (567, 23, 32, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (568, 23, 33, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (569, 23, 34, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (570, 23, 35, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (571, 23, 36, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (572, 23, 37, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (573, 23, 38, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (574, 23, 39, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (575, 23, 40, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (576, 23, 41, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (577, 23, 42, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (578, 24, 29, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (579, 24, 30, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (580, 24, 31, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (581, 24, 32, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (582, 24, 33, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (583, 24, 34, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (584, 24, 35, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (585, 24, 36, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (586, 24, 37, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (587, 24, 38, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (588, 24, 39, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (589, 24, 40, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (590, 24, 41, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (591, 24, 42, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (592, 25, 29, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (593, 25, 30, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (594, 25, 31, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (595, 25, 32, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (596, 25, 33, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (597, 25, 34, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (598, 25, 35, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (599, 25, 36, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (600, 25, 37, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (601, 25, 38, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (602, 25, 39, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (603, 25, 40, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (604, 25, 41, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (605, 25, 42, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (606, 26, 29, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (607, 26, 30, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (608, 26, 31, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (609, 26, 32, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (610, 26, 33, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (611, 26, 34, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (612, 26, 35, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (613, 26, 36, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (614, 26, 37, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (615, 26, 38, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (616, 26, 39, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (617, 26, 40, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (618, 26, 41, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (619, 26, 42, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (620, 27, 29, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (621, 27, 30, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (622, 27, 31, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (623, 27, 32, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (624, 27, 33, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (625, 27, 34, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (626, 27, 35, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (627, 27, 36, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (628, 27, 37, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (629, 27, 38, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (630, 27, 39, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (631, 27, 40, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (632, 27, 41, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (633, 27, 42, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (634, 28, 29, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (635, 28, 30, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (636, 28, 31, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (637, 28, 32, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (638, 28, 33, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (639, 28, 34, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (640, 28, 35, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (641, 28, 36, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (642, 28, 37, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (643, 28, 38, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (644, 28, 39, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (645, 28, 40, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (646, 28, 41, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (647, 28, 42, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (648, 29, 29, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (649, 29, 30, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (650, 29, 31, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (651, 29, 32, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (652, 29, 33, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (653, 29, 34, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (654, 29, 35, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (655, 29, 36, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (656, 29, 37, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (657, 29, 38, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (658, 29, 39, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (659, 29, 40, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (660, 29, 41, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');
INSERT INTO `sys_course_stu` VALUES (661, 29, 42, '2023-04-18 14:44:16.100000', '2023-04-18 14:44:16.100000');

-- ----------------------------
-- Table structure for sys_cuisine
-- ----------------------------
DROP TABLE IF EXISTS `sys_cuisine`;
CREATE TABLE `sys_cuisine`  (
  `cuisine_id` int NOT NULL AUTO_INCREMENT COMMENT '菜品id',
  `cuisine_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '菜品名称',
  `cuisine_path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '菜品图片路径',
  `cuisine_number` int NULL DEFAULT 0 COMMENT '今日菜品份数',
  `cuisine_price` double(5, 2) NULL DEFAULT 0.00 COMMENT '菜品价格',
  PRIMARY KEY (`cuisine_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '菜品信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_cuisine
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', 'xxxx学院', 0, 'luna', '15888888888', 'luna@qq.com', '0', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-23 10:49:38');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '信息工程学院', 1, 'xx', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-16 16:56:07');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '教育科学学院', 2, 'luna', '15888888888', 'luna@qq.com', '0', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-15 22:21:59');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '软件工程', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-15 22:18:33');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '物联网', 2, 'xx', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-15 22:19:40');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '数字媒体', 3, 'xx', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-15 22:19:54');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '大数据', 4, 'xx', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-15 22:20:22');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '计算机科学与技术', 5, 'xx', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-16 16:56:07');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '心理健康', 1, 'xx', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-15 22:21:45');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '小学教育', 2, 'xx', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-15 22:21:59');
INSERT INTO `sys_dept` VALUES (200, 100, '0,100', '医学院', 3, '李老师', '15656936655', '222555888@qq.com', '0', '0', 'admin', '2023-05-06 16:15:24', '', NULL);
INSERT INTO `sys_dept` VALUES (201, 200, '0,100,200', '外科', 1, '李老师', '15655996658', '888555222@qq.com', '0', '0', 'admin', '2023-05-06 16:16:18', '', NULL);
INSERT INTO `sys_dept` VALUES (202, 200, '0,100,200', '内科', 2, '李老师', '15665996652', '777444111@qq.com', '0', '0', 'admin', '2023-05-06 16:16:49', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 10, '测试', '10', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '测试操作');
INSERT INTO `sys_dict_data` VALUES (100, 1, '学生', '0', 'sys_st_type', '', 'primary', 'Y', '0', 'admin', '2023-04-17 14:17:02', 'admin', '2023-04-17 14:17:41', '学生类别');
INSERT INTO `sys_dict_data` VALUES (101, 2, '老师', '1', 'sys_st_type', NULL, 'info', 'Y', '0', 'admin', '2023-04-17 14:17:25', '', NULL, '老师类别');
INSERT INTO `sys_dict_data` VALUES (102, 1, '认真听课', '1', 'sys_stu_state', '', 'primary', 'Y', '0', 'admin', '2023-04-17 15:51:58', 'admin', '2023-04-17 15:55:08', '学生状态-认真听课');
INSERT INTO `sys_dict_data` VALUES (103, 2, '玩手机', '2', 'sys_stu_state', '', 'warning', 'Y', '0', 'admin', '2023-04-17 15:52:37', 'admin', '2023-04-17 15:55:04', '学生状态-玩手机');
INSERT INTO `sys_dict_data` VALUES (104, 3, '发呆', '3', 'sys_stu_state', '', 'info', 'Y', '0', 'admin', '2023-04-17 15:53:05', 'admin', '2023-04-17 15:55:00', '学生状态-发呆');
INSERT INTO `sys_dict_data` VALUES (105, 4, '睡觉', '4', 'sys_stu_state', '', 'danger', 'Y', '0', 'admin', '2023-04-17 15:53:30', 'admin', '2023-04-17 15:54:56', '学生状态-睡觉');
INSERT INTO `sys_dict_data` VALUES (106, 1, '待预约使用', '0', 'sys_classroom_state', '', 'warning', 'Y', '0', 'admin', '2023-04-21 16:07:46', 'admin', '2023-04-21 16:08:13', '教室未预约使用');
INSERT INTO `sys_dict_data` VALUES (107, 1, '已预约使用', '1', 'sys_classroom_state', NULL, 'primary', 'Y', '0', 'admin', '2023-04-21 16:08:37', '', NULL, '教室已预约使用');
INSERT INTO `sys_dict_data` VALUES (108, 1, '2023-2019学年', '2023-2019学年', 'sys_study_year', NULL, 'success', 'Y', '0', 'admin', '2023-04-21 19:04:49', '', NULL, '2023-2019学年');
INSERT INTO `sys_dict_data` VALUES (109, 2, '2023-2020学年', '2023-2020学年', 'sys_study_year', NULL, 'primary', 'Y', '0', 'admin', '2023-04-21 19:05:11', '', NULL, '2023-2020学年');
INSERT INTO `sys_dict_data` VALUES (110, 1, '上学期', '0', 'sys_study_term', NULL, 'primary', 'Y', '0', 'admin', '2023-04-21 19:06:30', '', NULL, '上学期');
INSERT INTO `sys_dict_data` VALUES (111, 2, '下学期', '1', 'sys_study_term', NULL, 'success', 'Y', '0', 'admin', '2023-04-21 19:06:47', '', NULL, '下学期');
INSERT INTO `sys_dict_data` VALUES (112, 1, '已检测', '1', 'sys_knowledge_check', NULL, 'success', 'Y', '0', 'admin', '2023-04-21 22:01:01', '', NULL, '图片已检测');
INSERT INTO `sys_dict_data` VALUES (113, 2, '未检测', '0', 'sys_knowledge_check', NULL, 'danger', 'Y', '0', 'admin', '2023-04-21 22:01:23', '', NULL, '图片未检测');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (101, '学生/老师', 'sys_st_type', '0', 'admin', '2023-04-17 14:15:18', '', NULL, '学生/老师类别');
INSERT INTO `sys_dict_type` VALUES (102, '学生状态', 'sys_stu_state', '0', 'admin', '2023-04-17 15:39:45', '', NULL, '学生状态等级');
INSERT INTO `sys_dict_type` VALUES (103, '教室状态', 'sys_classroom_state', '0', 'admin', '2023-04-21 16:07:00', '', NULL, '教室状态');
INSERT INTO `sys_dict_type` VALUES (104, '学年', 'sys_study_year', '0', 'admin', '2023-04-21 19:04:10', '', NULL, '学年');
INSERT INTO `sys_dict_type` VALUES (105, '学期', 'sys_study_term', '0', 'admin', '2023-04-21 19:05:38', '', NULL, '学期');
INSERT INTO `sys_dict_type` VALUES (106, '图片检测', 'sys_knowledge_check', '0', 'admin', '2023-04-21 22:00:32', '', NULL, '图片检测');

-- ----------------------------
-- Table structure for sys_equipment
-- ----------------------------
DROP TABLE IF EXISTS `sys_equipment`;
CREATE TABLE `sys_equipment`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '设备id',
  `number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '设备编号',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '设备名称',
  `video` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '视频播放地址',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '设备信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_equipment
-- ----------------------------
INSERT INTO `sys_equipment` VALUES (1, '1', '海康威视1-1', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (2, '1', '海康威视1-2', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (3, '1', '海康威视1-3', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (4, '1', '海康威视1-4', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (5, '1', '海康威视1-5', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (6, '1', '海康威视1-6', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (7, '1', '海康威视1-7', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (8, '1', '海康威视1-8', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (9, '1', '海康威视1-9', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (10, '1', '海康威视1-10', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (11, '1', '海康威视1-11', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (12, '1', '海康威视1-12', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (13, '1', '海康威视1-13', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (14, '1', '海康威视1-14', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (15, '1', '海康威视1-15', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (16, '1', '海康威视1-16', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (17, '1', '海康威视1-17', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (18, '1', '海康威视1-18', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (19, '1', '海康威视1-19', 'http://123.206.53.234/yctc/test1.mp4', '2023-04-18 13:16:24.289000', '2023-04-18 13:16:24.289000');
INSERT INTO `sys_equipment` VALUES (20, '2', '海康威视2-1', 'http://123.206.53.234/yctc/%E7%90%83%E6%9C%BA%E7%AE%A1%E7%90%86.mp4', '2023-04-18 13:17:43.000000', '2023-04-18 13:17:46.000000');

-- ----------------------------
-- Table structure for sys_file_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_file_info`;
CREATE TABLE `sys_file_info`  (
  `file_id` int NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `file_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '文件名称',
  `file_path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '文件路径',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '文件信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_file_info
-- ----------------------------
INSERT INTO `sys_file_info` VALUES (4, 'ppt', '/profile/upload/2023/05/06/58e12b3eb36b2998629c9b282b2eb95a.png');

-- ----------------------------
-- Table structure for sys_infost
-- ----------------------------
DROP TABLE IF EXISTS `sys_infost`;
CREATE TABLE `sys_infost`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '学生编号',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户编号',
  `academy_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '学院编号',
  `class_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '班级编号',
  `number` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学号/工号',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `type` int UNSIGNED NULL DEFAULT NULL COMMENT '用户类别',
  `sex` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `id_card_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `mail` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `picture` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '人脸照片',
  `face_token` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '人脸标识',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = big5 COLLATE = big5_chinese_ci COMMENT = '学生/老师档案表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_infost
-- ----------------------------
INSERT INTO `sys_infost` VALUES (1, 1, 1, 1, '1812630715', '王小明', 0, '0', '320586199901011112', '17788888888', '1527215026@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-01-21 18:52:54.000000', '2023-04-18 13:53:00.999115');
INSERT INTO `sys_infost` VALUES (2, 2, 1, 1, '1812630901', '陈丹青', 0, '0', '320586199901011113', '17788888888', '1812630901@qq.com', 'http://123.206.53.234/yctc/1812630901.jpg', 'b99004ab1f39797cee47b46830540d03', '2023-01-25 13:37:29.000000', '2023-04-18 13:49:34.462056');
INSERT INTO `sys_infost` VALUES (3, 3, 1, 1, '1812630902', '蔡天新', 0, '0', '320586199901011114', '17788888888', '1812630902@qq.com', 'http://123.206.53.234/yctc/1812630902.jpg', '8eb6fefdd9e97ac56d8df69e78750455', '2023-01-25 13:37:29.000000', '2023-04-18 13:49:34.605000');
INSERT INTO `sys_infost` VALUES (4, 4, 1, 1, '1812630904', '郭震海', 0, '0', '320586199901011115', '17788888888', '1812630904@qq.com', 'http://123.206.53.234/yctc/1812630904.jpg', 'cbc4b275488ecc608e1151bc14787feb', '2023-01-25 13:37:30.000000', '2023-04-19 16:58:33.752000');
INSERT INTO `sys_infost` VALUES (5, 5, 1, 1, '1812630905', '程鹤麟', 0, '0', '320586199901011116', '17788888888', '1812630905@qq.com', 'http://123.206.53.234/yctc/1812630905.jpg', '35eafdeb046e42df80375fdedc258c5a', '2023-01-25 13:37:30.000000', '2023-04-18 13:49:34.898000');
INSERT INTO `sys_infost` VALUES (6, 6, 1, 1, '1812630906', '何亚娟', 0, '1', '320586199901011117', '17788888888', '1812630906@qq.com', 'http://123.206.53.234/yctc/1812630906.jpg', 'b1114c3a7b294dcddf57c8de9505ccc4', '2023-01-25 13:37:30.000000', '2023-04-18 13:49:35.044000');
INSERT INTO `sys_infost` VALUES (7, 7, 1, 1, '1812630907', '杜平让', 0, '1', '320586199901011118', '17788888888', '1812630907@qq.com', 'http://123.206.53.234/yctc/1812630907.jpg', '9a9c8c9042eabaa4ae98f674527ab9e7', '2023-01-25 13:37:30.000000', '2023-04-18 13:49:35.189000');
INSERT INTO `sys_infost` VALUES (8, 8, 1, 1, '1812630908', '崔卫平', 0, '1', '320586199901011119', '17788888888', '1812630908@qq.com', 'http://123.206.53.234/yctc/1812630908.jpg', 'b65c838a73b08c751121d860a41c6fa4', '2023-01-25 13:37:30.000000', '2023-04-18 13:49:35.334000');
INSERT INTO `sys_infost` VALUES (9, 9, 1, 1, '1812630909', '程一身', 0, '1', '320586199901011120', '17788888888', '1812630909@qq.com', 'http://123.206.53.234/yctc/1812630909.jpg', 'b8671737a19201a525ef14028784ceae', '2023-01-25 13:37:30.000000', '2023-04-18 13:49:35.477000');
INSERT INTO `sys_infost` VALUES (10, 10, 1, 1, '1812630910', '高建华', 0, '1', '320586199901011121', '17788888888', '1812630910@qq.com', 'http://123.206.53.234/yctc/1812630910.jpg', 'ce5d34fbeab7a18c12ee6a6aa1c2fbd5', '2023-01-25 13:38:49.000000', '2023-04-18 13:49:35.624000');
INSERT INTO `sys_infost` VALUES (11, 11, 1, 2, '1812630912', '金文明', 0, '1', '320586199901011122', '17788888888', '1812630912@qq.com', 'http://123.206.53.234/yctc/1812630912.jpg', '0e8405405b4b2c8362faa59ee4fafdb4', '2023-01-25 13:38:49.000000', '2023-04-18 13:49:35.767000');
INSERT INTO `sys_infost` VALUES (12, 12, 1, 2, '1812630913', '葛剑', 0, '1', '320586199901011123', '17788888888', '1812630913@qq.com', 'http://123.206.53.234/yctc/1812630913.jpg', '6accfcde95046396cb71f53ce7b20033', '2023-01-25 13:38:49.000000', '2023-04-18 13:49:35.911000');
INSERT INTO `sys_infost` VALUES (13, 13, 1, 2, '1812630914', '刘继兴 ', 0, '1', '320586199901011124', '17788888888', '873731696@qq.com', 'http://123.206.53.234/yctc/1812630914.jpg', '36b603f20808fdf43f20a7f6282dae12', '2023-01-25 13:38:49.000000', '2023-04-18 13:49:36.054000');
INSERT INTO `sys_infost` VALUES (14, 14, 1, 2, '1812630915', '江晓原', 0, '0', '320586199901011125', '17788888888', '1812630915@qq.com', 'http://123.206.53.234/yctc/1812630915.jpg', 'c7451083f71eb554a73d5df3edd2a855', '2023-01-25 13:38:49.000000', '2023-04-18 13:49:36.196000');
INSERT INTO `sys_infost` VALUES (15, 15, 1, 2, '1812630916', '路佳瑄', 0, '0', '320586199901011126', '17788888888', '1812630916@qq.com', 'http://123.206.53.234/yctc/1812630916.jpg', 'e865d7dd560d8cba2b2eff515a2da26c', '2023-01-25 13:38:49.000000', '2023-04-18 13:49:36.339000');
INSERT INTO `sys_infost` VALUES (16, 16, 1, 2, '1812630917', '高星', 0, '0', '320586199901011127', '17788888888', '1812630917@qq.com', 'http://123.206.53.234/yctc/1812630917.jpg', 'fe5d6b270b3c8518edd098060c53cfee', '2023-01-25 13:38:49.000000', '2023-04-18 13:49:36.481000');
INSERT INTO `sys_infost` VALUES (17, 17, 1, 2, '1812630918', '巩高峰', 0, '1', '320586199901011128', '17788888888', '1812630918@qq.com', 'http://123.206.53.234/yctc/1812630918.jpg', 'f44eac61d11b5180bb24a512756557bf', '2023-01-25 13:38:50.000000', '2023-04-18 14:16:22.194000');
INSERT INTO `sys_infost` VALUES (18, 18, 1, 2, '1812630919', '胡续冬', 0, '0', '320586199901011129', '17788888888', '1812630919@qq.com', 'http://123.206.53.234/yctc/1812630919.jpg', 'a55ac1aed3e1540f7b03406266d32fdc', '2023-01-25 13:38:50.000000', '2023-04-18 13:49:36.769000');
INSERT INTO `sys_infost` VALUES (19, 19, 1, 2, '1812630920', '李碧华', 0, '0', '320586199901011130', '17788888888', '1812630920@qq.com', 'http://123.206.53.234/yctc/1812630920.jpg', 'cc7c8aa02e535cc8b2188bae1d813adf', '2023-01-25 13:38:50.000000', '2023-04-18 13:49:36.911000');
INSERT INTO `sys_infost` VALUES (20, 20, 1, 2, '1812630921', '冯志丹', 0, '0', '320586199901011131', '17788888888', '1812630921@qq.com', 'http://123.206.53.234/yctc/1812630921.jpg', '7eabc5a3ee1f4d17dd195da7d0754946', '2023-01-25 13:38:50.000000', '2023-04-18 13:49:37.055000');
INSERT INTO `sys_infost` VALUES (21, 21, 1, 3, '1812630922', '傅光明', 0, '0', '320586199901011132', '17788888888', '1812630922@qq.com', 'http://123.206.53.234/yctc/1812630922.jpg', 'af74854f9c57925c8aecb513307cb2be', '2023-01-25 13:38:50.000000', '2023-04-18 13:49:37.199000');
INSERT INTO `sys_infost` VALUES (22, 22, 1, 3, '1812630923', '李银河', 0, '1', '320586199901011133', '17788888888', '1812630923@qq.com', 'http://123.206.53.234/yctc/1812630923.jpg', '247721a3ee819eeddd4a1c966fbf46b5', '2023-01-25 13:38:50.000000', '2023-04-18 14:16:17.095000');
INSERT INTO `sys_infost` VALUES (23, 23, 1, 3, '1812630924', '陈众议', 0, '0', '320586199901011134', '17788888888', '1812630924@qq.com', 'http://123.206.53.234/yctc/1812630924.jpg', '711e486468157379e9b8ecb2f29d1fcd', '2023-01-25 13:38:50.000000', '2023-04-18 13:49:37.487000');
INSERT INTO `sys_infost` VALUES (24, 24, 1, 3, '1812630925', '刘墉', 0, '0', '320586199901011135', '17788888888', '1812630925@qq.com', 'http://123.206.53.234/yctc/1812630925.jpg', '9e58652c73b7aca1d44d94a6f47510b2', '2023-01-25 13:38:50.000000', '2023-04-18 13:49:37.630000');
INSERT INTO `sys_infost` VALUES (25, 25, 1, 3, '1812630928', '韩雨山', 0, '0', '320586199901011136', '17788888888', '1812630928@qq.com', 'http://123.206.53.234/yctc/1812630928.jpg', 'c54ed754198763e21084b7881d46c8ac', '2023-01-25 13:38:51.000000', '2023-04-18 13:49:37.773000');
INSERT INTO `sys_infost` VALUES (26, 26, 1, 3, '1812630930', '韩松落', 0, '0', '320586199901011137', '17788888888', '1812630930@qq.com', 'http://123.206.53.234/yctc/1812630930.jpg', '054876799dc7c518e5f68ef978899693', '2023-01-25 13:38:51.000000', '2023-04-18 13:49:37.917000');
INSERT INTO `sys_infost` VALUES (27, 27, 1, 3, '1812630933', '恭小兵', 0, '0', '320586199901011138', '17788888888', '1812630933@qq.com', 'http://123.206.53.234/yctc/1812630933.jpg', '49639f0c6bda0284bad74d8c2af82b45', '2023-01-25 13:38:51.000000', '2023-04-18 13:49:38.061000');
INSERT INTO `sys_infost` VALUES (28, 28, 1, 3, '1812630934', '关凌', 0, '0', '320586199901011139', '17788888888', '1812630934@qq.com', 'http://123.206.53.234/yctc/1812630934.jpg', '58b8599025ca5d8cbb684831ef7782cd', '2023-01-25 13:38:51.000000', '2023-04-18 13:49:38.214000');
INSERT INTO `sys_infost` VALUES (29, 29, 1, 3, '1812630935', '高远', 0, '0', '320586199901011140', '17788888888', '1812630935@qq.com', 'http://123.206.53.234/yctc/1812630935.jpg', 'c14cfbbe34c456de49a3a350273fa802', '2023-01-25 13:38:51.000000', '2023-04-18 13:49:38.357311');
INSERT INTO `sys_infost` VALUES (31, 31, 1, 1, '10001', '张大锤', 1, '0', '320586199901011141', '17788888888', '10000@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-02-02 00:00:00.000000', '2023-04-19 21:05:04.326475');
INSERT INTO `sys_infost` VALUES (32, 32, 1, 10, '10003', '姬小满', 1, '0', '320586199901011142', '17788888888', '10001@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-10-29 22:13:10.000000', '2023-04-19 00:00:00.000000');
INSERT INTO `sys_infost` VALUES (33, 33, 1, 3, '10002', '王小芳', 1, '1', '320586199901011143', '17788888888', '10002@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-02-02 00:00:00.000000', '2023-04-19 21:05:04.981225');
INSERT INTO `sys_infost` VALUES (34, 34, 1, 4, '10004', '冯小红', 1, '1', '320586199901011144', '17788888888', '10004@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-02-02 00:00:00.000000', '2023-04-19 21:05:05.171200');
INSERT INTO `sys_infost` VALUES (35, 35, 1, 5, '10005', '梁用心', 1, '1', '320586199901011145', '17788888888', '10005@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-02-02 00:00:00.000000', '2023-04-19 21:05:05.347136');
INSERT INTO `sys_infost` VALUES (36, 36, 1, 6, '10006', '汪展均', 1, '0', '32058619990101114101', '17788888888', '100060@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-19 21:05:05.522252');
INSERT INTO `sys_infost` VALUES (37, 37, 1, 7, '10007', '温柏斐', 1, '0', '32058619990101114111', '17788888889', '100061@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-19 21:05:05.697793');
INSERT INTO `sys_infost` VALUES (38, 38, 1, 8, '10008', '顾靖喜', 1, '1', '32058619990101114121', '17788888890', '100062@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-19 21:05:05.878590');
INSERT INTO `sys_infost` VALUES (39, 39, 1, 9, '10009', '汪聪涛', 1, '1', '32058619990101114131', '17788888891', '100063@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-19 21:05:06.053325');
INSERT INTO `sys_infost` VALUES (40, 40, 1, 2, '10010', '梅远威', 1, '0', '32058619990101114141', '17788888892', '100064@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-19 21:05:58.024645');
INSERT INTO `sys_infost` VALUES (41, 41, 1, 11, '10011', '苏航书', 1, '0', '32058619990101114151', '17788888893', '100065@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-19 21:09:11.979096');
INSERT INTO `sys_infost` VALUES (42, 42, 1, 12, '10012', '温伟瀚', 1, '1', '32058619990101114161', '17788888894', '100066@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-19 21:09:12.151190');
INSERT INTO `sys_infost` VALUES (43, 43, 1, 13, '10013', '温俊岳', 1, '1', '32058619990101114171', '17788888895', '100067@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-19 21:09:12.324253');
INSERT INTO `sys_infost` VALUES (44, 44, 1, 14, '10014', '耿威阳', 1, '0', '32058619990101114181', '17788888896', '100068@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-19 21:09:12.499306');
INSERT INTO `sys_infost` VALUES (45, 45, 1, 0, '10015', '梅勇钧', 1, '1', '32058619990101114191', '17788888897', '100069@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-18 14:26:51.396900');
INSERT INTO `sys_infost` VALUES (46, 46, 1, 0, '10016', '秦琛培', 1, '1', '320586199901011141101', '17788888898', '1000610@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-18 14:26:52.669687');
INSERT INTO `sys_infost` VALUES (47, 47, 1, 0, '10017', '陶毅凌', 1, '1', '320586199901011141111', '17788888899', '1000611@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-18 14:26:52.939736');
INSERT INTO `sys_infost` VALUES (48, 48, 1, 0, '10018', '梅欢洋', 1, '1', '320586199901011141121', '17788888900', '1000612@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-18 14:26:53.491876');
INSERT INTO `sys_infost` VALUES (49, 49, 1, 0, '10019', '秦凯聪', 1, '1', '320586199901011141131', '17788888901', '1000613@qq.com', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg', 'sa65d6as53ds2a32', '2023-04-18 14:01:13.075000', '2023-04-18 14:26:53.973602');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '2', '1', '1', 'admin', '2023-03-16 11:33:00', 'ry', '2023-04-03 14:44:16', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (100, '重置房间状态', 'DEFAULT', 'apply.delRoomState', '0 0 23 * * ?', '1', '1', '1', '', '2023-04-21 20:01:38', '', '2023-04-21 20:01:52', '重置房间状态每天23点');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：4毫秒', '0', '', '2023-03-16 20:01:37');
INSERT INTO `sys_job_log` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：14毫秒', '0', '', '2023-03-16 20:01:42');
INSERT INTO `sys_job_log` VALUES (3, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：101998毫秒', '0', '', '2023-03-16 20:05:20');
INSERT INTO `sys_job_log` VALUES (4, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：4毫秒', '0', '', '2023-03-16 20:06:40');
INSERT INTO `sys_job_log` VALUES (5, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2023-03-16 20:06:53');
INSERT INTO `sys_job_log` VALUES (6, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2023-03-16 20:07:13');
INSERT INTO `sys_job_log` VALUES (7, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2023-03-16 20:07:22');
INSERT INTO `sys_job_log` VALUES (8, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2023-03-16 20:07:28');
INSERT INTO `sys_job_log` VALUES (9, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2023-03-16 20:07:31');
INSERT INTO `sys_job_log` VALUES (10, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2023-03-16 20:07:33');
INSERT INTO `sys_job_log` VALUES (11, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2023-03-16 20:07:38');
INSERT INTO `sys_job_log` VALUES (12, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2023-03-16 20:08:59');
INSERT INTO `sys_job_log` VALUES (13, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：6毫秒', '0', '', '2023-03-16 20:10:23');
INSERT INTO `sys_job_log` VALUES (14, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2023-03-16 20:10:26');
INSERT INTO `sys_job_log` VALUES (15, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2023-03-16 20:10:29');
INSERT INTO `sys_job_log` VALUES (16, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：8毫秒', '0', '', '2023-04-03 14:18:41');
INSERT INTO `sys_job_log` VALUES (17, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：5毫秒', '0', '', '2023-04-03 14:18:51');
INSERT INTO `sys_job_log` VALUES (18, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2023-04-03 14:19:01');
INSERT INTO `sys_job_log` VALUES (19, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2023-04-03 14:19:13');
INSERT INTO `sys_job_log` VALUES (20, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：5毫秒', '0', '', '2023-04-03 14:19:21');
INSERT INTO `sys_job_log` VALUES (21, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：12毫秒', '0', '', '2023-04-03 14:19:31');
INSERT INTO `sys_job_log` VALUES (22, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2023-04-03 14:19:41');
INSERT INTO `sys_job_log` VALUES (23, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：6毫秒', '0', '', '2023-04-03 14:44:01');
INSERT INTO `sys_job_log` VALUES (24, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2023-04-03 14:44:11');
INSERT INTO `sys_job_log` VALUES (25, '重置房间状态', 'DEFAULT', 'apply.delRoomState', '重置房间状态 总共耗时：10毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'apply\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:805)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1278)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:297)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at edu.yctc.common.utils.spring.SpringUtils.getBean(SpringUtils.java:38)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at edu.yctc.project.monitor.job.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:20)\r\n	at edu.yctc.project.monitor.job.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2023-04-21 20:02:15');
INSERT INTO `sys_job_log` VALUES (26, '重置房间状态', 'DEFAULT', 'apply.delRoomState', '重置房间状态 总共耗时：640毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.__invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:45009)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:45012)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:62)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:34)\r\n	at edu.yctc.project.monitor.job.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:20)\r\n	at edu.yctc.project.monitor.job.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: org.springframework.dao.DuplicateKeyException: \r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'0\' for key \'uk_lesson_id\'\r\n### The error may involve edu.yctc.project.system.state.mapper.ClassroomStateMapper.updateClassroomState-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_classroom_state          SET classroom_id = ?,             lesson_id = ?,             state = ?,             modify_time = now()          where id = ?\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'0\' for key \'uk_lesson_id\'\n; Duplicate entry \'0\' for key \'uk_lesson_id\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'0\' for key \'uk_lesson_id\'\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:243)\r\n	at org.spri', '2023-04-21 20:22:01');
INSERT INTO `sys_job_log` VALUES (27, '重置房间状态', 'DEFAULT', 'apply.delRoomState', '重置房间状态 总共耗时：188毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.__invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:45009)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:45012)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:62)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:34)\r\n	at edu.yctc.project.monitor.job.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:20)\r\n	at edu.yctc.project.monitor.job.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.NullPointerException\r\n	at edu.yctc.applyClassroom.ApplyService.delRoomState(ApplyService.java:127)\r\n	... 12 more\r\n', '2023-04-21 20:24:11');
INSERT INTO `sys_job_log` VALUES (28, '重置房间状态', 'DEFAULT', 'apply.delRoomState', '重置房间状态 总共耗时：188毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.__invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:45009)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:45012)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:62)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:34)\r\n	at edu.yctc.project.monitor.job.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:20)\r\n	at edu.yctc.project.monitor.job.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.NullPointerException\r\n	at edu.yctc.applyClassroom.ApplyService.delRoomState(ApplyService.java:127)\r\n	... 12 more\r\n', '2023-04-21 20:25:58');
INSERT INTO `sys_job_log` VALUES (29, '重置房间状态', 'DEFAULT', 'apply.delRoomState', '重置房间状态 总共耗时：709毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.__invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:45009)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:45012)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:62)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:34)\r\n	at edu.yctc.project.monitor.job.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:20)\r\n	at edu.yctc.project.monitor.job.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.NullPointerException\r\n	at edu.yctc.applyClassroom.ApplyService.delRoomState(ApplyService.java:127)\r\n	... 12 more\r\n', '2023-04-21 20:26:52');
INSERT INTO `sys_job_log` VALUES (30, '重置房间状态', 'DEFAULT', 'apply.delRoomState', '重置房间状态 总共耗时：167毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.__invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:45009)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:45012)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:62)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:34)\r\n	at edu.yctc.project.monitor.job.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:20)\r\n	at edu.yctc.project.monitor.job.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.NullPointerException\r\n	at edu.yctc.applyClassroom.ApplyService.delRoomState(ApplyService.java:127)\r\n	... 12 more\r\n', '2023-04-21 20:28:33');
INSERT INTO `sys_job_log` VALUES (31, '重置房间状态', 'DEFAULT', 'apply.delRoomState', '重置房间状态 总共耗时：165毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.__invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:45009)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:45012)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:62)\r\n	at edu.yctc.project.monitor.job.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:34)\r\n	at edu.yctc.project.monitor.job.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:20)\r\n	at edu.yctc.project.monitor.job.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.NullPointerException\r\n	at edu.yctc.applyClassroom.ApplyService.delRoomState(ApplyService.java:126)\r\n	... 12 more\r\n', '2023-04-21 20:31:03');
INSERT INTO `sys_job_log` VALUES (32, '重置房间状态', 'DEFAULT', 'apply.delRoomState', '重置房间状态 总共耗时：1828毫秒', '0', '', '2023-04-21 20:36:56');
INSERT INTO `sys_job_log` VALUES (33, '重置房间状态', 'DEFAULT', 'apply.delRoomState', '重置房间状态 总共耗时：1097毫秒', '0', '', '2023-04-21 20:37:11');
INSERT INTO `sys_job_log` VALUES (34, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2023-04-21 20:37:21');

-- ----------------------------
-- Table structure for sys_knowledge
-- ----------------------------
DROP TABLE IF EXISTS `sys_knowledge`;
CREATE TABLE `sys_knowledge`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '知识点描述',
  `length` double(20, 1) UNSIGNED NULL DEFAULT NULL COMMENT '预计时长',
  `lesson_id` bigint NULL DEFAULT NULL COMMENT '课时',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_content`(`content` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = big5 COLLATE = big5_chinese_ci COMMENT = '知识点概览' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_knowledge
-- ----------------------------
INSERT INTO `sys_knowledge` VALUES (1, '数据结构语句', 7.0, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (2, '循环控制', 5.0, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (3, '一维数组', 7.5, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (4, '二维数组', 5.0, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (5, '字符数组与字符串', 4.0, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (6, '关系运算符', 3.0, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (7, '逻辑运算符', 3.0, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (8, 'if语句', 4.0, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (9, 'for语句', 3.0, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (10, 'while语句', 3.0, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (11, 'do-while语句', 4.0, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (12, 'break语句', 2.0, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (13, 'switch....case语句', 4.0, 582, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (14, '曲面方程与空间曲线方程的概念', 8.0, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (15, '平面的点法式方程', 8.5, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (16, '平面的一般方程', 5.5, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (17, '平面的夹角', 4.0, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (18, '空间直线的一般方程', 6.0, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (19, '空间直角坐标系', 6.5, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (20, '向量及其线性运算', 7.5, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (21, '数量积', 4.0, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (22, '向量积', 5.0, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (23, '混合积', 6.0, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (24, '计算机网络在信息时代中的作用', 12.0, 588, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (25, '网络的网络', 2.0, 588, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (26, '互联网基础结构发展的三个阶段', 3.0, 588, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (27, '亲子关系及其对儿童品德发展的影响', 4.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (28, '恒河猴实验\r\n', 5.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (29, '亲子关系有利于儿童品德的发展', 4.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (31, '家庭', 2.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (32, '亲子关系的相关因素对小学生品德发展的影响', 3.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (33, '父母教养方式对儿童问题行为的影响', 7.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (34, '亲子关系影响小学生品德养成的机制', 4.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (35, '家长在家中也可以运用替代性强化的原理', 3.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (36, '认同作用', 5.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (37, '借助亲子教育促进儿童品德发展', 3.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (38, '亲职教育内容主要有五个方面', 5.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (39, '学校亲情教育', 4.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (40, '适合儿童品德发展的家校合作方法', 5.0, 583, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (41, '曲面方程与空间曲线方程的概念', 8.0, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (42, '曲面方程与空间曲线方程的概念', 5.0, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (43, '平面的点法式方程', 8.5, 585, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');
INSERT INTO `sys_knowledge` VALUES (44, '计算机网络在信息时代中的作用', 12.0, 588, '2023-05-25 22:46:50.000000', '2023-10-30 22:32:51.000000');

-- ----------------------------
-- Table structure for sys_knowledge_picture
-- ----------------------------
DROP TABLE IF EXISTS `sys_knowledge_picture`;
CREATE TABLE `sys_knowledge_picture`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `picture` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '识别到的照片',
  `knowledgeid` int NULL DEFAULT NULL COMMENT '知识点编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 803 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '图片和知识点关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_knowledge_picture
-- ----------------------------
INSERT INTO `sys_knowledge_picture` VALUES (749, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/1.jpg', 34);
INSERT INTO `sys_knowledge_picture` VALUES (750, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/2.jpg', 34);
INSERT INTO `sys_knowledge_picture` VALUES (751, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/3.jpg', 34);
INSERT INTO `sys_knowledge_picture` VALUES (752, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/4.jpg', 37);
INSERT INTO `sys_knowledge_picture` VALUES (753, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/5.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (754, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/6.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (755, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/7.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (756, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/8.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (757, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/9.jpg', 34);
INSERT INTO `sys_knowledge_picture` VALUES (758, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/10.jpg', 31);
INSERT INTO `sys_knowledge_picture` VALUES (759, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/11.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (760, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/12.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (761, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/13.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (762, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/14.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (763, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/15.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (764, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/16.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (765, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/17.jpg', 32);
INSERT INTO `sys_knowledge_picture` VALUES (766, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/18.jpg', 31);
INSERT INTO `sys_knowledge_picture` VALUES (767, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/19.jpg', 31);
INSERT INTO `sys_knowledge_picture` VALUES (768, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/20.jpg', 31);
INSERT INTO `sys_knowledge_picture` VALUES (769, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/21.jpg', 31);
INSERT INTO `sys_knowledge_picture` VALUES (770, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/22.jpg', 31);
INSERT INTO `sys_knowledge_picture` VALUES (771, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/23.jpg', 34);
INSERT INTO `sys_knowledge_picture` VALUES (772, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/24.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (773, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/25.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (774, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/26.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (775, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/27.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (776, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/28.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (777, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/29.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (778, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/30.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (779, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/31.jpg', 35);
INSERT INTO `sys_knowledge_picture` VALUES (780, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/32.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (781, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/33.jpg', 36);
INSERT INTO `sys_knowledge_picture` VALUES (782, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/34.jpg', 36);
INSERT INTO `sys_knowledge_picture` VALUES (783, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/35.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (784, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/36.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (785, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/37.jpg', 37);
INSERT INTO `sys_knowledge_picture` VALUES (786, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/38.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (787, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/39.jpg', 31);
INSERT INTO `sys_knowledge_picture` VALUES (788, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/40.jpg', 38);
INSERT INTO `sys_knowledge_picture` VALUES (789, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/41.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (790, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/42.jpg', 39);
INSERT INTO `sys_knowledge_picture` VALUES (791, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/43.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (792, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/44.jpg', 39);
INSERT INTO `sys_knowledge_picture` VALUES (793, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/45.jpg', 40);
INSERT INTO `sys_knowledge_picture` VALUES (794, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/46.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (795, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/47.jpg', 31);
INSERT INTO `sys_knowledge_picture` VALUES (796, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/48.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (797, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/49.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (798, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/50.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (799, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/51.jpg', 31);
INSERT INTO `sys_knowledge_picture` VALUES (800, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/52.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (801, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/53.jpg', 36);
INSERT INTO `sys_knowledge_picture` VALUES (802, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/54.jpg', NULL);
INSERT INTO `sys_knowledge_picture` VALUES (803, 'http://iszychen.club:8087/iszychen/img/genesis/lesson/583/img/55.jpg', 31);

-- ----------------------------
-- Table structure for sys_knowledge_student_state
-- ----------------------------
DROP TABLE IF EXISTS `sys_knowledge_student_state`;
CREATE TABLE `sys_knowledge_student_state`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '用户id',
  `lesson_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '课程id',
  `state` int UNSIGNED NULL DEFAULT NULL COMMENT '状态',
  `scan_start_time` datetime(6) NULL DEFAULT NULL COMMENT '开始扫描时间',
  `scan_end_time` datetime(6) NULL DEFAULT NULL COMMENT '结束扫描时间',
  `knowledge_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '知识点id',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_lesson_id`(`lesson_id` ASC) USING BTREE,
  INDEX `idx_user_id_lesson_id`(`user_id` ASC, `lesson_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 750 CHARACTER SET = big5 COLLATE = big5_chinese_ci COMMENT = '知识点和学生状态关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_knowledge_student_state
-- ----------------------------
INSERT INTO `sys_knowledge_student_state` VALUES (611, 1, 583, 1, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000', 27, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (612, 2, 583, 2, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000', 27, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (613, 3, 583, 1, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000', 27, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (614, 4, 583, 1, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000', 27, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (615, 5, 583, 1, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000', 27, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (616, 6, 583, 1, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000', 27, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (617, 7, 583, 1, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000', 27, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (618, 8, 583, 1, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000', 27, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (619, 9, 583, 1, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000', 27, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (620, 10, 583, 1, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000', 27, '2023-03-11 08:00:00.000000', '2023-03-11 08:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (621, 1, 583, 4, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000', 28, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (622, 2, 583, 3, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000', 28, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (623, 3, 583, 1, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000', 28, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (624, 4, 583, 1, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000', 28, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (625, 5, 583, 4, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000', 28, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (626, 6, 583, 1, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000', 28, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (627, 7, 583, 4, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000', 28, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (628, 8, 583, 1, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000', 28, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (629, 9, 583, 1, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000', 28, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (630, 10, 583, 4, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000', 28, '2023-03-11 08:08:00.000000', '2023-03-11 09:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (631, 1, 583, 2, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000', 29, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (632, 2, 583, 3, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000', 29, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (633, 3, 583, 1, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000', 29, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (634, 4, 583, 3, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000', 29, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (635, 5, 583, 1, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000', 29, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (636, 6, 583, 1, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000', 29, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (637, 7, 583, 1, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000', 29, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (638, 8, 583, 4, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000', 29, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (639, 9, 583, 1, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000', 29, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (640, 10, 583, 1, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000', 29, '2023-03-11 08:16:00.000000', '2023-03-11 10:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (651, 1, 583, 4, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000', 31, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (652, 2, 583, 1, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000', 31, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (653, 3, 583, 4, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000', 31, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (654, 4, 583, 1, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000', 31, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (655, 5, 583, 4, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000', 31, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (656, 6, 583, 1, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000', 31, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (657, 7, 583, 1, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000', 31, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (658, 8, 583, 1, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000', 31, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (659, 9, 583, 3, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000', 31, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (660, 10, 583, 1, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000', 31, '2023-03-11 08:32:00.000000', '2023-03-11 13:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (661, 1, 583, 3, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000', 32, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (662, 2, 583, 1, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000', 32, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (663, 3, 583, 1, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000', 32, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (664, 4, 583, 1, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000', 32, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (665, 5, 583, 1, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000', 32, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (666, 6, 583, 4, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000', 32, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (667, 7, 583, 1, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000', 32, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (668, 8, 583, 1, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000', 32, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (669, 9, 583, 1, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000', 32, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (670, 10, 583, 1, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000', 32, '2023-03-11 08:40:00.000000', '2023-03-11 14:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (671, 1, 583, 1, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000', 33, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (672, 2, 583, 1, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000', 33, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (673, 3, 583, 1, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000', 33, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (674, 4, 583, 1, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000', 33, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (675, 5, 583, 3, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000', 33, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (676, 6, 583, 2, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000', 33, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (677, 7, 583, 2, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000', 33, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (678, 8, 583, 1, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000', 33, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (679, 9, 583, 1, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000', 33, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (680, 10, 583, 1, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000', 33, '2023-03-11 08:48:00.000000', '2023-03-11 16:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (681, 1, 583, 1, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000', 34, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (682, 2, 583, 4, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000', 34, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (683, 3, 583, 1, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000', 34, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (684, 4, 583, 1, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000', 34, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (685, 5, 583, 3, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000', 34, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (686, 6, 583, 1, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000', 34, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (687, 7, 583, 1, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000', 34, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (688, 8, 583, 1, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000', 34, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (689, 9, 583, 2, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000', 34, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (690, 10, 583, 4, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000', 34, '2023-03-11 08:56:00.000000', '2023-03-11 17:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (691, 1, 583, 1, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000', 35, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (692, 2, 583, 2, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000', 35, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (693, 3, 583, 1, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000', 35, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (694, 4, 583, 1, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000', 35, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (695, 5, 583, 1, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000', 35, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (696, 6, 583, 2, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000', 35, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (697, 7, 583, 1, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000', 35, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (698, 8, 583, 1, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000', 35, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (699, 9, 583, 1, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000', 35, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (700, 10, 583, 1, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000', 35, '2023-03-11 09:04:00.000000', '2023-03-11 18:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (701, 1, 583, 1, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000', 36, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (702, 2, 583, 1, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000', 36, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (703, 3, 583, 1, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000', 36, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (704, 4, 583, 2, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000', 36, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (705, 5, 583, 1, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000', 36, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (706, 6, 583, 4, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000', 36, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (707, 7, 583, 3, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000', 36, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (708, 8, 583, 1, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000', 36, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (709, 9, 583, 1, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000', 36, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (710, 10, 583, 2, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000', 36, '2023-03-11 09:12:00.000000', '2023-03-11 20:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (711, 1, 583, 1, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000', 37, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (712, 2, 583, 3, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000', 37, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (713, 3, 583, 1, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000', 37, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (714, 4, 583, 1, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000', 37, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (715, 5, 583, 1, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000', 37, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (716, 6, 583, 4, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000', 37, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (717, 7, 583, 1, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000', 37, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (718, 8, 583, 1, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000', 37, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (719, 9, 583, 1, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000', 37, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (720, 10, 583, 1, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000', 37, '2023-03-11 09:20:00.000000', '2023-03-11 21:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (721, 1, 583, 4, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000', 38, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (722, 2, 583, 1, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000', 38, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (723, 3, 583, 1, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000', 38, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (724, 4, 583, 1, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000', 38, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (725, 5, 583, 3, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000', 38, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (726, 6, 583, 1, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000', 38, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (727, 7, 583, 3, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000', 38, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (728, 8, 583, 2, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000', 38, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (729, 9, 583, 1, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000', 38, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (730, 10, 583, 1, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000', 38, '2023-03-11 09:28:00.000000', '2023-03-11 22:47:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (731, 1, 583, 1, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000', 39, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (732, 2, 583, 1, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000', 39, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (733, 3, 583, 1, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000', 39, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (734, 4, 583, 1, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000', 39, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (735, 5, 583, 3, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000', 39, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (736, 6, 583, 1, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000', 39, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (737, 7, 583, 2, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000', 39, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (738, 8, 583, 1, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000', 39, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (739, 9, 583, 1, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000', 39, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (740, 10, 583, 2, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000', 39, '2023-03-11 09:36:00.000000', '2023-03-12 00:07:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (741, 1, 583, 1, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000', 40, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (742, 2, 583, 2, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000', 40, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (743, 3, 583, 3, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000', 40, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (744, 4, 583, 1, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000', 40, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (745, 5, 583, 1, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000', 40, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (746, 6, 583, 1, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000', 40, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (747, 7, 583, 1, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000', 40, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (748, 8, 583, 3, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000', 40, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (749, 9, 583, 1, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000', 40, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000');
INSERT INTO `sys_knowledge_student_state` VALUES (750, 10, 583, 3, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000', 40, '2023-03-11 09:44:00.000000', '2023-03-12 01:27:00.000000');

-- ----------------------------
-- Table structure for sys_lesson
-- ----------------------------
DROP TABLE IF EXISTS `sys_lesson`;
CREATE TABLE `sys_lesson`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `course_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '课程编号',
  `number` int UNSIGNED NULL DEFAULT NULL COMMENT '课时',
  `classroom_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '教室',
  `begin` datetime(6) NULL DEFAULT NULL COMMENT '上课时间',
  `end` datetime(6) NULL DEFAULT NULL COMMENT '下课时间',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 680 CHARACTER SET = big5 COLLATE = big5_chinese_ci COMMENT = '课时信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_lesson
-- ----------------------------
INSERT INTO `sys_lesson` VALUES (582, 1, 2, 1, '2023-03-10 08:00:00.000000', '2023-03-10 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (583, 2, 2, 2, '2023-03-11 08:00:00.000000', '2023-03-11 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (584, 3, 2, 3, '2023-03-12 08:00:00.000000', '2023-03-12 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (585, 4, 2, 4, '2023-03-13 08:00:00.000000', '2023-03-13 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (586, 5, 2, 5, '2023-03-14 08:00:00.000000', '2023-03-14 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (587, 6, 2, 6, '2023-03-15 08:00:00.000000', '2023-03-15 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (588, 7, 2, 7, '2023-03-16 08:00:00.000000', '2023-03-16 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (589, 8, 2, 8, '2023-10-17 08:00:00.000000', '2023-10-17 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (590, 9, 2, 9, '2023-10-18 08:00:00.000000', '2023-10-18 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (591, 10, 2, 10, '2023-10-19 08:00:00.000000', '2023-10-19 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (592, 11, 2, 11, '2023-10-20 08:00:00.000000', '2023-10-20 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (593, 12, 2, 12, '2023-10-21 08:00:00.000000', '2023-10-21 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (594, 13, 2, 13, '2023-10-22 08:00:00.000000', '2023-10-22 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (595, 14, 2, 14, '2023-10-23 08:00:00.000000', '2023-10-23 09:40:00.000000', '2023-04-18 00:48:13.504000', '2023-04-18 00:48:13.504000');
INSERT INTO `sys_lesson` VALUES (596, 15, 2, 1, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (597, 16, 2, 2, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (598, 17, 2, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (599, 18, 2, 4, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (600, 19, 2, 5, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (601, 20, 2, 6, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (602, 21, 2, 7, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (603, 22, 2, 8, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (604, 23, 2, 9, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (605, 24, 2, 10, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (606, 25, 2, 11, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (607, 26, 2, 12, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (608, 27, 2, 13, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (609, 28, 2, 14, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', '2023-04-18 00:49:44.106000', '2023-04-18 00:49:44.106000');
INSERT INTO `sys_lesson` VALUES (610, 29, 2, 1, '2023-05-10 08:00:00.000000', '2023-05-10 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (611, 30, 2, 2, '2023-05-11 08:00:00.000000', '2023-05-11 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (612, 31, 2, 3, '2023-05-12 08:00:00.000000', '2023-05-12 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (613, 32, 2, 4, '2023-05-13 08:00:00.000000', '2023-05-13 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (614, 33, 2, 5, '2023-05-14 08:00:00.000000', '2023-05-14 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (615, 34, 2, 6, '2023-05-15 08:00:00.000000', '2023-05-15 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (616, 35, 2, 7, '2023-05-16 08:00:00.000000', '2023-05-16 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (617, 36, 2, 8, '2023-12-17 08:00:00.000000', '2023-12-17 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (618, 37, 2, 9, '2023-12-18 08:00:00.000000', '2023-12-18 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (619, 38, 2, 10, '2023-12-19 08:00:00.000000', '2023-12-19 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (620, 39, 2, 11, '2023-12-20 08:00:00.000000', '2023-12-20 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (621, 40, 2, 12, '2023-12-21 08:00:00.000000', '2023-12-21 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (622, 41, 2, 13, '2023-12-22 08:00:00.000000', '2023-12-22 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (623, 42, 2, 14, '2023-12-23 08:00:00.000000', '2023-12-23 09:40:00.000000', '2023-04-18 00:50:33.759000', '2023-04-18 00:50:33.759000');
INSERT INTO `sys_lesson` VALUES (624, 29, 2, 1, '2023-05-10 08:00:00.000000', '2023-05-10 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (625, 30, 2, 2, '2023-05-11 08:00:00.000000', '2023-05-11 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (626, 31, 2, 3, '2023-05-12 08:00:00.000000', '2023-05-12 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (627, 32, 2, 4, '2023-05-13 08:00:00.000000', '2023-05-13 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (628, 33, 2, 5, '2023-05-14 08:00:00.000000', '2023-05-14 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (629, 34, 2, 6, '2023-05-15 08:00:00.000000', '2023-05-15 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (630, 35, 2, 7, '2023-05-16 08:00:00.000000', '2023-05-16 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (631, 36, 2, 8, '2023-12-17 08:00:00.000000', '2023-12-17 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (632, 37, 2, 9, '2023-12-18 08:00:00.000000', '2023-12-18 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (633, 38, 2, 10, '2023-12-19 08:00:00.000000', '2023-12-19 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (634, 39, 2, 11, '2023-12-20 08:00:00.000000', '2023-12-20 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (635, 40, 2, 12, '2023-12-21 08:00:00.000000', '2023-12-21 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (636, 41, 2, 13, '2023-12-22 08:00:00.000000', '2023-12-22 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (637, 42, 2, 14, '2023-12-23 08:00:00.000000', '2023-12-23 09:40:00.000000', '2023-04-18 19:49:57.719000', '2023-04-18 19:49:57.719000');
INSERT INTO `sys_lesson` VALUES (638, 29, 2, 1, '2023-05-10 08:00:00.000000', '2023-05-10 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (639, 30, 2, 2, '2023-05-11 08:00:00.000000', '2023-05-11 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (640, 31, 2, 3, '2023-05-12 08:00:00.000000', '2023-05-12 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (641, 32, 2, 4, '2023-05-13 08:00:00.000000', '2023-05-13 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (642, 33, 2, 5, '2023-05-14 08:00:00.000000', '2023-05-14 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (643, 34, 2, 6, '2023-05-15 08:00:00.000000', '2023-05-15 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (644, 35, 2, 7, '2023-05-16 08:00:00.000000', '2023-05-16 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (645, 36, 2, 8, '2023-12-17 08:00:00.000000', '2023-12-17 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (646, 37, 2, 9, '2023-12-18 08:00:00.000000', '2023-12-18 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (647, 38, 2, 10, '2023-12-19 08:00:00.000000', '2023-12-19 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (648, 39, 2, 11, '2023-12-20 08:00:00.000000', '2023-12-20 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (649, 40, 2, 12, '2023-12-21 08:00:00.000000', '2023-12-21 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (650, 41, 2, 13, '2023-12-22 08:00:00.000000', '2023-12-22 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (651, 42, 2, 14, '2023-12-23 08:00:00.000000', '2023-12-23 09:40:00.000000', '2023-04-18 19:52:32.505000', '2023-04-18 19:52:32.505000');
INSERT INTO `sys_lesson` VALUES (652, 29, 2, 1, '2023-05-10 08:00:00.000000', '2023-05-10 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (653, 30, 2, 2, '2023-05-11 08:00:00.000000', '2023-05-11 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (654, 31, 2, 3, '2023-05-12 08:00:00.000000', '2023-05-12 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (655, 32, 2, 4, '2023-05-13 08:00:00.000000', '2023-05-13 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (656, 33, 2, 5, '2023-05-14 08:00:00.000000', '2023-05-14 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (657, 34, 2, 6, '2023-05-15 08:00:00.000000', '2023-05-15 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (658, 35, 2, 7, '2023-05-16 08:00:00.000000', '2023-05-16 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (659, 36, 2, 8, '2023-12-17 08:00:00.000000', '2023-12-17 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (660, 37, 2, 9, '2023-12-18 08:00:00.000000', '2023-12-18 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (661, 38, 2, 10, '2023-12-19 08:00:00.000000', '2023-12-19 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (662, 39, 2, 11, '2023-12-20 08:00:00.000000', '2023-12-20 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (663, 40, 2, 12, '2023-12-21 08:00:00.000000', '2023-12-21 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (664, 41, 2, 13, '2023-12-22 08:00:00.000000', '2023-12-22 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (665, 42, 2, 14, '2023-12-23 08:00:00.000000', '2023-12-23 09:40:00.000000', '2023-04-19 10:50:08.946000', '2023-04-19 10:50:08.946000');
INSERT INTO `sys_lesson` VALUES (676, 1, 2, 3, '2023-04-01 02:04:12.000000', '2023-04-01 02:04:12.000000', '2023-04-21 19:33:14.000000', '2023-04-21 19:33:14.000000');
INSERT INTO `sys_lesson` VALUES (677, 2, 2, 4, '2023-03-31 01:03:41.000000', '2023-03-31 01:03:41.000000', '2023-04-21 19:40:12.000000', '2023-04-21 19:40:12.000000');
INSERT INTO `sys_lesson` VALUES (678, 2, 2, 1, '2023-04-21 02:04:46.000000', '2023-02-02 05:02:47.000000', '2023-04-21 22:34:21.000000', '2023-04-21 22:34:21.000000');
INSERT INTO `sys_lesson` VALUES (679, 2, 2, 2, '2023-04-21 02:04:46.000000', '2023-02-02 05:02:47.000000', '2023-04-21 22:37:17.000000', '2023-04-21 22:37:17.000000');
INSERT INTO `sys_lesson` VALUES (680, 2, 2, 3, '2023-04-07 05:04:35.000000', '2023-04-07 05:04:35.000000', '2023-04-22 21:09:06.000000', '2023-04-22 21:09:06.000000');

-- ----------------------------
-- Table structure for sys_lesson_know
-- ----------------------------
DROP TABLE IF EXISTS `sys_lesson_know`;
CREATE TABLE `sys_lesson_know`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lesson_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '课程编号',
  `knowledge_id` bigint NULL DEFAULT NULL COMMENT '知识点编号',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = big5 COLLATE = big5_chinese_ci COMMENT = '课时知识点信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_lesson_know
-- ----------------------------
INSERT INTO `sys_lesson_know` VALUES (1, 583, 27, '2023-05-25 15:44:00.000000', '2023-04-19 22:35:22.592245');
INSERT INTO `sys_lesson_know` VALUES (2, 583, 28, '2023-05-25 15:44:00.000000', '2023-04-19 22:35:22.735415');
INSERT INTO `sys_lesson_know` VALUES (3, 583, 29, '2023-05-25 15:44:00.000000', '2023-04-19 22:35:22.877628');
INSERT INTO `sys_lesson_know` VALUES (4, 583, 31, '2023-05-25 15:44:00.000000', '2023-04-19 23:35:21.707439');
INSERT INTO `sys_lesson_know` VALUES (5, 583, 32, '2023-05-25 15:44:00.000000', '2023-04-19 23:35:21.855547');
INSERT INTO `sys_lesson_know` VALUES (6, 583, 33, '2023-05-25 15:44:00.000000', '2023-04-19 23:35:22.006614');
INSERT INTO `sys_lesson_know` VALUES (7, 583, 34, '2023-05-25 15:44:00.000000', '2023-04-19 23:35:22.156658');
INSERT INTO `sys_lesson_know` VALUES (8, 583, 35, '2023-05-25 15:44:00.000000', '2023-04-19 23:35:22.300886');
INSERT INTO `sys_lesson_know` VALUES (9, 583, 36, '2023-05-25 15:44:00.000000', '2023-04-19 23:35:22.447012');
INSERT INTO `sys_lesson_know` VALUES (10, 583, 37, '2023-05-25 15:44:00.000000', '2023-04-19 23:35:22.596110');
INSERT INTO `sys_lesson_know` VALUES (11, 583, 38, '2023-05-25 15:44:00.000000', '2023-04-19 23:35:22.740289');
INSERT INTO `sys_lesson_know` VALUES (12, 583, 39, '2023-05-25 15:44:00.000000', '2023-04-19 23:35:22.888416');
INSERT INTO `sys_lesson_know` VALUES (13, 583, 40, '2023-05-25 15:44:00.000000', '2023-04-19 23:35:23.035495');

-- ----------------------------
-- Table structure for sys_lesson_tea
-- ----------------------------
DROP TABLE IF EXISTS `sys_lesson_tea`;
CREATE TABLE `sys_lesson_tea`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint NULL DEFAULT NULL COMMENT '老师编号',
  `lesson_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '授课课时编号',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = big5 COLLATE = big5_chinese_ci COMMENT = '老师授课信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_lesson_tea
-- ----------------------------
INSERT INTO `sys_lesson_tea` VALUES (111, 31, 582, '2023-04-18 14:53:34.355000', '2023-04-18 14:53:34.355000');
INSERT INTO `sys_lesson_tea` VALUES (112, 31, 596, '2023-04-18 14:53:34.355000', '2023-04-18 14:53:34.355000');
INSERT INTO `sys_lesson_tea` VALUES (113, 31, 610, '2023-04-18 14:53:34.355000', '2023-04-18 14:53:34.355000');
INSERT INTO `sys_lesson_tea` VALUES (114, 32, 583, '2023-04-18 15:08:49.569000', '2023-04-18 15:08:49.569000');
INSERT INTO `sys_lesson_tea` VALUES (115, 32, 597, '2023-04-18 15:08:49.569000', '2023-04-18 15:08:49.569000');
INSERT INTO `sys_lesson_tea` VALUES (116, 32, 611, '2023-04-18 15:08:49.569000', '2023-04-18 15:08:49.569000');
INSERT INTO `sys_lesson_tea` VALUES (117, 33, 584, '2023-04-18 15:10:42.999000', '2023-04-18 15:10:42.999000');
INSERT INTO `sys_lesson_tea` VALUES (118, 33, 598, '2023-04-18 15:10:42.999000', '2023-04-18 15:10:42.999000');
INSERT INTO `sys_lesson_tea` VALUES (119, 33, 612, '2023-04-18 15:10:42.999000', '2023-04-18 15:10:42.999000');
INSERT INTO `sys_lesson_tea` VALUES (120, 34, 585, '2023-04-18 15:11:29.971000', '2023-04-18 15:11:29.971000');
INSERT INTO `sys_lesson_tea` VALUES (121, 34, 599, '2023-04-18 15:11:29.971000', '2023-04-18 15:11:29.971000');
INSERT INTO `sys_lesson_tea` VALUES (122, 34, 613, '2023-04-18 15:11:29.971000', '2023-04-18 15:11:29.971000');
INSERT INTO `sys_lesson_tea` VALUES (123, 35, 586, '2023-04-18 15:12:04.992000', '2023-04-18 15:12:04.992000');
INSERT INTO `sys_lesson_tea` VALUES (124, 35, 600, '2023-04-18 15:12:04.992000', '2023-04-18 15:12:04.992000');
INSERT INTO `sys_lesson_tea` VALUES (125, 35, 614, '2023-04-18 15:12:04.992000', '2023-04-18 15:12:04.992000');
INSERT INTO `sys_lesson_tea` VALUES (126, 36, 587, '2023-04-18 15:12:49.196000', '2023-04-18 15:12:49.196000');
INSERT INTO `sys_lesson_tea` VALUES (127, 36, 601, '2023-04-18 15:12:49.196000', '2023-04-18 15:12:49.196000');
INSERT INTO `sys_lesson_tea` VALUES (128, 36, 615, '2023-04-18 15:12:49.196000', '2023-04-18 15:12:49.196000');
INSERT INTO `sys_lesson_tea` VALUES (129, 37, 588, '2023-04-18 15:13:21.792000', '2023-04-18 15:13:21.792000');
INSERT INTO `sys_lesson_tea` VALUES (130, 37, 602, '2023-04-18 15:13:21.792000', '2023-04-18 15:13:21.792000');
INSERT INTO `sys_lesson_tea` VALUES (131, 37, 616, '2023-04-18 15:13:21.792000', '2023-04-18 15:13:21.792000');
INSERT INTO `sys_lesson_tea` VALUES (132, 38, 589, '2023-04-18 15:13:52.411000', '2023-04-18 15:13:52.411000');
INSERT INTO `sys_lesson_tea` VALUES (133, 38, 603, '2023-04-18 15:13:52.411000', '2023-04-18 15:13:52.411000');
INSERT INTO `sys_lesson_tea` VALUES (134, 38, 617, '2023-04-18 15:13:52.411000', '2023-04-18 15:13:52.411000');
INSERT INTO `sys_lesson_tea` VALUES (135, 39, 590, '2023-04-18 15:14:26.078000', '2023-04-18 15:14:26.078000');
INSERT INTO `sys_lesson_tea` VALUES (136, 39, 604, '2023-04-18 15:14:26.078000', '2023-04-18 15:14:26.078000');
INSERT INTO `sys_lesson_tea` VALUES (137, 39, 618, '2023-04-18 15:14:26.078000', '2023-04-18 15:14:26.078000');
INSERT INTO `sys_lesson_tea` VALUES (138, 40, 591, '2023-04-18 15:14:56.927000', '2023-04-18 15:14:56.927000');
INSERT INTO `sys_lesson_tea` VALUES (139, 40, 605, '2023-04-18 15:14:56.927000', '2023-04-18 15:14:56.927000');
INSERT INTO `sys_lesson_tea` VALUES (140, 40, 619, '2023-04-18 15:14:56.927000', '2023-04-18 15:14:56.927000');
INSERT INTO `sys_lesson_tea` VALUES (141, 41, 592, '2023-04-18 15:15:40.836000', '2023-04-18 15:15:40.836000');
INSERT INTO `sys_lesson_tea` VALUES (142, 41, 606, '2023-04-18 15:15:40.836000', '2023-04-18 15:15:40.836000');
INSERT INTO `sys_lesson_tea` VALUES (143, 41, 620, '2023-04-18 15:15:40.836000', '2023-04-18 15:15:40.836000');
INSERT INTO `sys_lesson_tea` VALUES (144, 42, 593, '2023-04-18 15:16:21.106000', '2023-04-18 15:16:21.106000');
INSERT INTO `sys_lesson_tea` VALUES (145, 42, 607, '2023-04-18 15:16:21.106000', '2023-04-18 15:16:21.106000');
INSERT INTO `sys_lesson_tea` VALUES (146, 42, 621, '2023-04-18 15:16:21.106000', '2023-04-18 15:16:21.106000');
INSERT INTO `sys_lesson_tea` VALUES (147, 43, 594, '2023-04-18 15:16:58.757000', '2023-04-18 15:16:58.757000');
INSERT INTO `sys_lesson_tea` VALUES (148, 43, 608, '2023-04-18 15:16:58.757000', '2023-04-18 15:16:58.757000');
INSERT INTO `sys_lesson_tea` VALUES (149, 43, 622, '2023-04-18 15:16:58.757000', '2023-04-18 15:16:58.757000');
INSERT INTO `sys_lesson_tea` VALUES (150, 44, 595, '2023-04-18 15:17:43.351000', '2023-04-18 15:17:43.351000');
INSERT INTO `sys_lesson_tea` VALUES (151, 44, 609, '2023-04-18 15:17:43.351000', '2023-04-18 15:17:43.351000');
INSERT INTO `sys_lesson_tea` VALUES (152, 44, 623, '2023-04-18 15:17:43.351000', '2023-04-18 15:17:43.351000');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 676 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-16 16:28:52');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-16 16:42:42');
INSERT INTO `sys_logininfor` VALUES (102, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-16 16:42:50');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-16 16:42:56');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-03-16 16:43:01');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-16 16:43:05');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2023-03-16 16:43:09');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-16 16:43:18');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误3次', '2023-03-16 16:43:21');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-16 16:44:16');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-16 16:44:54');
INSERT INTO `sys_logininfor` VALUES (111, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-16 16:45:06');
INSERT INTO `sys_logininfor` VALUES (112, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-16 16:45:23');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-16 16:45:30');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-16 16:52:29');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-16 16:57:25');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 22:31:13');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-17 22:32:07');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 22:32:10');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-17 22:33:24');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 22:33:28');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-17 22:33:47');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-17 22:33:57');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 22:34:04');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-17 22:34:33');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-17 22:34:38');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-17 22:34:43');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 22:34:46');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-17 22:34:56');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 22:35:00');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 23:12:12');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-17 23:12:57');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 23:13:10');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-17 23:13:41');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 23:13:48');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-17 23:14:54');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 23:15:39');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-17 23:17:09');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-17 23:17:16');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 23:17:20');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 23:18:07');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-17 23:50:49');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-19 22:45:00');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-19 22:46:15');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-19 22:47:50');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-19 22:54:09');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-19 22:54:36');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 18:30:14');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-20 18:30:38');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 19:00:29');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-20 19:01:35');
INSERT INTO `sys_logininfor` VALUES (151, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 19:01:58');
INSERT INTO `sys_logininfor` VALUES (152, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-20 19:26:14');
INSERT INTO `sys_logininfor` VALUES (153, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-20 19:26:21');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 19:26:27');
INSERT INTO `sys_logininfor` VALUES (155, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-20 20:34:24');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 20:36:11');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-20 20:37:04');
INSERT INTO `sys_logininfor` VALUES (158, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 20:37:09');
INSERT INTO `sys_logininfor` VALUES (159, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-20 20:37:24');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 20:37:27');
INSERT INTO `sys_logininfor` VALUES (161, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 20:40:21');
INSERT INTO `sys_logininfor` VALUES (162, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-20 20:41:22');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 20:41:25');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-20 21:01:35');
INSERT INTO `sys_logininfor` VALUES (165, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 21:01:38');
INSERT INTO `sys_logininfor` VALUES (166, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 21:03:14');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 21:03:19');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-20 21:04:38');
INSERT INTO `sys_logininfor` VALUES (169, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 21:04:41');
INSERT INTO `sys_logininfor` VALUES (170, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-20 21:12:27');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 21:12:30');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-20 21:13:04');
INSERT INTO `sys_logininfor` VALUES (173, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 21:13:06');
INSERT INTO `sys_logininfor` VALUES (174, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-20 21:13:46');
INSERT INTO `sys_logininfor` VALUES (175, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 21:18:03');
INSERT INTO `sys_logininfor` VALUES (176, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 21:19:53');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 23:18:20');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-20 23:21:42');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-21 21:24:26');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-22 10:18:21');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-22 10:54:14');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '192.168.1.103', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2023-03-22 12:35:11');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '192.168.1.103', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2023-03-22 13:08:48');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-24 21:20:11');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-24 21:23:42');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-24 22:47:25');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-24 23:01:26');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-25 00:11:49');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-25 00:41:54');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-25 13:24:29');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-25 14:11:45');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-25 15:03:31');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-25 18:00:51');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-25 18:13:15');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-25 19:27:43');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-25 22:10:43');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-25 22:36:49');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-03-26 00:39:18');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-26 00:39:22');
INSERT INTO `sys_logininfor` VALUES (200, '15696756588', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '对不起，您的账号已被删除', '2023-03-26 11:32:43');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-03-26 11:32:46');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-26 11:32:50');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-03-26 11:58:21');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-26 11:58:26');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-26 12:10:34');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-26 13:04:14');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-26 14:29:19');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-26 21:35:32');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-26 21:43:44');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-26 21:48:17');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-26 21:51:41');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-26 21:57:07');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-27 12:27:49');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-27 14:45:05');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-27 15:12:34');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-27 15:12:39');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-27 15:28:10');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-27 15:28:13');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-27 15:59:05');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-27 16:11:09');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-27 16:25:50');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-27 16:25:53');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-27 16:25:58');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-27 16:26:02');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-27 21:34:15');
INSERT INTO `sys_logininfor` VALUES (226, '张三', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '注册成功', '2023-03-27 21:52:25');
INSERT INTO `sys_logininfor` VALUES (227, '李四', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '注册成功', '2023-03-27 21:52:48');
INSERT INTO `sys_logininfor` VALUES (228, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-27 22:23:02');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-27 22:23:10');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-28 00:14:39');
INSERT INTO `sys_logininfor` VALUES (231, '小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '注册成功', '2023-03-28 00:21:59');
INSERT INTO `sys_logininfor` VALUES (232, '小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-28 00:22:09');
INSERT INTO `sys_logininfor` VALUES (233, '小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-28 00:22:33');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-28 10:03:47');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-28 10:07:10');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-28 10:07:14');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-28 10:37:28');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-28 10:45:04');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-28 10:45:55');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-28 10:57:34');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-28 12:58:51');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-28 12:58:53');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '192.168.1.103', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2023-03-28 15:29:06');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-28 15:56:52');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-29 10:44:08');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-29 10:58:21');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-29 17:06:26');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-30 01:02:05');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-03-31 13:30:37');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-31 13:35:36');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-02 13:02:00');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-02 16:06:19');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-03 14:15:30');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-04 10:28:34');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-04 11:57:09');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-04-04 12:00:49');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', 'Password Error2', '2023-04-04 12:00:58');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', 'Password Error3', '2023-04-04 12:01:05');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', 'login successfully', '2023-04-04 12:01:14');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-04 12:04:33');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-04 12:05:09');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', 'login successfully', '2023-04-04 12:05:21');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-04 12:07:52');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-04 12:07:55');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-04 12:08:01');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 20:12:00');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 20:20:47');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 20:29:13');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-18 20:33:51');
INSERT INTO `sys_logininfor` VALUES (270, '15696756581', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-18 20:38:16');
INSERT INTO `sys_logininfor` VALUES (271, '15696756581', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-18 20:38:21');
INSERT INTO `sys_logininfor` VALUES (272, '15696756581', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-18 20:39:13');
INSERT INTO `sys_logininfor` VALUES (273, '15696756581', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-18 20:39:23');
INSERT INTO `sys_logininfor` VALUES (274, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 20:39:40');
INSERT INTO `sys_logininfor` VALUES (275, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-18 20:40:22');
INSERT INTO `sys_logininfor` VALUES (276, 'root', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-18 20:40:27');
INSERT INTO `sys_logininfor` VALUES (277, '小华', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-18 20:42:05');
INSERT INTO `sys_logininfor` VALUES (278, '小华', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-18 20:42:06');
INSERT INTO `sys_logininfor` VALUES (279, '小华', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-18 20:42:08');
INSERT INTO `sys_logininfor` VALUES (280, 'hua', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-18 20:43:13');
INSERT INTO `sys_logininfor` VALUES (281, 'hua', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-18 20:43:14');
INSERT INTO `sys_logininfor` VALUES (282, 'hua', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-18 20:43:18');
INSERT INTO `sys_logininfor` VALUES (283, '15696756588', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '对不起，您的账号已被删除', '2023-04-18 20:43:27');
INSERT INTO `sys_logininfor` VALUES (284, '15696756588', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '对不起，您的账号已被删除', '2023-04-18 20:43:30');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-18 20:57:48');
INSERT INTO `sys_logininfor` VALUES (286, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 20:57:59');
INSERT INTO `sys_logininfor` VALUES (287, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 20:59:31');
INSERT INTO `sys_logininfor` VALUES (288, 'ry', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-18 20:59:35');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 20:59:47');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-18 21:00:08');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 21:00:35');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-18 21:03:59');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 21:04:03');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-18 21:08:27');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 21:08:30');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 21:29:45');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 21:39:47');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-04-18 21:47:10');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 21:47:13');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-18 21:51:12');
INSERT INTO `sys_logininfor` VALUES (301, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 21:51:19');
INSERT INTO `sys_logininfor` VALUES (302, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-18 21:53:05');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 21:53:08');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-18 21:54:29');
INSERT INTO `sys_logininfor` VALUES (305, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-18 21:54:35');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 10:11:22');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-04-19 10:27:46');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 10:27:49');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 10:44:55');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 10:46:44');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 10:48:20');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 10:57:03');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 11:38:08');
INSERT INTO `sys_logininfor` VALUES (314, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 11:40:59');
INSERT INTO `sys_logininfor` VALUES (315, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 11:48:41');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 11:50:00');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 12:32:13');
INSERT INTO `sys_logininfor` VALUES (318, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-04-19 12:39:31');
INSERT INTO `sys_logininfor` VALUES (319, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 12:42:39');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 12:45:43');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 12:46:56');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-19 12:47:08');
INSERT INTO `sys_logininfor` VALUES (323, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 12:47:15');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 12:47:32');
INSERT INTO `sys_logininfor` VALUES (325, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 12:47:41');
INSERT INTO `sys_logininfor` VALUES (326, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 12:48:56');
INSERT INTO `sys_logininfor` VALUES (327, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 12:50:48');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 13:01:22');
INSERT INTO `sys_logininfor` VALUES (329, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 13:17:42');
INSERT INTO `sys_logininfor` VALUES (330, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 13:18:08');
INSERT INTO `sys_logininfor` VALUES (331, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', 'login successfully', '2023-04-19 13:26:01');
INSERT INTO `sys_logininfor` VALUES (332, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', 'login successfully', '2023-04-19 13:26:34');
INSERT INTO `sys_logininfor` VALUES (333, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 13:32:10');
INSERT INTO `sys_logininfor` VALUES (334, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 13:32:17');
INSERT INTO `sys_logininfor` VALUES (335, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', 'login successfully', '2023-04-19 13:35:29');
INSERT INTO `sys_logininfor` VALUES (336, '李华', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '注册成功', '2023-04-19 13:54:26');
INSERT INTO `sys_logininfor` VALUES (337, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 13:54:36');
INSERT INTO `sys_logininfor` VALUES (338, '李明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-19 13:54:59');
INSERT INTO `sys_logininfor` VALUES (339, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 14:09:18');
INSERT INTO `sys_logininfor` VALUES (340, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 14:47:17');
INSERT INTO `sys_logininfor` VALUES (341, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 14:47:37');
INSERT INTO `sys_logininfor` VALUES (342, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 14:49:30');
INSERT INTO `sys_logininfor` VALUES (343, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-19 14:49:55');
INSERT INTO `sys_logininfor` VALUES (344, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 14:49:59');
INSERT INTO `sys_logininfor` VALUES (345, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 15:22:10');
INSERT INTO `sys_logininfor` VALUES (346, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 15:35:48');
INSERT INTO `sys_logininfor` VALUES (347, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 15:37:30');
INSERT INTO `sys_logininfor` VALUES (348, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 15:43:44');
INSERT INTO `sys_logininfor` VALUES (349, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 15:46:10');
INSERT INTO `sys_logininfor` VALUES (350, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 15:46:56');
INSERT INTO `sys_logininfor` VALUES (351, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 15:49:30');
INSERT INTO `sys_logininfor` VALUES (352, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 15:52:46');
INSERT INTO `sys_logininfor` VALUES (353, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 15:54:06');
INSERT INTO `sys_logininfor` VALUES (354, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 15:55:33');
INSERT INTO `sys_logininfor` VALUES (355, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 15:57:36');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 16:06:46');
INSERT INTO `sys_logininfor` VALUES (357, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 16:08:07');
INSERT INTO `sys_logininfor` VALUES (358, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 16:10:45');
INSERT INTO `sys_logininfor` VALUES (359, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 16:19:30');
INSERT INTO `sys_logininfor` VALUES (360, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 16:21:19');
INSERT INTO `sys_logininfor` VALUES (361, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 16:21:55');
INSERT INTO `sys_logininfor` VALUES (362, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 16:23:27');
INSERT INTO `sys_logininfor` VALUES (363, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 16:27:56');
INSERT INTO `sys_logininfor` VALUES (364, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 16:31:15');
INSERT INTO `sys_logininfor` VALUES (365, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 16:38:48');
INSERT INTO `sys_logininfor` VALUES (366, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-19 16:55:04');
INSERT INTO `sys_logininfor` VALUES (367, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 16:55:07');
INSERT INTO `sys_logininfor` VALUES (368, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-19 16:56:51');
INSERT INTO `sys_logininfor` VALUES (369, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 20:36:26');
INSERT INTO `sys_logininfor` VALUES (370, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-19 21:03:20');
INSERT INTO `sys_logininfor` VALUES (371, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 21:03:24');
INSERT INTO `sys_logininfor` VALUES (372, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 21:18:43');
INSERT INTO `sys_logininfor` VALUES (373, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-19 21:51:38');
INSERT INTO `sys_logininfor` VALUES (374, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 21:51:41');
INSERT INTO `sys_logininfor` VALUES (375, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-19 21:52:25');
INSERT INTO `sys_logininfor` VALUES (376, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 21:52:33');
INSERT INTO `sys_logininfor` VALUES (377, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-19 21:59:50');
INSERT INTO `sys_logininfor` VALUES (378, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-19 21:59:54');
INSERT INTO `sys_logininfor` VALUES (379, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-20 14:35:25');
INSERT INTO `sys_logininfor` VALUES (380, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 00:15:41');
INSERT INTO `sys_logininfor` VALUES (381, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 00:23:21');
INSERT INTO `sys_logininfor` VALUES (382, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 00:23:27');
INSERT INTO `sys_logininfor` VALUES (383, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 13:52:07');
INSERT INTO `sys_logininfor` VALUES (384, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 13:52:16');
INSERT INTO `sys_logininfor` VALUES (385, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 15:56:32');
INSERT INTO `sys_logininfor` VALUES (386, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 15:56:35');
INSERT INTO `sys_logininfor` VALUES (387, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 17:00:31');
INSERT INTO `sys_logininfor` VALUES (388, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 17:12:30');
INSERT INTO `sys_logininfor` VALUES (389, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 17:24:41');
INSERT INTO `sys_logininfor` VALUES (390, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 17:27:19');
INSERT INTO `sys_logininfor` VALUES (391, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 18:12:08');
INSERT INTO `sys_logininfor` VALUES (392, 'admin', '192.168.1.104', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2023-04-21 20:21:23');
INSERT INTO `sys_logininfor` VALUES (393, 'admin', '192.168.1.104', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2023-04-21 20:25:16');
INSERT INTO `sys_logininfor` VALUES (394, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:09:17');
INSERT INTO `sys_logininfor` VALUES (395, 'xxx', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-04-21 22:09:24');
INSERT INTO `sys_logininfor` VALUES (396, '15696756581', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-21 22:09:28');
INSERT INTO `sys_logininfor` VALUES (397, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:09:35');
INSERT INTO `sys_logininfor` VALUES (398, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:20:51');
INSERT INTO `sys_logininfor` VALUES (399, 'xxx', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-04-21 22:20:58');
INSERT INTO `sys_logininfor` VALUES (400, 'xxx', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2023-04-21 22:21:16');
INSERT INTO `sys_logininfor` VALUES (401, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '注册成功', '2023-04-21 22:23:00');
INSERT INTO `sys_logininfor` VALUES (402, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:23:20');
INSERT INTO `sys_logininfor` VALUES (403, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:23:28');
INSERT INTO `sys_logininfor` VALUES (404, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:23:31');
INSERT INTO `sys_logininfor` VALUES (405, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:23:50');
INSERT INTO `sys_logininfor` VALUES (406, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:24:02');
INSERT INTO `sys_logininfor` VALUES (407, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:24:22');
INSERT INTO `sys_logininfor` VALUES (408, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:24:25');
INSERT INTO `sys_logininfor` VALUES (409, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:26:15');
INSERT INTO `sys_logininfor` VALUES (410, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:26:23');
INSERT INTO `sys_logininfor` VALUES (411, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:26:39');
INSERT INTO `sys_logininfor` VALUES (412, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:26:41');
INSERT INTO `sys_logininfor` VALUES (413, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:27:40');
INSERT INTO `sys_logininfor` VALUES (414, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:27:48');
INSERT INTO `sys_logininfor` VALUES (415, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:28:19');
INSERT INTO `sys_logininfor` VALUES (416, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:28:23');
INSERT INTO `sys_logininfor` VALUES (417, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:28:51');
INSERT INTO `sys_logininfor` VALUES (418, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:28:56');
INSERT INTO `sys_logininfor` VALUES (419, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:29:45');
INSERT INTO `sys_logininfor` VALUES (420, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:29:50');
INSERT INTO `sys_logininfor` VALUES (421, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:31:11');
INSERT INTO `sys_logininfor` VALUES (422, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:31:20');
INSERT INTO `sys_logininfor` VALUES (423, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:32:49');
INSERT INTO `sys_logininfor` VALUES (424, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:32:53');
INSERT INTO `sys_logininfor` VALUES (425, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:33:22');
INSERT INTO `sys_logininfor` VALUES (426, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:33:28');
INSERT INTO `sys_logininfor` VALUES (427, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:44:33');
INSERT INTO `sys_logininfor` VALUES (428, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:53:20');
INSERT INTO `sys_logininfor` VALUES (429, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-21 22:56:19');
INSERT INTO `sys_logininfor` VALUES (430, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-21 22:56:22');
INSERT INTO `sys_logininfor` VALUES (431, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 09:37:30');
INSERT INTO `sys_logininfor` VALUES (432, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 09:55:21');
INSERT INTO `sys_logininfor` VALUES (433, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 09:55:28');
INSERT INTO `sys_logininfor` VALUES (434, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 10:12:02');
INSERT INTO `sys_logininfor` VALUES (435, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 10:12:05');
INSERT INTO `sys_logininfor` VALUES (436, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 10:12:36');
INSERT INTO `sys_logininfor` VALUES (437, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 10:12:41');
INSERT INTO `sys_logininfor` VALUES (438, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 10:15:24');
INSERT INTO `sys_logininfor` VALUES (439, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 10:15:26');
INSERT INTO `sys_logininfor` VALUES (440, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 10:15:35');
INSERT INTO `sys_logininfor` VALUES (441, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 10:15:39');
INSERT INTO `sys_logininfor` VALUES (442, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 10:18:19');
INSERT INTO `sys_logininfor` VALUES (443, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 11:15:39');
INSERT INTO `sys_logininfor` VALUES (444, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 17:47:57');
INSERT INTO `sys_logininfor` VALUES (445, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 17:48:09');
INSERT INTO `sys_logininfor` VALUES (446, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 17:48:16');
INSERT INTO `sys_logininfor` VALUES (447, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 17:48:20');
INSERT INTO `sys_logininfor` VALUES (448, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 17:48:48');
INSERT INTO `sys_logininfor` VALUES (449, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 17:49:04');
INSERT INTO `sys_logininfor` VALUES (450, '小张', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 17:50:02');
INSERT INTO `sys_logininfor` VALUES (451, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-04-22 17:50:10');
INSERT INTO `sys_logininfor` VALUES (452, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2023-04-22 17:50:30');
INSERT INTO `sys_logininfor` VALUES (453, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误3次', '2023-04-22 17:51:04');
INSERT INTO `sys_logininfor` VALUES (454, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误4次', '2023-04-22 17:51:22');
INSERT INTO `sys_logininfor` VALUES (455, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 17:51:30');
INSERT INTO `sys_logininfor` VALUES (456, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 17:51:54');
INSERT INTO `sys_logininfor` VALUES (457, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误5次', '2023-04-22 17:52:01');
INSERT INTO `sys_logininfor` VALUES (458, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-04-22 19:15:35');
INSERT INTO `sys_logininfor` VALUES (459, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 19:15:50');
INSERT INTO `sys_logininfor` VALUES (460, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 19:16:54');
INSERT INTO `sys_logininfor` VALUES (461, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 19:16:57');
INSERT INTO `sys_logininfor` VALUES (462, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 19:17:06');
INSERT INTO `sys_logininfor` VALUES (463, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 19:17:11');
INSERT INTO `sys_logininfor` VALUES (464, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 19:18:11');
INSERT INTO `sys_logininfor` VALUES (465, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 19:18:14');
INSERT INTO `sys_logininfor` VALUES (466, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 19:18:32');
INSERT INTO `sys_logininfor` VALUES (467, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 19:18:35');
INSERT INTO `sys_logininfor` VALUES (468, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 19:21:06');
INSERT INTO `sys_logininfor` VALUES (469, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 19:21:12');
INSERT INTO `sys_logininfor` VALUES (470, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 19:51:31');
INSERT INTO `sys_logininfor` VALUES (471, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 19:51:36');
INSERT INTO `sys_logininfor` VALUES (472, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 20:01:22');
INSERT INTO `sys_logininfor` VALUES (473, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 20:01:29');
INSERT INTO `sys_logininfor` VALUES (474, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 20:02:06');
INSERT INTO `sys_logininfor` VALUES (475, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 20:02:10');
INSERT INTO `sys_logininfor` VALUES (476, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 20:04:36');
INSERT INTO `sys_logininfor` VALUES (477, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 20:04:40');
INSERT INTO `sys_logininfor` VALUES (478, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 20:07:41');
INSERT INTO `sys_logininfor` VALUES (479, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 20:07:45');
INSERT INTO `sys_logininfor` VALUES (480, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 20:10:24');
INSERT INTO `sys_logininfor` VALUES (481, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 20:10:27');
INSERT INTO `sys_logininfor` VALUES (482, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 20:10:48');
INSERT INTO `sys_logininfor` VALUES (483, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 20:10:51');
INSERT INTO `sys_logininfor` VALUES (484, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 20:11:02');
INSERT INTO `sys_logininfor` VALUES (485, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 20:11:05');
INSERT INTO `sys_logininfor` VALUES (486, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 20:22:55');
INSERT INTO `sys_logininfor` VALUES (487, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 20:45:16');
INSERT INTO `sys_logininfor` VALUES (488, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 20:45:21');
INSERT INTO `sys_logininfor` VALUES (489, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 20:52:54');
INSERT INTO `sys_logininfor` VALUES (490, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 20:53:00');
INSERT INTO `sys_logininfor` VALUES (491, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 20:58:58');
INSERT INTO `sys_logininfor` VALUES (492, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 20:59:01');
INSERT INTO `sys_logininfor` VALUES (493, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 21:07:12');
INSERT INTO `sys_logininfor` VALUES (494, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 21:07:15');
INSERT INTO `sys_logininfor` VALUES (495, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-22 21:08:25');
INSERT INTO `sys_logininfor` VALUES (496, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-22 21:08:28');
INSERT INTO `sys_logininfor` VALUES (497, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-23 10:48:46');
INSERT INTO `sys_logininfor` VALUES (498, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-23 10:56:36');
INSERT INTO `sys_logininfor` VALUES (499, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-23 11:50:12');
INSERT INTO `sys_logininfor` VALUES (500, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-23 11:54:01');
INSERT INTO `sys_logininfor` VALUES (501, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-23 11:54:09');
INSERT INTO `sys_logininfor` VALUES (502, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-23 12:05:40');
INSERT INTO `sys_logininfor` VALUES (503, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-23 12:12:44');
INSERT INTO `sys_logininfor` VALUES (504, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-23 12:12:47');
INSERT INTO `sys_logininfor` VALUES (505, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-23 12:28:59');
INSERT INTO `sys_logininfor` VALUES (506, '王小明', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2023-04-23 14:19:44');
INSERT INTO `sys_logininfor` VALUES (507, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-04-23 14:19:47');
INSERT INTO `sys_logininfor` VALUES (508, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-15 11:22:59');
INSERT INTO `sys_logininfor` VALUES (509, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-15 13:34:20');
INSERT INTO `sys_logininfor` VALUES (510, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-02-15 14:13:21');
INSERT INTO `sys_logininfor` VALUES (511, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-02-15 14:13:28');
INSERT INTO `sys_logininfor` VALUES (512, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-15 14:13:43');
INSERT INTO `sys_logininfor` VALUES (513, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-02-15 14:13:50');
INSERT INTO `sys_logininfor` VALUES (514, '00001', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-02-15 14:33:27');
INSERT INTO `sys_logininfor` VALUES (515, '00001', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-15 14:33:31');
INSERT INTO `sys_logininfor` VALUES (516, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-15 14:33:39');
INSERT INTO `sys_logininfor` VALUES (517, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-15 14:34:17');
INSERT INTO `sys_logininfor` VALUES (518, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-15 16:43:40');
INSERT INTO `sys_logininfor` VALUES (519, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-15 16:50:13');
INSERT INTO `sys_logininfor` VALUES (520, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-20 11:05:54');
INSERT INTO `sys_logininfor` VALUES (521, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-20 11:08:34');
INSERT INTO `sys_logininfor` VALUES (522, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-20 13:19:32');
INSERT INTO `sys_logininfor` VALUES (523, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-02-20 13:37:30');
INSERT INTO `sys_logininfor` VALUES (524, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-20 13:37:39');
INSERT INTO `sys_logininfor` VALUES (525, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-20 14:14:26');
INSERT INTO `sys_logininfor` VALUES (526, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-02-20 14:18:10');
INSERT INTO `sys_logininfor` VALUES (527, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-02-20 14:18:18');
INSERT INTO `sys_logininfor` VALUES (528, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-02-20 14:18:25');
INSERT INTO `sys_logininfor` VALUES (529, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-20 14:18:42');
INSERT INTO `sys_logininfor` VALUES (530, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-02-20 14:21:36');
INSERT INTO `sys_logininfor` VALUES (531, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-20 14:21:57');
INSERT INTO `sys_logininfor` VALUES (532, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', 'Exit the success', '2023-02-20 14:23:45');
INSERT INTO `sys_logininfor` VALUES (533, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-20 14:23:49');
INSERT INTO `sys_logininfor` VALUES (534, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', 'Exit the success', '2023-02-20 14:27:16');
INSERT INTO `sys_logininfor` VALUES (535, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-20 14:27:21');
INSERT INTO `sys_logininfor` VALUES (536, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', 'verification code error', '2023-02-20 14:59:26');
INSERT INTO `sys_logininfor` VALUES (537, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', 'login successfully', '2023-02-20 14:59:31');
INSERT INTO `sys_logininfor` VALUES (538, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-02-20 17:36:06');
INSERT INTO `sys_logininfor` VALUES (539, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-20 17:36:09');
INSERT INTO `sys_logininfor` VALUES (540, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-21 16:28:16');
INSERT INTO `sys_logininfor` VALUES (541, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-02-21 17:25:55');
INSERT INTO `sys_logininfor` VALUES (542, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-02-21 17:26:01');
INSERT INTO `sys_logininfor` VALUES (543, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-21 17:26:03');
INSERT INTO `sys_logininfor` VALUES (544, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-02-22 14:53:19');
INSERT INTO `sys_logininfor` VALUES (545, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-22 14:53:23');
INSERT INTO `sys_logininfor` VALUES (546, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-23 16:55:37');
INSERT INTO `sys_logininfor` VALUES (547, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', 'Exit the success', '2023-02-23 17:01:29');
INSERT INTO `sys_logininfor` VALUES (548, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-02-23 17:03:21');
INSERT INTO `sys_logininfor` VALUES (549, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-02 10:52:00');
INSERT INTO `sys_logininfor` VALUES (550, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-02 12:03:33');
INSERT INTO `sys_logininfor` VALUES (551, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-02 15:30:00');
INSERT INTO `sys_logininfor` VALUES (552, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 10:29:45');
INSERT INTO `sys_logininfor` VALUES (553, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 10:55:08');
INSERT INTO `sys_logininfor` VALUES (554, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 10:55:24');
INSERT INTO `sys_logininfor` VALUES (555, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 10:55:39');
INSERT INTO `sys_logininfor` VALUES (556, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 10:55:43');
INSERT INTO `sys_logininfor` VALUES (557, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 10:56:35');
INSERT INTO `sys_logininfor` VALUES (558, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 10:56:51');
INSERT INTO `sys_logininfor` VALUES (559, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 10:57:15');
INSERT INTO `sys_logininfor` VALUES (560, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 10:57:21');
INSERT INTO `sys_logininfor` VALUES (561, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 10:59:45');
INSERT INTO `sys_logininfor` VALUES (562, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 10:59:51');
INSERT INTO `sys_logininfor` VALUES (563, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 11:00:02');
INSERT INTO `sys_logininfor` VALUES (564, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 11:00:06');
INSERT INTO `sys_logininfor` VALUES (565, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 11:01:07');
INSERT INTO `sys_logininfor` VALUES (566, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-05-06 11:01:11');
INSERT INTO `sys_logininfor` VALUES (567, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 11:01:14');
INSERT INTO `sys_logininfor` VALUES (568, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 11:01:17');
INSERT INTO `sys_logininfor` VALUES (569, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 11:01:20');
INSERT INTO `sys_logininfor` VALUES (570, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 11:01:22');
INSERT INTO `sys_logininfor` VALUES (571, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 11:01:25');
INSERT INTO `sys_logininfor` VALUES (572, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 11:17:49');
INSERT INTO `sys_logininfor` VALUES (573, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 11:17:54');
INSERT INTO `sys_logininfor` VALUES (574, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 11:18:27');
INSERT INTO `sys_logininfor` VALUES (575, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 11:18:31');
INSERT INTO `sys_logininfor` VALUES (576, '王老师', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-06 11:20:25');
INSERT INTO `sys_logininfor` VALUES (577, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 14:04:17');
INSERT INTO `sys_logininfor` VALUES (578, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 16:05:57');
INSERT INTO `sys_logininfor` VALUES (579, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 16:06:05');
INSERT INTO `sys_logininfor` VALUES (580, '李老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 16:17:47');
INSERT INTO `sys_logininfor` VALUES (581, '李老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-05-08 11:51:20');
INSERT INTO `sys_logininfor` VALUES (582, '李老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 11:51:22');
INSERT INTO `sys_logininfor` VALUES (583, '李老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 11:51:47');
INSERT INTO `sys_logininfor` VALUES (584, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 11:51:50');
INSERT INTO `sys_logininfor` VALUES (585, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 12:08:39');
INSERT INTO `sys_logininfor` VALUES (586, '李老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 12:08:42');
INSERT INTO `sys_logininfor` VALUES (587, '李老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 12:08:57');
INSERT INTO `sys_logininfor` VALUES (588, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 12:09:01');
INSERT INTO `sys_logininfor` VALUES (589, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 12:09:42');
INSERT INTO `sys_logininfor` VALUES (590, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 12:09:47');
INSERT INTO `sys_logininfor` VALUES (591, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 13:21:59');
INSERT INTO `sys_logininfor` VALUES (592, '李同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 13:22:03');
INSERT INTO `sys_logininfor` VALUES (593, '李同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 13:22:16');
INSERT INTO `sys_logininfor` VALUES (594, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 13:22:20');
INSERT INTO `sys_logininfor` VALUES (595, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 13:22:39');
INSERT INTO `sys_logininfor` VALUES (596, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-05-08 13:22:48');
INSERT INTO `sys_logininfor` VALUES (597, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 13:22:54');
INSERT INTO `sys_logininfor` VALUES (598, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 13:23:26');
INSERT INTO `sys_logininfor` VALUES (599, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 13:23:29');
INSERT INTO `sys_logininfor` VALUES (600, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 15:01:46');
INSERT INTO `sys_logininfor` VALUES (601, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 15:05:46');
INSERT INTO `sys_logininfor` VALUES (602, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 15:05:54');
INSERT INTO `sys_logininfor` VALUES (603, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 15:06:22');
INSERT INTO `sys_logininfor` VALUES (604, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 15:06:27');
INSERT INTO `sys_logininfor` VALUES (605, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-10 21:44:41');
INSERT INTO `sys_logininfor` VALUES (606, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-10 22:47:29');
INSERT INTO `sys_logininfor` VALUES (607, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-14 17:10:02');
INSERT INTO `sys_logininfor` VALUES (608, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-14 17:13:41');
INSERT INTO `sys_logininfor` VALUES (609, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-14 17:16:00');
INSERT INTO `sys_logininfor` VALUES (610, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-05-14 21:17:45');
INSERT INTO `sys_logininfor` VALUES (611, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-14 21:17:49');
INSERT INTO `sys_logininfor` VALUES (612, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-14 22:01:17');
INSERT INTO `sys_logininfor` VALUES (613, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-16 18:25:50');
INSERT INTO `sys_logininfor` VALUES (614, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-05-17 15:07:30');
INSERT INTO `sys_logininfor` VALUES (615, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:07:34');
INSERT INTO `sys_logininfor` VALUES (616, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-17 15:08:53');
INSERT INTO `sys_logininfor` VALUES (617, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:08:56');
INSERT INTO `sys_logininfor` VALUES (618, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-17 15:11:50');
INSERT INTO `sys_logininfor` VALUES (619, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:11:56');
INSERT INTO `sys_logininfor` VALUES (620, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-17 15:13:45');
INSERT INTO `sys_logininfor` VALUES (621, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:13:48');
INSERT INTO `sys_logininfor` VALUES (622, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-17 15:25:32');
INSERT INTO `sys_logininfor` VALUES (623, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:25:37');
INSERT INTO `sys_logininfor` VALUES (624, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-17 15:26:05');
INSERT INTO `sys_logininfor` VALUES (625, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:26:08');
INSERT INTO `sys_logininfor` VALUES (626, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-17 15:26:14');
INSERT INTO `sys_logininfor` VALUES (627, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:26:20');
INSERT INTO `sys_logininfor` VALUES (628, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-17 15:27:02');
INSERT INTO `sys_logininfor` VALUES (629, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:27:07');
INSERT INTO `sys_logininfor` VALUES (630, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-17 15:27:13');
INSERT INTO `sys_logininfor` VALUES (631, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:27:23');
INSERT INTO `sys_logininfor` VALUES (632, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:28:08');
INSERT INTO `sys_logininfor` VALUES (633, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-17 15:30:20');
INSERT INTO `sys_logininfor` VALUES (634, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:30:24');
INSERT INTO `sys_logininfor` VALUES (635, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-17 15:32:50');
INSERT INTO `sys_logininfor` VALUES (636, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:32:53');
INSERT INTO `sys_logininfor` VALUES (637, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-17 15:32:57');
INSERT INTO `sys_logininfor` VALUES (638, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:33:02');
INSERT INTO `sys_logininfor` VALUES (639, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-17 15:33:44');
INSERT INTO `sys_logininfor` VALUES (640, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 15:33:48');
INSERT INTO `sys_logininfor` VALUES (641, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-05-25 12:49:51');
INSERT INTO `sys_logininfor` VALUES (642, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 12:49:54');
INSERT INTO `sys_logininfor` VALUES (643, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-05-25 14:33:36');
INSERT INTO `sys_logininfor` VALUES (644, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-05-25 14:33:41');
INSERT INTO `sys_logininfor` VALUES (645, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 14:33:46');
INSERT INTO `sys_logininfor` VALUES (646, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 16:44:44');
INSERT INTO `sys_logininfor` VALUES (647, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 16:52:19');
INSERT INTO `sys_logininfor` VALUES (648, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 16:54:22');
INSERT INTO `sys_logininfor` VALUES (649, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 17:15:11');
INSERT INTO `sys_logininfor` VALUES (650, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 17:15:21');
INSERT INTO `sys_logininfor` VALUES (651, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 17:16:13');
INSERT INTO `sys_logininfor` VALUES (652, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 17:16:20');
INSERT INTO `sys_logininfor` VALUES (653, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 17:17:37');
INSERT INTO `sys_logininfor` VALUES (654, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 17:17:40');
INSERT INTO `sys_logininfor` VALUES (655, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 17:23:17');
INSERT INTO `sys_logininfor` VALUES (656, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 17:23:19');
INSERT INTO `sys_logininfor` VALUES (657, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 17:27:49');
INSERT INTO `sys_logininfor` VALUES (658, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 17:27:52');
INSERT INTO `sys_logininfor` VALUES (659, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 17:28:16');
INSERT INTO `sys_logininfor` VALUES (660, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 17:28:21');
INSERT INTO `sys_logininfor` VALUES (661, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 17:28:24');
INSERT INTO `sys_logininfor` VALUES (662, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 17:28:27');
INSERT INTO `sys_logininfor` VALUES (663, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 17:29:06');
INSERT INTO `sys_logininfor` VALUES (664, '李同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 17:29:17');
INSERT INTO `sys_logininfor` VALUES (665, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 19:57:10');
INSERT INTO `sys_logininfor` VALUES (666, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 20:29:31');
INSERT INTO `sys_logininfor` VALUES (667, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 20:29:34');
INSERT INTO `sys_logininfor` VALUES (668, '张同学', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 20:38:36');
INSERT INTO `sys_logininfor` VALUES (669, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 20:38:45');
INSERT INTO `sys_logininfor` VALUES (670, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 20:39:38');
INSERT INTO `sys_logininfor` VALUES (671, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 20:39:40');
INSERT INTO `sys_logininfor` VALUES (672, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 20:40:10');
INSERT INTO `sys_logininfor` VALUES (673, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 20:40:12');
INSERT INTO `sys_logininfor` VALUES (674, '王老师', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-25 20:43:32');
INSERT INTO `sys_logininfor` VALUES (675, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 20:43:36');
INSERT INTO `sys_logininfor` VALUES (676, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-27 12:28:25');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2271 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 2, '#', 'menuItem', 'M', '0', '', 'fa fa-gear', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-21 00:30:48', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门及专业管理', 2021, 4, '/system/dept', 'menuItem', 'C', '0', 'system:dept:view', '#', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-15 22:24:15', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 2119, 5, '/system/post', 'menuItem', 'C', '0', 'system:post:view', '#', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-18 21:41:19', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', 'menuItem', 'C', '1', 'tool:build:view', '#', 'admin', '2023-03-16 11:33:00', 'admin', '2023-05-08 12:11:13', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', 'menuItem', 'C', '1', 'tool:gen:view', '#', 'admin', '2023-03-16 11:33:00', 'admin', '2023-05-25 20:45:06', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2023-03-16 11:33:00', 'ry', '2023-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2000, '文件信息', 3, 1, '/system/info', 'menuItem', 'C', '1', 'system:info:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-05-08 12:11:29', '文件信息菜单');
INSERT INTO `sys_menu` VALUES (2001, '文件信息查询', 2000, 1, '#', '', 'F', '0', 'system:info:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2002, '文件信息新增', 2000, 2, '#', '', 'F', '0', 'system:info:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2003, '文件信息修改', 2000, 3, '#', '', 'F', '0', 'system:info:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2004, '文件信息删除', 2000, 4, '#', '', 'F', '0', 'system:info:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2005, '文件信息导出', 2000, 5, '#', '', 'F', '0', 'system:info:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2012, '管理中心', 0, 1, '/demo', 'menuItem', 'C', '0', '', 'fa fa-bullseye', 'admin', '2023-03-28 21:08:28', 'admin', '2023-04-21 00:26:39', '');
INSERT INTO `sys_menu` VALUES (2015, '学院管理', 2119, 1, '/system/academy', 'menuItem', 'C', '0', 'system:academy:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-18 21:40:40', '学院菜单');
INSERT INTO `sys_menu` VALUES (2016, '学院查询', 2015, 1, '#', '', 'F', '0', 'system:academy:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2017, '学院新增', 2015, 2, '#', '', 'F', '0', 'system:academy:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2018, '学院修改', 2015, 3, '#', '', 'F', '0', 'system:academy:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2019, '学院删除', 2015, 4, '#', '', 'F', '0', 'system:academy:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2020, '学院导出', 2015, 5, '#', '', 'F', '0', 'system:academy:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2021, '教务管理', 0, 3, '#', 'menuItem', 'M', '0', NULL, 'fa fa-address-book-o', 'admin', '2023-04-15 22:23:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '教室管理', 2021, 1, '/system/classroom', 'menuItem', 'C', '0', 'system:classroom:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-16 00:05:35', '教室菜单');
INSERT INTO `sys_menu` VALUES (2023, '教室查询', 2022, 1, '#', '', 'F', '0', 'system:classroom:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2024, '教室新增', 2022, 2, '#', '', 'F', '0', 'system:classroom:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2025, '教室修改', 2022, 3, '#', '', 'F', '0', 'system:classroom:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2026, '教室删除', 2022, 4, '#', '', 'F', '0', 'system:classroom:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2027, '教室导出', 2022, 5, '#', '', 'F', '0', 'system:classroom:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2034, '班级信息', 2021, 1, '/system/classes', 'menuItem', 'C', '0', 'system:classes:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-16 19:33:10', '班级信息菜单');
INSERT INTO `sys_menu` VALUES (2035, '班级信息查询', 2034, 1, '#', '', 'F', '0', 'system:classes:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2036, '班级信息新增', 2034, 2, '#', '', 'F', '0', 'system:classes:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2037, '班级信息修改', 2034, 3, '#', '', 'F', '0', 'system:classes:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2038, '班级信息删除', 2034, 4, '#', '', 'F', '0', 'system:classes:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2039, '班级信息导出', 2034, 5, '#', '', 'F', '0', 'system:classes:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2040, '课程信息', 2021, 1, '/system/course', 'menuItem', 'C', '0', 'system:course:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-16 21:47:18', '课程信息菜单');
INSERT INTO `sys_menu` VALUES (2041, '课程信息查询', 2040, 1, '#', '', 'F', '0', 'system:course:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2042, '课程信息新增', 2040, 2, '#', '', 'F', '0', 'system:course:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2043, '课程信息修改', 2040, 3, '#', '', 'F', '0', 'system:course:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2044, '课程信息删除', 2040, 4, '#', '', 'F', '0', 'system:course:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2045, '课程信息导出', 2040, 5, '#', '', 'F', '0', 'system:course:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2046, '设备信息', 2021, 1, '/system/equipment', 'menuItem', 'C', '0', 'system:equipment:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-22 21:00:40', '设备信息菜单');
INSERT INTO `sys_menu` VALUES (2047, '设备信息查询', 2046, 1, '#', '', 'F', '0', 'system:equipment:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2048, '设备信息新增', 2046, 2, '#', '', 'F', '0', 'system:equipment:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2049, '设备信息修改', 2046, 3, '#', '', 'F', '0', 'system:equipment:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2050, '设备信息删除', 2046, 4, '#', '', 'F', '0', 'system:equipment:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2051, '设备信息导出', 2046, 5, '#', '', 'F', '0', 'system:equipment:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2052, '楼层信息', 2119, 1, '/system/floor', 'menuItem', 'C', '0', 'system:floor:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-18 21:41:02', '楼层信息菜单');
INSERT INTO `sys_menu` VALUES (2053, '楼层信息查询', 2052, 1, '#', '', 'F', '0', 'system:floor:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2054, '楼层信息新增', 2052, 2, '#', '', 'F', '0', 'system:floor:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2055, '楼层信息修改', 2052, 3, '#', '', 'F', '0', 'system:floor:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2056, '楼层信息删除', 2052, 4, '#', '', 'F', '0', 'system:floor:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2057, '楼层信息导出', 2052, 5, '#', '', 'F', '0', 'system:floor:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2058, '课时信息', 2021, 1, '/system/lesson', 'menuItem', 'C', '0', 'system:lesson:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-16 22:13:33', '课时信息菜单');
INSERT INTO `sys_menu` VALUES (2059, '课时信息查询', 2058, 1, '#', '', 'F', '0', 'system:lesson:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2060, '课时信息新增', 2058, 2, '#', '', 'F', '0', 'system:lesson:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2061, '课时信息修改', 2058, 3, '#', '', 'F', '0', 'system:lesson:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2062, '课时信息删除', 2058, 4, '#', '', 'F', '0', 'system:lesson:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2063, '课时信息导出', 2058, 5, '#', '', 'F', '0', 'system:lesson:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2064, '知识点概览', 2088, 7, '/system/knowledge', 'menuItem', 'C', '1', 'system:knowledge:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-05-06 11:16:20', '知识点概览菜单');
INSERT INTO `sys_menu` VALUES (2065, '知识点概览查询', 2064, 1, '#', '', 'F', '0', 'system:knowledge:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2066, '知识点概览新增', 2064, 2, '#', '', 'F', '0', 'system:knowledge:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2067, '知识点概览修改', 2064, 3, '#', '', 'F', '0', 'system:knowledge:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2068, '知识点概览删除', 2064, 4, '#', '', 'F', '0', 'system:knowledge:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2069, '知识点概览导出', 2064, 5, '#', '', 'F', '0', 'system:knowledge:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2070, '学生考勤', 2088, 3, '/system/attendance', 'menuItem', 'C', '0', 'system:attendance:view', 'fa fa-eye', 'admin', '2023-03-01 00:00:00', 'admin', '2023-05-06 11:13:38', '学生考勤点名汇总菜单');
INSERT INTO `sys_menu` VALUES (2071, '学生考勤点名汇总查询', 2070, 1, '#', '', 'F', '0', 'system:attendance:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2072, '学生考勤点名汇总新增', 2070, 2, '#', '', 'F', '0', 'system:attendance:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2073, '学生考勤点名汇总修改', 2070, 3, '#', '', 'F', '0', 'system:attendance:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2074, '学生考勤点名汇总删除', 2070, 4, '#', '', 'F', '0', 'system:attendance:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2075, '学生考勤点名汇总导出', 2070, 5, '#', '', 'F', '0', 'system:attendance:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2076, '学生课堂情况', 2088, 4, '/system/score', 'menuItem', 'C', '0', 'system:score:view', 'fa fa-calendar-check-o', 'admin', '2023-03-01 00:00:00', 'admin', '2023-05-06 11:15:38', '学生上课评分汇总菜单');
INSERT INTO `sys_menu` VALUES (2077, '学生上课评分汇总查询', 2076, 1, '#', '', 'F', '0', 'system:score:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2078, '学生上课评分汇总新增', 2076, 2, '#', '', 'F', '0', 'system:score:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2079, '学生上课评分汇总修改', 2076, 3, '#', '', 'F', '0', 'system:score:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2080, '学生上课评分汇总删除', 2076, 4, '#', '', 'F', '0', 'system:score:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2081, '学生上课评分汇总导出', 2076, 5, '#', '', 'F', '0', 'system:score:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2082, '教室占用情况', 2021, 1, '/system/state', 'menuItem', 'C', '0', 'system:state:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-16 22:43:45', '教室占用情况菜单');
INSERT INTO `sys_menu` VALUES (2083, '教室占用情况查询', 2082, 1, '#', '', 'F', '0', 'system:state:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2084, '教室占用情况新增', 2082, 2, '#', '', 'F', '0', 'system:state:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2085, '教室占用情况修改', 2082, 3, '#', '', 'F', '0', 'system:state:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2086, '教室占用情况删除', 2082, 4, '#', '', 'F', '0', 'system:state:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2087, '教室占用情况导出', 2082, 5, '#', '', 'F', '0', 'system:state:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2088, '教学系统', 0, 5, '#', 'menuItem', 'M', '0', '', 'fa fa-institution', 'admin', '2023-04-17 10:24:09', 'admin', '2023-05-06 11:09:21', '');
INSERT INTO `sys_menu` VALUES (2089, '学生/老师档案', 2119, 1, '/system/infost', 'menuItem', 'C', '0', 'system:infost:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-18 21:38:30', '学生/老师档案菜单');
INSERT INTO `sys_menu` VALUES (2090, '学生/老师档案查询', 2089, 1, '#', '', 'F', '0', 'system:infost:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2091, '学生/老师档案新增', 2089, 2, '#', '', 'F', '0', 'system:infost:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2092, '学生/老师档案修改', 2089, 3, '#', '', 'F', '0', 'system:infost:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2093, '学生/老师档案删除', 2089, 4, '#', '', 'F', '0', 'system:infost:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2094, '学生/老师档案导出', 2089, 5, '#', '', 'F', '0', 'system:infost:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2095, '学生上课状态信息汇总', 2088, 10, '/system/courseState', 'menuItem', 'C', '1', 'system:courseState:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-05-06 11:12:10', '学生上课状态信息汇总菜单');
INSERT INTO `sys_menu` VALUES (2096, '学生上课状态信息汇总查询', 2095, 1, '#', '', 'F', '0', 'system:courseState:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2097, '学生上课状态信息汇总新增', 2095, 2, '#', '', 'F', '0', 'system:courseState:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2098, '学生上课状态信息汇总修改', 2095, 3, '#', '', 'F', '0', 'system:courseState:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2099, '学生上课状态信息汇总删除', 2095, 4, '#', '', 'F', '0', 'system:courseState:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2100, '学生上课状态信息汇总导出', 2095, 5, '#', '', 'F', '0', 'system:courseState:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2101, '学生课程信息', 2021, 1, '/system/stu', 'menuItem', 'C', '0', 'system:stu:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-18 16:44:16', '学生课程信息菜单');
INSERT INTO `sys_menu` VALUES (2102, '学生课程信息查询', 2101, 1, '#', '', 'F', '0', 'system:stu:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2103, '学生课程信息新增', 2101, 2, '#', '', 'F', '0', 'system:stu:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2104, '学生课程信息修改', 2101, 3, '#', '', 'F', '0', 'system:stu:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2105, '学生课程信息删除', 2101, 4, '#', '', 'F', '0', 'system:stu:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2106, '学生课程信息导出', 2101, 5, '#', '', 'F', '0', 'system:stu:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2107, '老师授课信息', 2021, 1, '/system/tea', 'menuItem', 'C', '0', 'system:tea:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-18 16:44:30', '老师授课信息菜单');
INSERT INTO `sys_menu` VALUES (2108, '老师授课信息查询', 2107, 1, '#', '', 'F', '0', 'system:tea:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2109, '老师授课信息新增', 2107, 2, '#', '', 'F', '0', 'system:tea:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2110, '老师授课信息修改', 2107, 3, '#', '', 'F', '0', 'system:tea:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2111, '老师授课信息删除', 2107, 4, '#', '', 'F', '0', 'system:tea:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2112, '老师授课信息导出', 2107, 5, '#', '', 'F', '0', 'system:tea:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2113, '课时知识点信息', 2021, 1, '/system/know', 'menuItem', 'C', '0', 'system:know:view', '/', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-18 18:09:57', '课时知识点信息菜单');
INSERT INTO `sys_menu` VALUES (2114, '课时知识点信息查询', 2113, 1, '#', '', 'F', '0', 'system:know:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2115, '课时知识点信息新增', 2113, 2, '#', '', 'F', '0', 'system:know:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2116, '课时知识点信息修改', 2113, 3, '#', '', 'F', '0', 'system:know:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2117, '课时知识点信息删除', 2113, 4, '#', '', 'F', '0', 'system:know:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2118, '课时知识点信息导出', 2113, 5, '#', '', 'F', '0', 'system:know:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2119, '档案信息', 0, 5, '#', 'menuItem', 'M', '0', '', 'fa fa-address-book', 'admin', '2023-04-18 21:37:36', 'admin', '2023-04-18 21:37:56', '');
INSERT INTO `sys_menu` VALUES (2182, '检测图片', 2088, 11, '/system/checkpicture', 'menuItem', 'C', '1', 'system:checkpicture:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-05-06 11:12:14', '检测图片菜单');
INSERT INTO `sys_menu` VALUES (2183, '检测图片查询', 2182, 1, '#', '', 'F', '0', 'system:checkpicture:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2184, '检测图片新增', 2182, 2, '#', '', 'F', '0', 'system:checkpicture:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2185, '检测图片修改', 2182, 3, '#', '', 'F', '0', 'system:checkpicture:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2186, '检测图片删除', 2182, 4, '#', '', 'F', '0', 'system:checkpicture:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2187, '检测图片导出', 2182, 5, '#', '', 'F', '0', 'system:checkpicture:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2194, '知识点解析学生状态', 2088, 9, '/system/knowledgeStudentState', 'menuItem', 'C', '1', 'system:knowledgeStudentState:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-05-06 11:12:05', '知识点和学生状态关联菜单');
INSERT INTO `sys_menu` VALUES (2195, '知识点和学生状态关联查询', 2194, 1, '#', '', 'F', '0', 'system:knowledgeStudentState:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2196, '知识点和学生状态关联新增', 2194, 2, '#', '', 'F', '0', 'system:knowledgeStudentState:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2197, '知识点和学生状态关联修改', 2194, 3, '#', '', 'F', '0', 'system:knowledgeStudentState:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2198, '知识点和学生状态关联删除', 2194, 4, '#', '', 'F', '0', 'system:knowledgeStudentState:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2199, '知识点和学生状态关联导出', 2194, 5, '#', '', 'F', '0', 'system:knowledgeStudentState:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2200, '通知确认情况', 2088, 2, '/system/userNews', 'menuItem', 'C', '0', 'system:userNews:view', 'fa fa-check-circle', 'admin', '2023-03-01 00:00:00', 'admin', '2023-05-06 11:13:29', '用户和通知关联菜单');
INSERT INTO `sys_menu` VALUES (2201, '用户和通知关联查询', 2200, 1, '#', '', 'F', '0', 'system:userNews:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2202, '用户和通知关联新增', 2200, 2, '#', '', 'F', '0', 'system:userNews:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2203, '用户和通知关联修改', 2200, 3, '#', '', 'F', '0', 'system:userNews:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2204, '用户和通知关联删除', 2200, 4, '#', '', 'F', '0', 'system:userNews:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2205, '用户和通知关联导出', 2200, 5, '#', '', 'F', '0', 'system:userNews:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2206, '教学通知', 2088, 1, '/system/news', 'menuItem', 'C', '0', 'system:news:view', 'fa fa-bell-o', 'admin', '2023-03-01 00:00:00', 'admin', '2023-05-06 11:10:40', '通知菜单');
INSERT INTO `sys_menu` VALUES (2207, '通知查询', 2206, 1, '#', '', 'F', '0', 'system:news:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2208, '通知新增', 2206, 2, '#', '', 'F', '0', 'system:news:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2209, '通知修改', 2206, 3, '#', '', 'F', '0', 'system:news:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2210, '通知删除', 2206, 4, '#', '', 'F', '0', 'system:news:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2211, '通知导出', 2206, 5, '#', '', 'F', '0', 'system:news:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2218, 'ppt图片解析知识点', 2088, 8, '/system/knowledgePicture', 'menuItem', 'C', '1', 'system:knowledgePicture:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-05-06 11:11:55', '图片和知识点关联菜单');
INSERT INTO `sys_menu` VALUES (2219, '图片和知识点关联查询', 2218, 1, '#', '', 'F', '0', 'system:knowledgePicture:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2220, '图片和知识点关联新增', 2218, 2, '#', '', 'F', '0', 'system:knowledgePicture:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2221, '图片和知识点关联修改', 2218, 3, '#', '', 'F', '0', 'system:knowledgePicture:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2222, '图片和知识点关联删除', 2218, 4, '#', '', 'F', '0', 'system:knowledgePicture:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2223, '图片和知识点关联导出', 2218, 5, '#', '', 'F', '0', 'system:knowledgePicture:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2226, '教室申请纪录', 2021, 1, '/system/applyClassroom', 'menuItem', 'C', '0', 'system:applyClassroom:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-21 19:41:14', '教室申请菜单');
INSERT INTO `sys_menu` VALUES (2227, '教室申请查询', 2226, 1, '#', '', 'F', '0', 'system:applyClassroom:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2228, '教室申请新增', 2226, 2, '#', '', 'F', '0', 'system:applyClassroom:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2229, '教室申请修改', 2226, 3, '#', '', 'F', '0', 'system:applyClassroom:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2230, '教室申请删除', 2226, 4, '#', '', 'F', '0', 'system:applyClassroom:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2231, '教室申请导出', 2226, 5, '#', '', 'F', '0', 'system:applyClassroom:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2233, '楼层信息', 2021, 1, '/system/floor', 'menuItem', 'C', '0', 'system:floor:view', '#', 'admin', '2023-03-01 00:00:00', 'admin', '2023-04-22 09:47:20', '楼层信息菜单');
INSERT INTO `sys_menu` VALUES (2234, '楼层信息查询', 2233, 1, '#', '', 'F', '0', 'system:floor:list', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2235, '楼层信息新增', 2233, 2, '#', '', 'F', '0', 'system:floor:add', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2236, '楼层信息修改', 2233, 3, '#', '', 'F', '0', 'system:floor:edit', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2237, '楼层信息删除', 2233, 4, '#', '', 'F', '0', 'system:floor:remove', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2238, '楼层信息导出', 2233, 5, '#', '', 'F', '0', 'system:floor:export', '#', 'admin', '2023-03-01 00:00:00', 'ry', '2023-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2239, '老师查课', 0, 9, '/system/teacher', 'menuItem', 'C', '1', 'system:teacher:view', 'fa fa-bars', 'admin', '2023-04-22 17:44:55', 'admin', '2023-05-08 11:54:45', '');
INSERT INTO `sys_menu` VALUES (2240, '教师查课', 2239, 1, '#', 'menuItem', 'F', '0', 'system:teacher:list', '#', 'admin', '2023-04-22 19:20:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2241, '学生评分', 0, 10, '/system/teacher/score', 'menuItem', 'C', '1', '', 'fa fa-check', 'admin', '2023-04-22 19:53:34', 'admin', '2023-05-17 15:26:48', '');
INSERT INTO `sys_menu` VALUES (2242, '查询学生课程评分', 2241, 1, '#', 'menuItem', 'F', '0', 'system:teacher:list', '#', 'admin', '2023-04-22 19:54:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2243, '修改学生评分', 2241, 2, '#', 'menuItem', 'F', '0', 'system:teacher:edit', '#', 'admin', '2023-04-22 20:08:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2244, '删除学生评分', 2241, 3, '#', 'menuItem', 'F', '0', 'system:teacher:remove', '#', 'admin', '2023-04-22 20:09:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2245, '导出学生评分', 2241, 4, '#', 'menuItem', 'F', '0', 'system:teacher:export', '#', 'admin', '2023-04-22 20:09:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2246, '新增学生评分', 2241, 0, '#', 'menuItem', 'F', '0', 'system:teacher:add', '#', 'admin', '2023-04-22 20:10:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2247, '学生考勤', 0, 11, '/system/teacherAttendance', 'menuItem', 'C', '1', 'system:teacher:view', 'fa fa-book', 'admin', '2023-04-22 20:46:33', 'admin', '2023-05-17 15:20:48', '');
INSERT INTO `sys_menu` VALUES (2248, '学生考勤修改', 2247, 1, '#', 'menuItem', 'F', '0', 'system:teacher:edit', '#', 'admin', '2023-04-22 20:47:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2249, '学生考勤查询', 2247, 2, '#', 'menuItem', 'F', '0', 'system:teacher:list', '#', 'admin', '2023-04-22 20:48:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2250, '学生考勤新增', 2247, 3, '#', 'menuItem', 'F', '0', 'system:teacher:add', '#', 'admin', '2023-04-22 20:49:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2251, '学生考勤删除', 2247, 4, '#', 'menuItem', 'F', '0', 'system:teacher:remove', '#', 'admin', '2023-04-22 20:50:16', 'admin', '2023-04-22 20:50:29', '');
INSERT INTO `sys_menu` VALUES (2252, '学生考勤导出', 2247, 1, '#', 'menuItem', 'F', '0', 'system:teacher:export', '#', 'admin', '2023-04-22 20:51:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2254, '教室申请', 0, 8, '/system/apply', 'menuItem', 'C', '1', 'system:tea:view', 'fa fa-clone', 'admin', '2023-04-22 21:02:04', 'admin', '2023-05-08 12:06:54', '');
INSERT INTO `sys_menu` VALUES (2255, '教室剩余状态查询', 2254, 1, '#', 'menuItem', 'F', '0', 'system:tea:list', '#', 'admin', '2023-04-22 21:04:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2256, '添加教室申请', 2254, 2, '#', 'menuItem', 'F', '0', 'system:tea:add', '#', 'admin', '2023-04-22 21:05:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2257, '课程评分', 0, 11, '/system/teacher/lessonScore', 'menuItem', 'C', '1', 'system:teacher:view', 'fa fa-calendar-check-o', 'admin', '2023-04-23 11:57:51', 'admin', '2023-05-17 15:20:43', '');
INSERT INTO `sys_menu` VALUES (2258, '教学评分查询', 2257, 1, '#', 'menuItem', 'F', '0', 'system:teacher:list', '#', 'admin', '2023-04-23 12:12:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2259, '课程管理', 0, 6, '#', 'menuItem', 'M', '0', '', 'fa fa-book', 'admin', '2023-05-06 11:50:05', 'admin', '2023-05-06 11:51:36', '');
INSERT INTO `sys_menu` VALUES (2260, '计算机学科', 2259, 1, '#', 'menuItem', 'M', '0', NULL, 'fa fa-desktop', 'admin', '2023-05-06 11:50:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2261, '医学科', 2259, 2, '#', 'menuItem', 'M', '0', NULL, 'fa fa-thermometer', 'admin', '2023-05-06 11:51:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2262, 'C语言程序设计', 2260, 1, '#', 'menuItem', 'M', '0', NULL, 'fa fa-copyright', 'admin', '2023-05-06 11:52:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2263, '外科', 2261, 1, '#', 'menuItem', 'M', '0', '', 'fa fa-deaf', 'admin', '2023-05-06 11:53:11', 'admin', '2023-05-08 12:19:46', '');
INSERT INTO `sys_menu` VALUES (2264, '知识图谱', 2262, 1, 'http://localhost:8080', 'menuItem', 'C', '0', '', 'fa fa-map', 'admin', '2023-05-06 11:55:00', 'admin', '2023-05-06 11:58:02', '');
INSERT INTO `sys_menu` VALUES (2265, '课时任务', 2262, 2, '/demo/form/duallistbox', 'menuItem', 'C', '0', NULL, 'fa fa-calendar-check-o', 'admin', '2023-05-06 11:55:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2266, '知识图谱', 2263, 1, 'http://localhost:8081', 'menuItem', 'C', '0', NULL, 'fa fa-map', 'admin', '2023-05-08 11:53:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2267, '课时任务', 2263, 2, '/demo/form/duallistbox', 'menuItem', 'C', '1', '', 'fa fa-calendar-check-o', 'admin', '2023-05-08 11:54:18', 'admin', '2023-05-08 13:24:38', '');
INSERT INTO `sys_menu` VALUES (2268, '教室申请', 2021, 1, '/system/apply', 'menuItem', 'C', '0', NULL, 'fa fa-calendar-plus-o', 'admin', '2023-05-08 12:06:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2270, '学生课程评分', 2259, 3, '/system/score', 'menuItem', 'C', '0', 'system:cs:view', 'fa fa-calendar-check-o', 'admin', '2023-05-17 15:21:43', 'admin', '2023-05-25 14:44:53', '');
INSERT INTO `sys_menu` VALUES (2271, '查看课程评分结果', 2259, 4, '/system/score', 'menuItem', 'C', '0', 'system:c:view', 'fa fa-bar-chart-o', 'admin', '2023-05-17 15:24:20', 'admin', '2023-05-25 14:45:00', '');

-- ----------------------------
-- Table structure for sys_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_news`;
CREATE TABLE `sys_news`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '内容',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_title`(`title` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = big5 COLLATE = big5_chinese_ci COMMENT = '通知表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_news
-- ----------------------------
INSERT INTO `sys_news` VALUES (52, '通知1', '通知正文', '2023-10-30 13:42:43.000000', '2023-10-30 13:42:43.000000');
INSERT INTO `sys_news` VALUES (53, '上课通知!', '李丽老师有新授课计划,请注意查看课表.该通知由系统自动推送.', '2023-10-31 15:58:40.000000', '2023-10-31 15:58:40.000000');
INSERT INTO `sys_news` VALUES (54, '通知1', '通知正文', '2023-10-31 17:03:05.000000', '2023-10-31 17:03:05.000000');
INSERT INTO `sys_news` VALUES (55, '上课通知!', '李丽老师有新授课计划,请注意查看课表.该通知由系统自动推送.', '2023-10-31 23:31:50.000000', '2023-10-31 23:31:50.000000');
INSERT INTO `sys_news` VALUES (56, '上课通知!', '李丽老师有新授课计划,请注意查看课表.该通知由系统自动推送.', '2023-10-31 23:42:12.000000', '2023-10-31 23:42:12.000000');
INSERT INTO `sys_news` VALUES (57, '上课通知!', '李丽老师有新授课计划,请注意查看课表.该通知由系统自动推送.', '2023-11-01 12:47:18.000000', '2023-11-01 12:47:18.000000');
INSERT INTO `sys_news` VALUES (58, '上课通知!', '李丽老师有新授课计划,请注意查看课表.该通知由系统自动推送.', '2023-11-01 15:05:01.000000', '2023-11-01 15:05:01.000000');
INSERT INTO `sys_news` VALUES (59, '上课通知!', '李丽老师有新授课计划,请注意查看课表.该通知由系统自动推送.', '2023-11-01 15:44:37.000000', '2023-11-01 15:44:37.000000');
INSERT INTO `sys_news` VALUES (60, '上课通知!', '李丽老师有新授课计划,请注意查看课表.该通知由系统自动推送.', '2023-11-02 14:16:47.000000', '2023-11-02 14:16:47.000000');
INSERT INTO `sys_news` VALUES (61, '上课通知!', '李丽老师有新授课计划,请注意查看课表.该通知由系统自动推送.', '2023-11-02 14:21:32.000000', '2023-11-02 14:21:32.000000');
INSERT INTO `sys_news` VALUES (62, '申请通知!', '您有新的教室申请!请查看', NULL, NULL);
INSERT INTO `sys_news` VALUES (63, '申请反馈!', '您的申请已接受!请查收', NULL, NULL);
INSERT INTO `sys_news` VALUES (64, '上课通知!', '李丽老师有新授课计划,请注意查看课表.该通知由系统自动推送.', '2023-11-03 14:34:58.000000', '2023-11-03 14:34:58.000000');
INSERT INTO `sys_news` VALUES (65, '上课通知!', '李丽老师有新授课计划,请注意查看课表.该通知由系统自动推送.', '2023-11-10 14:33:58.000000', '2023-11-10 14:33:58.000000');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2023-05-01 新版本发布啦', '2', '新版本内容', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-05-06 10:58:17', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2023-05-01 系统凌晨维护', '1', '维护内容', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-05-06 10:58:23', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 721 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 16:29:59');
INSERT INTO `sys_oper_log` VALUES (101, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"Luna\" ],\r\n  \"phonenumber\" : [ \"15696756582\" ],\r\n  \"email\" : [ \"15696756582@163.com\" ],\r\n  \"sex\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 16:30:18');
INSERT INTO `sys_oper_log` VALUES (102, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称1\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', 'null', 1, 'EL1007E: Property or field \'configId\' cannot be found on null', '2023-03-16 19:10:19');
INSERT INTO `sys_oper_log` VALUES (103, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称1\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', 'null', 1, 'com.ruoyi.system.domain.SysConfig cannot be cast to java.lang.Number', '2023-03-16 19:14:19');
INSERT INTO `sys_oper_log` VALUES (104, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称1\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', 'null', 1, 'com.ruoyi.system.domain.SysConfig cannot be cast to java.lang.Number', '2023-03-16 19:15:44');
INSERT INTO `sys_oper_log` VALUES (105, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称1\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:17:04');
INSERT INTO `sys_oper_log` VALUES (106, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', 'null', 1, 'Null key returned for cache operation (maybe you are using named params on classes without debug info?) Builder[public int com.ruoyi.system.service.impl.SysConfigServiceImpl.insertConfig(com.ruoyi.system.domain.SysConfig)] caches=[sysConfig] | key=\'#config.configId\' | keyGenerator=\'\' | cacheManager=\'\' | cacheResolver=\'\' | condition=\'\' | unless=\'\' | sync=\'false\'', '2023-03-16 19:22:46');
INSERT INTO `sys_oper_log` VALUES (107, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:23:04');
INSERT INTO `sys_oper_log` VALUES (108, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"11\" ],\r\n  \"configKey\" : [ \"11\" ],\r\n  \"configValue\" : [ \"11\" ],\r\n  \"configType\" : [ \"N\" ],\r\n  \"remark\" : [ \"11\" ]\r\n}', 'null', 1, 'Null key returned for cache operation (maybe you are using named params on classes without debug info?) Builder[public int com.ruoyi.system.service.impl.SysConfigServiceImpl.insertConfig(com.ruoyi.system.domain.SysConfig)] caches=[sysConfig] | key=\'#config.configId\' | keyGenerator=\'\' | cacheManager=\'\' | cacheResolver=\'\' | condition=\'\' | unless=\'\' | sync=\'false\'', '2023-03-16 19:23:38');
INSERT INTO `sys_oper_log` VALUES (109, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"11\" ],\r\n  \"configKey\" : [ \"sys.index.skinName2\" ],\r\n  \"configValue\" : [ \"111\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 'null', 1, 'Null key returned for cache operation (maybe you are using named params on classes without debug info?) Builder[public int com.ruoyi.system.service.impl.SysConfigServiceImpl.insertConfig(com.ruoyi.system.domain.SysConfig)] caches=[sysConfig] | key=\'#config.configId\' | keyGenerator=\'\' | cacheManager=\'\' | cacheResolver=\'\' | condition=\'\' | unless=\'\' | sync=\'false\'', '2023-03-16 19:25:38');
INSERT INTO `sys_oper_log` VALUES (110, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"11\" ],\r\n  \"configKey\" : [ \"11\" ],\r\n  \"configValue\" : [ \"11\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:27:13');
INSERT INTO `sys_oper_log` VALUES (111, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"100\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:28:31');
INSERT INTO `sys_oper_log` VALUES (112, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:28:40');
INSERT INTO `sys_oper_log` VALUES (113, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"101\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:29:27');
INSERT INTO `sys_oper_log` VALUES (114, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:31:39');
INSERT INTO `sys_oper_log` VALUES (115, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"102\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:32:02');
INSERT INTO `sys_oper_log` VALUES (116, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:33:40');
INSERT INTO `sys_oper_log` VALUES (117, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"103\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:33:46');
INSERT INTO `sys_oper_log` VALUES (118, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:35:27');
INSERT INTO `sys_oper_log` VALUES (119, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"104\" ],\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:35:34');
INSERT INTO `sys_oper_log` VALUES (120, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"104\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:35:39');
INSERT INTO `sys_oper_log` VALUES (121, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:36:27');
INSERT INTO `sys_oper_log` VALUES (122, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"105\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:36:34');
INSERT INTO `sys_oper_log` VALUES (123, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:36:51');
INSERT INTO `sys_oper_log` VALUES (124, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"106\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:37:08');
INSERT INTO `sys_oper_log` VALUES (125, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:38:08');
INSERT INTO `sys_oper_log` VALUES (126, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"107\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:38:35');
INSERT INTO `sys_oper_log` VALUES (127, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:39:18');
INSERT INTO `sys_oper_log` VALUES (128, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"108\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:39:23');
INSERT INTO `sys_oper_log` VALUES (129, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:40:26');
INSERT INTO `sys_oper_log` VALUES (130, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"109\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:40:34');
INSERT INTO `sys_oper_log` VALUES (131, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"测试\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword1\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:42:28');
INSERT INTO `sys_oper_log` VALUES (132, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"测试\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword1\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"初始化密码 123456\" ]\r\n}', 'null', 1, 'com.ruoyi.system.domain.SysConfig cannot be cast to java.lang.Number', '2023-03-16 19:42:39');
INSERT INTO `sys_oper_log` VALUES (133, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"测试\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword1\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"初始化密码 123456\" ]\r\n}', 'null', 1, 'com.ruoyi.system.domain.SysConfig cannot be cast to java.lang.Number', '2023-03-16 19:42:45');
INSERT INTO `sys_oper_log` VALUES (134, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"测试\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword1\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"N\" ],\r\n  \"remark\" : [ \"初始化密码 123456hh\" ]\r\n}', 'null', 1, 'com.ruoyi.system.domain.SysConfig cannot be cast to java.lang.Number', '2023-03-16 19:43:30');
INSERT INTO `sys_oper_log` VALUES (135, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"测试\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword12\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 'null', 1, 'com.ruoyi.system.domain.SysConfig cannot be cast to java.lang.Number', '2023-03-16 19:43:51');
INSERT INTO `sys_oper_log` VALUES (136, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"测试\" ],\r\n  \"configKey\" : [ \"sys.user.initPasswordd\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', 'null', 1, 'com.ruoyi.system.domain.SysConfig cannot be cast to java.lang.Number', '2023-03-16 19:44:40');
INSERT INTO `sys_oper_log` VALUES (137, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"测试\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"修改参数\'测试\'失败，参数键名已存在\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2023-03-16 19:44:49');
INSERT INTO `sys_oper_log` VALUES (138, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"测试\" ],\r\n  \"configKey\" : [ \"sys.user.init\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', 'null', 1, 'com.ruoyi.system.domain.SysConfig cannot be cast to java.lang.Number', '2023-03-16 19:45:03');
INSERT INTO `sys_oper_log` VALUES (139, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称1\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', 'null', 1, 'com.ruoyi.system.domain.SysConfig cannot be cast to java.lang.Number', '2023-03-16 19:45:27');
INSERT INTO `sys_oper_log` VALUES (140, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"测试1\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword1\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:46:20');
INSERT INTO `sys_oper_log` VALUES (141, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"测试\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword1\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"初始化密码 123456\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:46:48');
INSERT INTO `sys_oper_log` VALUES (142, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"用户管理-账号初始密码\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword1\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:46:53');
INSERT INTO `sys_oper_log` VALUES (143, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"用户管理-账号初始密码\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword1\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:47:08');
INSERT INTO `sys_oper_log` VALUES (144, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"测试1\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword1\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:47:24');
INSERT INTO `sys_oper_log` VALUES (145, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"用户管理-账号初始密码\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword1\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:47:33');
INSERT INTO `sys_oper_log` VALUES (146, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"测试111\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword1\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:47:51');
INSERT INTO `sys_oper_log` VALUES (147, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称1\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:47:55');
INSERT INTO `sys_oper_log` VALUES (148, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"110\" ],\r\n  \"configName\" : [ \"测试2\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword1\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:48:04');
INSERT INTO `sys_oper_log` VALUES (149, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"110\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:49:04');
INSERT INTO `sys_oper_log` VALUES (150, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:49:12');
INSERT INTO `sys_oper_log` VALUES (151, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:49:23');
INSERT INTO `sys_oper_log` VALUES (152, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:49:29');
INSERT INTO `sys_oper_log` VALUES (153, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:49:36');
INSERT INTO `sys_oper_log` VALUES (154, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:50:14');
INSERT INTO `sys_oper_log` VALUES (155, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:51:46');
INSERT INTO `sys_oper_log` VALUES (156, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"1\" ],\r\n  \"configKey\" : [ \"1\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:51:54');
INSERT INTO `sys_oper_log` VALUES (157, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:52:05');
INSERT INTO `sys_oper_log` VALUES (158, '参数管理', 3, 'com.ruoyi.web.controller.system.SysConfigController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/config/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 19:52:12');
INSERT INTO `sys_oper_log` VALUES (159, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:01:35');
INSERT INTO `sys_oper_log` VALUES (160, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:01:40');
INSERT INTO `sys_oper_log` VALUES (161, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:03:35');
INSERT INTO `sys_oper_log` VALUES (162, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:06:39');
INSERT INTO `sys_oper_log` VALUES (163, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:06:51');
INSERT INTO `sys_oper_log` VALUES (164, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:06:55');
INSERT INTO `sys_oper_log` VALUES (165, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:07:11');
INSERT INTO `sys_oper_log` VALUES (166, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:07:20');
INSERT INTO `sys_oper_log` VALUES (167, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:07:27');
INSERT INTO `sys_oper_log` VALUES (168, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:07:32');
INSERT INTO `sys_oper_log` VALUES (169, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:07:36');
INSERT INTO `sys_oper_log` VALUES (170, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:08:57');
INSERT INTO `sys_oper_log` VALUES (171, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:10:21');
INSERT INTO `sys_oper_log` VALUES (172, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:10:24');
INSERT INTO `sys_oper_log` VALUES (173, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/admin/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-16 20:10:27');
INSERT INTO `sys_oper_log` VALUES (174, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'ry', '测试部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"105\"],\"userName\":[\"luna\"],\"deptName\":[\"测试部门\"],\"phonenumber\":[\"15696756588\"],\"email\":[\"ltribe.account@foxmail.com\"],\"loginName\":[\"15696756588\"],\"password\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 19:03:17');
INSERT INTO `sys_oper_log` VALUES (175, '重置密码', 2, 'com.ruoyi.project.system.user.controller.UserController.resetPwd()', 'GET', 1, 'ry', '测试部门', '/system/user/resetPwd/100', '127.0.0.1', '内网IP', '{}', '\"system/user/resetPwd\"', 0, NULL, '2023-03-20 19:03:47');
INSERT INTO `sys_oper_log` VALUES (176, '用户管理', 3, 'com.ruoyi.project.system.user.controller.UserController.remove()', 'POST', 1, 'ry', '测试部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 19:03:56');
INSERT INTO `sys_oper_log` VALUES (177, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'ry', '测试部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"105\"],\"userName\":[\"luna\"],\"deptName\":[\"测试部门\"],\"phonenumber\":[\"15696756587\"],\"email\":[\"15696756582@163.com\"],\"loginName\":[\"luna\"],\"password\":[\"admin\"],\"sex\":[\"0\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"2\"]}', '{\"msg\":\"新增用户\'luna\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2023-03-20 19:24:48');
INSERT INTO `sys_oper_log` VALUES (178, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'ry', '测试部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,112,111,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 19:25:38');
INSERT INTO `sys_oper_log` VALUES (179, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'ry', '测试部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,112,111,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 19:25:40');
INSERT INTO `sys_oper_log` VALUES (180, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 19:26:52');
INSERT INTO `sys_oper_log` VALUES (181, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 19:26:53');
INSERT INTO `sys_oper_log` VALUES (182, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 20:36:50');
INSERT INTO `sys_oper_log` VALUES (183, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 20:37:41');
INSERT INTO `sys_oper_log` VALUES (184, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'ry', '测试部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,112,111,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 20:40:45');
INSERT INTO `sys_oper_log` VALUES (185, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 20:58:45');
INSERT INTO `sys_oper_log` VALUES (186, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 20:58:45');
INSERT INTO `sys_oper_log` VALUES (187, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 20:59:15');
INSERT INTO `sys_oper_log` VALUES (188, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'ry', '测试部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 21:11:42');
INSERT INTO `sys_oper_log` VALUES (189, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 21:12:49');
INSERT INTO `sys_oper_log` VALUES (190, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-20 21:13:02');
INSERT INTO `sys_oper_log` VALUES (191, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"tb_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 18:13:29');
INSERT INTO `sys_oper_log` VALUES (192, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/tb_student', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-03-25 18:15:17');
INSERT INTO `sys_oper_log` VALUES (193, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/tb_student', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-03-25 18:15:19');
INSERT INTO `sys_oper_log` VALUES (194, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 18:17:56');
INSERT INTO `sys_oper_log` VALUES (195, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"tb_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 18:18:21');
INSERT INTO `sys_oper_log` VALUES (196, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/tb_student', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-03-25 18:18:31');
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/tb_student', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-03-25 18:18:33');
INSERT INTO `sys_oper_log` VALUES (198, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 19:27:56');
INSERT INTO `sys_oper_log` VALUES (199, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"tb_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 19:28:02');
INSERT INTO `sys_oper_log` VALUES (200, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/tb_student', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-03-25 19:28:18');
INSERT INTO `sys_oper_log` VALUES (201, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/tb_student', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-03-25 19:28:21');
INSERT INTO `sys_oper_log` VALUES (202, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-25 23:07:58');
INSERT INTO `sys_oper_log` VALUES (203, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"tb_student\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2023-03-25 23:08:03');
INSERT INTO `sys_oper_log` VALUES (204, '字典类型', 1, 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"是否开通注册\"],\"dictType\":[\"sys.account.registerUser\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-27 21:37:52');
INSERT INTO `sys_oper_log` VALUES (205, '字典类型', 3, 'com.ruoyi.project.system.dict.controller.DictTypeController.remove()', 'POST', 1, 'admin', '研发部门', '/system/dict/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-27 21:40:06');
INSERT INTO `sys_oper_log` VALUES (206, '参数管理', 1, 'com.ruoyi.project.system.config.controller.ConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/config/add', '127.0.0.1', '内网IP', '{\"configName\":[\"开通注册功能\"],\"configKey\":[\"sys.account.registerUser\"],\"configValue\":[\"true\"],\"configType\":[\"Y\"],\"remark\":[\"开通注册功能\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-27 21:40:51');
INSERT INTO `sys_oper_log` VALUES (207, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"java.io.FileNotFoundException: C:\\\\Users\\\\improve\\\\AppData\\\\Local\\\\Temp\\\\tomcat.8358989086917829605.8081\\\\work\\\\Tomcat\\\\localhost\\\\ROOT\\\\null\\\\avatar\\\\2020\\\\03\\\\28\\\\dbf6c4724ec968d1dbcc32474e2ef502.png (系统找不到指定的路径。)\",\"code\":500}', 0, NULL, '2023-03-28 10:05:39');
INSERT INTO `sys_oper_log` VALUES (208, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"java.io.FileNotFoundException: C:\\\\Users\\\\improve\\\\AppData\\\\Local\\\\Temp\\\\tomcat.5732162238024691554.8081\\\\work\\\\Tomcat\\\\localhost\\\\ROOT\\\\null\\\\avatar\\\\2020\\\\03\\\\28\\\\c4a607d394d36d7555bbd6d6e93bafd9.png (系统找不到指定的路径。)\",\"code\":500}', 0, NULL, '2023-03-28 10:07:24');
INSERT INTO `sys_oper_log` VALUES (209, '个人信息', 2, 'com.luna.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 10:45:21');
INSERT INTO `sys_oper_log` VALUES (210, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"d1893dea-a733-47c6-8a2e-bf7c5a9c31ad_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 12:59:01');
INSERT INTO `sys_oper_log` VALUES (211, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"4dbd02bf-7fac-4692-8204-2fffd7889b75_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:12:41');
INSERT INTO `sys_oper_log` VALUES (212, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"小明\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"ea448b1e-976b-4f55-8a79-b59e7ebda8d1_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:13:45');
INSERT INTO `sys_oper_log` VALUES (213, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"小明\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"6017dc46-3e2b-4d4c-b5d6-3e490df3f69d_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:14:49');
INSERT INTO `sys_oper_log` VALUES (214, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"小明\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"305fb08d-effe-408d-8550-6bc1d5f9dec2_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:15:14');
INSERT INTO `sys_oper_log` VALUES (215, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"小明\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"bffd6a76-548e-4cf9-9f30-c166fbd08f92_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:18:56');
INSERT INTO `sys_oper_log` VALUES (216, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"小明\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"9939de78-d29c-4b19-b0ab-f932ec3277fb_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:21:26');
INSERT INTO `sys_oper_log` VALUES (217, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"小明\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"f88101e1-830c-4304-880e-7958754ede71_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:22:09');
INSERT INTO `sys_oper_log` VALUES (218, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"b258c3dc-723b-4799-a198-ba17b19fa870_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:23:37');
INSERT INTO `sys_oper_log` VALUES (219, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"e6a5173a-892f-4d72-81f9-93b910ebb000_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:27:55');
INSERT INTO `sys_oper_log` VALUES (220, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"c26815c2-b554-4af1-adf1-972a6a877e92_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:29:59');
INSERT INTO `sys_oper_log` VALUES (221, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"6440e7bd-37b2-4520-ae1f-63b85df34388_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:31:42');
INSERT INTO `sys_oper_log` VALUES (222, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"4aacc9c3-90db-4197-af01-835b091edb6b_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:32:30');
INSERT INTO `sys_oper_log` VALUES (223, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"ea1e0af1-9e27-4a36-9b12-9a4a680cf189_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:35:06');
INSERT INTO `sys_oper_log` VALUES (224, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"f3e4bafa-e9b7-40e5-9264-06da2089bf00_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:35:18');
INSERT INTO `sys_oper_log` VALUES (225, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"5f7e5f65-f223-4769-a066-faae883f7f8e_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:48:21');
INSERT INTO `sys_oper_log` VALUES (226, '用户管理', 5, 'com.luna.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"029f17ef-d452-44bc-979f-e7f4428a5325_用户数据.xlsx\",\"code\":0}', 0, NULL, '2023-03-28 13:50:47');
INSERT INTO `sys_oper_log` VALUES (227, '代码生成', 6, 'com.luna.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '192.168.1.103', '内网IP', '{\"tables\":[\"sys_file_info\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 15:29:23');
INSERT INTO `sys_oper_log` VALUES (228, '代码生成', 8, 'com.luna.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_file_info', '192.168.1.103', '内网IP', '{}', 'null', 0, NULL, '2023-03-28 15:29:29');
INSERT INTO `sys_oper_log` VALUES (229, '代码生成', 8, 'com.luna.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_file_info', '192.168.1.103', '内网IP', '{}', 'null', 0, NULL, '2023-03-28 15:29:33');
INSERT INTO `sys_oper_log` VALUES (230, '文件信息', 1, 'com.luna.project.system.info.controller.FileInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/info/add', '192.168.1.103', '内网IP', '{\"fileName\":[\"1\"],\"filePath\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 15:34:16');
INSERT INTO `sys_oper_log` VALUES (231, '文件信息', 2, 'com.luna.project.system.info.controller.FileInfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/info/edit', '192.168.1.103', '内网IP', '{\"fileId\":[\"1\"],\"fileName\":[\"2\"],\"filePath\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 15:34:22');
INSERT INTO `sys_oper_log` VALUES (232, '文件信息', 1, 'com.luna.project.system.info.controller.FileInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/info/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"11\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 16:08:26');
INSERT INTO `sys_oper_log` VALUES (233, '文件信息', 3, 'com.luna.project.system.info.controller.FileInfoController.remove()', 'POST', 1, 'admin', '研发部门', '/system/info/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 16:09:58');
INSERT INTO `sys_oper_log` VALUES (234, '文件信息', 2, 'com.luna.project.system.info.controller.FileInfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/info/edit', '127.0.0.1', '内网IP', '{\"fileId\":[\"2\"],\"fileName\":[\"girl\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 16:10:30');
INSERT INTO `sys_oper_log` VALUES (235, '代码生成', 6, 'com.luna.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_cuisine\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 20:59:16');
INSERT INTO `sys_oper_log` VALUES (236, '代码生成', 8, 'com.luna.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_cuisine', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-03-28 20:59:57');
INSERT INTO `sys_oper_log` VALUES (237, '代码生成', 8, 'com.luna.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_cuisine', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-03-28 20:59:59');
INSERT INTO `sys_oper_log` VALUES (238, '菜单管理', 1, 'com.luna.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"测试页面\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 21:08:29');
INSERT INTO `sys_oper_log` VALUES (239, '菜单管理', 2, 'com.luna.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2012\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"测试页面\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 21:09:01');
INSERT INTO `sys_oper_log` VALUES (240, '菜单管理', 2, 'com.luna.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2006\"],\"parentId\":[\"2012\"],\"menuType\":[\"C\"],\"menuName\":[\"菜品信息\"],\"url\":[\"/system/cuisine\"],\"target\":[\"menuItem\"],\"perms\":[\"system:cuisine:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 21:09:35');
INSERT INTO `sys_oper_log` VALUES (241, '菜单管理', 1, 'com.luna.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2012\"],\"menuType\":[\"F\"],\"menuName\":[\"Thymeleaf测试\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 21:10:53');
INSERT INTO `sys_oper_log` VALUES (242, '菜单管理', 2, 'com.luna.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2012\"],\"menuType\":[\"C\"],\"menuName\":[\"Thymeleaf测试\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 21:11:24');
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 2, 'com.luna.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2012\"],\"menuType\":[\"C\"],\"menuName\":[\"Thymeleaf测试\"],\"url\":[\"demo\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 21:12:58');
INSERT INTO `sys_oper_log` VALUES (244, '菜单管理', 2, 'com.luna.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2012\"],\"menuType\":[\"C\"],\"menuName\":[\"Thymeleaf测试\"],\"url\":[\"/demo\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 21:14:21');
INSERT INTO `sys_oper_log` VALUES (245, '菜单管理', 2, 'com.luna.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2012\"],\"menuType\":[\"C\"],\"menuName\":[\"Thymeleaf测试\"],\"url\":[\"/demo\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 11:23:35');
INSERT INTO `sys_oper_log` VALUES (246, '菜单管理', 1, 'com.luna.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2013\"],\"menuType\":[\"F\"],\"menuName\":[\"crud用户新增\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 11:57:57');
INSERT INTO `sys_oper_log` VALUES (247, '部门管理', 2, 'com.luna.project.system.dept.controller.DeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"AlterSoftware\"],\"orderNum\":[\"0\"],\"leader\":[\"luna\"],\"phone\":[\"15888888888\"],\"email\":[\"luna@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-01 11:12:03');
INSERT INTO `sys_oper_log` VALUES (248, '部门管理', 2, 'com.luna.project.system.dept.controller.DeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"102\"],\"parentId\":[\"100\"],\"parentName\":[\"AlterSoftware\"],\"deptName\":[\"江苏分公司\"],\"orderNum\":[\"2\"],\"leader\":[\"luna\"],\"phone\":[\"15888888888\"],\"email\":[\"luna@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-01 11:12:25');
INSERT INTO `sys_oper_log` VALUES (249, '通知公告', 2, 'com.luna.project.system.notice.controller.NoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"1\"],\"noticeTitle\":[\"温馨提醒：2018-07-01 新版本发布啦\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"新版本内容\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-03 14:16:24');
INSERT INTO `sys_oper_log` VALUES (250, '通知公告', 2, 'com.luna.project.system.notice.controller.NoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"2\"],\"noticeTitle\":[\"维护通知：2018-07-01 系统凌晨维护\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"维护内容\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-03 14:16:37');
INSERT INTO `sys_oper_log` VALUES (251, '定时任务', 2, 'com.luna.project.monitor.job.controller.JobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"],\"jobName\":[\"系统默认（无参）\"],\"jobGroup\":[\"DEFAULT\"],\"invokeTarget\":[\"ryTask.ryNoParams\"],\"cronExpression\":[\"0/10 * * * * ?\"],\"misfirePolicy\":[\"2\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-03 14:18:37');
INSERT INTO `sys_oper_log` VALUES (252, '定时任务', 2, 'com.luna.project.monitor.job.controller.JobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"],\"jobName\":[\"系统默认（无参）\"],\"jobGroup\":[\"DEFAULT\"],\"invokeTarget\":[\"ryTask.ryNoParams\"],\"cronExpression\":[\"0/10 * * * * ?\"],\"misfirePolicy\":[\"3\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-03 14:19:11');
INSERT INTO `sys_oper_log` VALUES (253, '定时任务', 2, 'com.luna.project.monitor.job.controller.JobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"],\"jobName\":[\"系统默认（无参）\"],\"jobGroup\":[\"DEFAULT\"],\"invokeTarget\":[\"ryTask.ryNoParams\"],\"cronExpression\":[\"0/10 * * * * ?\"],\"misfirePolicy\":[\"2\"],\"concurrent\":[\"1\"],\"status\":[\"1\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-03 14:19:44');
INSERT INTO `sys_oper_log` VALUES (254, '定时任务', 2, 'com.luna.project.monitor.job.controller.JobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"],\"jobName\":[\"系统默认（无参）\"],\"jobGroup\":[\"DEFAULT\"],\"invokeTarget\":[\"ryTask.ryNoParams\"],\"cronExpression\":[\"0/10 * * * * ?\"],\"misfirePolicy\":[\"2\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-03 14:43:56');
INSERT INTO `sys_oper_log` VALUES (255, '定时任务', 2, 'com.luna.project.monitor.job.controller.JobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"],\"jobName\":[\"系统默认（无参）\"],\"jobGroup\":[\"DEFAULT\"],\"invokeTarget\":[\"ryTask.ryNoParams\"],\"cronExpression\":[\"0/10 * * * * ?\"],\"misfirePolicy\":[\"2\"],\"concurrent\":[\"1\"],\"status\":[\"1\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-03 14:44:20');
INSERT INTO `sys_oper_log` VALUES (256, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:33:59');
INSERT INTO `sys_oper_log` VALUES (257, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:34:24');
INSERT INTO `sys_oper_log` VALUES (258, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:34:42');
INSERT INTO `sys_oper_log` VALUES (259, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:34:54');
INSERT INTO `sys_oper_log` VALUES (260, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:35:03');
INSERT INTO `sys_oper_log` VALUES (261, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"档案信息\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:37:36');
INSERT INTO `sys_oper_log` VALUES (262, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2119\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"档案信息\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:37:57');
INSERT INTO `sys_oper_log` VALUES (263, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2012\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"测试页面\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:38:04');
INSERT INTO `sys_oper_log` VALUES (264, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2089\"],\"parentId\":[\"2119\"],\"menuType\":[\"C\"],\"menuName\":[\"学生/老师档案\"],\"url\":[\"/system/infost\"],\"target\":[\"menuItem\"],\"perms\":[\"system:infost:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:38:31');
INSERT INTO `sys_oper_log` VALUES (265, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2015\"],\"parentId\":[\"2119\"],\"menuType\":[\"C\"],\"menuName\":[\"学院管理\"],\"url\":[\"/system/academy\"],\"target\":[\"menuItem\"],\"perms\":[\"system:academy:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:40:40');
INSERT INTO `sys_oper_log` VALUES (266, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2052\"],\"parentId\":[\"2119\"],\"menuType\":[\"C\"],\"menuName\":[\"楼层信息\"],\"url\":[\"/system/floor\"],\"target\":[\"menuItem\"],\"perms\":[\"system:floor:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:41:02');
INSERT INTO `sys_oper_log` VALUES (267, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"104\"],\"parentId\":[\"2119\"],\"menuType\":[\"C\"],\"menuName\":[\"岗位管理\"],\"url\":[\"/system/post\"],\"target\":[\"menuItem\"],\"perms\":[\"system:post:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:41:19');
INSERT INTO `sys_oper_log` VALUES (268, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2046\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"设备信息\"],\"url\":[\"/system/equipment\"],\"target\":[\"menuItem\"],\"perms\":[\"system:equipment:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:41:37');
INSERT INTO `sys_oper_log` VALUES (269, '文件信息', 2, 'edu.yctc.project.system.info.controller.FileInfoController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/info/edit', '127.0.0.1', '内网IP', '{\"fileId\":[\"2\"],\"fileName\":[\"girl\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:45:28');
INSERT INTO `sys_oper_log` VALUES (270, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:47:14');
INSERT INTO `sys_oper_log` VALUES (271, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:47:37');
INSERT INTO `sys_oper_log` VALUES (272, '用户管理', 2, 'edu.yctc.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"Luna\"],\"dept.deptName\":[\"软件工程\"],\"phonenumber\":[\"15696756583\"],\"email\":[\"15696756582@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 'null', 1, '不允许操作超级管理员用户', '2023-04-18 21:48:15');
INSERT INTO `sys_oper_log` VALUES (273, '用户管理', 1, 'edu.yctc.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"luna\"],\"deptName\":[\"软件工程\"],\"phonenumber\":[\"15696756582\"],\"email\":[\"15696756582@163.com\"],\"loginName\":[\"luna\"],\"password\":[\"admin123\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:50:47');
INSERT INTO `sys_oper_log` VALUES (274, '用户管理', 4, 'edu.yctc.project.system.user.controller.UserController.insertAuthRole()', 'POST', 1, 'admin', '软件工程', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"104\"],\"roleIds\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:51:03');
INSERT INTO `sys_oper_log` VALUES (275, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', 1, 'luna', '软件工程', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', 'null', 1, '不允许操作超级管理员角色', '2023-04-18 21:52:38');
INSERT INTO `sys_oper_log` VALUES (276, '角色管理', 1, 'edu.yctc.project.system.role.controller.RoleController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"信息管理员\"],\"roleKey\":[\"info\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"信息管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,2000,2001,2002,2003,2004,2005,114,1057,1058,1059,1060,1061,115,2021,2058,2059,2060,2061,2062,2063,2082,2083,2084,2085,2086,2087,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2022,2023,2024,2025,2026,2027,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,103,1016,1017,1018,1019,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2046,2047,2048,2049,2050,2051,2119,2052,2053,2054,2055,2056,2057,2089,2090,2091,2092,2093,2094,2015,2016,2017,2018,2019,2020,104,1020,1021,1022,1023,1024,2012,2006,2007,2008,2009,2010,2011,2013,2014\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:54:07');
INSERT INTO `sys_oper_log` VALUES (277, '用户管理', 4, 'edu.yctc.project.system.user.controller.UserController.insertAuthRole()', 'POST', 1, 'admin', '软件工程', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"104\"],\"roleIds\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:54:26');
INSERT INTO `sys_oper_log` VALUES (278, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'luna', '软件工程', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:55:01');
INSERT INTO `sys_oper_log` VALUES (279, '在线用户', 7, 'edu.yctc.project.monitor.online.controller.UserOnlineController.forceLogout()', 'POST', 1, 'luna', '软件工程', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\"sessionId\":[\"bfb372da-21ea-4ea3-b07f-e43f386c9134\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 21:56:59');
INSERT INTO `sys_oper_log` VALUES (280, '文件信息', 3, 'edu.yctc.project.system.info.controller.FileInfoController.remove()', 'POST', 1, 'luna', '软件工程', '/system/info/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 22:08:09');
INSERT INTO `sys_oper_log` VALUES (281, '文件信息', 1, 'edu.yctc.project.system.info.controller.FileInfoController.addSave()', 'POST', 1, 'luna', '软件工程', '/system/info/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"panda\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 22:08:36');
INSERT INTO `sys_oper_log` VALUES (282, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'luna', '软件工程', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 22:36:13');
INSERT INTO `sys_oper_log` VALUES (283, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'luna', '软件工程', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-18 22:36:13');
INSERT INTO `sys_oper_log` VALUES (284, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_checkpicture\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 10:18:39');
INSERT INTO `sys_oper_log` VALUES (285, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_checkpicture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 10:18:43');
INSERT INTO `sys_oper_log` VALUES (286, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_checkpicture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 10:18:44');
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"检测图片\"],\"url\":[\"/system/checkpicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:checkpicture:view\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 10:36:58');
INSERT INTO `sys_oper_log` VALUES (288, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2126', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 10:38:52');
INSERT INTO `sys_oper_log` VALUES (289, '代码生成', 3, 'edu.yctc.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '软件工程', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 10:39:08');
INSERT INTO `sys_oper_log` VALUES (290, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_checkpicture\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 10:39:17');
INSERT INTO `sys_oper_log` VALUES (291, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_checkpicture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 10:39:36');
INSERT INTO `sys_oper_log` VALUES (292, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_checkpicture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 10:39:38');
INSERT INTO `sys_oper_log` VALUES (293, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"检测图片\"],\"url\":[\"/system/checkpicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:checkpicture:view\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 10:45:57');
INSERT INTO `sys_oper_log` VALUES (294, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_news\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 11:38:21');
INSERT INTO `sys_oper_log` VALUES (295, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_news', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 11:38:24');
INSERT INTO `sys_oper_log` VALUES (296, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_news', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 11:38:24');
INSERT INTO `sys_oper_log` VALUES (297, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_checkpicture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 11:46:22');
INSERT INTO `sys_oper_log` VALUES (298, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_checkpicture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 11:46:39');
INSERT INTO `sys_oper_log` VALUES (299, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_checkpicture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 11:46:40');
INSERT INTO `sys_oper_log` VALUES (300, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_lesson_know\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 11:51:08');
INSERT INTO `sys_oper_log` VALUES (301, '代码生成', 3, 'edu.yctc.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '软件工程', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 11:53:49');
INSERT INTO `sys_oper_log` VALUES (302, '代码生成', 3, 'edu.yctc.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '软件工程', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 11:53:51');
INSERT INTO `sys_oper_log` VALUES (303, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_news\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 11:55:08');
INSERT INTO `sys_oper_log` VALUES (304, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_lesson_know', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 11:55:43');
INSERT INTO `sys_oper_log` VALUES (305, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_lesson_know', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 11:55:44');
INSERT INTO `sys_oper_log` VALUES (306, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_lesson_know', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 11:59:32');
INSERT INTO `sys_oper_log` VALUES (307, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_lesson_know', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 11:59:33');
INSERT INTO `sys_oper_log` VALUES (308, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'luna', '软件工程', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 12:23:26');
INSERT INTO `sys_oper_log` VALUES (309, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 12:46:21');
INSERT INTO `sys_oper_log` VALUES (310, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_knowledge_picture\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 13:04:25');
INSERT INTO `sys_oper_log` VALUES (311, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_picture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 13:04:27');
INSERT INTO `sys_oper_log` VALUES (312, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_picture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 13:04:27');
INSERT INTO `sys_oper_log` VALUES (313, '代码生成', 3, 'edu.yctc.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '软件工程', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"12\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 13:08:32');
INSERT INTO `sys_oper_log` VALUES (314, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_knowledge_picture\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 13:08:38');
INSERT INTO `sys_oper_log` VALUES (315, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_picture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 13:08:42');
INSERT INTO `sys_oper_log` VALUES (316, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_picture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 13:08:51');
INSERT INTO `sys_oper_log` VALUES (317, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_knowledge_student_state\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 13:18:41');
INSERT INTO `sys_oper_log` VALUES (318, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_student_state', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 13:18:44');
INSERT INTO `sys_oper_log` VALUES (319, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_student_state', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 13:18:44');
INSERT INTO `sys_oper_log` VALUES (320, '代码生成', 2, 'edu.yctc.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"14\"],\"tableName\":[\"sys_knowledge_student_state\"],\"tableComment\":[\"知识点和学生状态关联表\"],\"className\":[\"KnowledgeStudentState\"],\"functionAuthor\":[\"yctc\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"66\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"67\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"用户id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"userId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"68\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"课程id\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"lessonId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"69\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"状态\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"state\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"70\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"开始扫描时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"scanStartTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"71\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"结束扫描时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"sca', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 13:23:11');
INSERT INTO `sys_oper_log` VALUES (321, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_student_state', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 13:23:14');
INSERT INTO `sys_oper_log` VALUES (322, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_student_state', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 13:23:16');
INSERT INTO `sys_oper_log` VALUES (323, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_checkpicture\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 13:51:22');
INSERT INTO `sys_oper_log` VALUES (324, '代码生成', 2, 'edu.yctc.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"15\"],\"tableName\":[\"sys_checkpicture\"],\"tableComment\":[\"检测图片表\"],\"className\":[\"Checkpicture\"],\"functionAuthor\":[\"yctc\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"75\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"76\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"图片编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"pictureid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"77\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"状态标记\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"intflag\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"78\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"知识点编号\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"knowledgeid\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"edu.yctc.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"checkpicture\"],\"functionName\":[\"检测图片\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 13:51:53');
INSERT INTO `sys_oper_log` VALUES (325, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_checkpicture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 13:51:58');
INSERT INTO `sys_oper_log` VALUES (326, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_checkpicture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 13:51:58');
INSERT INTO `sys_oper_log` VALUES (327, '代码生成', 3, 'edu.yctc.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '软件工程', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 14:12:23');
INSERT INTO `sys_oper_log` VALUES (328, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_knowledge_picture\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 14:12:33');
INSERT INTO `sys_oper_log` VALUES (329, '代码生成', 3, 'edu.yctc.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '软件工程', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"16\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 14:14:22');
INSERT INTO `sys_oper_log` VALUES (330, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_picture_knowledge\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 14:14:25');
INSERT INTO `sys_oper_log` VALUES (331, '代码生成', 2, 'edu.yctc.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"17\"],\"tableName\":[\"sys_picture_knowledge\"],\"tableComment\":[\"图片和知识点关联表\"],\"className\":[\"PictureKnowledge\"],\"functionAuthor\":[\"yctc\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"82\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"83\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"识别到的照片\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"picture\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"84\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"知识点编号\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"knowledgeid\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"edu.yctc.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"pictureKnowledge\"],\"functionName\":[\"图片和知识点关联\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 14:14:45');
INSERT INTO `sys_oper_log` VALUES (332, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_picture_knowledge', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 14:14:48');
INSERT INTO `sys_oper_log` VALUES (333, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_picture_knowledge', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 14:14:48');
INSERT INTO `sys_oper_log` VALUES (334, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_checkpicture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 14:22:28');
INSERT INTO `sys_oper_log` VALUES (335, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_checkpicture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 14:22:29');
INSERT INTO `sys_oper_log` VALUES (336, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_picture_knowledge', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 14:23:52');
INSERT INTO `sys_oper_log` VALUES (337, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_picture_knowledge', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 14:23:54');
INSERT INTO `sys_oper_log` VALUES (338, '代码生成', 2, 'edu.yctc.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"14\"],\"tableName\":[\"sys_knowledge_student_state\"],\"tableComment\":[\"知识点和学生状态关联表\"],\"className\":[\"KnowledgeStudentState\"],\"functionAuthor\":[\"yctc\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"66\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"67\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"用户id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"userId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"68\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"课程id\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"lessonId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"69\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"状态\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"state\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"70\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"开始扫描时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"scanStartTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"71\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"结束扫描时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"sca', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 14:43:12');
INSERT INTO `sys_oper_log` VALUES (339, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_student_state', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 14:43:22');
INSERT INTO `sys_oper_log` VALUES (340, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_student_state', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 14:43:24');
INSERT INTO `sys_oper_log` VALUES (341, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_user_news\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 14:49:53');
INSERT INTO `sys_oper_log` VALUES (342, '代码生成', 2, 'edu.yctc.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"sys_user_news\"],\"tableComment\":[\"用户和通知关联表\"],\"className\":[\"UserNews\"],\"functionAuthor\":[\"yctc\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"85\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"86\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"用户id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"userId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"87\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"消息id\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"newsId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"88\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"阅读状态\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"state\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"89\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"90\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"修改时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"modifyTime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"c', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 14:50:08');
INSERT INTO `sys_oper_log` VALUES (343, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_user_news', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 14:50:14');
INSERT INTO `sys_oper_log` VALUES (344, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_user_news', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 14:50:14');
INSERT INTO `sys_oper_log` VALUES (345, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_news', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 15:23:08');
INSERT INTO `sys_oper_log` VALUES (346, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_news', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 15:23:08');
INSERT INTO `sys_oper_log` VALUES (347, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_knowledge_picture\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 15:36:02');
INSERT INTO `sys_oper_log` VALUES (348, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_picture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 15:36:06');
INSERT INTO `sys_oper_log` VALUES (349, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_picture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 15:36:07');
INSERT INTO `sys_oper_log` VALUES (350, '代码生成', 2, 'edu.yctc.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"19\"],\"tableName\":[\"sys_knowledge_picture\"],\"tableComment\":[\"图片和知识点关联表\"],\"className\":[\"KnowledgePicture\"],\"functionAuthor\":[\"yctc\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"91\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"92\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"识别到的照片\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"picture\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"93\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"知识点编号\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"knowledgeid\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"edu.yctc.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"knowledgePicture\"],\"functionName\":[\"图片和知识点关联\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 15:37:51');
INSERT INTO `sys_oper_log` VALUES (351, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_picture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 15:37:53');
INSERT INTO `sys_oper_log` VALUES (352, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge_picture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 15:37:54');
INSERT INTO `sys_oper_log` VALUES (353, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2212\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"图片和知识点关联\"],\"url\":[\"/system/knowledgePicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledgePicture:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 15:59:14');
INSERT INTO `sys_oper_log` VALUES (354, '用户和通知关联', 1, 'edu.yctc.project.system.userNews.controller.UserNewsController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/userNews/add', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"newsId\":[\"1\"],\"state\":[\"1\"],\"modifyTime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 16:13:39');
INSERT INTO `sys_oper_log` VALUES (355, '用户和通知关联', 3, 'edu.yctc.project.system.userNews.controller.UserNewsController.remove()', 'POST', 1, 'admin', '软件工程', '/system/userNews/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"146\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 16:13:55');
INSERT INTO `sys_oper_log` VALUES (356, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"信息管理员\"],\"roleKey\":[\"info\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"信息管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2212,2213,2214,2215,2216,2217,2000,2001,2002,2003,2004,2005,114,1057,1058,1059,1060,1061,115,2021,2058,2059,2060,2061,2062,2063,2082,2083,2084,2085,2086,2087,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2022,2023,2024,2025,2026,2027,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,103,1016,1017,1018,1019,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2046,2047,2048,2049,2050,2051,2119,2052,2053,2054,2055,2056,2057,2089,2090,2091,2092,2093,2094,2015,2016,2017,2018,2019,2020,104,1020,1021,1022,1023,1024,2012,2006,2007,2008,2009,2010,2011,2013,2014\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 16:56:43');
INSERT INTO `sys_oper_log` VALUES (357, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'luna', '软件工程', '/tool/gen/genCode/sys_knowledge_picture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 21:55:34');
INSERT INTO `sys_oper_log` VALUES (358, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'luna', '软件工程', '/tool/gen/genCode/sys_knowledge_picture', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-19 21:55:36');
INSERT INTO `sys_oper_log` VALUES (359, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'luna', '软件工程', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"信息管理员\"],\"roleKey\":[\"info\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"信息管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,112,111,3,2212,2213,2214,2215,2216,2217,113,2000,2001,2002,2003,2004,2005,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,114,1057,1058,1059,1060,1061,115,2021,2022,2023,2024,2025,2026,2027,2034,2035,2036,2037,2038,2039,2082,2083,2084,2085,2086,2087,2101,2102,2103,2104,2105,2106,2040,2041,2042,2043,2044,2045,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2058,2059,2060,2061,2062,2063,103,1016,1017,1018,1019,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2046,2047,2048,2049,2050,2051,2119,2089,2090,2091,2092,2093,2094,2015,2016,2017,2018,2019,2020,2052,2053,2054,2055,2056,2057,104,1020,1021,1022,1023,1024,2012,2013,2014,2006,2007,2008,2009,2010,2011\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 21:58:30');
INSERT INTO `sys_oper_log` VALUES (360, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'luna', '软件工程', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"信息管理员\"],\"roleKey\":[\"info\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"信息管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,112,111,2021,2022,2023,2024,2025,2026,2027,2034,2035,2036,2037,2038,2039,2082,2083,2084,2085,2086,2087,2101,2102,2103,2104,2105,2106,2040,2041,2042,2043,2044,2045,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2058,2059,2060,2061,2062,2063,103,1016,1017,1018,1019,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2046,2047,2048,2049,2050,2051,2119,2089,2090,2091,2092,2093,2094,2015,2016,2017,2018,2019,2020,2052,2053,2054,2055,2056,2057,104,1020,1021,1022,1023,1024,2012,2013,2014,2006,2007,2008,2009,2010,2011\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 21:59:29');
INSERT INTO `sys_oper_log` VALUES (361, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"信息管理员\"],\"roleKey\":[\"info\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"信息管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2212,2213,2214,2215,2216,2217,2218,2219,2220,2221,2222,2223,2000,2001,2002,2003,2004,2005,114,1057,1058,1059,1060,1061,115,2021,2058,2059,2060,2061,2062,2063,2082,2083,2084,2085,2086,2087,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2022,2023,2024,2025,2026,2027,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,103,1016,1017,1018,1019,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2046,2047,2048,2049,2050,2051,2119,2052,2053,2054,2055,2056,2057,2089,2090,2091,2092,2093,2094,2015,2016,2017,2018,2019,2020,104,1020,1021,1022,1023,1024,2012,2006,2007,2008,2009,2010,2011,2013,2014\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:00:50');
INSERT INTO `sys_oper_log` VALUES (362, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2213', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2023-04-19 22:02:56');
INSERT INTO `sys_oper_log` VALUES (363, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"信息管理员\"],\"roleKey\":[\"info\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"信息管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2000,2001,2002,2003,2004,2005,114,1057,1058,1059,1060,1061,115,2021,2058,2059,2060,2061,2062,2063,2082,2083,2084,2085,2086,2087,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2022,2023,2024,2025,2026,2027,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,103,1016,1017,1018,1019,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2046,2047,2048,2049,2050,2051,2119,2052,2053,2054,2055,2056,2057,2089,2090,2091,2092,2093,2094,2015,2016,2017,2018,2019,2020,104,1020,1021,1022,1023,1024,2012,2006,2007,2008,2009,2010,2011,2013,2014\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:03:19');
INSERT INTO `sys_oper_log` VALUES (364, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2213', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:03:26');
INSERT INTO `sys_oper_log` VALUES (365, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2214', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:03:34');
INSERT INTO `sys_oper_log` VALUES (366, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2212', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2023-04-19 22:03:57');
INSERT INTO `sys_oper_log` VALUES (367, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2215', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:04:01');
INSERT INTO `sys_oper_log` VALUES (368, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2216', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:04:09');
INSERT INTO `sys_oper_log` VALUES (369, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2217', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:04:16');
INSERT INTO `sys_oper_log` VALUES (370, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2212', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:04:29');
INSERT INTO `sys_oper_log` VALUES (371, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2206\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"通知\"],\"url\":[\"/system/news\"],\"target\":[\"menuItem\"],\"perms\":[\"system:news:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:05:11');
INSERT INTO `sys_oper_log` VALUES (372, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2194\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"知识点和学生状态关联\"],\"url\":[\"/system/knowledgeStudentState\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledgeStudentState:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:05:27');
INSERT INTO `sys_oper_log` VALUES (373, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2200\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"用户和通知关联\"],\"url\":[\"/system/userNews\"],\"target\":[\"menuItem\"],\"perms\":[\"system:userNews:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:05:42');
INSERT INTO `sys_oper_log` VALUES (374, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2182\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"检测图片\"],\"url\":[\"/system/checkpicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:checkpicture:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:05:57');
INSERT INTO `sys_oper_log` VALUES (375, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2218\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"知识点图片和知识点关联\"],\"url\":[\"/system/knowledgePicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledgePicture:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-19 22:06:22');
INSERT INTO `sys_oper_log` VALUES (376, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'luna', '软件工程', '/system/menu/remove/2006', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2023-04-21 00:23:09');
INSERT INTO `sys_oper_log` VALUES (377, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'luna', '软件工程', '/system/menu/remove/2007', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2023-04-21 00:23:14');
INSERT INTO `sys_oper_log` VALUES (378, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"信息管理员\"],\"roleKey\":[\"info\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"信息管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,2000,2001,2002,2003,2004,2005,114,1057,1058,1059,1060,1061,115,2021,2058,2059,2060,2061,2062,2063,2082,2083,2084,2085,2086,2087,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2022,2023,2024,2025,2026,2027,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,103,1016,1017,1018,1019,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2046,2047,2048,2049,2050,2051,2119,2052,2053,2054,2055,2056,2057,2089,2090,2091,2092,2093,2094,2015,2016,2017,2018,2019,2020,104,1020,1021,1022,1023,1024\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:24:00');
INSERT INTO `sys_oper_log` VALUES (379, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2007', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:24:15');
INSERT INTO `sys_oper_log` VALUES (380, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2008', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:24:22');
INSERT INTO `sys_oper_log` VALUES (381, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2009', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:24:30');
INSERT INTO `sys_oper_log` VALUES (382, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2010', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:24:38');
INSERT INTO `sys_oper_log` VALUES (383, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2011', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:24:44');
INSERT INTO `sys_oper_log` VALUES (384, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2006', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:24:50');
INSERT INTO `sys_oper_log` VALUES (385, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2012\"],\"menuType\":[\"C\"],\"menuName\":[\"主页\"],\"url\":[\"/demo\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:25:14');
INSERT INTO `sys_oper_log` VALUES (386, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2012\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"管理中心\"],\"url\":[\"/demo\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:25:52');
INSERT INTO `sys_oper_log` VALUES (387, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2012\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"管理中心\"],\"url\":[\"/demo\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-bullseye\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:26:39');
INSERT INTO `sys_oper_log` VALUES (388, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2013', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2023-04-21 00:30:01');
INSERT INTO `sys_oper_log` VALUES (389, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2014', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:30:30');
INSERT INTO `sys_oper_log` VALUES (390, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2013', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:30:38');
INSERT INTO `sys_oper_log` VALUES (391, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 00:30:48');
INSERT INTO `sys_oper_log` VALUES (392, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'luna', '软件工程', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"教室申请\"],\"url\":[\"/system/apply\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"9\"],\"icon\":[\"fa fa-asterisk\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 15:54:22');
INSERT INTO `sys_oper_log` VALUES (393, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'luna', '软件工程', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"教室申请\"],\"url\":[\"/system/apply\"],\"target\":[\"menuItem\"],\"perms\":[\"system:tea:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-legal\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 15:55:49');
INSERT INTO `sys_oper_log` VALUES (394, '字典类型', 1, 'edu.yctc.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"教室状态\"],\"dictType\":[\"sys_classroom_state\"],\"status\":[\"0\"],\"remark\":[\"教室状态\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:07:00');
INSERT INTO `sys_oper_log` VALUES (395, '字典数据', 1, 'edu.yctc.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已预约使用\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_classroom_state\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"教室已预约使用\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:07:46');
INSERT INTO `sys_oper_log` VALUES (396, '字典数据', 2, 'edu.yctc.project.system.dict.controller.DictDataController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"106\"],\"dictLabel\":[\"待预约使用\"],\"dictValue\":[\"0\"],\"dictType\":[\"sys_classroom_state\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"教室未预约使用\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:08:13');
INSERT INTO `sys_oper_log` VALUES (397, '字典数据', 1, 'edu.yctc.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已预约使用\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_classroom_state\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"教室已预约使用\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:08:37');
INSERT INTO `sys_oper_log` VALUES (398, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"583\"],\"state\":[\"1\"],\"modifyTime\":[\"2020-04-17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:16:32');
INSERT INTO `sys_oper_log` VALUES (399, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"\"],\"state\":[\"0\"],\"modifyTime\":[\"2020-04-17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:17:15');
INSERT INTO `sys_oper_log` VALUES (400, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"0\"],\"state\":[\"0\"],\"modifyTime\":[\"2020-04-17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:18:08');
INSERT INTO `sys_oper_log` VALUES (401, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"\"],\"state\":[\"0\"],\"modifyTime\":[\"2020-04-17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:18:14');
INSERT INTO `sys_oper_log` VALUES (402, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"583\"],\"state\":[\"1\"],\"modifyTime\":[\"2020-04-17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:18:27');
INSERT INTO `sys_oper_log` VALUES (403, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"\"],\"state\":[\"0\"],\"modifyTime\":[\"2020-04-17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:18:33');
INSERT INTO `sys_oper_log` VALUES (404, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"\"],\"state\":[\"0\"],\"modifyTime\":[\"2020-04-17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:20:45');
INSERT INTO `sys_oper_log` VALUES (405, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"\"],\"state\":[\"0\"],\"modifyTime\":[\"2020-04-17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:21:27');
INSERT INTO `sys_oper_log` VALUES (406, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"0\"],\"state\":[\"0\"],\"modifyTime\":[\"2020-04-17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:21:51');
INSERT INTO `sys_oper_log` VALUES (407, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"583\"],\"state\":[\"1\"],\"modifyTime\":[\"2020-04-17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 16:24:44');
INSERT INTO `sys_oper_log` VALUES (408, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"583\"],\"state\":[\"1\"],\"modifyTime\":[\"2020-04-17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 17:04:52');
INSERT INTO `sys_oper_log` VALUES (409, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"classroomId\":[\"1\"],\"lessonId\":[\"1\"],\"state\":[\"1\"],\"modifyTime\":[\"2020-04-14\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 18:12:16');
INSERT INTO `sys_oper_log` VALUES (410, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-22 08:00:00\"],\"end\":[\"2020-04-22 09:40:00\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 18:26:50');
INSERT INTO `sys_oper_log` VALUES (411, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_user_applyClassroom\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 18:47:20');
INSERT INTO `sys_oper_log` VALUES (412, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_user_applyClassroom', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-21 18:47:24');
INSERT INTO `sys_oper_log` VALUES (413, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_user_applyClassroom', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-21 18:47:25');
INSERT INTO `sys_oper_log` VALUES (414, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A101\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-01 02:04:09\"],\"end\":[\"2020-04-01 02:04:09\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 18:51:43');
INSERT INTO `sys_oper_log` VALUES (415, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-01 02:04:09\"],\"end\":[\"2020-04-01 02:04:09\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 18:52:08');
INSERT INTO `sys_oper_log` VALUES (416, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-01 02:04:09\"],\"end\":[\"2020-04-01 02:04:09\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 18:55:50');
INSERT INTO `sys_oper_log` VALUES (417, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-01 02:04:09\"],\"end\":[\"2020-04-01 02:04:09\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 18:58:20');
INSERT INTO `sys_oper_log` VALUES (418, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-01 02:04:09\"],\"end\":[\"2020-04-01 02:04:09\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 19:01:05');
INSERT INTO `sys_oper_log` VALUES (419, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-01 02:04:09\"],\"end\":[\"2020-04-01 02:04:09\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 19:02:56');
INSERT INTO `sys_oper_log` VALUES (420, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-01 02:04:09\"],\"end\":[\"2020-04-01 02:04:09\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 19:03:01');
INSERT INTO `sys_oper_log` VALUES (421, '字典类型', 1, 'edu.yctc.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"学年\"],\"dictType\":[\"sys_study_year\"],\"status\":[\"0\"],\"remark\":[\"学年\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 19:04:10');
INSERT INTO `sys_oper_log` VALUES (422, '字典数据', 1, 'edu.yctc.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2018-2019学年\"],\"dictValue\":[\"2018-2019学年\"],\"dictType\":[\"sys_study_year\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"2018-2019学年\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 19:04:49');
INSERT INTO `sys_oper_log` VALUES (423, '字典数据', 1, 'edu.yctc.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2019-2020学年\"],\"dictValue\":[\"2019-2020学年\"],\"dictType\":[\"sys_study_year\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"2019-2020学年\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 19:05:11');
INSERT INTO `sys_oper_log` VALUES (424, '字典类型', 1, 'edu.yctc.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"学期\"],\"dictType\":[\"sys_study_term\"],\"status\":[\"0\"],\"remark\":[\"学期\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 19:05:39');
INSERT INTO `sys_oper_log` VALUES (425, '字典数据', 1, 'edu.yctc.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"上学期\"],\"dictValue\":[\"0\"],\"dictType\":[\"sys_study_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"上学期\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 19:06:30');
INSERT INTO `sys_oper_log` VALUES (426, '字典数据', 1, 'edu.yctc.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"下学期\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_study_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"下学期\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 19:06:47');
INSERT INTO `sys_oper_log` VALUES (427, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-15 10:04:20\"],\"end\":[\"2020-04-15 10:04:20\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 19:11:50');
INSERT INTO `sys_oper_log` VALUES (428, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-14 02:04:42\"],\"end\":[\"2020-04-01 05:04:42\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 19:13:04');
INSERT INTO `sys_oper_log` VALUES (429, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-14 02:04:42\"],\"end\":[\"2020-04-01 05:04:42\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 19:14:02');
INSERT INTO `sys_oper_log` VALUES (430, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-14 02:04:42\"],\"end\":[\"2020-04-01 05:04:42\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 19:15:16');
INSERT INTO `sys_oper_log` VALUES (431, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-14 02:04:42\"],\"end\":[\"2020-04-01 05:04:42\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 19:16:30');
INSERT INTO `sys_oper_log` VALUES (432, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-14 02:04:42\"],\"end\":[\"2020-04-01 05:04:42\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 19:17:17');
INSERT INTO `sys_oper_log` VALUES (433, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-14 02:04:42\"],\"end\":[\"2020-04-01 05:04:42\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 19:21:57');
INSERT INTO `sys_oper_log` VALUES (434, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-14 02:04:42\"],\"end\":[\"2020-04-01 05:04:42\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 19:23:45');
INSERT INTO `sys_oper_log` VALUES (435, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-14 02:04:42\"],\"end\":[\"2020-04-01 05:04:42\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 19:28:18');
INSERT INTO `sys_oper_log` VALUES (436, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"C语言\"],\"begin\":[\"2020-04-01 02:04:12\"],\"end\":[\"2020-04-01 02:04:12\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 19:30:31');
INSERT INTO `sys_oper_log` VALUES (437, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A103\"],\"name\":[\"C语言\"],\"begin\":[\"2020-04-01 02:04:12\"],\"end\":[\"2020-04-01 02:04:12\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve edu.yctc.project.system.lesson.mapper.LessonMapper.insertLesson-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_lesson          ( course_id,             number,             classroom_id,             begin,             end )           values ( ?,             ?,             ?,             ?,             ?,             now(),             now() )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2023-04-21 19:30:44');
INSERT INTO `sys_oper_log` VALUES (438, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A103\"],\"name\":[\"C语言\"],\"begin\":[\"2020-04-01 02:04:12\"],\"end\":[\"2020-04-01 02:04:12\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve edu.yctc.project.system.lesson.mapper.LessonMapper.insertLesson-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_lesson          ( course_id,             number,             classroom_id,             begin,             end )           values ( ?,             ?,             ?,             ?,             ?,             now(),             now() )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2023-04-21 19:31:07');
INSERT INTO `sys_oper_log` VALUES (439, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A103\"],\"name\":[\"C语言\"],\"begin\":[\"2020-04-01 02:04:12\"],\"end\":[\"2020-04-01 02:04:12\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve edu.yctc.project.system.lesson.mapper.LessonMapper.insertLesson-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_lesson          ( course_id,             number,             classroom_id,             begin,             end )           values ( ?,             ?,             ?,             ?,             ?,             now(),             now() )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2023-04-21 19:31:44');
INSERT INTO `sys_oper_log` VALUES (440, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A103\"],\"name\":[\"C语言\"],\"begin\":[\"2020-04-01 02:04:12\"],\"end\":[\"2020-04-01 02:04:12\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 19:33:14');
INSERT INTO `sys_oper_log` VALUES (441, '教室申请', 1, 'edu.yctc.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A104\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-03-31 01:03:41\"],\"end\":[\"2020-03-31 01:03:41\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 19:40:13');
INSERT INTO `sys_oper_log` VALUES (442, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2226\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"教室申请纪录\"],\"url\":[\"/system/applyClassroom\"],\"target\":[\"menuItem\"],\"perms\":[\"system:applyClassroom:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 19:41:00');
INSERT INTO `sys_oper_log` VALUES (443, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2226\"],\"parentId\":[\"2021\"],\"menuType\":[\"C\"],\"menuName\":[\"教室申请纪录\"],\"url\":[\"/system/applyClassroom\"],\"target\":[\"menuItem\"],\"perms\":[\"system:applyClassroom:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 19:41:14');
INSERT INTO `sys_oper_log` VALUES (444, '定时任务', 1, 'edu.yctc.project.monitor.job.controller.JobController.addSave()', 'POST', 1, 'admin', '软件工程', '/monitor/job/add', '127.0.0.1', '内网IP', '{\"jobName\":[\"重置房间状态\"],\"jobGroup\":[\"DEFAULT\"],\"invokeTarget\":[\"apply.delRoomState()\"],\"cronExpression\":[\"0 0 23 * * ?\"],\"misfirePolicy\":[\"1\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"重置房间状态每天23点\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 20:01:40');
INSERT INTO `sys_oper_log` VALUES (445, '定时任务', 2, 'edu.yctc.project.monitor.job.controller.JobController.editSave()', 'POST', 1, 'admin', '软件工程', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"100\"],\"jobName\":[\"重置房间状态\"],\"jobGroup\":[\"DEFAULT\"],\"invokeTarget\":[\"apply.delRoomState\"],\"cronExpression\":[\"0 0 23 * * ?\"],\"misfirePolicy\":[\"1\"],\"concurrent\":[\"1\"],\"status\":[\"1\"],\"remark\":[\"重置房间状态每天23点\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 20:01:56');
INSERT INTO `sys_oper_log` VALUES (446, '定时任务', 2, 'edu.yctc.project.monitor.job.controller.JobController.run()', 'POST', 1, 'admin', '软件工程', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 20:02:13');
INSERT INTO `sys_oper_log` VALUES (447, '定时任务', 2, 'edu.yctc.project.monitor.job.controller.JobController.run()', 'POST', 1, 'admin', '软件工程', '/monitor/job/run', '192.168.1.104', '内网IP', '{\"jobId\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 20:21:59');
INSERT INTO `sys_oper_log` VALUES (448, '定时任务', 2, 'edu.yctc.project.monitor.job.controller.JobController.run()', 'POST', 1, 'admin', '软件工程', '/monitor/job/run', '192.168.1.104', '内网IP', '{\"jobId\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 20:24:09');
INSERT INTO `sys_oper_log` VALUES (449, '定时任务', 2, 'edu.yctc.project.monitor.job.controller.JobController.run()', 'POST', 1, 'admin', '软件工程', '/monitor/job/run', '192.168.1.104', '内网IP', '{\"jobId\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 20:25:56');
INSERT INTO `sys_oper_log` VALUES (450, '定时任务', 2, 'edu.yctc.project.monitor.job.controller.JobController.run()', 'POST', 1, 'admin', '软件工程', '/monitor/job/run', '192.168.1.104', '内网IP', '{\"jobId\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 20:26:49');
INSERT INTO `sys_oper_log` VALUES (451, '定时任务', 2, 'edu.yctc.project.monitor.job.controller.JobController.run()', 'POST', 1, 'admin', '软件工程', '/monitor/job/run', '192.168.1.104', '内网IP', '{\"jobId\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 20:28:31');
INSERT INTO `sys_oper_log` VALUES (452, '定时任务', 2, 'edu.yctc.project.monitor.job.controller.JobController.run()', 'POST', 1, 'admin', '软件工程', '/monitor/job/run', '192.168.1.104', '内网IP', '{\"jobId\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 20:31:02');
INSERT INTO `sys_oper_log` VALUES (453, '定时任务', 2, 'edu.yctc.project.monitor.job.controller.JobController.run()', 'POST', 1, 'admin', '软件工程', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 20:36:53');
INSERT INTO `sys_oper_log` VALUES (454, '定时任务', 2, 'edu.yctc.project.monitor.job.controller.JobController.run()', 'POST', 1, 'admin', '软件工程', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 20:37:08');
INSERT INTO `sys_oper_log` VALUES (455, '定时任务', 2, 'edu.yctc.project.monitor.job.controller.JobController.run()', 'POST', 1, 'admin', '软件工程', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 20:37:20');
INSERT INTO `sys_oper_log` VALUES (456, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_knowledge\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 21:43:09');
INSERT INTO `sys_oper_log` VALUES (457, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-21 21:43:11');
INSERT INTO `sys_oper_log` VALUES (458, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/tool/gen/genCode/sys_knowledge', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-21 21:43:14');
INSERT INTO `sys_oper_log` VALUES (459, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2218\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"知识点图片解析知识点\"],\"url\":[\"/system/knowledgePicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledgePicture:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 21:52:21');
INSERT INTO `sys_oper_log` VALUES (460, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2218\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"ppt图片解析知识点\"],\"url\":[\"/system/knowledgePicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledgePicture:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 21:52:43');
INSERT INTO `sys_oper_log` VALUES (461, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2194\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"知识点解析学生状态\"],\"url\":[\"/system/knowledgeStudentState\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledgeStudentState:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 21:52:56');
INSERT INTO `sys_oper_log` VALUES (462, '字典类型', 1, 'edu.yctc.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"图片检测\"],\"dictType\":[\"sys_knowledge_check\"],\"status\":[\"0\"],\"remark\":[\"图片检测\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:00:32');
INSERT INTO `sys_oper_log` VALUES (463, '字典数据', 1, 'edu.yctc.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已检测\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_knowledge_check\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"图片已检测\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:01:01');
INSERT INTO `sys_oper_log` VALUES (464, '字典数据', 1, 'edu.yctc.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"未检测\"],\"dictValue\":[\"0\"],\"dictType\":[\"sys_knowledge_check\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"图片未检测\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:01:23');
INSERT INTO `sys_oper_log` VALUES (465, '角色管理', 1, 'edu.yctc.project.system.role.controller.RoleController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2225,2046,2047,2048,2049,2050,2051\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:08:30');
INSERT INTO `sys_oper_log` VALUES (466, '用户管理', 2, 'edu.yctc.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"101\"],\"deptId\":[\"103\"],\"userName\":[\"张三\"],\"dept.deptName\":[\"软件工程\"],\"phonenumber\":[\"15696756581\"],\"email\":[\"15696756581@163.com\"],\"loginName\":[\"xxx\"],\"sex\":[\"0\"],\"role\":[\"101\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:09:12');
INSERT INTO `sys_oper_log` VALUES (467, '用户管理', 2, 'edu.yctc.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"101\"],\"deptId\":[\"103\"],\"userName\":[\"张三\"],\"dept.deptName\":[\"软件工程\"],\"phonenumber\":[\"15696756581\"],\"email\":[\"15696756581@163.com\"],\"loginName\":[\"xxx\"],\"sex\":[\"0\"],\"role\":[\"101\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:20:48');
INSERT INTO `sys_oper_log` VALUES (468, '用户管理', 4, 'edu.yctc.project.system.user.controller.UserController.insertAuthRole()', 'POST', 1, 'admin', '软件工程', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"106\"],\"roleIds\":[\"101\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:23:44');
INSERT INTO `sys_oper_log` VALUES (469, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2225\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"教室申请\"],\"url\":[\"/system/apply\"],\"target\":[\"menuItem\"],\"perms\":[\"system:tea:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-legal\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:26:12');
INSERT INTO `sys_oper_log` VALUES (470, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', 1, 'admin', '软件工程', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:27:21');
INSERT INTO `sys_oper_log` VALUES (471, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2021,2082,2083,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2225,2046,2047,2048,2049,2050,2051\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:28:49');
INSERT INTO `sys_oper_log` VALUES (472, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/system/menu/remove/2224', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:30:34');
INSERT INTO `sys_oper_log` VALUES (473, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2225\"],\"menuType\":[\"F\"],\"menuName\":[\"申请教室\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:tea:add\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:31:08');
INSERT INTO `sys_oper_log` VALUES (474, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2021,2082,2083,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2225,2232,2046,2047,2048,2049,2050,2051\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:33:09');
INSERT INTO `sys_oper_log` VALUES (475, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2021,2082,2083,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2225,2232,2046,2047,2048,2049,2050,2051\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:33:10');
INSERT INTO `sys_oper_log` VALUES (476, '教室申请', 1, 'edu.yctc.project.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, '小张', NULL, '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A101\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-21 02:04:46\"],\"end\":[\"2021-02-02 05:02:47\"],\"year\":[\"2019-2020学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 22:34:18');
INSERT INTO `sys_oper_log` VALUES (477, '教室申请', 1, 'edu.yctc.project.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, '小张', NULL, '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A101\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-21 02:04:46\"],\"end\":[\"2021-02-02 05:02:47\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve edu.yctc.project.system.applyClassroom.mapper.UserApplyclassroomMapper.insertUserApplyclassroom-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user_applyClassroom          ( user_id,             classroom_id,             lesson_id )           values ( ?,             ?,             ?,             now() )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2023-04-21 22:34:22');
INSERT INTO `sys_oper_log` VALUES (478, '教室申请', 1, 'edu.yctc.project.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, '小张', NULL, '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A101\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-21 02:04:46\"],\"end\":[\"2021-02-02 05:02:47\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-04-21 22:36:29');
INSERT INTO `sys_oper_log` VALUES (479, '教室申请', 1, 'edu.yctc.project.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, '小张', NULL, '/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A102\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-21 02:04:46\"],\"end\":[\"2021-02-02 05:02:47\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:37:18');
INSERT INTO `sys_oper_log` VALUES (480, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"信息管理员\"],\"roleKey\":[\"info\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"信息管理员\"],\"menuIds\":[\"2012,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,2000,2001,2002,2003,2004,2005,114,1057,1058,1059,1060,1061,115,2021,2058,2059,2060,2061,2062,2063,2082,2083,2084,2085,2086,2087,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2226,2227,2228,2229,2230,2231,2022,2023,2024,2025,2026,2027,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,103,1016,1017,1018,1019,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2225,2232,2046,2047,2048,2049,2050,2051,2119,2052,2053,2054,2055,2056,2057,2089,2090,2091,2092,2093,2094,2015,2016,2017,2018,2019,2020,104,1020,1021,1022,1023,1024\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-21 22:56:57');
INSERT INTO `sys_oper_log` VALUES (481, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 09:38:01');
INSERT INTO `sys_oper_log` VALUES (482, '用户管理', 2, 'edu.yctc.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"小华\"],\"dept.deptName\":[\"数字媒体\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"2\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 09:38:24');
INSERT INTO `sys_oper_log` VALUES (483, '代码生成', 6, 'edu.yctc.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_building_floor\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 09:42:04');
INSERT INTO `sys_oper_log` VALUES (484, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/yctc-genesis/tool/gen/genCode/sys_building_floor', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-22 09:42:25');
INSERT INTO `sys_oper_log` VALUES (485, '代码生成', 8, 'edu.yctc.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '软件工程', '/yctc-genesis/tool/gen/genCode/sys_building_floor', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2023-04-22 09:42:26');
INSERT INTO `sys_oper_log` VALUES (486, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"113\"],\"parentId\":[\"2021\"],\"menuType\":[\"C\"],\"menuName\":[\"表单构建\"],\"url\":[\"/tool/build\"],\"target\":[\"menuItem\"],\"perms\":[\"tool:build:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 09:46:55');
INSERT INTO `sys_oper_log` VALUES (487, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2233\"],\"parentId\":[\"2021\"],\"menuType\":[\"C\"],\"menuName\":[\"楼层信息\"],\"url\":[\"/system/floor\"],\"target\":[\"menuItem\"],\"perms\":[\"system:floor:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 09:47:20');
INSERT INTO `sys_oper_log` VALUES (488, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"113\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"表单构建\"],\"url\":[\"/tool/build\"],\"target\":[\"menuItem\"],\"perms\":[\"tool:build:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 09:47:55');
INSERT INTO `sys_oper_log` VALUES (489, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"信息管理员\"],\"roleKey\":[\"info\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"信息管理员\"],\"menuIds\":[\"2012,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,2000,2001,2002,2003,2004,2005,114,1057,1058,1059,1060,1061,115,2021,2058,2059,2060,2061,2062,2063,2082,2083,2084,2085,2086,2087,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2226,2227,2228,2229,2230,2231,2233,2234,2235,2236,2237,2238,2022,2023,2024,2025,2026,2027,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,103,1016,1017,1018,1019,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2225,2232,2046,2047,2048,2049,2050,2051,2119,2052,2053,2054,2055,2056,2057,2089,2090,2091,2092,2093,2094,2015,2016,2017,2018,2019,2020,104,1020,1021,1022,1023,1024\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 10:12:33');
INSERT INTO `sys_oper_log` VALUES (490, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"678\"],\"state\":[\"0\"],\"modifyTime\":[\"2020-04-21\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 10:25:02');
INSERT INTO `sys_oper_log` VALUES (491, '教室占用情况', 2, 'edu.yctc.project.system.state.controller.ClassroomStateController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/state/edit', '127.0.0.1', '内网IP', '{\"id\":[\"255\"],\"classroomId\":[\"1\"],\"lessonId\":[\"678\"],\"state\":[\"1\"],\"modifyTime\":[\"2020-04-22\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 10:25:08');
INSERT INTO `sys_oper_log` VALUES (492, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"老师查课\"],\"url\":[\"/system/teacher/view\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"9\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 17:44:55');
INSERT INTO `sys_oper_log` VALUES (493, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2239\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"老师查课\"],\"url\":[\"/system/teacher\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"9\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 17:45:20');
INSERT INTO `sys_oper_log` VALUES (494, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2021,2082,2083,2084,2085,2086,2087,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2225,2232,2046,2047,2048,2049,2050,2051,2239\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 17:48:46');
INSERT INTO `sys_oper_log` VALUES (495, '用户管理', 4, 'edu.yctc.project.system.user.controller.UserController.insertAuthRole()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"32\"],\"roleIds\":[\"101\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 17:51:51');
INSERT INTO `sys_oper_log` VALUES (496, '用户管理', 4, 'edu.yctc.project.system.user.controller.UserController.insertAuthRole()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"32\"],\"roleIds\":[\"101\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 19:16:43');
INSERT INTO `sys_oper_log` VALUES (497, '重置密码', 2, 'edu.yctc.project.system.user.controller.UserController.resetPwd()', 'GET', 1, 'admin', '软件工程', '/yctc-genesis/system/user/resetPwd/32', '127.0.0.1', '内网IP', '{}', '\"system/user/resetPwd\"', 0, NULL, '2023-04-22 19:16:46');
INSERT INTO `sys_oper_log` VALUES (498, '重置密码', 2, 'edu.yctc.project.system.user.controller.UserController.resetPwdSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"32\"],\"loginName\":[\"王小明\"],\"password\":[\"admin123\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 19:16:51');
INSERT INTO `sys_oper_log` VALUES (499, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2021,2082,2083,2084,2085,2086,2087,2107,2108,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2225,2232,2046,2047,2048,2049,2050,2051,2239\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 19:17:40');
INSERT INTO `sys_oper_log` VALUES (500, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2021,2082,2083,2084,2085,2086,2087,2107,2108,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2225,2232,2046,2047,2048,2049,2050,2051,2239\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 19:18:08');
INSERT INTO `sys_oper_log` VALUES (501, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2239\"],\"menuType\":[\"F\"],\"menuName\":[\"教师查课\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 19:20:33');
INSERT INTO `sys_oper_log` VALUES (502, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2021,2082,2083,2084,2085,2086,2087,2107,2108,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2225,2232,2046,2047,2048,2049,2050,2051,2239,2240\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 19:21:04');
INSERT INTO `sys_oper_log` VALUES (503, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"学生评分\"],\"url\":[\"/system/teacher/score\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-check\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 19:53:35');
INSERT INTO `sys_oper_log` VALUES (504, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2241\"],\"menuType\":[\"F\"],\"menuName\":[\"查询学生课程评分\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 19:54:18');
INSERT INTO `sys_oper_log` VALUES (505, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2021,2082,2083,2084,2085,2086,2087,2107,2108,2088,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2239,2240,2241,2242\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:01:19');
INSERT INTO `sys_oper_log` VALUES (506, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2021,2082,2083,2084,2085,2086,2087,2107,2108,2088,2070,2071,2072,2073,2074,2075,2239,2240,2241,2242\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:04:34');
INSERT INTO `sys_oper_log` VALUES (507, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2241\"],\"menuType\":[\"F\"],\"menuName\":[\"修改学生评分\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:edit\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:08:52');
INSERT INTO `sys_oper_log` VALUES (508, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2241\"],\"menuType\":[\"F\"],\"menuName\":[\"删除学生评分\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:remove\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:09:19');
INSERT INTO `sys_oper_log` VALUES (509, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2241\"],\"menuType\":[\"F\"],\"menuName\":[\"导出学生评分\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:export\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:09:42');
INSERT INTO `sys_oper_log` VALUES (510, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2241\"],\"menuType\":[\"F\"],\"menuName\":[\"新增学生评分\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:add\"],\"orderNum\":[\"0\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:10:12');
INSERT INTO `sys_oper_log` VALUES (511, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2021,2082,2083,2084,2085,2086,2087,2107,2108,2088,2070,2071,2072,2073,2074,2075,2239,2240,2241,2246,2242,2243,2244,2245\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:11:01');
INSERT INTO `sys_oper_log` VALUES (512, '学生上课评分汇总', 2, 'edu.yctc.project.teacherLesson.TeacherLessonController.editSave()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacher/socreedit', '127.0.0.1', '内网IP', '{\"id\":[\"1705\"],\"userId\":[\"3\"],\"lessonId\":[\"583\"],\"score\":[\"80.0\"],\"modifyTime\":[\"2020-04-18\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:27:14');
INSERT INTO `sys_oper_log` VALUES (513, '学生上课评分汇总', 2, 'edu.yctc.project.teacherLesson.TeacherLessonController.editSave()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacher/socreedit', '127.0.0.1', '内网IP', '{\"id\":[\"1677\"],\"userId\":[\"1\"],\"lessonId\":[\"583\"],\"score\":[\"97.0\"],\"modifyTime\":[\"2020-04-18\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:27:19');
INSERT INTO `sys_oper_log` VALUES (514, '学生上课评分汇总', 2, 'edu.yctc.project.teacherLesson.TeacherLessonController.editSave()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacher/socreedit', '127.0.0.1', '内网IP', '{\"id\":[\"1677\"],\"userId\":[\"1\"],\"lessonId\":[\"583\"],\"score\":[\"97.0\"],\"modifyTime\":[\"2020-04-18\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:27:38');
INSERT INTO `sys_oper_log` VALUES (515, '学生上课评分汇总', 1, 'edu.yctc.project.teacherLesson.TeacherLessonController.addSave()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacher/scoreadd', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"lessonId\":[\"582\"],\"score\":[\"11\"],\"modifyTime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:36:35');
INSERT INTO `sys_oper_log` VALUES (516, '学生上课评分汇总', 1, 'edu.yctc.project.teacherLesson.TeacherLessonController.addSave()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacher/scoreadd', '127.0.0.1', '内网IP', '{\"userId\":[\"11\"],\"lessonId\":[\"583\"],\"score\":[\"11\"],\"modifyTime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:37:18');
INSERT INTO `sys_oper_log` VALUES (517, '学生上课评分汇总', 3, 'edu.yctc.project.teacherLesson.TeacherLessonController.remove()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacher/scoreremove', '127.0.0.1', '内网IP', '{\"ids\":[\"2462\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:37:32');
INSERT INTO `sys_oper_log` VALUES (518, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"学生考勤\"],\"url\":[\"/system/teacherAttendance\"],\"target\":[\"menuItem\"],\"perms\":[\"system:attendance:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:46:33');
INSERT INTO `sys_oper_log` VALUES (519, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2247\"],\"menuType\":[\"F\"],\"menuName\":[\"学生考勤修改\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:edit\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:47:29');
INSERT INTO `sys_oper_log` VALUES (520, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2247\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"学生考勤\"],\"url\":[\"/system/teacherAttendance\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:47:43');
INSERT INTO `sys_oper_log` VALUES (521, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2247\"],\"menuType\":[\"F\"],\"menuName\":[\"学生考勤查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:list\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:48:42');
INSERT INTO `sys_oper_log` VALUES (522, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2247\"],\"menuType\":[\"F\"],\"menuName\":[\"学生考勤新增\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:add\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:49:35');
INSERT INTO `sys_oper_log` VALUES (523, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2247\"],\"menuType\":[\"F\"],\"menuName\":[\"学生考勤增加\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:remove\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:50:16');
INSERT INTO `sys_oper_log` VALUES (524, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2251\"],\"parentId\":[\"2247\"],\"menuType\":[\"F\"],\"menuName\":[\"学生考勤删除\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:remove\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:50:29');
INSERT INTO `sys_oper_log` VALUES (525, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2247\"],\"menuType\":[\"F\"],\"menuName\":[\"学生考勤导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:export\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:51:40');
INSERT INTO `sys_oper_log` VALUES (526, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2021,2082,2083,2088,2070,2071,2072,2073,2074,2075,2225,2232,2239,2240,2241,2246,2242,2243,2244,2245,2247,2248,2252,2249,2250,2251\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:52:51');
INSERT INTO `sys_oper_log` VALUES (527, '学生考勤点名汇总', 2, 'edu.yctc.project.teacherLesson.TeacherAttendanceController.editSave()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacherAttendance/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1696\"],\"userId\":[\"1\"],\"lessonId\":[\"583\"],\"attendState\":[\"1\"],\"modifyTime\":[\"2020-04-18\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:54:57');
INSERT INTO `sys_oper_log` VALUES (528, '学生考勤点名汇总', 2, 'edu.yctc.project.teacherLesson.TeacherAttendanceController.editSave()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacherAttendance/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1696\"],\"userId\":[\"1\"],\"lessonId\":[\"583\"],\"attendState\":[\"0\"],\"modifyTime\":[\"2020-04-18\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:55:03');
INSERT INTO `sys_oper_log` VALUES (529, '学生考勤点名汇总', 1, 'edu.yctc.project.teacherLesson.TeacherAttendanceController.addSave()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacherAttendance/add', '127.0.0.1', '内网IP', '{\"userId\":[\"11\"],\"lessonId\":[\"583\"],\"attendState\":[\"0\"],\"modifyTime\":[\"2020-04-22\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:55:12');
INSERT INTO `sys_oper_log` VALUES (530, '学生考勤点名汇总', 3, 'edu.yctc.project.teacherLesson.TeacherAttendanceController.remove()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacherAttendance/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2104\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 20:55:18');
INSERT INTO `sys_oper_log` VALUES (531, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2046\"],\"parentId\":[\"2021\"],\"menuType\":[\"C\"],\"menuName\":[\"设备信息\"],\"url\":[\"/system/equipment\"],\"target\":[\"menuItem\"],\"perms\":[\"system:equipment:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:00:40');
INSERT INTO `sys_oper_log` VALUES (532, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2225\"],\"menuType\":[\"F\"],\"menuName\":[\"教室剩余状态\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:tea:list\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:01:12');
INSERT INTO `sys_oper_log` VALUES (533, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"智慧教学\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-clone\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:02:04');
INSERT INTO `sys_oper_log` VALUES (534, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2225\"],\"parentId\":[\"2088\"],\"menuType\":[\"M\"],\"menuName\":[\"教室申请\"],\"url\":[\"/system/apply\"],\"target\":[\"menuItem\"],\"perms\":[\"system:tea:view\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-legal\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:02:43');
INSERT INTO `sys_oper_log` VALUES (535, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2254\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"教室申请\"],\"url\":[\"/system/apply\"],\"target\":[\"menuItem\"],\"perms\":[\"system:tea:view\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-clone\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:04:07');
INSERT INTO `sys_oper_log` VALUES (536, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2254\"],\"menuType\":[\"F\"],\"menuName\":[\"教室剩余状态查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:tea:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:04:47');
INSERT INTO `sys_oper_log` VALUES (537, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2254\"],\"menuType\":[\"F\"],\"menuName\":[\"添加教室申请\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:tea:add\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:05:14');
INSERT INTO `sys_oper_log` VALUES (538, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/remove/2253', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:05:30');
INSERT INTO `sys_oper_log` VALUES (539, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/remove/2232', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2023-04-22 21:05:47');
INSERT INTO `sys_oper_log` VALUES (540, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/remove/2232', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2023-04-22 21:05:52');
INSERT INTO `sys_oper_log` VALUES (541, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2232\"],\"parentId\":[\"2225\"],\"menuType\":[\"C\"],\"menuName\":[\"申请教室\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:tea:add\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:06:06');
INSERT INTO `sys_oper_log` VALUES (542, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/remove/2232', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2023-04-22 21:06:17');
INSERT INTO `sys_oper_log` VALUES (543, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2232\"],\"parentId\":[\"2225\"],\"menuType\":[\"F\"],\"menuName\":[\"11\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:06:32');
INSERT INTO `sys_oper_log` VALUES (544, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/remove/2232', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2023-04-22 21:06:46');
INSERT INTO `sys_oper_log` VALUES (545, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2254,2255,2256,2239,2240,2241,2246,2242,2243,2244,2245,2247,2248,2252,2249,2250,2251\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:07:09');
INSERT INTO `sys_oper_log` VALUES (546, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/remove/2232', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2023-04-22 21:07:34');
INSERT INTO `sys_oper_log` VALUES (547, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"信息管理员\"],\"roleKey\":[\"info\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"信息管理员\"],\"menuIds\":[\"2012,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,2000,2001,2002,2003,2004,2005,114,1057,1058,1059,1060,1061,115,2021,2058,2059,2060,2061,2062,2063,2082,2083,2084,2085,2086,2087,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2226,2227,2228,2229,2230,2231,2233,2234,2235,2236,2237,2238,2022,2023,2024,2025,2026,2027,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,103,1016,1017,1018,1019,2088,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2218,2219,2220,2221,2222,2223,2119,2052,2053,2054,2055,2056,2057,2089,2090,2091,2092,2093,2094,2015,2016,2017,2018,2019,2020,104,1020,1021,1022,1023,1024\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:08:07');
INSERT INTO `sys_oper_log` VALUES (548, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/remove/2232', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:08:15');
INSERT INTO `sys_oper_log` VALUES (549, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/remove/2225', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:08:22');
INSERT INTO `sys_oper_log` VALUES (550, '教室申请', 1, 'edu.yctc.project.applyClassroom.ApplyClassroomController.addSave()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/apply/add', '127.0.0.1', '内网IP', '{\"building\":[\"主楼\"],\"floor\":[\"一楼\"],\"number\":[\"A103\"],\"name\":[\"人文教育\"],\"begin\":[\"2020-04-07 05:04:35\"],\"end\":[\"2021-04-07 05:04:35\"],\"year\":[\"2018-2019学年\"],\"term\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:09:06');
INSERT INTO `sys_oper_log` VALUES (551, '学生考勤点名汇总', 2, 'edu.yctc.project.teacherLesson.TeacherAttendanceController.editSave()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacherAttendance/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1696\"],\"userId\":[\"1\"],\"lessonId\":[\"583\"],\"attendState\":[\"1\"],\"modifyTime\":[\"2020-04-18\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-22 21:35:45');
INSERT INTO `sys_oper_log` VALUES (552, '部门管理', 2, 'edu.yctc.project.system.dept.controller.DeptController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"xxxx学院\"],\"orderNum\":[\"0\"],\"leader\":[\"luna\"],\"phone\":[\"15888888888\"],\"email\":[\"luna@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-23 10:49:39');
INSERT INTO `sys_oper_log` VALUES (553, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"课程评分\"],\"url\":[\"/system/teacher/lessonScore\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-certificate\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-23 11:57:51');
INSERT INTO `sys_oper_log` VALUES (554, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2254,2255,2256,2239,2240,2241,2246,2242,2243,2244,2245,2247,2248,2252,2249,2250,2251,2257\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-23 12:11:42');
INSERT INTO `sys_oper_log` VALUES (555, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2257\"],\"menuType\":[\"F\"],\"menuName\":[\"教学评分查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-23 12:12:32');
INSERT INTO `sys_oper_log` VALUES (556, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2254,2255,2256,2239,2240,2241,2246,2242,2243,2244,2245,2247,2248,2252,2249,2250,2251,2257,2258\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-23 12:12:42');
INSERT INTO `sys_oper_log` VALUES (557, '学生上课评分汇总', 2, 'edu.yctc.project.teacherLesson.TeacherLessonController.editSave()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacher/socreedit', '127.0.0.1', '内网IP', '{\"id\":[\"2464\"],\"userId\":[\"1\"],\"lessonId\":[\"583\"],\"score\":[\"74.0\"],\"modifyTime\":[\"2020-04-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-23 12:58:11');
INSERT INTO `sys_oper_log` VALUES (558, '学生上课评分汇总', 2, 'edu.yctc.project.teacherLesson.TeacherLessonController.editSave()', 'POST', 1, '王小明', NULL, '/yctc-genesis/system/teacher/socreedit', '127.0.0.1', '内网IP', '{\"id\":[\"2464\"],\"userId\":[\"1\"],\"lessonId\":[\"583\"],\"score\":[\"78.0\"],\"modifyTime\":[\"2020-04-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-04-23 12:58:17');
INSERT INTO `sys_oper_log` VALUES (559, '检测图片', 1, 'edu.yctc.project.system.checkpicture.controller.CheckpictureController.addSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/checkpicture/add', '127.0.0.1', '内网IP', '{\"pictureid\":[\"777\"],\"intflag\":[\"0\"],\"knowledgeid\":[\"777\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-02-15 14:39:37');
INSERT INTO `sys_oper_log` VALUES (560, '检测图片', 2, 'edu.yctc.project.system.checkpicture.controller.CheckpictureController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/checkpicture/edit', '127.0.0.1', '内网IP', '{\"id\":[\"79\"],\"pictureid\":[\"777\"],\"intflag\":[\"0\"],\"knowledgeid\":[\"777\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-02-15 14:39:55');
INSERT INTO `sys_oper_log` VALUES (561, '检测图片', 2, 'edu.yctc.project.system.checkpicture.controller.CheckpictureController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/checkpicture/edit', '127.0.0.1', '内网IP', '{\"id\":[\"79\"],\"pictureid\":[\"777\"],\"intflag\":[\"1\"],\"knowledgeid\":[\"777\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-02-15 14:40:00');
INSERT INTO `sys_oper_log` VALUES (562, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2257\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"课程评分\"],\"url\":[\"/system/teacher/lessonScore\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-certificate\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-02-20 11:24:14');
INSERT INTO `sys_oper_log` VALUES (563, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2257\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"课程评分\"],\"url\":[\"/system/teacher/lessonScore\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-certificate\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-02-20 11:24:23');
INSERT INTO `sys_oper_log` VALUES (564, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2257\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"课程评分\"],\"url\":[\"/system/teacher/lessonScore\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-certificate\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-02-20 11:24:29');
INSERT INTO `sys_oper_log` VALUES (565, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2257\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"课程评分\"],\"url\":[\"/system/teacher/lessonScore\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-certificate\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-02-20 11:25:06');
INSERT INTO `sys_oper_log` VALUES (566, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"The system cannot find the path specified\",\"code\":500}', 0, NULL, '2023-02-20 11:29:08');
INSERT INTO `sys_oper_log` VALUES (567, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"The system cannot find the path specified\",\"code\":500}', 0, NULL, '2023-02-20 11:29:25');
INSERT INTO `sys_oper_log` VALUES (568, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"The system cannot find the path specified\",\"code\":500}', 0, NULL, '2023-02-20 13:24:21');
INSERT INTO `sys_oper_log` VALUES (569, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"The system cannot find the path specified\",\"code\":500}', 0, NULL, '2023-02-20 13:37:10');
INSERT INTO `sys_oper_log` VALUES (570, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.update()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"Lun\"],\"phonenumber\":[\"15696756599\"],\"email\":[\"15696756583@163.co\"],\"sex\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-02-20 14:04:49');
INSERT INTO `sys_oper_log` VALUES (571, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.update()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"Curry\"],\"phonenumber\":[\"15656936752\"],\"email\":[\"1339972733@qq.com\"],\"sex\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-02-20 14:06:10');
INSERT INTO `sys_oper_log` VALUES (572, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"The system cannot find the path specified\",\"code\":500}', 0, NULL, '2023-02-20 14:30:10');
INSERT INTO `sys_oper_log` VALUES (573, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"The system cannot find the path specified\",\"code\":500}', 0, NULL, '2023-02-20 14:34:17');
INSERT INTO `sys_oper_log` VALUES (574, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"The system cannot find the path specified\",\"code\":500}', 0, NULL, '2023-02-20 14:35:21');
INSERT INTO `sys_oper_log` VALUES (575, '个人信息', 2, 'edu.yctc.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '软件工程', '/yctc-genesis/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"The system cannot find the path specified\",\"code\":500}', 0, NULL, '2023-02-20 14:40:16');
INSERT INTO `sys_oper_log` VALUES (576, '文件信息', 2, 'edu.yctc.project.system.info.controller.FileInfoController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/info/edit', '127.0.0.1', '内网IP', '{\"fileId\":[\"3\"],\"fileName\":[\"ppt\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:31:53');
INSERT INTO `sys_oper_log` VALUES (577, '文件信息', 2, 'edu.yctc.project.system.info.controller.FileInfoController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/info/edit', '127.0.0.1', '内网IP', '{\"fileId\":[\"3\"],\"fileName\":[\"ppt\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:32:05');
INSERT INTO `sys_oper_log` VALUES (578, '文件信息', 3, 'edu.yctc.project.system.info.controller.FileInfoController.remove()', 'POST', 1, 'admin', '软件工程', '/ikun/system/info/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:32:19');
INSERT INTO `sys_oper_log` VALUES (579, '文件信息', 1, 'edu.yctc.project.system.info.controller.FileInfoController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/info/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"ppt\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:32:34');
INSERT INTO `sys_oper_log` VALUES (580, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2182\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"检测图片\"],\"url\":[\"/system/checkpicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:checkpicture:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:41:10');
INSERT INTO `sys_oper_log` VALUES (581, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2095\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"学生上课状态信息汇总\"],\"url\":[\"/system/courseState\"],\"target\":[\"menuItem\"],\"perms\":[\"system:courseState:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:41:22');
INSERT INTO `sys_oper_log` VALUES (582, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2218\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"ppt图片解析知识点\"],\"url\":[\"/system/knowledgePicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledgePicture:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:41:49');
INSERT INTO `sys_oper_log` VALUES (583, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2218\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"ppt图片解析知识点\"],\"url\":[\"/system/knowledgePicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledgePicture:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:42:04');
INSERT INTO `sys_oper_log` VALUES (584, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2218\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"ppt图片解析知识点\"],\"url\":[\"/system/knowledgePicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledgePicture:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:45:59');
INSERT INTO `sys_oper_log` VALUES (585, '用户管理', 2, 'edu.yctc.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"103\"],\"deptId\":[\"107\"],\"userName\":[\"小明\"],\"dept.deptName\":[\"计算机科学与技术\"],\"phonenumber\":[\"15666666670\"],\"email\":[\"1359932736@qq.com\"],\"loginName\":[\"小明\"],\"sex\":[\"0\"],\"role\":[\"101\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"postIds\":[\"4\"]}', 'null', 1, 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 5', '2023-05-06 10:51:20');
INSERT INTO `sys_oper_log` VALUES (586, '用户管理', 2, 'edu.yctc.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"103\"],\"deptId\":[\"107\"],\"userName\":[\"小明\"],\"dept.deptName\":[\"计算机科学与技术\"],\"phonenumber\":[\"15666666670\"],\"email\":[\"1359932738@qq.com\"],\"loginName\":[\"小明\"],\"sex\":[\"0\"],\"role\":[\"101\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"postIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:51:47');
INSERT INTO `sys_oper_log` VALUES (587, '用户管理', 1, 'edu.yctc.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"107\"],\"userName\":[\"王老师\"],\"deptName\":[\"计算机科学与技术\"],\"phonenumber\":[\"13916606652\"],\"email\":[\"1338800652@qq.com\"],\"loginName\":[\"王老师\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"101\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"postIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:54:02');
INSERT INTO `sys_oper_log` VALUES (588, '角色管理', 1, 'edu.yctc.project.system.role.controller.RoleController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"王老师\"],\"roleKey\":[\"teacherwang\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"C语言\"],\"menuIds\":[\"3,113,2000,2001,2002,2003,2004,2005,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:55:04');
INSERT INTO `sys_oper_log` VALUES (589, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"王老师\"],\"roleKey\":[\"teacherwang\"],\"dataScope\":[\"5\"],\"deptIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:56:29');
INSERT INTO `sys_oper_log` VALUES (590, '通知公告', 2, 'edu.yctc.project.system.notice.controller.NoticeController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"1\"],\"noticeTitle\":[\"温馨提醒：2023-05-01 新版本发布啦\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"新版本内容\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:58:17');
INSERT INTO `sys_oper_log` VALUES (591, '通知公告', 2, 'edu.yctc.project.system.notice.controller.NoticeController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"2\"],\"noticeTitle\":[\"维护通知：2023-05-01 系统凌晨维护\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"维护内容\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:58:23');
INSERT INTO `sys_oper_log` VALUES (592, '用户管理', 2, 'edu.yctc.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"107\"],\"deptId\":[\"107\"],\"userName\":[\"王老师\"],\"dept.deptName\":[\"计算机科学与技术\"],\"phonenumber\":[\"13916606652\"],\"email\":[\"1338800652@qq.com\"],\"loginName\":[\"王老师\"],\"sex\":[\"0\"],\"role\":[\"102\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"postIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 10:59:43');
INSERT INTO `sys_oper_log` VALUES (593, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"C语言老师\"],\"roleKey\":[\"CLanguageteacher\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"C语言\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:00:54');
INSERT INTO `sys_oper_log` VALUES (594, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2194\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"知识点解析学生状态\"],\"url\":[\"/system/knowledgeStudentState\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledgeStudentState:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:07:53');
INSERT INTO `sys_oper_log` VALUES (595, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2088\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"教学系统\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-institution\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:09:21');
INSERT INTO `sys_oper_log` VALUES (596, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2206\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"教学通知\"],\"url\":[\"/system/news\"],\"target\":[\"menuItem\"],\"perms\":[\"system:news:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-bell-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:10:40');
INSERT INTO `sys_oper_log` VALUES (597, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2070\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"学生考勤\"],\"url\":[\"/system/attendance\"],\"target\":[\"menuItem\"],\"perms\":[\"system:attendance:view\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-eye\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:11:44');
INSERT INTO `sys_oper_log` VALUES (598, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2218\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"ppt图片解析知识点\"],\"url\":[\"/system/knowledgePicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledgePicture:view\"],\"orderNum\":[\"8\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:11:55');
INSERT INTO `sys_oper_log` VALUES (599, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2194\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"知识点解析学生状态\"],\"url\":[\"/system/knowledgeStudentState\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledgeStudentState:view\"],\"orderNum\":[\"9\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:12:05');
INSERT INTO `sys_oper_log` VALUES (600, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2095\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"学生上课状态信息汇总\"],\"url\":[\"/system/courseState\"],\"target\":[\"menuItem\"],\"perms\":[\"system:courseState:view\"],\"orderNum\":[\"10\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:12:10');
INSERT INTO `sys_oper_log` VALUES (601, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2182\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"检测图片\"],\"url\":[\"/system/checkpicture\"],\"target\":[\"menuItem\"],\"perms\":[\"system:checkpicture:view\"],\"orderNum\":[\"11\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:12:14');
INSERT INTO `sys_oper_log` VALUES (602, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2200\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"通知确认情况\"],\"url\":[\"/system/userNews\"],\"target\":[\"menuItem\"],\"perms\":[\"system:userNews:view\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-check-circle\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:13:29');
INSERT INTO `sys_oper_log` VALUES (603, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2070\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"学生考勤\"],\"url\":[\"/system/attendance\"],\"target\":[\"menuItem\"],\"perms\":[\"system:attendance:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-eye\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:13:38');
INSERT INTO `sys_oper_log` VALUES (604, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2076\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"学生课堂情况\"],\"url\":[\"/system/score\"],\"target\":[\"menuItem\"],\"perms\":[\"system:score:view\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-calendar-check-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:15:38');
INSERT INTO `sys_oper_log` VALUES (605, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2064\"],\"parentId\":[\"2088\"],\"menuType\":[\"C\"],\"menuName\":[\"知识点概览\"],\"url\":[\"/system/knowledge\"],\"target\":[\"menuItem\"],\"perms\":[\"system:knowledge:view\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:16:20');
INSERT INTO `sys_oper_log` VALUES (606, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"C语言老师\"],\"roleKey\":[\"CLanguageteacher\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,107\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:17:37');
INSERT INTO `sys_oper_log` VALUES (607, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"C语言老师\"],\"roleKey\":[\"CLanguageteacher\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"C语言\"],\"menuIds\":[\"2088,2206,2207,2208,2209,2210,2211,2200,2201,2202,2203,2204,2205,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2064,2065,2066,2067,2068,2069,2218,2219,2220,2221,2222,2223,2194,2195,2196,2197,2198,2199,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:17:45');
INSERT INTO `sys_oper_log` VALUES (608, '学生/老师档案', 2, 'edu.yctc.project.system.infost.controller.InfostController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/infost/edit', '127.0.0.1', '内网IP', '{\"id\":[\"32\"],\"userId\":[\"32\"],\"academyId\":[\"1\"],\"classId\":[\"10\"],\"number\":[\"10003\"],\"name\":[\"姬小满\"],\"type\":[\"1\"],\"sex\":[\"0\"],\"idCardNumber\":[\"320586199901011142\"],\"phone\":[\"17788888888\"],\"mail\":[\"10001@qq.com\"],\"picture\":[\"https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1554820249936&amp;di=8871a4e90aed756b0179b2b241a5c2bc&amp;imgtype=0&amp;src=http%3A%2F%2Fimg.cwq.com%2F201612%2F1482144508944947.jpeg\"],\"faceToken\":[\"sa65d6as53ds2a32\"],\"modifyTime\":[\"2023-04-19\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:19:46');
INSERT INTO `sys_oper_log` VALUES (609, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"C语言老师\"],\"roleKey\":[\"CLanguageteacher\"],\"dataScope\":[\"5\"],\"deptIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:21:35');
INSERT INTO `sys_oper_log` VALUES (610, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"老师\"],\"roleKey\":[\"teacher\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"老师角色\"],\"menuIds\":[\"2012,2254,2255,2256,2239,2240,2241,2246,2242,2243,2244,2245,2247,2248,2252,2249,2250,2251,2257,2258\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:22:12');
INSERT INTO `sys_oper_log` VALUES (611, '角色管理', 1, 'edu.yctc.project.system.role.controller.RoleController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"耳鼻喉科老师\"],\"roleKey\":[\"m\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"耳鼻喉\"],\"menuIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:23:54');
INSERT INTO `sys_oper_log` VALUES (612, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"C语言老师\"],\"roleKey\":[\"c\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"C语言\"],\"menuIds\":[\"2088,2206,2207,2208,2209,2210,2211,2200,2201,2202,2203,2204,2205,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2064,2065,2066,2067,2068,2069,2218,2219,2220,2221,2222,2223,2194,2195,2196,2197,2198,2199,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:24:01');
INSERT INTO `sys_oper_log` VALUES (613, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"耳鼻喉科老师\"],\"roleKey\":[\"ear\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"耳鼻喉\"],\"menuIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:24:14');
INSERT INTO `sys_oper_log` VALUES (614, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"耳鼻喉科老师\"],\"roleKey\":[\"ear\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"耳鼻喉\"],\"menuIds\":[\"2088,2206,2207,2208,2209,2210,2211,2200,2201,2202,2203,2204,2205,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2064,2065,2066,2067,2068,2069,2218,2219,2220,2221,2222,2223,2194,2195,2196,2197,2198,2199,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:24:48');
INSERT INTO `sys_oper_log` VALUES (615, '角色管理', 1, 'edu.yctc.project.system.role.controller.RoleController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"C语言学生\"],\"roleKey\":[\"cs\"],\"roleSort\":[\"7\"],\"status\":[\"0\"],\"remark\":[\"C语言学生\"],\"menuIds\":[\"2088,2206,2207,2211,2200,2201,2205,2070,2071,2075,2076,2077,2081\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:28:32');
INSERT INTO `sys_oper_log` VALUES (616, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2247\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"学生考勤\"],\"url\":[\"/system/teacherAttendance\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:29:46');
INSERT INTO `sys_oper_log` VALUES (617, '文件信息', 2, 'edu.yctc.project.system.info.controller.FileInfoController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/info/edit', '127.0.0.1', '内网IP', '{\"fileId\":[\"4\"],\"fileName\":[\"ppt\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:31:28');
INSERT INTO `sys_oper_log` VALUES (618, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"课程管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:50:05');
INSERT INTO `sys_oper_log` VALUES (619, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2259\"],\"menuType\":[\"M\"],\"menuName\":[\"计算机学科\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-desktop\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:50:37');
INSERT INTO `sys_oper_log` VALUES (620, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2259\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"医学科\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-certificate\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:51:00');
INSERT INTO `sys_oper_log` VALUES (621, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2259\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"课程管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:51:36');
INSERT INTO `sys_oper_log` VALUES (622, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2259\"],\"menuType\":[\"M\"],\"menuName\":[\"医学科\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-thermometer\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:51:52');
INSERT INTO `sys_oper_log` VALUES (623, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2260\"],\"menuType\":[\"M\"],\"menuName\":[\"C语言程序设计\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-copyright\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:52:18');
INSERT INTO `sys_oper_log` VALUES (624, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2261\"],\"menuType\":[\"M\"],\"menuName\":[\"耳鼻喉科\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-mouse\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:53:11');
INSERT INTO `sys_oper_log` VALUES (625, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2263\"],\"parentId\":[\"2261\"],\"menuType\":[\"M\"],\"menuName\":[\"耳鼻喉科\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-deaf\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:53:46');
INSERT INTO `sys_oper_log` VALUES (626, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2262\"],\"menuType\":[\"M\"],\"menuName\":[\"知识图谱\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-map\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:55:00');
INSERT INTO `sys_oper_log` VALUES (627, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2262\"],\"menuType\":[\"C\"],\"menuName\":[\"课时任务\"],\"url\":[\"/demo/form/duallistbox\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-calendar-check-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:55:40');
INSERT INTO `sys_oper_log` VALUES (628, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2264\"],\"parentId\":[\"2262\"],\"menuType\":[\"C\"],\"menuName\":[\"知识图谱\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-map\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:57:38');
INSERT INTO `sys_oper_log` VALUES (629, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2264\"],\"parentId\":[\"2262\"],\"menuType\":[\"C\"],\"menuName\":[\"知识图谱\"],\"url\":[\"http://localhost:8080\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-map\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 11:58:02');
INSERT INTO `sys_oper_log` VALUES (630, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"C语言老师\"],\"roleKey\":[\"c\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"C语言\"],\"menuIds\":[\"2259,2260,2262,2264,2265\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 16:06:27');
INSERT INTO `sys_oper_log` VALUES (631, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"104\"],\"roleName\":[\"C语言学生\"],\"roleKey\":[\"cs\"],\"roleSort\":[\"7\"],\"status\":[\"0\"],\"remark\":[\"C语言学生\"],\"menuIds\":[\"2088,2206,2207,2211,2200,2201,2205,2070,2071,2075,2076,2077,2081,2259,2260,2262,2264,2265\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 16:06:46');
INSERT INTO `sys_oper_log` VALUES (632, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"C语言老师\"],\"roleKey\":[\"c\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"C语言\"],\"menuIds\":[\"2088,2206,2207,2208,2209,2210,2211,2200,2201,2202,2203,2204,2205,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2064,2065,2066,2067,2068,2069,2218,2219,2220,2221,2222,2223,2194,2195,2196,2197,2198,2199,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2259,2260,2262,2264,2265\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 16:06:59');
INSERT INTO `sys_oper_log` VALUES (633, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"耳鼻喉科老师\"],\"roleKey\":[\"ear\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"耳鼻喉\"],\"menuIds\":[\"2088,2206,2207,2208,2209,2210,2211,2200,2201,2202,2203,2204,2205,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2064,2065,2066,2067,2068,2069,2218,2219,2220,2221,2222,2223,2194,2195,2196,2197,2198,2199,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2259,2261,2263\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 16:07:11');
INSERT INTO `sys_oper_log` VALUES (634, '用户管理', 1, 'edu.yctc.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"张同学\"],\"deptName\":[\"软件工程\"],\"phonenumber\":[\"13916606653\"],\"email\":[\"111222333@qq.com\"],\"loginName\":[\"张同学\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"104\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"104\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 16:11:39');
INSERT INTO `sys_oper_log` VALUES (635, '用户管理', 1, 'edu.yctc.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"109\"],\"userName\":[\"李老师\"],\"deptName\":[\"小学教育\"],\"phonenumber\":[\"15696756583\"],\"email\":[\"222333555@qq.com\"],\"loginName\":[\"李老师\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"103\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"103\"],\"postIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 16:13:30');
INSERT INTO `sys_oper_log` VALUES (636, '部门管理', 1, 'edu.yctc.project.system.dept.controller.DeptController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"100\"],\"deptName\":[\"医学院\"],\"orderNum\":[\"3\"],\"leader\":[\"李老师\"],\"phone\":[\"15656936655\"],\"email\":[\"222555888@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 16:15:24');
INSERT INTO `sys_oper_log` VALUES (637, '部门管理', 1, 'edu.yctc.project.system.dept.controller.DeptController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"200\"],\"deptName\":[\"外科\"],\"orderNum\":[\"1\"],\"leader\":[\"李老师\"],\"phone\":[\"15655996658\"],\"email\":[\"888555222@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 16:16:18');
INSERT INTO `sys_oper_log` VALUES (638, '部门管理', 1, 'edu.yctc.project.system.dept.controller.DeptController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"200\"],\"deptName\":[\"内科\"],\"orderNum\":[\"2\"],\"leader\":[\"李老师\"],\"phone\":[\"15665996652\"],\"email\":[\"777444111@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 16:16:49');
INSERT INTO `sys_oper_log` VALUES (639, '用户管理', 2, 'edu.yctc.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"109\"],\"deptId\":[\"201\"],\"userName\":[\"李老师\"],\"dept.deptName\":[\"外科\"],\"phonenumber\":[\"15696756583\"],\"email\":[\"222333555@qq.com\"],\"loginName\":[\"李老师\"],\"sex\":[\"0\"],\"role\":[\"103\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"103\"],\"postIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 16:17:01');
INSERT INTO `sys_oper_log` VALUES (640, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"耳鼻喉科老师\"],\"roleKey\":[\"ear\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,200,201,202\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-06 16:17:24');
INSERT INTO `sys_oper_log` VALUES (641, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2263\"],\"menuType\":[\"C\"],\"menuName\":[\"知识图谱\"],\"url\":[\"http://localhost:8081\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-map\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 11:53:21');
INSERT INTO `sys_oper_log` VALUES (642, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2263\"],\"menuType\":[\"C\"],\"menuName\":[\"课时任务\"],\"url\":[\"/demo/form/duallistbox\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-calendar-check-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 11:54:18');
INSERT INTO `sys_oper_log` VALUES (643, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2239\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"老师查课\"],\"url\":[\"/system/teacher\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"9\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 11:54:45');
INSERT INTO `sys_oper_log` VALUES (644, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2241\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"学生评分\"],\"url\":[\"/system/teacher/score\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-check\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 11:54:53');
INSERT INTO `sys_oper_log` VALUES (645, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2257\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"课程评分\"],\"url\":[\"/system/teacher/lessonScore\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-certificate\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 11:54:59');
INSERT INTO `sys_oper_log` VALUES (646, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"C语言老师\"],\"roleKey\":[\"c\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"C语言\"],\"menuIds\":[\"2088,2206,2207,2208,2209,2210,2211,2200,2201,2202,2203,2204,2205,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2064,2065,2066,2067,2068,2069,2218,2219,2220,2221,2222,2223,2194,2195,2196,2197,2198,2199,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2259,2260,2262,2264,2265,2254,2255,2256\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 11:55:34');
INSERT INTO `sys_oper_log` VALUES (647, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"耳鼻喉科老师\"],\"roleKey\":[\"ear\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"耳鼻喉\"],\"menuIds\":[\"2088,2206,2207,2208,2209,2210,2211,2200,2201,2202,2203,2204,2205,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2064,2065,2066,2067,2068,2069,2218,2219,2220,2221,2222,2223,2194,2195,2196,2197,2198,2199,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2259,2261,2263,2254,2255,2256\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 11:55:39');
INSERT INTO `sys_oper_log` VALUES (648, '角色管理', 1, 'edu.yctc.project.system.role.controller.RoleController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"耳鼻喉科学生\"],\"roleKey\":[\"earstudent\"],\"roleSort\":[\"8\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2088,2206,2207,2211,2200,2201,2205,2070,2071,2075,2076,2077,2081\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 11:56:50');
INSERT INTO `sys_oper_log` VALUES (649, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"C语言老师\"],\"roleKey\":[\"c\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"C语言\"],\"menuIds\":[\"2021,2022,2023,2024,2025,2027,2034,2035,2036,2037,2039,2040,2041,2042,2043,2045,2046,2047,2048,2049,2051,2058,2059,2060,2061,2063,2082,2083,2084,2085,2087,2101,2102,2103,2104,2106,2107,2108,2109,2110,2112,2113,2114,2115,2116,2118,2226,2227,2228,2229,2231,2233,2234,2238,103,1016,2088,2206,2207,2208,2209,2210,2211,2200,2201,2202,2203,2204,2205,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2064,2065,2066,2067,2068,2069,2218,2219,2220,2221,2222,2223,2194,2195,2196,2197,2198,2199,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2119,2015,2016,2020,2052,2053,2057,2089,2090,2094,104,1020,1024,2259,2260,2262,2264,2265,2254,2255,2256\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 12:03:42');
INSERT INTO `sys_oper_log` VALUES (650, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"耳鼻喉科老师\"],\"roleKey\":[\"ear\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"耳鼻喉\"],\"menuIds\":[\"2021,2022,2023,2024,2025,2026,2027,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2058,2059,2060,2061,2062,2063,2082,2083,2084,2085,2086,2087,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2226,2227,2228,2229,2230,2231,2233,2234,2235,2236,2237,2238,103,1016,1017,1018,1019,2088,2206,2207,2208,2209,2210,2211,2200,2201,2202,2203,2204,2205,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2064,2065,2066,2067,2068,2069,2218,2219,2220,2221,2222,2223,2194,2195,2196,2197,2198,2199,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2119,2015,2016,2017,2018,2019,2020,2052,2053,2054,2055,2056,2057,2089,2090,2091,2092,2093,2094,104,1020,1021,1022,1023,1024,2259,2261,2263,2254,2255,2256\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 12:03:54');
INSERT INTO `sys_oper_log` VALUES (651, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"104\"],\"roleName\":[\"C语言学生\"],\"roleKey\":[\"cs\"],\"roleSort\":[\"7\"],\"status\":[\"0\"],\"remark\":[\"C语言学生\"],\"menuIds\":[\"2021,2022,2023,2027,2034,2035,2039,2040,2041,2045,2046,2047,2051,2058,2059,2063,2082,2083,2087,2101,2102,2106,2107,2108,2112,2113,2114,2118,2226,2227,2231,2233,2234,2238,103,1016,2088,2206,2207,2211,2200,2201,2205,2070,2071,2075,2076,2077,2081,2119,2015,2016,2020,2052,2053,2057,2259,2260,2262,2264,2265\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 12:04:55');
INSERT INTO `sys_oper_log` VALUES (652, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2021\"],\"menuType\":[\"C\"],\"menuName\":[\"教室申请\"],\"url\":[\"/system/apply\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-calendar-plus-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 12:06:44');
INSERT INTO `sys_oper_log` VALUES (653, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2254\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"教室申请\"],\"url\":[\"/system/apply\"],\"target\":[\"menuItem\"],\"perms\":[\"system:tea:view\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-clone\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 12:06:54');
INSERT INTO `sys_oper_log` VALUES (654, '学院', 1, 'edu.yctc.project.system.academy.controller.AcademyController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/academy/add', '127.0.0.1', '内网IP', '{\"academy\":[\"医学院\"],\"modifyTime\":[\"2023-05-08\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 12:10:13');
INSERT INTO `sys_oper_log` VALUES (655, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"113\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"表单构建\"],\"url\":[\"/tool/build\"],\"target\":[\"menuItem\"],\"perms\":[\"tool:build:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 12:11:13');
INSERT INTO `sys_oper_log` VALUES (656, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"114\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"代码生成\"],\"url\":[\"/tool/gen\"],\"target\":[\"menuItem\"],\"perms\":[\"tool:gen:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 12:11:24');
INSERT INTO `sys_oper_log` VALUES (657, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"文件信息\"],\"url\":[\"/system/info\"],\"target\":[\"menuItem\"],\"perms\":[\"system:info:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 12:11:29');
INSERT INTO `sys_oper_log` VALUES (658, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2263\"],\"parentId\":[\"2261\"],\"menuType\":[\"M\"],\"menuName\":[\"外科\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-deaf\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 12:19:46');
INSERT INTO `sys_oper_log` VALUES (659, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"编辑知识图谱\"],\"url\":[\"http://localhost:7474\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"12\"],\"icon\":[\"fa fa-map\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 12:47:55');
INSERT INTO `sys_oper_log` VALUES (660, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2269\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"编辑知识图谱\"],\"url\":[\"http://localhost:7687\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"12\"],\"icon\":[\"fa fa-map\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 12:48:15');
INSERT INTO `sys_oper_log` VALUES (661, '菜单管理', 3, 'edu.yctc.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '软件工程', '/ikun/system/menu/remove/2269', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 13:05:09');
INSERT INTO `sys_oper_log` VALUES (662, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"外科学生\"],\"roleKey\":[\"waistudent\"],\"roleSort\":[\"8\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2021,2022,2023,2027,2034,2035,2039,2040,2041,2045,2046,2047,2051,2058,2059,2063,2082,2083,2087,2101,2102,2103,2106,2107,2108,2112,2113,2114,2118,2226,2227,2231,2233,2234,2238,2268,103,1016,2088,2206,2207,2211,2200,2201,2205,2070,2071,2075,2076,2077,2081,2119,2015,2016,2020,2052,2053,2057,2259,2260,2262,2264,2265,2261,2263,2266,2267\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 13:19:40');
INSERT INTO `sys_oper_log` VALUES (663, '用户管理', 1, 'edu.yctc.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"201\"],\"userName\":[\"李同学\"],\"deptName\":[\"外科\"],\"phonenumber\":[\"13915506772\"],\"email\":[\"1399887743@qq.com\"],\"loginName\":[\"李同学\"],\"password\":[\"123456\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 13:21:56');
INSERT INTO `sys_oper_log` VALUES (664, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"外科学生\"],\"roleKey\":[\"waistudent\"],\"roleSort\":[\"8\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2021,2022,2023,2027,2034,2035,2039,2040,2041,2045,2046,2047,2051,2058,2059,2063,2082,2083,2087,2101,2102,2103,2106,2107,2108,2112,2113,2114,2118,2226,2227,2231,2233,2234,2238,2268,103,1016,2088,2206,2207,2211,2200,2201,2205,2070,2071,2075,2076,2077,2081,2119,2015,2016,2020,2052,2053,2057,2259,2261,2263,2266,2267\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 13:22:37');
INSERT INTO `sys_oper_log` VALUES (665, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2267\"],\"parentId\":[\"2263\"],\"menuType\":[\"C\"],\"menuName\":[\"课时任务\"],\"url\":[\"/demo/form/duallistbox\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-calendar-check-o\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-08 13:24:38');
INSERT INTO `sys_oper_log` VALUES (666, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"114\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"代码生成\"],\"url\":[\"/tool/gen\"],\"target\":[\"menuItem\"],\"perms\":[\"tool:gen:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-14 21:18:03');
INSERT INTO `sys_oper_log` VALUES (667, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2257\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"课程评分\"],\"url\":[\"/system/teacher/lessonScore\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-calendar-check-o\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:14:28');
INSERT INTO `sys_oper_log` VALUES (668, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2257\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"课程评分\"],\"url\":[\"/system/teacher/lessonScore\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-calendar-check-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:14:30');
INSERT INTO `sys_oper_log` VALUES (669, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2241\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"学生评分\"],\"url\":[\"/system/teacher/score\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-check\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:14:56');
INSERT INTO `sys_oper_log` VALUES (670, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2247\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"学生考勤\"],\"url\":[\"/system/teacherAttendance\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:17:59');
INSERT INTO `sys_oper_log` VALUES (671, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2257\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"课程评分\"],\"url\":[\"/system/teacher/lessonScore\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-calendar-check-o\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:20:43');
INSERT INTO `sys_oper_log` VALUES (672, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2247\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"学生考勤\"],\"url\":[\"/system/teacherAttendance\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:20:48');
INSERT INTO `sys_oper_log` VALUES (673, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2241\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"学生评分\"],\"url\":[\"/system/teacher/score\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-check\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:20:51');
INSERT INTO `sys_oper_log` VALUES (674, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2241\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"学生评分\"],\"url\":[\"/system/teacher/score\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-check\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:20:59');
INSERT INTO `sys_oper_log` VALUES (675, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2259\"],\"menuType\":[\"C\"],\"menuName\":[\"学生课程评分\"],\"url\":[\"/system/teacher/score\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-calendar-check-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:21:43');
INSERT INTO `sys_oper_log` VALUES (676, '菜单管理', 1, 'edu.yctc.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2259\"],\"menuType\":[\"C\"],\"menuName\":[\"查看课程评分结果\"],\"url\":[\"/system/teacher/score\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-bar-chart-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:24:20');
INSERT INTO `sys_oper_log` VALUES (677, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"C语言老师\"],\"roleKey\":[\"c\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"C语言\"],\"menuIds\":[\"2021,2022,2023,2024,2025,2027,2034,2035,2036,2037,2039,2040,2041,2042,2043,2045,2046,2047,2048,2049,2051,2058,2059,2060,2061,2063,2082,2083,2084,2085,2087,2101,2102,2103,2104,2106,2107,2108,2109,2110,2112,2113,2114,2115,2116,2118,2226,2227,2228,2229,2231,2233,2234,2238,103,1016,2088,2206,2207,2208,2209,2210,2211,2200,2201,2202,2203,2204,2205,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2064,2065,2066,2067,2068,2069,2218,2219,2220,2221,2222,2223,2194,2195,2196,2197,2198,2199,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2119,2015,2016,2020,2052,2053,2057,2089,2090,2094,104,1020,1024,2259,2260,2262,2264,2265,2271,2254,2255,2256\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:24:47');
INSERT INTO `sys_oper_log` VALUES (678, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"104\"],\"roleName\":[\"C语言学生\"],\"roleKey\":[\"cs\"],\"roleSort\":[\"7\"],\"status\":[\"0\"],\"remark\":[\"C语言学生\"],\"menuIds\":[\"2021,2022,2023,2027,2034,2035,2039,2040,2041,2045,2046,2047,2051,2058,2059,2063,2082,2083,2087,2101,2102,2106,2107,2108,2112,2113,2114,2118,2226,2227,2231,2233,2234,2238,103,1016,2088,2206,2207,2211,2200,2201,2205,2070,2071,2075,2076,2077,2081,2119,2015,2016,2020,2052,2053,2057,2259,2260,2262,2264,2265,2270\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:24:55');
INSERT INTO `sys_oper_log` VALUES (679, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2241\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"学生评分\"],\"url\":[\"/system/teacher/score\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-check\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:26:48');
INSERT INTO `sys_oper_log` VALUES (680, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2270\"],\"parentId\":[\"2259\"],\"menuType\":[\"C\"],\"menuName\":[\"学生课程评分\"],\"url\":[\"/system/teacher/score\"],\"target\":[\"menuItem\"],\"perms\":[\"system:teacher:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-calendar-check-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:29:51');
INSERT INTO `sys_oper_log` VALUES (681, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2270\"],\"parentId\":[\"2259\"],\"menuType\":[\"C\"],\"menuName\":[\"学生课程评分\"],\"url\":[\"/system/teacher/score\"],\"target\":[\"menuItem\"],\"perms\":[\"system:cs:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-calendar-check-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:30:10');
INSERT INTO `sys_oper_log` VALUES (682, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2271\"],\"parentId\":[\"2259\"],\"menuType\":[\"C\"],\"menuName\":[\"查看课程评分结果\"],\"url\":[\"/system/teacher/score\"],\"target\":[\"menuItem\"],\"perms\":[\"system:c:view\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-bar-chart-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:30:19');
INSERT INTO `sys_oper_log` VALUES (683, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"number\":[\"20086401\"],\"name\":[\"C语言\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"103\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:46:26');
INSERT INTO `sys_oper_log` VALUES (684, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"number\":[\"20086402\"],\"name\":[\"人文教育\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"103\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:46:30');
INSERT INTO `sys_oper_log` VALUES (685, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"number\":[\"20086781\"],\"name\":[\"数据结构\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"103\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:46:34');
INSERT INTO `sys_oper_log` VALUES (686, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"number\":[\"20086404\"],\"name\":[\"高等数学B1\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"103\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:46:37');
INSERT INTO `sys_oper_log` VALUES (687, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"number\":[\"20086405\"],\"name\":[\"算法设计\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"103\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:46:41');
INSERT INTO `sys_oper_log` VALUES (688, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"number\":[\"20086406\"],\"name\":[\"JAVA初级程序设计\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"103\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:46:48');
INSERT INTO `sys_oper_log` VALUES (689, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"7\"],\"number\":[\"20086411\"],\"name\":[\"计算机网络\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"103\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:46:52');
INSERT INTO `sys_oper_log` VALUES (690, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"8\"],\"number\":[\"20086407\"],\"name\":[\"操作系统\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"1\"],\"deptId\":[\"103\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:46:56');
INSERT INTO `sys_oper_log` VALUES (691, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"number\":[\"20086408\"],\"name\":[\"离散数学\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"1\"],\"deptId\":[\"103\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:47:00');
INSERT INTO `sys_oper_log` VALUES (692, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"number\":[\"20086409\"],\"name\":[\"马克思主义思想\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"1\"],\"deptId\":[\"103\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:47:03');
INSERT INTO `sys_oper_log` VALUES (693, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"number\":[\"20086402\"],\"name\":[\"人文教育\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"101\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:47:24');
INSERT INTO `sys_oper_log` VALUES (694, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"number\":[\"20086402\"],\"name\":[\"人文教育\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"104\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:47:29');
INSERT INTO `sys_oper_log` VALUES (695, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"number\":[\"20086409\"],\"name\":[\"马克思主义思想\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"1\"],\"deptId\":[\"201\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:48:06');
INSERT INTO `sys_oper_log` VALUES (696, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"number\":[\"20086409\"],\"name\":[\"马克思主义思想\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"1\"],\"deptId\":[\"202\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:48:12');
INSERT INTO `sys_oper_log` VALUES (697, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"number\":[\"20086409\"],\"name\":[\"马克思主义思想\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"1\"],\"deptId\":[\"302\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:48:15');
INSERT INTO `sys_oper_log` VALUES (698, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"number\":[\"20086409\"],\"name\":[\"马克思主义思想\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"1\"],\"deptId\":[\"111\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:48:19');
INSERT INTO `sys_oper_log` VALUES (699, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"number\":[\"20086409\"],\"name\":[\"马克思主义思想\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"1\"],\"deptId\":[\"109\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:48:24');
INSERT INTO `sys_oper_log` VALUES (700, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"number\":[\"20086402\"],\"name\":[\"人文教育\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"108\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:48:32');
INSERT INTO `sys_oper_log` VALUES (701, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"number\":[\"20086409\"],\"name\":[\"马克思主义思想\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"1\"],\"deptId\":[\"107\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:48:43');
INSERT INTO `sys_oper_log` VALUES (702, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"number\":[\"20086409\"],\"name\":[\"马克思主义思想\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"1\"],\"deptId\":[\"109\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:48:47');
INSERT INTO `sys_oper_log` VALUES (703, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"number\":[\"20086409\"],\"name\":[\"马克思主义思想\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"1\"],\"deptId\":[\"108\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:48:51');
INSERT INTO `sys_oper_log` VALUES (704, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"number\":[\"20086402\"],\"name\":[\"人文教育\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"109\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:48:58');
INSERT INTO `sys_oper_log` VALUES (705, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"number\":[\"20086408\"],\"name\":[\"离散数学\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"1\"],\"deptId\":[\"107\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:49:02');
INSERT INTO `sys_oper_log` VALUES (706, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"7\"],\"number\":[\"20086411\"],\"name\":[\"计算机网络\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"107\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:49:05');
INSERT INTO `sys_oper_log` VALUES (707, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"number\":[\"20086405\"],\"name\":[\"算法设计\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"104\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:49:11');
INSERT INTO `sys_oper_log` VALUES (708, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"number\":[\"20086405\"],\"name\":[\"算法设计\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"105\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:49:18');
INSERT INTO `sys_oper_log` VALUES (709, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"number\":[\"20086781\"],\"name\":[\"数据结构\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"106\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:49:25');
INSERT INTO `sys_oper_log` VALUES (710, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"number\":[\"20086404\"],\"name\":[\"高等数学B1\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"101\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:49:29');
INSERT INTO `sys_oper_log` VALUES (711, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"number\":[\"20086404\"],\"name\":[\"高等数学B1\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"102\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:49:33');
INSERT INTO `sys_oper_log` VALUES (712, '课程信息', 2, 'edu.yctc.project.system.course.controller.CourseController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/course/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"number\":[\"20086404\"],\"name\":[\"高等数学B1\"],\"lessonSum\":[\"64\"],\"year\":[\"2023-2024学年\"],\"term\":[\"0\"],\"deptId\":[\"107\"],\"classesId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:49:38');
INSERT INTO `sys_oper_log` VALUES (713, '角色管理', 2, 'edu.yctc.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"外科老师\"],\"roleKey\":[\"ear\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"耳鼻喉\"],\"menuIds\":[\"2021,2022,2023,2024,2025,2026,2027,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2058,2059,2060,2061,2062,2063,2082,2083,2084,2085,2086,2087,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2226,2227,2228,2229,2230,2231,2233,2234,2235,2236,2237,2238,103,1016,1017,1018,1019,2088,2206,2207,2208,2209,2210,2211,2200,2201,2202,2203,2204,2205,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2064,2065,2066,2067,2068,2069,2218,2219,2220,2221,2222,2223,2194,2195,2196,2197,2198,2199,2095,2096,2097,2098,2099,2100,2182,2183,2184,2185,2186,2187,2119,2015,2016,2017,2018,2019,2020,2052,2053,2054,2055,2056,2057,2089,2090,2091,2092,2093,2094,104,1020,1021,1022,1023,1024,2259,2261,2263,2254,2255,2256\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-17 15:59:53');
INSERT INTO `sys_oper_log` VALUES (714, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2270\"],\"parentId\":[\"2259\"],\"menuType\":[\"C\"],\"menuName\":[\"学生课程评分\"],\"url\":[\"/system/score\"],\"target\":[\"menuItem\"],\"perms\":[\"system:cs:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-calendar-check-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-25 14:44:54');
INSERT INTO `sys_oper_log` VALUES (715, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2271\"],\"parentId\":[\"2259\"],\"menuType\":[\"C\"],\"menuName\":[\"查看课程评分结果\"],\"url\":[\"/system/score\"],\"target\":[\"menuItem\"],\"perms\":[\"system:c:view\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-bar-chart-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-25 14:45:00');
INSERT INTO `sys_oper_log` VALUES (716, '用户管理', 3, 'edu.yctc.project.system.user.controller.UserController.remove()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"104\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-25 20:43:52');
INSERT INTO `sys_oper_log` VALUES (717, '用户管理', 3, 'edu.yctc.project.system.user.controller.UserController.remove()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"101\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-25 20:43:55');
INSERT INTO `sys_oper_log` VALUES (718, '用户管理', 3, 'edu.yctc.project.system.user.controller.UserController.remove()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"102\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-25 20:43:57');
INSERT INTO `sys_oper_log` VALUES (719, '用户管理', 3, 'edu.yctc.project.system.user.controller.UserController.remove()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"105\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-25 20:44:10');
INSERT INTO `sys_oper_log` VALUES (720, '用户管理', 3, 'edu.yctc.project.system.user.controller.UserController.remove()', 'POST', 1, 'admin', '软件工程', '/ikun/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"32\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-25 20:44:12');
INSERT INTO `sys_oper_log` VALUES (721, '菜单管理', 2, 'edu.yctc.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '软件工程', '/ikun/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"114\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"代码生成\"],\"url\":[\"/tool/gen\"],\"target\":[\"menuItem\"],\"perms\":[\"tool:gen:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-05-25 20:45:06');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'doaa', '教务处处长', 1, '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-15 22:15:45', 'Director of Academic Affairs');
INSERT INTO `sys_post` VALUES (2, 'se', '教导员', 2, '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-15 22:16:49', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '辅导员', 3, '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-15 22:16:55', '');
INSERT INTO `sys_post` VALUES (4, 'user', '任课教师', 4, '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-15 22:17:07', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-03-20 21:13:01', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2023-03-16 11:33:00', 'admin', '2023-03-20 21:12:48', '普通角色');
INSERT INTO `sys_role` VALUES (100, '信息管理员', 'info', 3, '1', '0', '0', 'admin', '2023-04-18 21:54:06', 'admin', '2023-04-22 21:08:06', '信息管理员');
INSERT INTO `sys_role` VALUES (101, '老师', 'teacher', 4, '1', '0', '0', 'admin', '2023-04-21 22:08:29', 'admin', '2023-05-06 11:22:12', '老师角色');
INSERT INTO `sys_role` VALUES (102, 'C语言老师', 'c', 5, '5', '0', '0', 'admin', '2023-05-06 10:55:04', 'admin', '2023-05-17 15:24:47', 'C语言');
INSERT INTO `sys_role` VALUES (103, '外科老师', 'ear', 6, '2', '0', '0', 'admin', '2023-05-06 11:23:54', 'admin', '2023-05-17 15:59:53', '耳鼻喉');
INSERT INTO `sys_role` VALUES (104, 'C语言学生', 'cs', 7, '1', '0', '0', 'admin', '2023-05-06 11:28:32', 'admin', '2023-05-17 15:24:55', 'C语言学生');
INSERT INTO `sys_role` VALUES (105, '外科学生', 'waistudent', 8, '1', '0', '0', 'admin', '2023-05-08 11:56:49', 'admin', '2023-05-08 13:22:37', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);
INSERT INTO `sys_role_dept` VALUES (103, 100);
INSERT INTO `sys_role_dept` VALUES (103, 200);
INSERT INTO `sys_role_dept` VALUES (103, 201);
INSERT INTO `sys_role_dept` VALUES (103, 202);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 100);
INSERT INTO `sys_role_menu` VALUES (1, 101);
INSERT INTO `sys_role_menu` VALUES (1, 102);
INSERT INTO `sys_role_menu` VALUES (1, 103);
INSERT INTO `sys_role_menu` VALUES (1, 104);
INSERT INTO `sys_role_menu` VALUES (1, 105);
INSERT INTO `sys_role_menu` VALUES (1, 106);
INSERT INTO `sys_role_menu` VALUES (1, 107);
INSERT INTO `sys_role_menu` VALUES (1, 108);
INSERT INTO `sys_role_menu` VALUES (1, 500);
INSERT INTO `sys_role_menu` VALUES (1, 501);
INSERT INTO `sys_role_menu` VALUES (1, 1000);
INSERT INTO `sys_role_menu` VALUES (1, 1001);
INSERT INTO `sys_role_menu` VALUES (1, 1002);
INSERT INTO `sys_role_menu` VALUES (1, 1003);
INSERT INTO `sys_role_menu` VALUES (1, 1004);
INSERT INTO `sys_role_menu` VALUES (1, 1005);
INSERT INTO `sys_role_menu` VALUES (1, 1006);
INSERT INTO `sys_role_menu` VALUES (1, 1007);
INSERT INTO `sys_role_menu` VALUES (1, 1009);
INSERT INTO `sys_role_menu` VALUES (1, 1010);
INSERT INTO `sys_role_menu` VALUES (1, 1011);
INSERT INTO `sys_role_menu` VALUES (1, 1012);
INSERT INTO `sys_role_menu` VALUES (1, 1013);
INSERT INTO `sys_role_menu` VALUES (1, 1014);
INSERT INTO `sys_role_menu` VALUES (1, 1015);
INSERT INTO `sys_role_menu` VALUES (1, 1016);
INSERT INTO `sys_role_menu` VALUES (1, 1017);
INSERT INTO `sys_role_menu` VALUES (1, 1018);
INSERT INTO `sys_role_menu` VALUES (1, 1019);
INSERT INTO `sys_role_menu` VALUES (1, 1020);
INSERT INTO `sys_role_menu` VALUES (1, 1021);
INSERT INTO `sys_role_menu` VALUES (1, 1022);
INSERT INTO `sys_role_menu` VALUES (1, 1023);
INSERT INTO `sys_role_menu` VALUES (1, 1024);
INSERT INTO `sys_role_menu` VALUES (1, 1025);
INSERT INTO `sys_role_menu` VALUES (1, 1026);
INSERT INTO `sys_role_menu` VALUES (1, 1027);
INSERT INTO `sys_role_menu` VALUES (1, 1028);
INSERT INTO `sys_role_menu` VALUES (1, 1029);
INSERT INTO `sys_role_menu` VALUES (1, 1030);
INSERT INTO `sys_role_menu` VALUES (1, 1031);
INSERT INTO `sys_role_menu` VALUES (1, 1032);
INSERT INTO `sys_role_menu` VALUES (1, 1033);
INSERT INTO `sys_role_menu` VALUES (1, 1034);
INSERT INTO `sys_role_menu` VALUES (1, 1035);
INSERT INTO `sys_role_menu` VALUES (1, 1036);
INSERT INTO `sys_role_menu` VALUES (1, 1037);
INSERT INTO `sys_role_menu` VALUES (1, 1038);
INSERT INTO `sys_role_menu` VALUES (1, 1039);
INSERT INTO `sys_role_menu` VALUES (1, 1040);
INSERT INTO `sys_role_menu` VALUES (1, 1041);
INSERT INTO `sys_role_menu` VALUES (1, 1042);
INSERT INTO `sys_role_menu` VALUES (1, 1043);
INSERT INTO `sys_role_menu` VALUES (1, 1044);
INSERT INTO `sys_role_menu` VALUES (1, 1045);
INSERT INTO `sys_role_menu` VALUES (1, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 2);
INSERT INTO `sys_role_menu` VALUES (100, 3);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 101);
INSERT INTO `sys_role_menu` VALUES (100, 102);
INSERT INTO `sys_role_menu` VALUES (100, 103);
INSERT INTO `sys_role_menu` VALUES (100, 104);
INSERT INTO `sys_role_menu` VALUES (100, 105);
INSERT INTO `sys_role_menu` VALUES (100, 106);
INSERT INTO `sys_role_menu` VALUES (100, 107);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 109);
INSERT INTO `sys_role_menu` VALUES (100, 110);
INSERT INTO `sys_role_menu` VALUES (100, 111);
INSERT INTO `sys_role_menu` VALUES (100, 112);
INSERT INTO `sys_role_menu` VALUES (100, 113);
INSERT INTO `sys_role_menu` VALUES (100, 114);
INSERT INTO `sys_role_menu` VALUES (100, 115);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1000);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1007);
INSERT INTO `sys_role_menu` VALUES (100, 1008);
INSERT INTO `sys_role_menu` VALUES (100, 1009);
INSERT INTO `sys_role_menu` VALUES (100, 1010);
INSERT INTO `sys_role_menu` VALUES (100, 1011);
INSERT INTO `sys_role_menu` VALUES (100, 1012);
INSERT INTO `sys_role_menu` VALUES (100, 1013);
INSERT INTO `sys_role_menu` VALUES (100, 1014);
INSERT INTO `sys_role_menu` VALUES (100, 1015);
INSERT INTO `sys_role_menu` VALUES (100, 1016);
INSERT INTO `sys_role_menu` VALUES (100, 1017);
INSERT INTO `sys_role_menu` VALUES (100, 1018);
INSERT INTO `sys_role_menu` VALUES (100, 1019);
INSERT INTO `sys_role_menu` VALUES (100, 1020);
INSERT INTO `sys_role_menu` VALUES (100, 1021);
INSERT INTO `sys_role_menu` VALUES (100, 1022);
INSERT INTO `sys_role_menu` VALUES (100, 1023);
INSERT INTO `sys_role_menu` VALUES (100, 1024);
INSERT INTO `sys_role_menu` VALUES (100, 1025);
INSERT INTO `sys_role_menu` VALUES (100, 1026);
INSERT INTO `sys_role_menu` VALUES (100, 1027);
INSERT INTO `sys_role_menu` VALUES (100, 1028);
INSERT INTO `sys_role_menu` VALUES (100, 1029);
INSERT INTO `sys_role_menu` VALUES (100, 1030);
INSERT INTO `sys_role_menu` VALUES (100, 1031);
INSERT INTO `sys_role_menu` VALUES (100, 1032);
INSERT INTO `sys_role_menu` VALUES (100, 1033);
INSERT INTO `sys_role_menu` VALUES (100, 1034);
INSERT INTO `sys_role_menu` VALUES (100, 1035);
INSERT INTO `sys_role_menu` VALUES (100, 1036);
INSERT INTO `sys_role_menu` VALUES (100, 1037);
INSERT INTO `sys_role_menu` VALUES (100, 1038);
INSERT INTO `sys_role_menu` VALUES (100, 1039);
INSERT INTO `sys_role_menu` VALUES (100, 1040);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1043);
INSERT INTO `sys_role_menu` VALUES (100, 1044);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 1046);
INSERT INTO `sys_role_menu` VALUES (100, 1047);
INSERT INTO `sys_role_menu` VALUES (100, 1048);
INSERT INTO `sys_role_menu` VALUES (100, 1049);
INSERT INTO `sys_role_menu` VALUES (100, 1050);
INSERT INTO `sys_role_menu` VALUES (100, 1051);
INSERT INTO `sys_role_menu` VALUES (100, 1052);
INSERT INTO `sys_role_menu` VALUES (100, 1053);
INSERT INTO `sys_role_menu` VALUES (100, 1054);
INSERT INTO `sys_role_menu` VALUES (100, 1055);
INSERT INTO `sys_role_menu` VALUES (100, 1056);
INSERT INTO `sys_role_menu` VALUES (100, 1057);
INSERT INTO `sys_role_menu` VALUES (100, 1058);
INSERT INTO `sys_role_menu` VALUES (100, 1059);
INSERT INTO `sys_role_menu` VALUES (100, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 1061);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2002);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2005);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2015);
INSERT INTO `sys_role_menu` VALUES (100, 2016);
INSERT INTO `sys_role_menu` VALUES (100, 2017);
INSERT INTO `sys_role_menu` VALUES (100, 2018);
INSERT INTO `sys_role_menu` VALUES (100, 2019);
INSERT INTO `sys_role_menu` VALUES (100, 2020);
INSERT INTO `sys_role_menu` VALUES (100, 2021);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2026);
INSERT INTO `sys_role_menu` VALUES (100, 2027);
INSERT INTO `sys_role_menu` VALUES (100, 2034);
INSERT INTO `sys_role_menu` VALUES (100, 2035);
INSERT INTO `sys_role_menu` VALUES (100, 2036);
INSERT INTO `sys_role_menu` VALUES (100, 2037);
INSERT INTO `sys_role_menu` VALUES (100, 2038);
INSERT INTO `sys_role_menu` VALUES (100, 2039);
INSERT INTO `sys_role_menu` VALUES (100, 2040);
INSERT INTO `sys_role_menu` VALUES (100, 2041);
INSERT INTO `sys_role_menu` VALUES (100, 2042);
INSERT INTO `sys_role_menu` VALUES (100, 2043);
INSERT INTO `sys_role_menu` VALUES (100, 2044);
INSERT INTO `sys_role_menu` VALUES (100, 2045);
INSERT INTO `sys_role_menu` VALUES (100, 2046);
INSERT INTO `sys_role_menu` VALUES (100, 2047);
INSERT INTO `sys_role_menu` VALUES (100, 2048);
INSERT INTO `sys_role_menu` VALUES (100, 2049);
INSERT INTO `sys_role_menu` VALUES (100, 2050);
INSERT INTO `sys_role_menu` VALUES (100, 2051);
INSERT INTO `sys_role_menu` VALUES (100, 2052);
INSERT INTO `sys_role_menu` VALUES (100, 2053);
INSERT INTO `sys_role_menu` VALUES (100, 2054);
INSERT INTO `sys_role_menu` VALUES (100, 2055);
INSERT INTO `sys_role_menu` VALUES (100, 2056);
INSERT INTO `sys_role_menu` VALUES (100, 2057);
INSERT INTO `sys_role_menu` VALUES (100, 2058);
INSERT INTO `sys_role_menu` VALUES (100, 2059);
INSERT INTO `sys_role_menu` VALUES (100, 2060);
INSERT INTO `sys_role_menu` VALUES (100, 2061);
INSERT INTO `sys_role_menu` VALUES (100, 2062);
INSERT INTO `sys_role_menu` VALUES (100, 2063);
INSERT INTO `sys_role_menu` VALUES (100, 2064);
INSERT INTO `sys_role_menu` VALUES (100, 2065);
INSERT INTO `sys_role_menu` VALUES (100, 2066);
INSERT INTO `sys_role_menu` VALUES (100, 2067);
INSERT INTO `sys_role_menu` VALUES (100, 2068);
INSERT INTO `sys_role_menu` VALUES (100, 2069);
INSERT INTO `sys_role_menu` VALUES (100, 2070);
INSERT INTO `sys_role_menu` VALUES (100, 2071);
INSERT INTO `sys_role_menu` VALUES (100, 2072);
INSERT INTO `sys_role_menu` VALUES (100, 2073);
INSERT INTO `sys_role_menu` VALUES (100, 2074);
INSERT INTO `sys_role_menu` VALUES (100, 2075);
INSERT INTO `sys_role_menu` VALUES (100, 2076);
INSERT INTO `sys_role_menu` VALUES (100, 2077);
INSERT INTO `sys_role_menu` VALUES (100, 2078);
INSERT INTO `sys_role_menu` VALUES (100, 2079);
INSERT INTO `sys_role_menu` VALUES (100, 2080);
INSERT INTO `sys_role_menu` VALUES (100, 2081);
INSERT INTO `sys_role_menu` VALUES (100, 2082);
INSERT INTO `sys_role_menu` VALUES (100, 2083);
INSERT INTO `sys_role_menu` VALUES (100, 2084);
INSERT INTO `sys_role_menu` VALUES (100, 2085);
INSERT INTO `sys_role_menu` VALUES (100, 2086);
INSERT INTO `sys_role_menu` VALUES (100, 2087);
INSERT INTO `sys_role_menu` VALUES (100, 2088);
INSERT INTO `sys_role_menu` VALUES (100, 2089);
INSERT INTO `sys_role_menu` VALUES (100, 2090);
INSERT INTO `sys_role_menu` VALUES (100, 2091);
INSERT INTO `sys_role_menu` VALUES (100, 2092);
INSERT INTO `sys_role_menu` VALUES (100, 2093);
INSERT INTO `sys_role_menu` VALUES (100, 2094);
INSERT INTO `sys_role_menu` VALUES (100, 2095);
INSERT INTO `sys_role_menu` VALUES (100, 2096);
INSERT INTO `sys_role_menu` VALUES (100, 2097);
INSERT INTO `sys_role_menu` VALUES (100, 2098);
INSERT INTO `sys_role_menu` VALUES (100, 2099);
INSERT INTO `sys_role_menu` VALUES (100, 2100);
INSERT INTO `sys_role_menu` VALUES (100, 2101);
INSERT INTO `sys_role_menu` VALUES (100, 2102);
INSERT INTO `sys_role_menu` VALUES (100, 2103);
INSERT INTO `sys_role_menu` VALUES (100, 2104);
INSERT INTO `sys_role_menu` VALUES (100, 2105);
INSERT INTO `sys_role_menu` VALUES (100, 2106);
INSERT INTO `sys_role_menu` VALUES (100, 2107);
INSERT INTO `sys_role_menu` VALUES (100, 2108);
INSERT INTO `sys_role_menu` VALUES (100, 2109);
INSERT INTO `sys_role_menu` VALUES (100, 2110);
INSERT INTO `sys_role_menu` VALUES (100, 2111);
INSERT INTO `sys_role_menu` VALUES (100, 2112);
INSERT INTO `sys_role_menu` VALUES (100, 2113);
INSERT INTO `sys_role_menu` VALUES (100, 2114);
INSERT INTO `sys_role_menu` VALUES (100, 2115);
INSERT INTO `sys_role_menu` VALUES (100, 2116);
INSERT INTO `sys_role_menu` VALUES (100, 2117);
INSERT INTO `sys_role_menu` VALUES (100, 2118);
INSERT INTO `sys_role_menu` VALUES (100, 2119);
INSERT INTO `sys_role_menu` VALUES (100, 2182);
INSERT INTO `sys_role_menu` VALUES (100, 2183);
INSERT INTO `sys_role_menu` VALUES (100, 2184);
INSERT INTO `sys_role_menu` VALUES (100, 2185);
INSERT INTO `sys_role_menu` VALUES (100, 2186);
INSERT INTO `sys_role_menu` VALUES (100, 2187);
INSERT INTO `sys_role_menu` VALUES (100, 2194);
INSERT INTO `sys_role_menu` VALUES (100, 2195);
INSERT INTO `sys_role_menu` VALUES (100, 2196);
INSERT INTO `sys_role_menu` VALUES (100, 2197);
INSERT INTO `sys_role_menu` VALUES (100, 2198);
INSERT INTO `sys_role_menu` VALUES (100, 2199);
INSERT INTO `sys_role_menu` VALUES (100, 2200);
INSERT INTO `sys_role_menu` VALUES (100, 2201);
INSERT INTO `sys_role_menu` VALUES (100, 2202);
INSERT INTO `sys_role_menu` VALUES (100, 2203);
INSERT INTO `sys_role_menu` VALUES (100, 2204);
INSERT INTO `sys_role_menu` VALUES (100, 2205);
INSERT INTO `sys_role_menu` VALUES (100, 2206);
INSERT INTO `sys_role_menu` VALUES (100, 2207);
INSERT INTO `sys_role_menu` VALUES (100, 2208);
INSERT INTO `sys_role_menu` VALUES (100, 2209);
INSERT INTO `sys_role_menu` VALUES (100, 2210);
INSERT INTO `sys_role_menu` VALUES (100, 2211);
INSERT INTO `sys_role_menu` VALUES (100, 2218);
INSERT INTO `sys_role_menu` VALUES (100, 2219);
INSERT INTO `sys_role_menu` VALUES (100, 2220);
INSERT INTO `sys_role_menu` VALUES (100, 2221);
INSERT INTO `sys_role_menu` VALUES (100, 2222);
INSERT INTO `sys_role_menu` VALUES (100, 2223);
INSERT INTO `sys_role_menu` VALUES (100, 2226);
INSERT INTO `sys_role_menu` VALUES (100, 2227);
INSERT INTO `sys_role_menu` VALUES (100, 2228);
INSERT INTO `sys_role_menu` VALUES (100, 2229);
INSERT INTO `sys_role_menu` VALUES (100, 2230);
INSERT INTO `sys_role_menu` VALUES (100, 2231);
INSERT INTO `sys_role_menu` VALUES (100, 2233);
INSERT INTO `sys_role_menu` VALUES (100, 2234);
INSERT INTO `sys_role_menu` VALUES (100, 2235);
INSERT INTO `sys_role_menu` VALUES (100, 2236);
INSERT INTO `sys_role_menu` VALUES (100, 2237);
INSERT INTO `sys_role_menu` VALUES (100, 2238);
INSERT INTO `sys_role_menu` VALUES (101, 2012);
INSERT INTO `sys_role_menu` VALUES (101, 2239);
INSERT INTO `sys_role_menu` VALUES (101, 2240);
INSERT INTO `sys_role_menu` VALUES (101, 2241);
INSERT INTO `sys_role_menu` VALUES (101, 2242);
INSERT INTO `sys_role_menu` VALUES (101, 2243);
INSERT INTO `sys_role_menu` VALUES (101, 2244);
INSERT INTO `sys_role_menu` VALUES (101, 2245);
INSERT INTO `sys_role_menu` VALUES (101, 2246);
INSERT INTO `sys_role_menu` VALUES (101, 2247);
INSERT INTO `sys_role_menu` VALUES (101, 2248);
INSERT INTO `sys_role_menu` VALUES (101, 2249);
INSERT INTO `sys_role_menu` VALUES (101, 2250);
INSERT INTO `sys_role_menu` VALUES (101, 2251);
INSERT INTO `sys_role_menu` VALUES (101, 2252);
INSERT INTO `sys_role_menu` VALUES (101, 2254);
INSERT INTO `sys_role_menu` VALUES (101, 2255);
INSERT INTO `sys_role_menu` VALUES (101, 2256);
INSERT INTO `sys_role_menu` VALUES (101, 2257);
INSERT INTO `sys_role_menu` VALUES (101, 2258);
INSERT INTO `sys_role_menu` VALUES (102, 103);
INSERT INTO `sys_role_menu` VALUES (102, 104);
INSERT INTO `sys_role_menu` VALUES (102, 1016);
INSERT INTO `sys_role_menu` VALUES (102, 1020);
INSERT INTO `sys_role_menu` VALUES (102, 1024);
INSERT INTO `sys_role_menu` VALUES (102, 2015);
INSERT INTO `sys_role_menu` VALUES (102, 2016);
INSERT INTO `sys_role_menu` VALUES (102, 2020);
INSERT INTO `sys_role_menu` VALUES (102, 2021);
INSERT INTO `sys_role_menu` VALUES (102, 2022);
INSERT INTO `sys_role_menu` VALUES (102, 2023);
INSERT INTO `sys_role_menu` VALUES (102, 2024);
INSERT INTO `sys_role_menu` VALUES (102, 2025);
INSERT INTO `sys_role_menu` VALUES (102, 2027);
INSERT INTO `sys_role_menu` VALUES (102, 2034);
INSERT INTO `sys_role_menu` VALUES (102, 2035);
INSERT INTO `sys_role_menu` VALUES (102, 2036);
INSERT INTO `sys_role_menu` VALUES (102, 2037);
INSERT INTO `sys_role_menu` VALUES (102, 2039);
INSERT INTO `sys_role_menu` VALUES (102, 2040);
INSERT INTO `sys_role_menu` VALUES (102, 2041);
INSERT INTO `sys_role_menu` VALUES (102, 2042);
INSERT INTO `sys_role_menu` VALUES (102, 2043);
INSERT INTO `sys_role_menu` VALUES (102, 2045);
INSERT INTO `sys_role_menu` VALUES (102, 2046);
INSERT INTO `sys_role_menu` VALUES (102, 2047);
INSERT INTO `sys_role_menu` VALUES (102, 2048);
INSERT INTO `sys_role_menu` VALUES (102, 2049);
INSERT INTO `sys_role_menu` VALUES (102, 2051);
INSERT INTO `sys_role_menu` VALUES (102, 2052);
INSERT INTO `sys_role_menu` VALUES (102, 2053);
INSERT INTO `sys_role_menu` VALUES (102, 2057);
INSERT INTO `sys_role_menu` VALUES (102, 2058);
INSERT INTO `sys_role_menu` VALUES (102, 2059);
INSERT INTO `sys_role_menu` VALUES (102, 2060);
INSERT INTO `sys_role_menu` VALUES (102, 2061);
INSERT INTO `sys_role_menu` VALUES (102, 2063);
INSERT INTO `sys_role_menu` VALUES (102, 2064);
INSERT INTO `sys_role_menu` VALUES (102, 2065);
INSERT INTO `sys_role_menu` VALUES (102, 2066);
INSERT INTO `sys_role_menu` VALUES (102, 2067);
INSERT INTO `sys_role_menu` VALUES (102, 2068);
INSERT INTO `sys_role_menu` VALUES (102, 2069);
INSERT INTO `sys_role_menu` VALUES (102, 2070);
INSERT INTO `sys_role_menu` VALUES (102, 2071);
INSERT INTO `sys_role_menu` VALUES (102, 2072);
INSERT INTO `sys_role_menu` VALUES (102, 2073);
INSERT INTO `sys_role_menu` VALUES (102, 2074);
INSERT INTO `sys_role_menu` VALUES (102, 2075);
INSERT INTO `sys_role_menu` VALUES (102, 2076);
INSERT INTO `sys_role_menu` VALUES (102, 2077);
INSERT INTO `sys_role_menu` VALUES (102, 2078);
INSERT INTO `sys_role_menu` VALUES (102, 2079);
INSERT INTO `sys_role_menu` VALUES (102, 2080);
INSERT INTO `sys_role_menu` VALUES (102, 2081);
INSERT INTO `sys_role_menu` VALUES (102, 2082);
INSERT INTO `sys_role_menu` VALUES (102, 2083);
INSERT INTO `sys_role_menu` VALUES (102, 2084);
INSERT INTO `sys_role_menu` VALUES (102, 2085);
INSERT INTO `sys_role_menu` VALUES (102, 2087);
INSERT INTO `sys_role_menu` VALUES (102, 2088);
INSERT INTO `sys_role_menu` VALUES (102, 2089);
INSERT INTO `sys_role_menu` VALUES (102, 2090);
INSERT INTO `sys_role_menu` VALUES (102, 2094);
INSERT INTO `sys_role_menu` VALUES (102, 2095);
INSERT INTO `sys_role_menu` VALUES (102, 2096);
INSERT INTO `sys_role_menu` VALUES (102, 2097);
INSERT INTO `sys_role_menu` VALUES (102, 2098);
INSERT INTO `sys_role_menu` VALUES (102, 2099);
INSERT INTO `sys_role_menu` VALUES (102, 2100);
INSERT INTO `sys_role_menu` VALUES (102, 2101);
INSERT INTO `sys_role_menu` VALUES (102, 2102);
INSERT INTO `sys_role_menu` VALUES (102, 2103);
INSERT INTO `sys_role_menu` VALUES (102, 2104);
INSERT INTO `sys_role_menu` VALUES (102, 2106);
INSERT INTO `sys_role_menu` VALUES (102, 2107);
INSERT INTO `sys_role_menu` VALUES (102, 2108);
INSERT INTO `sys_role_menu` VALUES (102, 2109);
INSERT INTO `sys_role_menu` VALUES (102, 2110);
INSERT INTO `sys_role_menu` VALUES (102, 2112);
INSERT INTO `sys_role_menu` VALUES (102, 2113);
INSERT INTO `sys_role_menu` VALUES (102, 2114);
INSERT INTO `sys_role_menu` VALUES (102, 2115);
INSERT INTO `sys_role_menu` VALUES (102, 2116);
INSERT INTO `sys_role_menu` VALUES (102, 2118);
INSERT INTO `sys_role_menu` VALUES (102, 2119);
INSERT INTO `sys_role_menu` VALUES (102, 2182);
INSERT INTO `sys_role_menu` VALUES (102, 2183);
INSERT INTO `sys_role_menu` VALUES (102, 2184);
INSERT INTO `sys_role_menu` VALUES (102, 2185);
INSERT INTO `sys_role_menu` VALUES (102, 2186);
INSERT INTO `sys_role_menu` VALUES (102, 2187);
INSERT INTO `sys_role_menu` VALUES (102, 2194);
INSERT INTO `sys_role_menu` VALUES (102, 2195);
INSERT INTO `sys_role_menu` VALUES (102, 2196);
INSERT INTO `sys_role_menu` VALUES (102, 2197);
INSERT INTO `sys_role_menu` VALUES (102, 2198);
INSERT INTO `sys_role_menu` VALUES (102, 2199);
INSERT INTO `sys_role_menu` VALUES (102, 2200);
INSERT INTO `sys_role_menu` VALUES (102, 2201);
INSERT INTO `sys_role_menu` VALUES (102, 2202);
INSERT INTO `sys_role_menu` VALUES (102, 2203);
INSERT INTO `sys_role_menu` VALUES (102, 2204);
INSERT INTO `sys_role_menu` VALUES (102, 2205);
INSERT INTO `sys_role_menu` VALUES (102, 2206);
INSERT INTO `sys_role_menu` VALUES (102, 2207);
INSERT INTO `sys_role_menu` VALUES (102, 2208);
INSERT INTO `sys_role_menu` VALUES (102, 2209);
INSERT INTO `sys_role_menu` VALUES (102, 2210);
INSERT INTO `sys_role_menu` VALUES (102, 2211);
INSERT INTO `sys_role_menu` VALUES (102, 2218);
INSERT INTO `sys_role_menu` VALUES (102, 2219);
INSERT INTO `sys_role_menu` VALUES (102, 2220);
INSERT INTO `sys_role_menu` VALUES (102, 2221);
INSERT INTO `sys_role_menu` VALUES (102, 2222);
INSERT INTO `sys_role_menu` VALUES (102, 2223);
INSERT INTO `sys_role_menu` VALUES (102, 2226);
INSERT INTO `sys_role_menu` VALUES (102, 2227);
INSERT INTO `sys_role_menu` VALUES (102, 2228);
INSERT INTO `sys_role_menu` VALUES (102, 2229);
INSERT INTO `sys_role_menu` VALUES (102, 2231);
INSERT INTO `sys_role_menu` VALUES (102, 2233);
INSERT INTO `sys_role_menu` VALUES (102, 2234);
INSERT INTO `sys_role_menu` VALUES (102, 2238);
INSERT INTO `sys_role_menu` VALUES (102, 2254);
INSERT INTO `sys_role_menu` VALUES (102, 2255);
INSERT INTO `sys_role_menu` VALUES (102, 2256);
INSERT INTO `sys_role_menu` VALUES (102, 2259);
INSERT INTO `sys_role_menu` VALUES (102, 2260);
INSERT INTO `sys_role_menu` VALUES (102, 2262);
INSERT INTO `sys_role_menu` VALUES (102, 2264);
INSERT INTO `sys_role_menu` VALUES (102, 2265);
INSERT INTO `sys_role_menu` VALUES (102, 2271);
INSERT INTO `sys_role_menu` VALUES (103, 103);
INSERT INTO `sys_role_menu` VALUES (103, 104);
INSERT INTO `sys_role_menu` VALUES (103, 1016);
INSERT INTO `sys_role_menu` VALUES (103, 1017);
INSERT INTO `sys_role_menu` VALUES (103, 1018);
INSERT INTO `sys_role_menu` VALUES (103, 1019);
INSERT INTO `sys_role_menu` VALUES (103, 1020);
INSERT INTO `sys_role_menu` VALUES (103, 1021);
INSERT INTO `sys_role_menu` VALUES (103, 1022);
INSERT INTO `sys_role_menu` VALUES (103, 1023);
INSERT INTO `sys_role_menu` VALUES (103, 1024);
INSERT INTO `sys_role_menu` VALUES (103, 2015);
INSERT INTO `sys_role_menu` VALUES (103, 2016);
INSERT INTO `sys_role_menu` VALUES (103, 2017);
INSERT INTO `sys_role_menu` VALUES (103, 2018);
INSERT INTO `sys_role_menu` VALUES (103, 2019);
INSERT INTO `sys_role_menu` VALUES (103, 2020);
INSERT INTO `sys_role_menu` VALUES (103, 2021);
INSERT INTO `sys_role_menu` VALUES (103, 2022);
INSERT INTO `sys_role_menu` VALUES (103, 2023);
INSERT INTO `sys_role_menu` VALUES (103, 2024);
INSERT INTO `sys_role_menu` VALUES (103, 2025);
INSERT INTO `sys_role_menu` VALUES (103, 2026);
INSERT INTO `sys_role_menu` VALUES (103, 2027);
INSERT INTO `sys_role_menu` VALUES (103, 2034);
INSERT INTO `sys_role_menu` VALUES (103, 2035);
INSERT INTO `sys_role_menu` VALUES (103, 2036);
INSERT INTO `sys_role_menu` VALUES (103, 2037);
INSERT INTO `sys_role_menu` VALUES (103, 2038);
INSERT INTO `sys_role_menu` VALUES (103, 2039);
INSERT INTO `sys_role_menu` VALUES (103, 2040);
INSERT INTO `sys_role_menu` VALUES (103, 2041);
INSERT INTO `sys_role_menu` VALUES (103, 2042);
INSERT INTO `sys_role_menu` VALUES (103, 2043);
INSERT INTO `sys_role_menu` VALUES (103, 2044);
INSERT INTO `sys_role_menu` VALUES (103, 2045);
INSERT INTO `sys_role_menu` VALUES (103, 2046);
INSERT INTO `sys_role_menu` VALUES (103, 2047);
INSERT INTO `sys_role_menu` VALUES (103, 2048);
INSERT INTO `sys_role_menu` VALUES (103, 2049);
INSERT INTO `sys_role_menu` VALUES (103, 2050);
INSERT INTO `sys_role_menu` VALUES (103, 2051);
INSERT INTO `sys_role_menu` VALUES (103, 2052);
INSERT INTO `sys_role_menu` VALUES (103, 2053);
INSERT INTO `sys_role_menu` VALUES (103, 2054);
INSERT INTO `sys_role_menu` VALUES (103, 2055);
INSERT INTO `sys_role_menu` VALUES (103, 2056);
INSERT INTO `sys_role_menu` VALUES (103, 2057);
INSERT INTO `sys_role_menu` VALUES (103, 2058);
INSERT INTO `sys_role_menu` VALUES (103, 2059);
INSERT INTO `sys_role_menu` VALUES (103, 2060);
INSERT INTO `sys_role_menu` VALUES (103, 2061);
INSERT INTO `sys_role_menu` VALUES (103, 2062);
INSERT INTO `sys_role_menu` VALUES (103, 2063);
INSERT INTO `sys_role_menu` VALUES (103, 2064);
INSERT INTO `sys_role_menu` VALUES (103, 2065);
INSERT INTO `sys_role_menu` VALUES (103, 2066);
INSERT INTO `sys_role_menu` VALUES (103, 2067);
INSERT INTO `sys_role_menu` VALUES (103, 2068);
INSERT INTO `sys_role_menu` VALUES (103, 2069);
INSERT INTO `sys_role_menu` VALUES (103, 2070);
INSERT INTO `sys_role_menu` VALUES (103, 2071);
INSERT INTO `sys_role_menu` VALUES (103, 2072);
INSERT INTO `sys_role_menu` VALUES (103, 2073);
INSERT INTO `sys_role_menu` VALUES (103, 2074);
INSERT INTO `sys_role_menu` VALUES (103, 2075);
INSERT INTO `sys_role_menu` VALUES (103, 2076);
INSERT INTO `sys_role_menu` VALUES (103, 2077);
INSERT INTO `sys_role_menu` VALUES (103, 2078);
INSERT INTO `sys_role_menu` VALUES (103, 2079);
INSERT INTO `sys_role_menu` VALUES (103, 2080);
INSERT INTO `sys_role_menu` VALUES (103, 2081);
INSERT INTO `sys_role_menu` VALUES (103, 2082);
INSERT INTO `sys_role_menu` VALUES (103, 2083);
INSERT INTO `sys_role_menu` VALUES (103, 2084);
INSERT INTO `sys_role_menu` VALUES (103, 2085);
INSERT INTO `sys_role_menu` VALUES (103, 2086);
INSERT INTO `sys_role_menu` VALUES (103, 2087);
INSERT INTO `sys_role_menu` VALUES (103, 2088);
INSERT INTO `sys_role_menu` VALUES (103, 2089);
INSERT INTO `sys_role_menu` VALUES (103, 2090);
INSERT INTO `sys_role_menu` VALUES (103, 2091);
INSERT INTO `sys_role_menu` VALUES (103, 2092);
INSERT INTO `sys_role_menu` VALUES (103, 2093);
INSERT INTO `sys_role_menu` VALUES (103, 2094);
INSERT INTO `sys_role_menu` VALUES (103, 2095);
INSERT INTO `sys_role_menu` VALUES (103, 2096);
INSERT INTO `sys_role_menu` VALUES (103, 2097);
INSERT INTO `sys_role_menu` VALUES (103, 2098);
INSERT INTO `sys_role_menu` VALUES (103, 2099);
INSERT INTO `sys_role_menu` VALUES (103, 2100);
INSERT INTO `sys_role_menu` VALUES (103, 2101);
INSERT INTO `sys_role_menu` VALUES (103, 2102);
INSERT INTO `sys_role_menu` VALUES (103, 2103);
INSERT INTO `sys_role_menu` VALUES (103, 2104);
INSERT INTO `sys_role_menu` VALUES (103, 2105);
INSERT INTO `sys_role_menu` VALUES (103, 2106);
INSERT INTO `sys_role_menu` VALUES (103, 2107);
INSERT INTO `sys_role_menu` VALUES (103, 2108);
INSERT INTO `sys_role_menu` VALUES (103, 2109);
INSERT INTO `sys_role_menu` VALUES (103, 2110);
INSERT INTO `sys_role_menu` VALUES (103, 2111);
INSERT INTO `sys_role_menu` VALUES (103, 2112);
INSERT INTO `sys_role_menu` VALUES (103, 2113);
INSERT INTO `sys_role_menu` VALUES (103, 2114);
INSERT INTO `sys_role_menu` VALUES (103, 2115);
INSERT INTO `sys_role_menu` VALUES (103, 2116);
INSERT INTO `sys_role_menu` VALUES (103, 2117);
INSERT INTO `sys_role_menu` VALUES (103, 2118);
INSERT INTO `sys_role_menu` VALUES (103, 2119);
INSERT INTO `sys_role_menu` VALUES (103, 2182);
INSERT INTO `sys_role_menu` VALUES (103, 2183);
INSERT INTO `sys_role_menu` VALUES (103, 2184);
INSERT INTO `sys_role_menu` VALUES (103, 2185);
INSERT INTO `sys_role_menu` VALUES (103, 2186);
INSERT INTO `sys_role_menu` VALUES (103, 2187);
INSERT INTO `sys_role_menu` VALUES (103, 2194);
INSERT INTO `sys_role_menu` VALUES (103, 2195);
INSERT INTO `sys_role_menu` VALUES (103, 2196);
INSERT INTO `sys_role_menu` VALUES (103, 2197);
INSERT INTO `sys_role_menu` VALUES (103, 2198);
INSERT INTO `sys_role_menu` VALUES (103, 2199);
INSERT INTO `sys_role_menu` VALUES (103, 2200);
INSERT INTO `sys_role_menu` VALUES (103, 2201);
INSERT INTO `sys_role_menu` VALUES (103, 2202);
INSERT INTO `sys_role_menu` VALUES (103, 2203);
INSERT INTO `sys_role_menu` VALUES (103, 2204);
INSERT INTO `sys_role_menu` VALUES (103, 2205);
INSERT INTO `sys_role_menu` VALUES (103, 2206);
INSERT INTO `sys_role_menu` VALUES (103, 2207);
INSERT INTO `sys_role_menu` VALUES (103, 2208);
INSERT INTO `sys_role_menu` VALUES (103, 2209);
INSERT INTO `sys_role_menu` VALUES (103, 2210);
INSERT INTO `sys_role_menu` VALUES (103, 2211);
INSERT INTO `sys_role_menu` VALUES (103, 2218);
INSERT INTO `sys_role_menu` VALUES (103, 2219);
INSERT INTO `sys_role_menu` VALUES (103, 2220);
INSERT INTO `sys_role_menu` VALUES (103, 2221);
INSERT INTO `sys_role_menu` VALUES (103, 2222);
INSERT INTO `sys_role_menu` VALUES (103, 2223);
INSERT INTO `sys_role_menu` VALUES (103, 2226);
INSERT INTO `sys_role_menu` VALUES (103, 2227);
INSERT INTO `sys_role_menu` VALUES (103, 2228);
INSERT INTO `sys_role_menu` VALUES (103, 2229);
INSERT INTO `sys_role_menu` VALUES (103, 2230);
INSERT INTO `sys_role_menu` VALUES (103, 2231);
INSERT INTO `sys_role_menu` VALUES (103, 2233);
INSERT INTO `sys_role_menu` VALUES (103, 2234);
INSERT INTO `sys_role_menu` VALUES (103, 2235);
INSERT INTO `sys_role_menu` VALUES (103, 2236);
INSERT INTO `sys_role_menu` VALUES (103, 2237);
INSERT INTO `sys_role_menu` VALUES (103, 2238);
INSERT INTO `sys_role_menu` VALUES (103, 2254);
INSERT INTO `sys_role_menu` VALUES (103, 2255);
INSERT INTO `sys_role_menu` VALUES (103, 2256);
INSERT INTO `sys_role_menu` VALUES (103, 2259);
INSERT INTO `sys_role_menu` VALUES (103, 2261);
INSERT INTO `sys_role_menu` VALUES (103, 2263);
INSERT INTO `sys_role_menu` VALUES (104, 103);
INSERT INTO `sys_role_menu` VALUES (104, 1016);
INSERT INTO `sys_role_menu` VALUES (104, 2015);
INSERT INTO `sys_role_menu` VALUES (104, 2016);
INSERT INTO `sys_role_menu` VALUES (104, 2020);
INSERT INTO `sys_role_menu` VALUES (104, 2021);
INSERT INTO `sys_role_menu` VALUES (104, 2022);
INSERT INTO `sys_role_menu` VALUES (104, 2023);
INSERT INTO `sys_role_menu` VALUES (104, 2027);
INSERT INTO `sys_role_menu` VALUES (104, 2034);
INSERT INTO `sys_role_menu` VALUES (104, 2035);
INSERT INTO `sys_role_menu` VALUES (104, 2039);
INSERT INTO `sys_role_menu` VALUES (104, 2040);
INSERT INTO `sys_role_menu` VALUES (104, 2041);
INSERT INTO `sys_role_menu` VALUES (104, 2045);
INSERT INTO `sys_role_menu` VALUES (104, 2046);
INSERT INTO `sys_role_menu` VALUES (104, 2047);
INSERT INTO `sys_role_menu` VALUES (104, 2051);
INSERT INTO `sys_role_menu` VALUES (104, 2052);
INSERT INTO `sys_role_menu` VALUES (104, 2053);
INSERT INTO `sys_role_menu` VALUES (104, 2057);
INSERT INTO `sys_role_menu` VALUES (104, 2058);
INSERT INTO `sys_role_menu` VALUES (104, 2059);
INSERT INTO `sys_role_menu` VALUES (104, 2063);
INSERT INTO `sys_role_menu` VALUES (104, 2070);
INSERT INTO `sys_role_menu` VALUES (104, 2071);
INSERT INTO `sys_role_menu` VALUES (104, 2075);
INSERT INTO `sys_role_menu` VALUES (104, 2076);
INSERT INTO `sys_role_menu` VALUES (104, 2077);
INSERT INTO `sys_role_menu` VALUES (104, 2081);
INSERT INTO `sys_role_menu` VALUES (104, 2082);
INSERT INTO `sys_role_menu` VALUES (104, 2083);
INSERT INTO `sys_role_menu` VALUES (104, 2087);
INSERT INTO `sys_role_menu` VALUES (104, 2088);
INSERT INTO `sys_role_menu` VALUES (104, 2101);
INSERT INTO `sys_role_menu` VALUES (104, 2102);
INSERT INTO `sys_role_menu` VALUES (104, 2106);
INSERT INTO `sys_role_menu` VALUES (104, 2107);
INSERT INTO `sys_role_menu` VALUES (104, 2108);
INSERT INTO `sys_role_menu` VALUES (104, 2112);
INSERT INTO `sys_role_menu` VALUES (104, 2113);
INSERT INTO `sys_role_menu` VALUES (104, 2114);
INSERT INTO `sys_role_menu` VALUES (104, 2118);
INSERT INTO `sys_role_menu` VALUES (104, 2119);
INSERT INTO `sys_role_menu` VALUES (104, 2200);
INSERT INTO `sys_role_menu` VALUES (104, 2201);
INSERT INTO `sys_role_menu` VALUES (104, 2205);
INSERT INTO `sys_role_menu` VALUES (104, 2206);
INSERT INTO `sys_role_menu` VALUES (104, 2207);
INSERT INTO `sys_role_menu` VALUES (104, 2211);
INSERT INTO `sys_role_menu` VALUES (104, 2226);
INSERT INTO `sys_role_menu` VALUES (104, 2227);
INSERT INTO `sys_role_menu` VALUES (104, 2231);
INSERT INTO `sys_role_menu` VALUES (104, 2233);
INSERT INTO `sys_role_menu` VALUES (104, 2234);
INSERT INTO `sys_role_menu` VALUES (104, 2238);
INSERT INTO `sys_role_menu` VALUES (104, 2259);
INSERT INTO `sys_role_menu` VALUES (104, 2260);
INSERT INTO `sys_role_menu` VALUES (104, 2262);
INSERT INTO `sys_role_menu` VALUES (104, 2264);
INSERT INTO `sys_role_menu` VALUES (104, 2265);
INSERT INTO `sys_role_menu` VALUES (104, 2270);
INSERT INTO `sys_role_menu` VALUES (105, 103);
INSERT INTO `sys_role_menu` VALUES (105, 1016);
INSERT INTO `sys_role_menu` VALUES (105, 2015);
INSERT INTO `sys_role_menu` VALUES (105, 2016);
INSERT INTO `sys_role_menu` VALUES (105, 2020);
INSERT INTO `sys_role_menu` VALUES (105, 2021);
INSERT INTO `sys_role_menu` VALUES (105, 2022);
INSERT INTO `sys_role_menu` VALUES (105, 2023);
INSERT INTO `sys_role_menu` VALUES (105, 2027);
INSERT INTO `sys_role_menu` VALUES (105, 2034);
INSERT INTO `sys_role_menu` VALUES (105, 2035);
INSERT INTO `sys_role_menu` VALUES (105, 2039);
INSERT INTO `sys_role_menu` VALUES (105, 2040);
INSERT INTO `sys_role_menu` VALUES (105, 2041);
INSERT INTO `sys_role_menu` VALUES (105, 2045);
INSERT INTO `sys_role_menu` VALUES (105, 2046);
INSERT INTO `sys_role_menu` VALUES (105, 2047);
INSERT INTO `sys_role_menu` VALUES (105, 2051);
INSERT INTO `sys_role_menu` VALUES (105, 2052);
INSERT INTO `sys_role_menu` VALUES (105, 2053);
INSERT INTO `sys_role_menu` VALUES (105, 2057);
INSERT INTO `sys_role_menu` VALUES (105, 2058);
INSERT INTO `sys_role_menu` VALUES (105, 2059);
INSERT INTO `sys_role_menu` VALUES (105, 2063);
INSERT INTO `sys_role_menu` VALUES (105, 2070);
INSERT INTO `sys_role_menu` VALUES (105, 2071);
INSERT INTO `sys_role_menu` VALUES (105, 2075);
INSERT INTO `sys_role_menu` VALUES (105, 2076);
INSERT INTO `sys_role_menu` VALUES (105, 2077);
INSERT INTO `sys_role_menu` VALUES (105, 2081);
INSERT INTO `sys_role_menu` VALUES (105, 2082);
INSERT INTO `sys_role_menu` VALUES (105, 2083);
INSERT INTO `sys_role_menu` VALUES (105, 2087);
INSERT INTO `sys_role_menu` VALUES (105, 2088);
INSERT INTO `sys_role_menu` VALUES (105, 2101);
INSERT INTO `sys_role_menu` VALUES (105, 2102);
INSERT INTO `sys_role_menu` VALUES (105, 2103);
INSERT INTO `sys_role_menu` VALUES (105, 2106);
INSERT INTO `sys_role_menu` VALUES (105, 2107);
INSERT INTO `sys_role_menu` VALUES (105, 2108);
INSERT INTO `sys_role_menu` VALUES (105, 2112);
INSERT INTO `sys_role_menu` VALUES (105, 2113);
INSERT INTO `sys_role_menu` VALUES (105, 2114);
INSERT INTO `sys_role_menu` VALUES (105, 2118);
INSERT INTO `sys_role_menu` VALUES (105, 2119);
INSERT INTO `sys_role_menu` VALUES (105, 2200);
INSERT INTO `sys_role_menu` VALUES (105, 2201);
INSERT INTO `sys_role_menu` VALUES (105, 2205);
INSERT INTO `sys_role_menu` VALUES (105, 2206);
INSERT INTO `sys_role_menu` VALUES (105, 2207);
INSERT INTO `sys_role_menu` VALUES (105, 2211);
INSERT INTO `sys_role_menu` VALUES (105, 2226);
INSERT INTO `sys_role_menu` VALUES (105, 2227);
INSERT INTO `sys_role_menu` VALUES (105, 2231);
INSERT INTO `sys_role_menu` VALUES (105, 2233);
INSERT INTO `sys_role_menu` VALUES (105, 2234);
INSERT INTO `sys_role_menu` VALUES (105, 2238);
INSERT INTO `sys_role_menu` VALUES (105, 2259);
INSERT INTO `sys_role_menu` VALUES (105, 2261);
INSERT INTO `sys_role_menu` VALUES (105, 2263);
INSERT INTO `sys_role_menu` VALUES (105, 2266);
INSERT INTO `sys_role_menu` VALUES (105, 2267);
INSERT INTO `sys_role_menu` VALUES (105, 2268);

-- ----------------------------
-- Table structure for sys_student_coursestate
-- ----------------------------
DROP TABLE IF EXISTS `sys_student_coursestate`;
CREATE TABLE `sys_student_coursestate`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '用户id',
  `lesson_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '课时id',
  `state` int UNSIGNED NULL DEFAULT NULL COMMENT '学生上课状态',
  `scan_start_time` datetime(6) NULL DEFAULT NULL COMMENT '扫描开始时间',
  `scan_end_time` datetime(6) NULL DEFAULT NULL COMMENT '扫描结束时间',
  `face_token` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '人脸标识',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1245 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '学生上课状态信息汇总' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_student_coursestate
-- ----------------------------
INSERT INTO `sys_student_coursestate` VALUES (546, 1, 582, 1, '2023-03-10 08:00:00.000000', '2023-03-10 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:05.979222');
INSERT INTO `sys_student_coursestate` VALUES (547, 1, 583, 1, '2023-03-11 00:00:00.000000', '2023-03-11 00:00:00.000000', 'f4b657a27b12a6ef6ffe323d708af84d', '2023-04-18 01:18:12.958000', '2023-04-18 00:00:00.000000');
INSERT INTO `sys_student_coursestate` VALUES (548, 1, 584, 2, '2023-03-12 08:00:00.000000', '2023-03-12 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:06.258544');
INSERT INTO `sys_student_coursestate` VALUES (549, 1, 585, 1, '2023-03-13 08:00:00.000000', '2023-03-13 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (550, 1, 586, 4, '2023-03-14 08:00:00.000000', '2023-03-14 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:06.543531');
INSERT INTO `sys_student_coursestate` VALUES (551, 1, 587, 1, '2023-03-15 08:00:00.000000', '2023-03-15 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (552, 1, 588, 1, '2023-03-16 08:00:00.000000', '2023-03-16 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:06.827641');
INSERT INTO `sys_student_coursestate` VALUES (553, 1, 589, 1, '2023-10-17 08:00:00.000000', '2023-10-17 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:06.968208');
INSERT INTO `sys_student_coursestate` VALUES (554, 1, 590, 3, '2023-10-18 08:00:00.000000', '2023-10-18 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:07.112742');
INSERT INTO `sys_student_coursestate` VALUES (555, 1, 591, 1, '2023-10-19 08:00:00.000000', '2023-10-19 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:07.254293');
INSERT INTO `sys_student_coursestate` VALUES (556, 1, 592, 1, '2023-10-20 08:00:00.000000', '2023-10-20 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (557, 1, 593, 2, '2023-10-21 08:00:00.000000', '2023-10-21 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:07.541367');
INSERT INTO `sys_student_coursestate` VALUES (558, 1, 594, 4, '2023-10-22 08:00:00.000000', '2023-10-22 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:07.685358');
INSERT INTO `sys_student_coursestate` VALUES (559, 1, 595, 1, '2023-10-23 08:00:00.000000', '2023-10-23 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (560, 2, 582, 1, '2023-03-10 08:00:00.000000', '2023-03-10 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (561, 2, 583, 1, '2023-03-11 08:00:00.000000', '2023-03-11 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (562, 2, 584, 1, '2023-03-12 08:00:00.000000', '2023-03-12 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (563, 2, 585, 2, '2023-03-13 08:00:00.000000', '2023-03-13 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:08.399073');
INSERT INTO `sys_student_coursestate` VALUES (564, 2, 586, 3, '2023-03-14 08:00:00.000000', '2023-03-14 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:08.539664');
INSERT INTO `sys_student_coursestate` VALUES (565, 2, 587, 1, '2023-03-15 08:00:00.000000', '2023-03-15 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (566, 2, 588, 1, '2023-03-16 08:00:00.000000', '2023-03-16 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (567, 2, 589, 2, '2023-10-17 08:00:00.000000', '2023-10-17 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:08.956465');
INSERT INTO `sys_student_coursestate` VALUES (568, 2, 590, 3, '2023-10-18 08:00:00.000000', '2023-10-18 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:09.096151');
INSERT INTO `sys_student_coursestate` VALUES (569, 2, 591, 3, '2023-10-19 08:00:00.000000', '2023-10-19 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:09.241614');
INSERT INTO `sys_student_coursestate` VALUES (570, 2, 592, 1, '2023-10-20 08:00:00.000000', '2023-10-20 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (571, 2, 593, 1, '2023-10-21 08:00:00.000000', '2023-10-21 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:09.521831');
INSERT INTO `sys_student_coursestate` VALUES (572, 2, 594, 2, '2023-10-22 08:00:00.000000', '2023-10-22 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:09.675175');
INSERT INTO `sys_student_coursestate` VALUES (573, 2, 595, 1, '2023-10-23 08:00:00.000000', '2023-10-23 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (574, 3, 582, 1, '2023-03-10 08:00:00.000000', '2023-03-10 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:09.957362');
INSERT INTO `sys_student_coursestate` VALUES (575, 3, 583, 4, '2023-03-11 08:00:00.000000', '2023-03-11 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:10.093951');
INSERT INTO `sys_student_coursestate` VALUES (576, 3, 584, 1, '2023-03-12 08:00:00.000000', '2023-03-12 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (577, 3, 585, 1, '2023-03-13 08:00:00.000000', '2023-03-13 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (578, 3, 586, 1, '2023-03-14 08:00:00.000000', '2023-03-14 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:10.516663');
INSERT INTO `sys_student_coursestate` VALUES (579, 3, 587, 2, '2023-03-15 08:00:00.000000', '2023-03-15 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:10.660215');
INSERT INTO `sys_student_coursestate` VALUES (580, 3, 588, 4, '2023-03-16 08:00:00.000000', '2023-03-16 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:10.800809');
INSERT INTO `sys_student_coursestate` VALUES (581, 3, 589, 2, '2023-10-17 08:00:00.000000', '2023-10-17 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:10.942361');
INSERT INTO `sys_student_coursestate` VALUES (582, 3, 590, 4, '2023-10-18 08:00:00.000000', '2023-10-18 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:11.084931');
INSERT INTO `sys_student_coursestate` VALUES (583, 3, 591, 1, '2023-10-19 08:00:00.000000', '2023-10-19 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (584, 3, 592, 4, '2023-10-20 08:00:00.000000', '2023-10-20 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:11.365166');
INSERT INTO `sys_student_coursestate` VALUES (585, 3, 593, 1, '2023-10-21 08:00:00.000000', '2023-10-21 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (586, 3, 594, 3, '2023-10-22 08:00:00.000000', '2023-10-22 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:11.647238');
INSERT INTO `sys_student_coursestate` VALUES (587, 3, 595, 2, '2023-10-23 08:00:00.000000', '2023-10-23 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:11.784917');
INSERT INTO `sys_student_coursestate` VALUES (588, 4, 582, 1, '2023-03-10 08:00:00.000000', '2023-03-10 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:11.925495');
INSERT INTO `sys_student_coursestate` VALUES (589, 4, 583, 3, '2023-03-11 08:00:00.000000', '2023-03-11 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:12.064122');
INSERT INTO `sys_student_coursestate` VALUES (590, 4, 584, 4, '2023-03-12 08:00:00.000000', '2023-03-12 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:12.203709');
INSERT INTO `sys_student_coursestate` VALUES (591, 4, 585, 1, '2023-03-13 08:00:00.000000', '2023-03-13 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (592, 4, 586, 1, '2023-03-14 08:00:00.000000', '2023-03-14 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (593, 4, 587, 3, '2023-03-15 08:00:00.000000', '2023-03-15 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:12.625893');
INSERT INTO `sys_student_coursestate` VALUES (594, 4, 588, 1, '2023-03-16 08:00:00.000000', '2023-03-16 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:12.765473');
INSERT INTO `sys_student_coursestate` VALUES (595, 4, 589, 4, '2023-10-17 08:00:00.000000', '2023-10-17 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:12.903147');
INSERT INTO `sys_student_coursestate` VALUES (596, 4, 590, 4, '2023-10-18 08:00:00.000000', '2023-10-18 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:13.042736');
INSERT INTO `sys_student_coursestate` VALUES (597, 4, 591, 4, '2023-10-19 08:00:00.000000', '2023-10-19 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:13.181359');
INSERT INTO `sys_student_coursestate` VALUES (598, 4, 592, 1, '2023-10-20 08:00:00.000000', '2023-10-20 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (599, 4, 593, 1, '2023-10-21 08:00:00.000000', '2023-10-21 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:13.464484');
INSERT INTO `sys_student_coursestate` VALUES (600, 4, 594, 2, '2023-10-22 08:00:00.000000', '2023-10-22 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:13.606022');
INSERT INTO `sys_student_coursestate` VALUES (601, 4, 595, 2, '2023-10-23 08:00:00.000000', '2023-10-23 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:13.745678');
INSERT INTO `sys_student_coursestate` VALUES (602, 5, 582, 4, '2023-03-10 08:00:00.000000', '2023-03-10 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:13.886277');
INSERT INTO `sys_student_coursestate` VALUES (603, 5, 583, 4, '2023-03-11 08:00:00.000000', '2023-03-11 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:14.026813');
INSERT INTO `sys_student_coursestate` VALUES (604, 5, 584, 4, '2023-03-12 08:00:00.000000', '2023-03-12 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:14.166416');
INSERT INTO `sys_student_coursestate` VALUES (605, 5, 585, 1, '2023-03-13 08:00:00.000000', '2023-03-13 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:14.304068');
INSERT INTO `sys_student_coursestate` VALUES (606, 5, 586, 1, '2023-03-14 08:00:00.000000', '2023-03-14 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (607, 5, 587, 3, '2023-03-15 08:00:00.000000', '2023-03-15 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:14.583287');
INSERT INTO `sys_student_coursestate` VALUES (608, 5, 588, 3, '2023-03-16 08:00:00.000000', '2023-03-16 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:14.721875');
INSERT INTO `sys_student_coursestate` VALUES (609, 5, 589, 3, '2023-10-17 08:00:00.000000', '2023-10-17 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:14.861450');
INSERT INTO `sys_student_coursestate` VALUES (610, 5, 590, 3, '2023-10-18 08:00:00.000000', '2023-10-18 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:15.000085');
INSERT INTO `sys_student_coursestate` VALUES (611, 5, 591, 4, '2023-10-19 08:00:00.000000', '2023-10-19 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:15.141640');
INSERT INTO `sys_student_coursestate` VALUES (612, 5, 592, 1, '2023-10-20 08:00:00.000000', '2023-10-20 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (613, 5, 593, 4, '2023-10-21 08:00:00.000000', '2023-10-21 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:15.425777');
INSERT INTO `sys_student_coursestate` VALUES (614, 5, 594, 1, '2023-10-22 08:00:00.000000', '2023-10-22 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (615, 5, 595, 1, '2023-10-23 08:00:00.000000', '2023-10-23 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:15.707913');
INSERT INTO `sys_student_coursestate` VALUES (616, 6, 582, 3, '2023-03-10 08:00:00.000000', '2023-03-10 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:15.848543');
INSERT INTO `sys_student_coursestate` VALUES (617, 6, 583, 2, '2023-03-11 08:00:00.000000', '2023-03-11 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:15.990079');
INSERT INTO `sys_student_coursestate` VALUES (618, 6, 584, 4, '2023-03-12 08:00:00.000000', '2023-03-12 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:16.132692');
INSERT INTO `sys_student_coursestate` VALUES (619, 6, 585, 1, '2023-03-13 08:00:00.000000', '2023-03-13 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (620, 6, 586, 1, '2023-03-14 08:00:00.000000', '2023-03-14 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:16.415736');
INSERT INTO `sys_student_coursestate` VALUES (621, 6, 587, 1, '2023-03-15 08:00:00.000000', '2023-03-15 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (622, 6, 588, 3, '2023-03-16 08:00:00.000000', '2023-03-16 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:16.694993');
INSERT INTO `sys_student_coursestate` VALUES (623, 6, 589, 1, '2023-10-17 08:00:00.000000', '2023-10-17 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (624, 6, 590, 3, '2023-10-18 08:00:00.000000', '2023-10-18 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:16.972217');
INSERT INTO `sys_student_coursestate` VALUES (625, 6, 591, 1, '2023-10-19 08:00:00.000000', '2023-10-19 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:17.110857');
INSERT INTO `sys_student_coursestate` VALUES (626, 6, 592, 3, '2023-10-20 08:00:00.000000', '2023-10-20 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:17.253405');
INSERT INTO `sys_student_coursestate` VALUES (627, 6, 593, 4, '2023-10-21 08:00:00.000000', '2023-10-21 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:17.394981');
INSERT INTO `sys_student_coursestate` VALUES (628, 6, 594, 4, '2023-10-22 08:00:00.000000', '2023-10-22 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:17.533572');
INSERT INTO `sys_student_coursestate` VALUES (629, 6, 595, 2, '2023-10-23 08:00:00.000000', '2023-10-23 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:17.673613');
INSERT INTO `sys_student_coursestate` VALUES (630, 7, 582, 1, '2023-03-10 08:00:00.000000', '2023-03-10 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:17.815169');
INSERT INTO `sys_student_coursestate` VALUES (631, 7, 583, 2, '2023-03-11 08:00:00.000000', '2023-03-11 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:17.955006');
INSERT INTO `sys_student_coursestate` VALUES (632, 7, 584, 2, '2023-03-12 08:00:00.000000', '2023-03-12 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:18.095326');
INSERT INTO `sys_student_coursestate` VALUES (633, 7, 585, 1, '2023-03-13 08:00:00.000000', '2023-03-13 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (634, 7, 586, 4, '2023-03-14 08:00:00.000000', '2023-03-14 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:18.375541');
INSERT INTO `sys_student_coursestate` VALUES (635, 7, 587, 1, '2023-03-15 08:00:00.000000', '2023-03-15 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:18.515142');
INSERT INTO `sys_student_coursestate` VALUES (636, 7, 588, 2, '2023-03-16 08:00:00.000000', '2023-03-16 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:18.657684');
INSERT INTO `sys_student_coursestate` VALUES (637, 7, 589, 1, '2023-10-17 08:00:00.000000', '2023-10-17 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:18.796481');
INSERT INTO `sys_student_coursestate` VALUES (638, 7, 590, 3, '2023-10-18 08:00:00.000000', '2023-10-18 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:18.936865');
INSERT INTO `sys_student_coursestate` VALUES (639, 7, 591, 1, '2023-10-19 08:00:00.000000', '2023-10-19 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (640, 7, 592, 1, '2023-10-20 08:00:00.000000', '2023-10-20 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (641, 7, 593, 4, '2023-10-21 08:00:00.000000', '2023-10-21 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:19.356662');
INSERT INTO `sys_student_coursestate` VALUES (642, 7, 594, 1, '2023-10-22 08:00:00.000000', '2023-10-22 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:18:12.958000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (643, 7, 595, 2, '2023-10-23 08:00:00.000000', '2023-10-23 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:19.636881');
INSERT INTO `sys_student_coursestate` VALUES (644, 8, 582, 4, '2023-03-10 08:00:00.000000', '2023-03-10 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:19.776458');
INSERT INTO `sys_student_coursestate` VALUES (645, 8, 583, 1, '2023-03-11 08:00:00.000000', '2023-03-11 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:19.915077');
INSERT INTO `sys_student_coursestate` VALUES (646, 8, 584, 1, '2023-03-12 08:00:00.000000', '2023-03-12 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:20.055684');
INSERT INTO `sys_student_coursestate` VALUES (647, 8, 585, 3, '2023-03-13 08:00:00.000000', '2023-03-13 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:20.197220');
INSERT INTO `sys_student_coursestate` VALUES (648, 8, 586, 1, '2023-03-14 08:00:00.000000', '2023-03-14 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:20.363410');
INSERT INTO `sys_student_coursestate` VALUES (649, 8, 587, 4, '2023-03-15 08:00:00.000000', '2023-03-15 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:20.506895');
INSERT INTO `sys_student_coursestate` VALUES (650, 8, 588, 2, '2023-03-16 08:00:00.000000', '2023-03-16 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:20.645562');
INSERT INTO `sys_student_coursestate` VALUES (651, 8, 589, 4, '2023-10-17 08:00:00.000000', '2023-10-17 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:20.785157');
INSERT INTO `sys_student_coursestate` VALUES (652, 8, 590, 3, '2023-10-18 08:00:00.000000', '2023-10-18 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:20.923742');
INSERT INTO `sys_student_coursestate` VALUES (653, 8, 591, 1, '2023-10-19 08:00:00.000000', '2023-10-19 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:21.061374');
INSERT INTO `sys_student_coursestate` VALUES (654, 8, 592, 3, '2023-10-20 08:00:00.000000', '2023-10-20 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:21.200075');
INSERT INTO `sys_student_coursestate` VALUES (655, 8, 593, 1, '2023-10-21 08:00:00.000000', '2023-10-21 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:23:35.846544');
INSERT INTO `sys_student_coursestate` VALUES (656, 8, 594, 1, '2023-10-22 08:00:00.000000', '2023-10-22 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:21.485103');
INSERT INTO `sys_student_coursestate` VALUES (657, 8, 595, 4, '2023-10-23 08:00:00.000000', '2023-10-23 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:21.632577');
INSERT INTO `sys_student_coursestate` VALUES (658, 9, 582, 2, '2023-03-10 08:00:00.000000', '2023-03-10 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:21.772335');
INSERT INTO `sys_student_coursestate` VALUES (659, 9, 583, 2, '2023-03-11 08:00:00.000000', '2023-03-11 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:21.912781');
INSERT INTO `sys_student_coursestate` VALUES (660, 9, 584, 1, '2023-03-12 08:00:00.000000', '2023-03-12 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:22.055295');
INSERT INTO `sys_student_coursestate` VALUES (661, 9, 585, 1, '2023-03-13 08:00:00.000000', '2023-03-13 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:22.197870');
INSERT INTO `sys_student_coursestate` VALUES (662, 9, 586, 4, '2023-03-14 08:00:00.000000', '2023-03-14 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:22.336530');
INSERT INTO `sys_student_coursestate` VALUES (663, 9, 587, 2, '2023-03-15 08:00:00.000000', '2023-03-15 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:22.476100');
INSERT INTO `sys_student_coursestate` VALUES (664, 9, 588, 3, '2023-03-16 08:00:00.000000', '2023-03-16 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:22.616104');
INSERT INTO `sys_student_coursestate` VALUES (665, 9, 589, 3, '2023-10-17 08:00:00.000000', '2023-10-17 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:22.757860');
INSERT INTO `sys_student_coursestate` VALUES (666, 9, 590, 2, '2023-10-18 08:00:00.000000', '2023-10-18 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:22.897316');
INSERT INTO `sys_student_coursestate` VALUES (667, 9, 591, 1, '2023-10-19 08:00:00.000000', '2023-10-19 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:23.035947');
INSERT INTO `sys_student_coursestate` VALUES (668, 9, 592, 4, '2023-10-20 08:00:00.000000', '2023-10-20 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:23.177480');
INSERT INTO `sys_student_coursestate` VALUES (669, 9, 593, 3, '2023-10-21 08:00:00.000000', '2023-10-21 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:23.320023');
INSERT INTO `sys_student_coursestate` VALUES (670, 9, 594, 2, '2023-10-22 08:00:00.000000', '2023-10-22 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:23.459610');
INSERT INTO `sys_student_coursestate` VALUES (671, 9, 595, 4, '2023-10-23 08:00:00.000000', '2023-10-23 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:23.599221');
INSERT INTO `sys_student_coursestate` VALUES (672, 10, 582, 1, '2023-03-10 08:00:00.000000', '2023-03-10 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:23.740846');
INSERT INTO `sys_student_coursestate` VALUES (673, 10, 583, 2, '2023-03-11 08:00:00.000000', '2023-03-11 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:23.888269');
INSERT INTO `sys_student_coursestate` VALUES (674, 10, 584, 2, '2023-03-12 08:00:00.000000', '2023-03-12 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:24.028851');
INSERT INTO `sys_student_coursestate` VALUES (675, 10, 585, 4, '2023-03-13 08:00:00.000000', '2023-03-13 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:24.170424');
INSERT INTO `sys_student_coursestate` VALUES (676, 10, 586, 4, '2023-03-14 08:00:00.000000', '2023-03-14 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:24.312972');
INSERT INTO `sys_student_coursestate` VALUES (677, 10, 587, 3, '2023-03-15 08:00:00.000000', '2023-03-15 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:24.452562');
INSERT INTO `sys_student_coursestate` VALUES (678, 10, 588, 4, '2023-03-16 08:00:00.000000', '2023-03-16 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:24.591190');
INSERT INTO `sys_student_coursestate` VALUES (679, 10, 589, 4, '2023-10-17 08:00:00.000000', '2023-10-17 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:24.728800');
INSERT INTO `sys_student_coursestate` VALUES (680, 10, 590, 2, '2023-10-18 08:00:00.000000', '2023-10-18 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:24.872431');
INSERT INTO `sys_student_coursestate` VALUES (681, 10, 591, 1, '2023-10-19 08:00:00.000000', '2023-10-19 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:25.010961');
INSERT INTO `sys_student_coursestate` VALUES (682, 10, 592, 3, '2023-10-20 08:00:00.000000', '2023-10-20 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:25.150558');
INSERT INTO `sys_student_coursestate` VALUES (683, 10, 593, 1, '2023-10-21 08:00:00.000000', '2023-10-21 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:25.289199');
INSERT INTO `sys_student_coursestate` VALUES (684, 10, 594, 4, '2023-10-22 08:00:00.000000', '2023-10-22 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:25.427819');
INSERT INTO `sys_student_coursestate` VALUES (685, 10, 595, 1, '2023-10-23 08:00:00.000000', '2023-10-23 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:18:12.958000', '2023-04-18 01:22:25.566446');
INSERT INTO `sys_student_coursestate` VALUES (686, 11, 596, 1, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (687, 11, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:25.843646');
INSERT INTO `sys_student_coursestate` VALUES (688, 11, 598, 1, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:25.986200');
INSERT INTO `sys_student_coursestate` VALUES (689, 11, 599, 1, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (690, 11, 600, 3, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:26.263439');
INSERT INTO `sys_student_coursestate` VALUES (691, 11, 601, 1, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (692, 11, 602, 1, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (693, 11, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:26.686269');
INSERT INTO `sys_student_coursestate` VALUES (694, 11, 604, 1, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (695, 11, 605, 4, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:26.969323');
INSERT INTO `sys_student_coursestate` VALUES (696, 11, 606, 3, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:27.108039');
INSERT INTO `sys_student_coursestate` VALUES (697, 11, 607, 4, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:27.246556');
INSERT INTO `sys_student_coursestate` VALUES (698, 11, 608, 3, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:27.385190');
INSERT INTO `sys_student_coursestate` VALUES (699, 11, 609, 4, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:27.525790');
INSERT INTO `sys_student_coursestate` VALUES (700, 12, 596, 4, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:27.669787');
INSERT INTO `sys_student_coursestate` VALUES (701, 12, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (702, 12, 598, 2, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:27.952884');
INSERT INTO `sys_student_coursestate` VALUES (703, 12, 599, 1, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (704, 12, 600, 3, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:28.232074');
INSERT INTO `sys_student_coursestate` VALUES (705, 12, 601, 1, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (706, 12, 602, 4, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:28.516153');
INSERT INTO `sys_student_coursestate` VALUES (707, 12, 603, 1, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (708, 12, 604, 1, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:28.800297');
INSERT INTO `sys_student_coursestate` VALUES (709, 12, 605, 1, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (710, 12, 606, 3, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:29.079530');
INSERT INTO `sys_student_coursestate` VALUES (711, 12, 607, 1, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:29.219089');
INSERT INTO `sys_student_coursestate` VALUES (712, 12, 608, 4, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:29.360706');
INSERT INTO `sys_student_coursestate` VALUES (713, 12, 609, 1, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:29.503264');
INSERT INTO `sys_student_coursestate` VALUES (714, 13, 596, 1, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (715, 13, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (716, 13, 598, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:29.939740');
INSERT INTO `sys_student_coursestate` VALUES (717, 13, 599, 2, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:30.087221');
INSERT INTO `sys_student_coursestate` VALUES (718, 13, 600, 1, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (719, 13, 601, 1, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (720, 13, 602, 3, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:30.514908');
INSERT INTO `sys_student_coursestate` VALUES (721, 13, 603, 3, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:30.655422');
INSERT INTO `sys_student_coursestate` VALUES (722, 13, 604, 4, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:30.795038');
INSERT INTO `sys_student_coursestate` VALUES (723, 13, 605, 3, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:30.933663');
INSERT INTO `sys_student_coursestate` VALUES (724, 13, 606, 4, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:31.082106');
INSERT INTO `sys_student_coursestate` VALUES (725, 13, 607, 3, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:31.220699');
INSERT INTO `sys_student_coursestate` VALUES (726, 13, 608, 2, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:31.367216');
INSERT INTO `sys_student_coursestate` VALUES (727, 13, 609, 2, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:31.507774');
INSERT INTO `sys_student_coursestate` VALUES (728, 14, 596, 1, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (729, 14, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (730, 14, 598, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:31.938341');
INSERT INTO `sys_student_coursestate` VALUES (731, 14, 599, 1, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:32.078992');
INSERT INTO `sys_student_coursestate` VALUES (732, 14, 600, 3, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:32.219550');
INSERT INTO `sys_student_coursestate` VALUES (733, 14, 601, 1, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (734, 14, 602, 1, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:32.497762');
INSERT INTO `sys_student_coursestate` VALUES (735, 14, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:32.638771');
INSERT INTO `sys_student_coursestate` VALUES (736, 14, 604, 3, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:32.780343');
INSERT INTO `sys_student_coursestate` VALUES (737, 14, 605, 1, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:32.920927');
INSERT INTO `sys_student_coursestate` VALUES (738, 14, 606, 1, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (739, 14, 607, 3, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:33.203117');
INSERT INTO `sys_student_coursestate` VALUES (740, 14, 608, 4, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:33.345692');
INSERT INTO `sys_student_coursestate` VALUES (741, 14, 609, 1, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (742, 15, 596, 1, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:33.635794');
INSERT INTO `sys_student_coursestate` VALUES (743, 15, 597, 2, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:33.775268');
INSERT INTO `sys_student_coursestate` VALUES (744, 15, 598, 1, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:33.916819');
INSERT INTO `sys_student_coursestate` VALUES (745, 15, 599, 2, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:34.056442');
INSERT INTO `sys_student_coursestate` VALUES (746, 15, 600, 3, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:34.197189');
INSERT INTO `sys_student_coursestate` VALUES (747, 15, 601, 1, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (748, 15, 602, 3, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:34.477199');
INSERT INTO `sys_student_coursestate` VALUES (749, 15, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:34.618773');
INSERT INTO `sys_student_coursestate` VALUES (750, 15, 604, 2, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:34.756418');
INSERT INTO `sys_student_coursestate` VALUES (751, 15, 605, 1, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:34.898957');
INSERT INTO `sys_student_coursestate` VALUES (752, 15, 606, 3, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:35.044462');
INSERT INTO `sys_student_coursestate` VALUES (753, 15, 607, 1, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (754, 15, 608, 1, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (755, 15, 609, 1, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:35.467180');
INSERT INTO `sys_student_coursestate` VALUES (756, 16, 596, 2, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:35.605807');
INSERT INTO `sys_student_coursestate` VALUES (757, 16, 597, 4, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:35.744443');
INSERT INTO `sys_student_coursestate` VALUES (758, 16, 598, 1, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (759, 16, 599, 3, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:36.020728');
INSERT INTO `sys_student_coursestate` VALUES (760, 16, 600, 4, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:36.160289');
INSERT INTO `sys_student_coursestate` VALUES (761, 16, 601, 2, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:36.299882');
INSERT INTO `sys_student_coursestate` VALUES (762, 16, 602, 3, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:36.442419');
INSERT INTO `sys_student_coursestate` VALUES (763, 16, 603, 2, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:36.591880');
INSERT INTO `sys_student_coursestate` VALUES (764, 16, 604, 1, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (765, 16, 605, 1, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:36.876956');
INSERT INTO `sys_student_coursestate` VALUES (766, 16, 606, 3, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:37.018535');
INSERT INTO `sys_student_coursestate` VALUES (767, 16, 607, 3, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:37.161093');
INSERT INTO `sys_student_coursestate` VALUES (768, 16, 608, 4, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:37.307576');
INSERT INTO `sys_student_coursestate` VALUES (769, 16, 609, 3, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:37.456036');
INSERT INTO `sys_student_coursestate` VALUES (770, 17, 596, 3, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:37.607815');
INSERT INTO `sys_student_coursestate` VALUES (771, 17, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (772, 17, 598, 1, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (773, 17, 599, 4, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:38.035486');
INSERT INTO `sys_student_coursestate` VALUES (774, 17, 600, 1, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:38.203615');
INSERT INTO `sys_student_coursestate` VALUES (775, 17, 601, 1, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (776, 17, 602, 2, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:38.497544');
INSERT INTO `sys_student_coursestate` VALUES (777, 17, 603, 1, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (778, 17, 604, 4, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:38.814092');
INSERT INTO `sys_student_coursestate` VALUES (779, 17, 605, 3, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:38.954690');
INSERT INTO `sys_student_coursestate` VALUES (780, 17, 606, 3, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:39.106101');
INSERT INTO `sys_student_coursestate` VALUES (781, 17, 607, 1, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (782, 17, 608, 3, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:39.407905');
INSERT INTO `sys_student_coursestate` VALUES (783, 17, 609, 4, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:39.577994');
INSERT INTO `sys_student_coursestate` VALUES (784, 18, 596, 1, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (785, 18, 597, 3, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:39.889644');
INSERT INTO `sys_student_coursestate` VALUES (786, 18, 598, 1, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:40.035171');
INSERT INTO `sys_student_coursestate` VALUES (787, 18, 599, 1, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:40.183624');
INSERT INTO `sys_student_coursestate` VALUES (788, 18, 600, 4, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:40.328108');
INSERT INTO `sys_student_coursestate` VALUES (789, 18, 601, 1, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:40.474633');
INSERT INTO `sys_student_coursestate` VALUES (790, 18, 602, 2, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:40.616135');
INSERT INTO `sys_student_coursestate` VALUES (791, 18, 603, 1, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:40.776377');
INSERT INTO `sys_student_coursestate` VALUES (792, 18, 604, 4, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:40.936657');
INSERT INTO `sys_student_coursestate` VALUES (793, 18, 605, 1, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (794, 18, 606, 2, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:41.221054');
INSERT INTO `sys_student_coursestate` VALUES (795, 18, 607, 3, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:41.382149');
INSERT INTO `sys_student_coursestate` VALUES (796, 18, 608, 3, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:41.550101');
INSERT INTO `sys_student_coursestate` VALUES (797, 18, 609, 2, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:41.715270');
INSERT INTO `sys_student_coursestate` VALUES (798, 19, 596, 3, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:41.862781');
INSERT INTO `sys_student_coursestate` VALUES (799, 19, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (800, 19, 598, 1, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:42.149952');
INSERT INTO `sys_student_coursestate` VALUES (801, 19, 599, 1, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (802, 19, 600, 4, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:42.442888');
INSERT INTO `sys_student_coursestate` VALUES (803, 19, 601, 3, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:42.594585');
INSERT INTO `sys_student_coursestate` VALUES (804, 19, 602, 2, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:42.753853');
INSERT INTO `sys_student_coursestate` VALUES (805, 19, 603, 2, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:42.902181');
INSERT INTO `sys_student_coursestate` VALUES (806, 19, 604, 4, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:43.040960');
INSERT INTO `sys_student_coursestate` VALUES (807, 19, 605, 2, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:43.179721');
INSERT INTO `sys_student_coursestate` VALUES (808, 19, 606, 1, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:43.318548');
INSERT INTO `sys_student_coursestate` VALUES (809, 19, 607, 3, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:43.457765');
INSERT INTO `sys_student_coursestate` VALUES (810, 19, 608, 4, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:43.598389');
INSERT INTO `sys_student_coursestate` VALUES (811, 19, 609, 2, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:43.739061');
INSERT INTO `sys_student_coursestate` VALUES (812, 20, 596, 1, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (813, 20, 597, 2, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:44.028957');
INSERT INTO `sys_student_coursestate` VALUES (814, 20, 598, 1, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:30:38.214119');
INSERT INTO `sys_student_coursestate` VALUES (815, 20, 599, 1, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:44.316083');
INSERT INTO `sys_student_coursestate` VALUES (816, 20, 600, 1, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', 'b11a8406ad32630ff48080c99ecf4cfb', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:44.454677');
INSERT INTO `sys_student_coursestate` VALUES (817, 20, 601, 2, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', '7d2fcf0d7d983da1d1dda586352d3132', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:44.595273');
INSERT INTO `sys_student_coursestate` VALUES (818, 20, 602, 2, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', 'd63843d9d0ecc28e480c710846993c8e', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:44.736787');
INSERT INTO `sys_student_coursestate` VALUES (819, 20, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', '1ed8835863ffbdedf3b7ddc9336fee63', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:44.878391');
INSERT INTO `sys_student_coursestate` VALUES (820, 20, 604, 1, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', '57d70109c37a4d000fa97fec5ab6ce7d', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:45.019924');
INSERT INTO `sys_student_coursestate` VALUES (821, 20, 605, 2, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', '64ba393ee94b1c7779ef8be56dedf2ca', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:45.163584');
INSERT INTO `sys_student_coursestate` VALUES (822, 20, 606, 1, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', '3a0bddf4fb415256344df4e2a4203cbe', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:45.303090');
INSERT INTO `sys_student_coursestate` VALUES (823, 20, 607, 1, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', 'b99004ab1f39797cee47b46830540d03', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:45.445734');
INSERT INTO `sys_student_coursestate` VALUES (824, 20, 608, 4, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', 'f6dbaa1cdb3eca9fde3b9efced58a8e3', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:45.589159');
INSERT INTO `sys_student_coursestate` VALUES (825, 20, 609, 4, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', '271218d7cd58589a1510efe7eb1e4554', '2023-04-18 01:20:43.158000', '2023-04-18 01:22:45.730733');
INSERT INTO `sys_student_coursestate` VALUES (826, 11, 596, 1, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (827, 11, 597, 5, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (828, 11, 598, 2, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (829, 11, 599, 5, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (830, 11, 600, 4, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (831, 11, 601, 5, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (832, 11, 602, 2, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (833, 11, 603, 1, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (834, 11, 604, 2, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (835, 11, 605, 2, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (836, 11, 606, 2, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (837, 11, 607, 4, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (838, 11, 608, 5, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (839, 11, 609, 2, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (840, 12, 596, 3, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (841, 12, 597, 5, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (842, 12, 598, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (843, 12, 599, 1, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (844, 12, 600, 4, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (845, 12, 601, 4, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (846, 12, 602, 3, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (847, 12, 603, 2, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (848, 12, 604, 5, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (849, 12, 605, 2, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (850, 12, 606, 2, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (851, 12, 607, 4, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (852, 12, 608, 3, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (853, 12, 609, 4, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (854, 13, 596, 3, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (855, 13, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (856, 13, 598, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (857, 13, 599, 5, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (858, 13, 600, 2, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (859, 13, 601, 3, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (860, 13, 602, 1, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (861, 13, 603, 5, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (862, 13, 604, 4, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (863, 13, 605, 3, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (864, 13, 606, 5, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (865, 13, 607, 5, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (866, 13, 608, 3, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (867, 13, 609, 3, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (868, 14, 596, 4, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (869, 14, 597, 3, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (870, 14, 598, 4, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (871, 14, 599, 1, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (872, 14, 600, 1, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (873, 14, 601, 2, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (874, 14, 602, 4, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (875, 14, 603, 1, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (876, 14, 604, 5, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (877, 14, 605, 2, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (878, 14, 606, 2, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (879, 14, 607, 3, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (880, 14, 608, 2, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (881, 14, 609, 3, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (882, 15, 596, 1, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (883, 15, 597, 5, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (884, 15, 598, 1, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (885, 15, 599, 4, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (886, 15, 600, 5, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (887, 15, 601, 5, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (888, 15, 602, 3, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (889, 15, 603, 1, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (890, 15, 604, 3, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (891, 15, 605, 1, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (892, 15, 606, 3, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (893, 15, 607, 1, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (894, 15, 608, 2, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (895, 15, 609, 5, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (896, 16, 596, 4, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (897, 16, 597, 2, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (898, 16, 598, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (899, 16, 599, 3, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (900, 16, 600, 2, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (901, 16, 601, 4, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (902, 16, 602, 2, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (903, 16, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (904, 16, 604, 3, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (905, 16, 605, 5, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (906, 16, 606, 4, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (907, 16, 607, 5, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (908, 16, 608, 5, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (909, 16, 609, 2, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (910, 17, 596, 2, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (911, 17, 597, 2, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (912, 17, 598, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (913, 17, 599, 5, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (914, 17, 600, 5, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (915, 17, 601, 5, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (916, 17, 602, 4, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (917, 17, 603, 2, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (918, 17, 604, 4, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (919, 17, 605, 3, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (920, 17, 606, 2, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (921, 17, 607, 4, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (922, 17, 608, 4, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (923, 17, 609, 1, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (924, 18, 596, 2, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (925, 18, 597, 2, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (926, 18, 598, 2, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (927, 18, 599, 3, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (928, 18, 600, 2, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (929, 18, 601, 3, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (930, 18, 602, 2, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (931, 18, 603, 2, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (932, 18, 604, 3, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (933, 18, 605, 4, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (934, 18, 606, 1, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (935, 18, 607, 2, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (936, 18, 608, 2, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (937, 18, 609, 1, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (938, 19, 596, 2, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (939, 19, 597, 2, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (940, 19, 598, 1, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (941, 19, 599, 2, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (942, 19, 600, 2, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (943, 19, 601, 4, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (944, 19, 602, 5, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (945, 19, 603, 5, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (946, 19, 604, 1, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (947, 19, 605, 4, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (948, 19, 606, 3, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (949, 19, 607, 4, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (950, 19, 608, 2, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (951, 19, 609, 5, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (952, 20, 596, 3, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (953, 20, 597, 2, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (954, 20, 598, 1, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (955, 20, 599, 5, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (956, 20, 600, 3, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (957, 20, 601, 1, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (958, 20, 602, 4, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (959, 20, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (960, 20, 604, 2, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (961, 20, 605, 3, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (962, 20, 606, 5, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (963, 20, 607, 4, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (964, 20, 608, 3, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (965, 20, 609, 5, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:49:59.244000', '2023-04-18 19:49:59.244000');
INSERT INTO `sys_student_coursestate` VALUES (966, 11, 596, 3, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (967, 11, 597, 4, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (968, 11, 598, 4, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (969, 11, 599, 2, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (970, 11, 600, 2, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (971, 11, 601, 5, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (972, 11, 602, 3, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (973, 11, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (974, 11, 604, 2, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (975, 11, 605, 3, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (976, 11, 606, 3, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (977, 11, 607, 1, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (978, 11, 608, 3, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (979, 11, 609, 1, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (980, 12, 596, 5, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (981, 12, 597, 5, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (982, 12, 598, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (983, 12, 599, 3, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (984, 12, 600, 5, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (985, 12, 601, 4, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (986, 12, 602, 3, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (987, 12, 603, 5, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (988, 12, 604, 1, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (989, 12, 605, 5, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (990, 12, 606, 4, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (991, 12, 607, 1, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (992, 12, 608, 5, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (993, 12, 609, 2, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (994, 13, 596, 4, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (995, 13, 597, 5, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (996, 13, 598, 5, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (997, 13, 599, 2, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (998, 13, 600, 2, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (999, 13, 601, 2, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1000, 13, 602, 1, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1001, 13, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1002, 13, 604, 2, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1003, 13, 605, 4, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1004, 13, 606, 5, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1005, 13, 607, 2, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1006, 13, 608, 5, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1007, 13, 609, 5, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1008, 14, 596, 2, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1009, 14, 597, 2, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1010, 14, 598, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1011, 14, 599, 3, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1012, 14, 600, 2, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1013, 14, 601, 2, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1014, 14, 602, 5, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1015, 14, 603, 2, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1016, 14, 604, 3, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1017, 14, 605, 5, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1018, 14, 606, 5, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1019, 14, 607, 4, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1020, 14, 608, 4, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1021, 14, 609, 1, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1022, 15, 596, 4, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1023, 15, 597, 5, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1024, 15, 598, 2, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1025, 15, 599, 1, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1026, 15, 600, 5, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1027, 15, 601, 2, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1028, 15, 602, 2, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1029, 15, 603, 5, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1030, 15, 604, 3, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1031, 15, 605, 1, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1032, 15, 606, 2, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1033, 15, 607, 2, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1034, 15, 608, 2, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1035, 15, 609, 5, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1036, 16, 596, 2, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1037, 16, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1038, 16, 598, 4, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1039, 16, 599, 2, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1040, 16, 600, 4, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1041, 16, 601, 1, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1042, 16, 602, 2, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1043, 16, 603, 5, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1044, 16, 604, 2, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1045, 16, 605, 2, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1046, 16, 606, 4, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1047, 16, 607, 1, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1048, 16, 608, 2, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1049, 16, 609, 2, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1050, 17, 596, 2, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1051, 17, 597, 2, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1052, 17, 598, 4, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1053, 17, 599, 4, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1054, 17, 600, 3, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1055, 17, 601, 1, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1056, 17, 602, 1, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1057, 17, 603, 2, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1058, 17, 604, 2, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1059, 17, 605, 2, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1060, 17, 606, 4, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1061, 17, 607, 4, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1062, 17, 608, 5, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1063, 17, 609, 3, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1064, 18, 596, 3, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1065, 18, 597, 5, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1066, 18, 598, 5, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1067, 18, 599, 3, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1068, 18, 600, 5, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1069, 18, 601, 1, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1070, 18, 602, 2, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1071, 18, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1072, 18, 604, 5, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1073, 18, 605, 3, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1074, 18, 606, 2, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1075, 18, 607, 1, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1076, 18, 608, 5, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1077, 18, 609, 2, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1078, 19, 596, 4, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1079, 19, 597, 2, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1080, 19, 598, 2, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1081, 19, 599, 3, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1082, 19, 600, 2, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1083, 19, 601, 2, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1084, 19, 602, 4, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1085, 19, 603, 1, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1086, 19, 604, 5, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1087, 19, 605, 5, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1088, 19, 606, 2, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1089, 19, 607, 3, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1090, 19, 608, 2, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1091, 19, 609, 3, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1092, 20, 596, 3, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1093, 20, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1094, 20, 598, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1095, 20, 599, 3, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1096, 20, 600, 4, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1097, 20, 601, 4, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1098, 20, 602, 4, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1099, 20, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1100, 20, 604, 1, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1101, 20, 605, 3, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1102, 20, 606, 4, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1103, 20, 607, 3, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1104, 20, 608, 3, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1105, 20, 609, 1, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-18 19:52:34.089000', '2023-04-18 19:52:34.089000');
INSERT INTO `sys_student_coursestate` VALUES (1106, 11, 596, 3, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1107, 11, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1108, 11, 598, 1, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1109, 11, 599, 5, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1110, 11, 600, 1, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1111, 11, 601, 4, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1112, 11, 602, 1, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1113, 11, 603, 3, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1114, 11, 604, 2, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1115, 11, 605, 4, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1116, 11, 606, 3, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1117, 11, 607, 4, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1118, 11, 608, 5, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1119, 11, 609, 3, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1120, 12, 596, 4, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1121, 12, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1122, 12, 598, 4, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1123, 12, 599, 3, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1124, 12, 600, 4, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1125, 12, 601, 5, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1126, 12, 602, 3, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1127, 12, 603, 3, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1128, 12, 604, 5, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1129, 12, 605, 4, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1130, 12, 606, 4, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1131, 12, 607, 3, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1132, 12, 608, 1, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1133, 12, 609, 5, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1134, 13, 596, 2, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1135, 13, 597, 3, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1136, 13, 598, 5, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1137, 13, 599, 2, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1138, 13, 600, 4, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1139, 13, 601, 5, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1140, 13, 602, 4, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1141, 13, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1142, 13, 604, 4, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1143, 13, 605, 4, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1144, 13, 606, 1, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1145, 13, 607, 3, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1146, 13, 608, 4, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1147, 13, 609, 3, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1148, 14, 596, 4, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1149, 14, 597, 2, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1150, 14, 598, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1151, 14, 599, 4, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1152, 14, 600, 3, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1153, 14, 601, 4, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1154, 14, 602, 1, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1155, 14, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1156, 14, 604, 4, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1157, 14, 605, 3, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1158, 14, 606, 2, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1159, 14, 607, 3, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1160, 14, 608, 3, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1161, 14, 609, 2, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1162, 15, 596, 2, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1163, 15, 597, 5, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1164, 15, 598, 5, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1165, 15, 599, 2, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1166, 15, 600, 1, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1167, 15, 601, 3, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1168, 15, 602, 4, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1169, 15, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1170, 15, 604, 2, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1171, 15, 605, 3, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1172, 15, 606, 3, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1173, 15, 607, 1, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1174, 15, 608, 5, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1175, 15, 609, 2, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1176, 16, 596, 1, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1177, 16, 597, 5, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1178, 16, 598, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1179, 16, 599, 5, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1180, 16, 600, 4, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1181, 16, 601, 3, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1182, 16, 602, 1, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1183, 16, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1184, 16, 604, 3, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1185, 16, 605, 5, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1186, 16, 606, 2, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1187, 16, 607, 5, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1188, 16, 608, 4, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1189, 16, 609, 3, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1190, 17, 596, 3, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1191, 17, 597, 3, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1192, 17, 598, 1, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1193, 17, 599, 4, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1194, 17, 600, 5, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1195, 17, 601, 3, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1196, 17, 602, 4, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1197, 17, 603, 1, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1198, 17, 604, 5, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1199, 17, 605, 4, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1200, 17, 606, 4, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1201, 17, 607, 5, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1202, 17, 608, 5, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1203, 17, 609, 1, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1204, 18, 596, 4, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1205, 18, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1206, 18, 598, 4, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1207, 18, 599, 2, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1208, 18, 600, 4, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1209, 18, 601, 4, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1210, 18, 602, 4, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1211, 18, 603, 5, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1212, 18, 604, 2, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1213, 18, 605, 2, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1214, 18, 606, 1, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1215, 18, 607, 4, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1216, 18, 608, 2, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1217, 18, 609, 5, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1218, 19, 596, 1, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1219, 19, 597, 1, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1220, 19, 598, 3, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1221, 19, 599, 1, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1222, 19, 600, 4, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1223, 19, 601, 1, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1224, 19, 602, 5, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1225, 19, 603, 1, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1226, 19, 604, 1, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1227, 19, 605, 5, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1228, 19, 606, 5, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1229, 19, 607, 4, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1230, 19, 608, 2, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1231, 19, 609, 3, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1232, 20, 596, 4, '2023-04-10 08:00:00.000000', '2023-04-10 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1233, 20, 597, 3, '2023-04-11 08:00:00.000000', '2023-04-11 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1234, 20, 598, 4, '2023-04-12 08:00:00.000000', '2023-04-12 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1235, 20, 599, 5, '2023-04-13 08:00:00.000000', '2023-04-13 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1236, 20, 600, 1, '2023-04-14 08:00:00.000000', '2023-04-14 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1237, 20, 601, 5, '2023-04-15 08:00:00.000000', '2023-04-15 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1238, 20, 602, 1, '2023-04-16 08:00:00.000000', '2023-04-16 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1239, 20, 603, 4, '2023-11-17 08:00:00.000000', '2023-11-17 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1240, 20, 604, 4, '2023-11-18 08:00:00.000000', '2023-11-18 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1241, 20, 605, 3, '2023-11-19 08:00:00.000000', '2023-11-19 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1242, 20, 606, 2, '2023-11-20 08:00:00.000000', '2023-11-20 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1243, 20, 607, 4, '2023-11-21 08:00:00.000000', '2023-11-21 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1244, 20, 608, 4, '2023-11-22 08:00:00.000000', '2023-11-22 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');
INSERT INTO `sys_student_coursestate` VALUES (1245, 20, 609, 1, '2023-11-23 08:00:00.000000', '2023-11-23 09:40:00.000000', NULL, '2023-04-19 10:50:10.449000', '2023-04-19 10:50:10.449000');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'Curry', '00', '1359932736@qq.com', '15656936751', '0', '/img/profile.jpg', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2023-05-27 12:28:26', 'admin', '2023-02-20 11:33:00', 'ry', '2023-05-27 12:28:25', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '小华', '00', 'ry@qq.com', '15666666667', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2023-04-18 20:59:32', 'admin', '2023-03-16 11:33:00', 'admin', '2023-04-22 09:38:24', '测试员');
INSERT INTO `sys_user` VALUES (32, NULL, '王小明', '王小明', '01', '1359932735@qq.com', '15666666668', '0', '', 'f10b0f5ca31d7658e7d6ac7a492246fa', 'b96f2c', '0', '2', '127.0.0.1', '2023-04-23 12:29:02', '', '2023-04-21 22:23:00', '', '2023-04-23 12:28:59', NULL);
INSERT INTO `sys_user` VALUES (100, 105, '15696756588', 'luna', '00', 'ltribe.account@foxmail.com', '15696756588', '0', '', '48492b91b5eaaefed906d6bb018e4848', 'd5c4e6', '0', '2', '', NULL, 'ry', '2023-03-20 19:03:16', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (101, 103, 'xxx', '张三', '01', '15696756581@163.com', '15696756581', '0', '', '29c67a30398638269fe600f73a054934', '111111', '0', '2', '', NULL, '', '2023-03-27 21:52:25', 'admin', '2023-04-21 22:20:47', '');
INSERT INTO `sys_user` VALUES (102, NULL, 'xxx', '李四', '01', '1359932739@qq.com', '15666666669', '0', '', '3fc42933be1c217fd8524c1a7d143499', '6c4266', '0', '2', '', NULL, '', '2023-03-27 21:52:48', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (103, 107, '小明', '小明', '01', '1359932738@qq.com', '15666666670', '0', '', 'b31c9875e09436dc65d4e83c08550f84', '8169be', '0', '0', '127.0.0.1', '2023-03-27 11:22:09', '', '2023-03-28 00:21:58', 'admin', '2023-05-06 10:51:47', '');
INSERT INTO `sys_user` VALUES (104, 103, 'luna', 'luna', '00', '15696756582@163.com', '15696756582', '0', '/profile/avatar/2020/04/19/ec00f8e3ac14d446e9647ba996b5eb3e.png', 'cae73dc73c32c03c476c34ba1855df9a', 'a8a03f', '0', '2', '127.0.0.1', '2023-04-22 10:12:44', 'admin', '2023-04-18 21:50:46', '', '2023-04-22 10:12:41', NULL);
INSERT INTO `sys_user` VALUES (105, NULL, '李华', '李华', '01', '1359932737@qq.com', '15666666671', '0', '', '948040d413817f95300cce2ff8663e0d', '789e4e', '0', '2', '', NULL, '', '2023-04-19 13:54:26', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (107, 107, '王老师', '王老师', '00', '1338800652@qq.com', '13916606652', '0', '', 'e773b35db910f8626adc57f68734164f', '6f4601', '0', '0', '127.0.0.1', '2023-05-25 20:40:13', 'admin', '2023-05-06 10:54:02', 'admin', '2023-05-25 20:40:12', '');
INSERT INTO `sys_user` VALUES (108, 103, '张同学', '张同学', '00', '111222333@qq.com', '13916606653', '0', '', '80ad5b26c5f0ef8f8706ab29603ce8d8', '85b7ad', '0', '0', '127.0.0.1', '2023-05-25 20:29:34', 'admin', '2023-05-06 16:11:39', '', '2023-05-25 20:29:34', NULL);
INSERT INTO `sys_user` VALUES (109, 201, '李老师', '李老师', '00', '222333555@qq.com', '15696756583', '0', '', '874b5f06c1547d2181ed89fede994732', 'e59ea3', '0', '0', '127.0.0.1', '2023-05-08 12:08:43', 'admin', '2023-05-06 16:13:30', 'admin', '2023-05-08 12:08:42', '');
INSERT INTO `sys_user` VALUES (110, 201, '李同学', '李同学', '00', '1399887743@qq.com', '13915506772', '1', '', 'acd5d664bdb12b4dce37f34a8062c1cd', '9aec6a', '0', '0', '127.0.0.1', '2023-05-25 17:29:18', 'admin', '2023-05-08 13:21:56', '', '2023-05-25 17:29:17', NULL);

-- ----------------------------
-- Table structure for sys_user_applyclassroom
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_applyclassroom`;
CREATE TABLE `sys_user_applyclassroom`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户编号',
  `classroom_id` bigint NULL DEFAULT NULL COMMENT '申请教室编号',
  `lesson_id` bigint NULL DEFAULT NULL COMMENT '申请课时',
  `create_time` datetime NULL DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '教室申请表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_applyclassroom
-- ----------------------------
INSERT INTO `sys_user_applyclassroom` VALUES (1, 1, 4, 677, NULL);
INSERT INTO `sys_user_applyclassroom` VALUES (2, 106, 2, 679, '2023-04-21 22:37:17');
INSERT INTO `sys_user_applyclassroom` VALUES (3, 32, 3, 680, '2023-04-22 21:09:06');

-- ----------------------------
-- Table structure for sys_user_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_news`;
CREATE TABLE `sys_user_news`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '用户id',
  `news_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '消息id',
  `state` int UNSIGNED NULL DEFAULT NULL COMMENT '阅读状态',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(6) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_id_news_id`(`user_id` ASC, `news_id` ASC) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_news_id`(`news_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = big5 COLLATE = big5_chinese_ci COMMENT = '用户和通知关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_news
-- ----------------------------
INSERT INTO `sys_user_news` VALUES (96, 1, 53, 0, '2023-10-31 15:58:40.000000', '2023-10-31 15:58:40.000000');
INSERT INTO `sys_user_news` VALUES (97, 17, 53, 0, '2023-10-31 15:58:40.000000', '2023-10-31 15:58:40.000000');
INSERT INTO `sys_user_news` VALUES (98, 18, 53, 0, '2023-10-31 15:58:40.000000', '2023-10-31 15:58:40.000000');
INSERT INTO `sys_user_news` VALUES (99, 19, 53, 0, '2023-10-31 15:58:40.000000', '2023-10-31 15:58:40.000000');
INSERT INTO `sys_user_news` VALUES (100, 20, 53, 0, '2023-10-31 15:58:40.000000', '2023-10-31 15:58:40.000000');
INSERT INTO `sys_user_news` VALUES (101, 21, 53, 0, '2023-10-31 15:58:40.000000', '2023-10-31 15:58:40.000000');
INSERT INTO `sys_user_news` VALUES (102, 38, 1, 0, '2023-10-31 17:03:06.000000', '2023-10-31 17:03:06.000000');
INSERT INTO `sys_user_news` VALUES (103, 16, 55, 0, '2023-10-31 23:31:50.000000', '2023-10-31 23:31:50.000000');
INSERT INTO `sys_user_news` VALUES (104, 17, 55, 0, '2023-10-31 23:31:50.000000', '2023-10-31 23:31:50.000000');
INSERT INTO `sys_user_news` VALUES (105, 18, 55, 0, '2023-10-31 23:31:50.000000', '2023-10-31 23:31:50.000000');
INSERT INTO `sys_user_news` VALUES (106, 19, 55, 0, '2023-10-31 23:31:50.000000', '2023-10-31 23:31:50.000000');
INSERT INTO `sys_user_news` VALUES (107, 20, 55, 0, '2023-10-31 23:31:50.000000', '2023-10-31 23:31:50.000000');
INSERT INTO `sys_user_news` VALUES (108, 21, 55, 0, '2023-10-31 23:31:50.000000', '2023-10-31 23:31:50.000000');
INSERT INTO `sys_user_news` VALUES (109, 1, 56, 0, '2023-10-31 23:42:12.000000', '2023-10-31 23:42:12.000000');
INSERT INTO `sys_user_news` VALUES (110, 2, 56, 0, '2023-10-31 23:42:12.000000', '2023-10-31 23:42:12.000000');
INSERT INTO `sys_user_news` VALUES (111, 3, 56, 0, '2023-10-31 23:42:12.000000', '2023-10-31 23:42:12.000000');
INSERT INTO `sys_user_news` VALUES (112, 4, 56, 0, '2023-10-31 23:42:12.000000', '2023-10-31 23:42:12.000000');
INSERT INTO `sys_user_news` VALUES (113, 5, 56, 0, '2023-10-31 23:42:12.000000', '2023-10-31 23:42:12.000000');
INSERT INTO `sys_user_news` VALUES (114, 1, 57, 0, '2023-11-01 12:47:18.000000', '2023-11-01 12:47:18.000000');
INSERT INTO `sys_user_news` VALUES (115, 1, 58, 0, '2023-11-01 15:05:01.000000', '2023-11-01 15:05:01.000000');
INSERT INTO `sys_user_news` VALUES (116, 2, 58, 0, '2023-11-01 15:05:01.000000', '2023-11-01 15:05:01.000000');
INSERT INTO `sys_user_news` VALUES (117, 3, 58, 0, '2023-11-01 15:05:01.000000', '2023-11-01 15:05:01.000000');
INSERT INTO `sys_user_news` VALUES (118, 4, 58, 0, '2023-11-01 15:05:01.000000', '2023-11-01 15:05:01.000000');
INSERT INTO `sys_user_news` VALUES (119, 5, 58, 0, '2023-11-01 15:05:01.000000', '2023-11-01 15:05:01.000000');
INSERT INTO `sys_user_news` VALUES (120, 1, 59, 0, '2023-11-01 15:44:37.000000', '2023-11-01 15:44:37.000000');
INSERT INTO `sys_user_news` VALUES (121, 2, 59, 0, '2023-11-01 15:44:37.000000', '2023-11-01 15:44:37.000000');
INSERT INTO `sys_user_news` VALUES (122, 3, 59, 0, '2023-11-01 15:44:37.000000', '2023-11-01 15:44:37.000000');
INSERT INTO `sys_user_news` VALUES (123, 4, 59, 0, '2023-11-01 15:44:37.000000', '2023-11-01 15:44:37.000000');
INSERT INTO `sys_user_news` VALUES (124, 5, 59, 0, '2023-11-01 15:44:37.000000', '2023-11-01 15:44:37.000000');
INSERT INTO `sys_user_news` VALUES (125, 1, 60, 0, '2023-11-02 14:16:47.000000', '2023-11-02 14:16:47.000000');
INSERT INTO `sys_user_news` VALUES (126, 16, 61, 0, '2023-11-02 14:21:32.000000', '2023-11-02 14:21:32.000000');
INSERT INTO `sys_user_news` VALUES (127, 17, 61, 0, '2023-11-02 14:21:32.000000', '2023-11-02 14:21:32.000000');
INSERT INTO `sys_user_news` VALUES (128, 18, 61, 0, '2023-11-02 14:21:32.000000', '2023-11-02 14:21:32.000000');
INSERT INTO `sys_user_news` VALUES (129, 19, 61, 0, '2023-11-02 14:21:32.000000', '2023-11-02 14:21:32.000000');
INSERT INTO `sys_user_news` VALUES (130, 20, 61, 0, '2023-11-02 14:21:32.000000', '2023-11-02 14:21:32.000000');
INSERT INTO `sys_user_news` VALUES (131, 21, 61, 0, '2023-11-02 14:21:32.000000', '2023-11-02 14:21:32.000000');
INSERT INTO `sys_user_news` VALUES (132, 31, 62, 1, NULL, NULL);
INSERT INTO `sys_user_news` VALUES (133, 33, 62, 1, NULL, '2023-11-06 13:38:55.000000');
INSERT INTO `sys_user_news` VALUES (134, 16, 64, 0, '2023-11-03 14:34:58.000000', '2023-11-03 14:34:58.000000');
INSERT INTO `sys_user_news` VALUES (135, 17, 64, 0, '2023-11-03 14:34:58.000000', '2023-11-03 14:34:58.000000');
INSERT INTO `sys_user_news` VALUES (136, 18, 64, 0, '2023-11-03 14:34:58.000000', '2023-11-03 14:34:58.000000');
INSERT INTO `sys_user_news` VALUES (137, 19, 64, 0, '2023-11-03 14:34:58.000000', '2023-11-03 14:34:58.000000');
INSERT INTO `sys_user_news` VALUES (138, 20, 64, 0, '2023-11-03 14:34:58.000000', '2023-11-03 14:34:58.000000');
INSERT INTO `sys_user_news` VALUES (139, 21, 64, 0, '2023-11-03 14:34:58.000000', '2023-11-03 14:34:58.000000');
INSERT INTO `sys_user_news` VALUES (140, 16, 65, 0, '2023-11-10 14:33:58.000000', '2023-11-10 14:33:58.000000');
INSERT INTO `sys_user_news` VALUES (141, 17, 65, 0, '2023-11-10 14:33:58.000000', '2023-11-10 14:33:58.000000');
INSERT INTO `sys_user_news` VALUES (142, 18, 65, 0, '2023-11-10 14:33:58.000000', '2023-11-10 14:33:58.000000');
INSERT INTO `sys_user_news` VALUES (143, 19, 65, 0, '2023-11-10 14:33:58.000000', '2023-11-10 14:33:58.000000');
INSERT INTO `sys_user_news` VALUES (144, 20, 65, 0, '2023-11-10 14:33:58.000000', '2023-11-10 14:33:58.000000');
INSERT INTO `sys_user_news` VALUES (145, 21, 65, 0, '2023-11-10 14:33:58.000000', '2023-11-10 14:33:58.000000');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '在线用户记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 1);
INSERT INTO `sys_user_post` VALUES (103, 4);
INSERT INTO `sys_user_post` VALUES (104, 1);
INSERT INTO `sys_user_post` VALUES (107, 4);
INSERT INTO `sys_user_post` VALUES (109, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (32, 101);
INSERT INTO `sys_user_role` VALUES (100, 2);
INSERT INTO `sys_user_role` VALUES (101, 101);
INSERT INTO `sys_user_role` VALUES (103, 101);
INSERT INTO `sys_user_role` VALUES (104, 100);
INSERT INTO `sys_user_role` VALUES (106, 101);
INSERT INTO `sys_user_role` VALUES (107, 102);
INSERT INTO `sys_user_role` VALUES (108, 104);
INSERT INTO `sys_user_role` VALUES (109, 103);
INSERT INTO `sys_user_role` VALUES (110, 105);

SET FOREIGN_KEY_CHECKS = 1;
