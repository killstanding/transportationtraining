/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.150.128
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : 192.168.150.128:3306
 Source Schema         : wetech_admin

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 27/03/2020 14:51:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_group`;
CREATE TABLE `sys_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组名称',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组类型',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ip',
  `req_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求方法',
  `exec_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '执行方法',
  `exec_time` bigint(20) DEFAULT NULL COMMENT '耗时',
  `exec_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作描述',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `req_uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求URL',
  `args` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '入参',
  `return_val` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '返回值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组织名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父编号',
  `parent_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父编号列表',
  `available` tinyint(1) DEFAULT 0 COMMENT '是否有效',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `leaf` tinyint(1) DEFAULT 0 COMMENT '叶子节点',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_organization_parent_id`(`parent_id`) USING BTREE,
  INDEX `idx_sys_organization_parent_ids`(`parent_ids`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织机构表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源类型',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '链接地址',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父编号',
  `parent_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父编号列表',
  `permission` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限字符串',
  `available` tinyint(1) DEFAULT 0 COMMENT '是否有效',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `leaf` tinyint(1) DEFAULT 0 COMMENT '叶子节点',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_resource_parent_id`(`parent_id`) USING BTREE,
  INDEX `idx_sys_resource_parent_ids`(`parent_ids`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `resource_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源编号列表',
  `available` tinyint(1) DEFAULT 0 COMMENT '是否有效',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_role_resource_ids`(`resource_ids`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `organization_id` bigint(20) DEFAULT NULL COMMENT '组织机构编号',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `salt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '盐值',
  `role_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色列表',
  `group_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组列表',
  `locked` tinyint(1) DEFAULT 0 COMMENT '是否锁定',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_sys_user_username`(`username`) USING BTREE,
  INDEX `idx_sys_user_organization_id`(`organization_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
