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

 Date: 19/05/2020 18:00:20
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
-- Records of sys_group
-- ----------------------------
INSERT INTO `sys_group` VALUES (1, '第一组', 'GROUP_1', '第一组描述');
INSERT INTO `sys_group` VALUES (2, '第二组', 'GROUP_2', '第二组描述');
INSERT INTO `sys_group` VALUES (3, '第三组', 'GROUP_3', '第三组描述');

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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, '1', '1', '1', '1', 1, '1', '1', '2020-03-27 10:24:08', '1', '1', '1');
INSERT INTO `sys_log` VALUES (14, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.create(Organization)', 9, '组织管理创建组织', NULL, '2020-03-27 11:01:32', 'http://localhost:8080/wetech-admin/organization/create', '{\"id\":null,\"name\":\"哈哈\",\"parentId\":5,\"parentIds\":null,\"available\":null,\"leaf\":false,\"priority\":11111}', 'NullPointerException');
INSERT INTO `sys_log` VALUES (15, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.create(Organization)', 9, '组织管理创建组织', NULL, '2020-03-27 11:01:32', 'http://localhost:8080/wetech-admin/organization/create', '{\"id\":null,\"name\":\"哈哈\",\"parentId\":5,\"parentIds\":null,\"available\":null,\"leaf\":false,\"priority\":11111}', 'NullPointerException');
INSERT INTO `sys_log` VALUES (16, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.create(Organization)', 8, '组织管理创建组织', NULL, '2020-03-27 11:06:20', 'http://localhost:8080/wetech-admin/organization/create', '{\"id\":null,\"name\":\"test\",\"parentId\":5,\"parentIds\":null,\"available\":null,\"leaf\":false,\"priority\":12312}', 'NullPointerException');
INSERT INTO `sys_log` VALUES (17, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.create(Organization)', 8, '组织管理创建组织', NULL, '2020-03-27 11:06:20', 'http://localhost:8080/wetech-admin/organization/create', '{\"id\":null,\"name\":\"test\",\"parentId\":5,\"parentIds\":null,\"available\":null,\"leaf\":false,\"priority\":12312}', 'NullPointerException');
INSERT INTO `sys_log` VALUES (18, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.create(Organization)', 17, '组织管理创建组织', '处理成功', '2020-03-27 14:05:23', 'http://localhost:8080/wetech-admin/organization/create', '{\"id\":15,\"name\":\"test\",\"parentId\":5,\"parentIds\":\"0/1/5/\",\"available\":true,\"leaf\":false,\"priority\":123123}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (19, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.create(Organization)', 17, '组织管理创建组织', '处理成功', '2020-03-27 14:05:23', 'http://localhost:8080/wetech-admin/organization/create', '{\"id\":15,\"name\":\"test\",\"parentId\":5,\"parentIds\":\"0/1/5/\",\"available\":true,\"leaf\":false,\"priority\":123123}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (20, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.update(Organization)', 4, '组织管理更新组织', '处理成功', '2020-03-27 14:05:37', 'http://localhost:8080/wetech-admin/organization/update', '{\"id\":15,\"name\":\"测试\",\"parentId\":5,\"parentIds\":\"0/1/5/\",\"available\":true,\"leaf\":false,\"priority\":123123}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (21, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.update(Organization)', 4, '组织管理更新组织', '处理成功', '2020-03-27 14:05:37', 'http://localhost:8080/wetech-admin/organization/update', '{\"id\":15,\"name\":\"测试\",\"parentId\":5,\"parentIds\":\"0/1/5/\",\"available\":true,\"leaf\":false,\"priority\":123123}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (22, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 5, '用户管理创建用户', '处理成功', '2020-03-27 14:33:18', 'http://localhost:8080/wetech-admin/user/create', '{\"id\":23,\"organizationId\":15,\"username\":\"hello\",\"password\":\"37f338a760c7c5fb204e2ee14a44d755\",\"salt\":\"a9a5b7a5c2e7e8321f48e17a0425304d\",\"roleIds\":\"2\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"helloa9a5b7a5c2e7e8321f48e17a0425304d\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (23, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 5, '用户管理创建用户', '处理成功', '2020-03-27 14:33:18', 'http://localhost:8080/wetech-admin/user/create', '{\"id\":23,\"organizationId\":15,\"username\":\"hello\",\"password\":\"37f338a760c7c5fb204e2ee14a44d755\",\"salt\":\"a9a5b7a5c2e7e8321f48e17a0425304d\",\"roleIds\":\"2\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"helloa9a5b7a5c2e7e8321f48e17a0425304d\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (24, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-03-27 14:40:50', 'http://localhost:8080/wetech-admin/role/update', '{\"id\":2,\"role\":\"guest\",\"description\":\"访客\",\"resourceIds\":\"15,35\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (25, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-03-27 14:40:50', 'http://localhost:8080/wetech-admin/role/update', '{\"id\":2,\"role\":\"guest\",\"description\":\"访客\",\"resourceIds\":\"15,35\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (26, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 15, '角色管理更新角色', '处理成功', '2020-05-06 10:49:03', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":1,\"role\":\"admin\",\"description\":\"超级管理员\",\"resourceIds\":\"11,21,31,41,46,69,70,83,5111,5112\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (27, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 15, '角色管理更新角色', '处理成功', '2020-05-06 10:49:03', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":1,\"role\":\"admin\",\"description\":\"超级管理员\",\"resourceIds\":\"11,21,31,41,46,69,70,83,5111,5112\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织机构表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_organization
-- ----------------------------
INSERT INTO `sys_organization` VALUES (1, '北京交通运输职业学院', 0, '0/', 1, 0, 0);
INSERT INTO `sys_organization` VALUES (2, '汽车工程系', 1, '0/1/', 1, 1, 0);
INSERT INTO `sys_organization` VALUES (3, '道路桥梁系', 1, '0/1/', 1, 2, 0);
INSERT INTO `sys_organization` VALUES (4, '建筑工程系', 1, '0/1/', 1, 3, 0);
INSERT INTO `sys_organization` VALUES (5, '15汽运01', 2, '0/1/2/', 1, 1, 1);
INSERT INTO `sys_organization` VALUES (6, '16汽运01', 2, '0/1/2/', 1, 2, 1);
INSERT INTO `sys_organization` VALUES (7, '17汽运01', 2, '0/1/2/', 1, 3, 1);
INSERT INTO `sys_organization` VALUES (8, '15新能源01', 3, '0/1/3/', 1, 1, 1);
INSERT INTO `sys_organization` VALUES (9, '16新能源01', 3, '0/1/3/', 1, 2, 1);
INSERT INTO `sys_organization` VALUES (10, '17新能源01', 3, '0/1/3/', 1, 3, 1);
INSERT INTO `sys_organization` VALUES (11, '15汽检01', 4, '0/1/4/', 1, 1, 1);
INSERT INTO `sys_organization` VALUES (12, '16汽检01', 4, '0/1/4/', 1, 2, 1);
INSERT INTO `sys_organization` VALUES (13, '17汽检01', 4, '0/1/4/', 1, 3, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 5332 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES (1, '资源', 'MENU', '#', 0, '0/', '', 1, '', 0, 0);
INSERT INTO `sys_resource` VALUES (11, '组织机构管理', 'MENU', '#', 1, '0/1/', 'organization:*', 1, 'fa fa-sitemap', 7, 0);
INSERT INTO `sys_resource` VALUES (12, '组织机构新增', 'BUTTON', '', 11, '0/1/11/', 'organization:create', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (13, '组织机构修改', 'BUTTON', '', 11, '0/1/11/', 'organization:update', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (14, '组织机构删除', 'BUTTON', '', 11, '0/1/11/', 'organization:delete', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (15, '组织机构查看', 'BUTTON', '', 11, '0/1/11/', 'organization:view', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (21, '用户管理', 'MENU', '#', 1, '0/1/', '', 1, 'fa fa-user', 5, 0);
INSERT INTO `sys_resource` VALUES (22, '用户新增', 'BUTTON', '', 46, '0/1/21/', 'user:create', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (23, '用户修改', 'BUTTON', '', 46, '0/1/21/', 'user:update', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (24, '用户删除', 'BUTTON', '', 46, '0/1/21/', 'user:delete', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (25, '用户查看', 'BUTTON', '', 46, '0/1/21/', 'user:view', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (31, '资源管理', 'MENU', '#', 1, '0/1/', 'resource:*', 1, 'fa fa-desktop', 6, 0);
INSERT INTO `sys_resource` VALUES (32, '资源新增', 'BUTTON', '', 31, '0/1/31/', 'resource:create', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (33, '资源修改', 'BUTTON', '', 31, '0/1/31/', 'resource:update', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (34, '资源删除', 'BUTTON', '', 31, '0/1/31/', 'resource:delete', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (35, '资源查看', 'BUTTON', '', 31, '0/1/31/', 'resource:view', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (41, '角色管理', 'MENU', '#role', 21, '0/1/', 'role:*', 1, 'fa fa-child', 2, 1);
INSERT INTO `sys_resource` VALUES (42, '角色新增', 'BUTTON', '', 41, '0/1/41/', 'role:create', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (43, '角色修改', 'BUTTON', '', 41, '0/1/41/', 'role:update', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (44, '角色删除', 'BUTTON', '', 41, '0/1/41/', 'role:delete', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (45, '角色查看', 'BUTTON', '', 41, '0/1/41/', 'role:view', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (46, '系统用户', 'MENU', '#user', 21, '0/1/11/', 'user:*', 1, 'fa fa-wrench', 1, 1);
INSERT INTO `sys_resource` VALUES (47, '组织机构', 'MENU', '#organization', 11, '0/1/11/', 'organization:*', 1, 'fa fa-suitcase', NULL, 1);
INSERT INTO `sys_resource` VALUES (50, '资源管理', 'MENU', '#resource', 31, '0/1/', 'resource:*', 1, 'fa fa-cubes', NULL, 1);
INSERT INTO `sys_resource` VALUES (51, '设备管理', 'MENU', '#', 1, '0/1/', '', 1, '', 2, 0);
INSERT INTO `sys_resource` VALUES (52, '耗材工具', 'MENU', '#', 1, '0/1/', '', 1, '', 3, 0);
INSERT INTO `sys_resource` VALUES (53, '课程管理', 'MENU', '#', 1, '0/1/', '', 1, '', 4, 0);
INSERT INTO `sys_resource` VALUES (59, '首页', 'MENU', '#main', 1, '0/1/', 'main:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (69, '系统管理', 'MENU', '#', 1, '0/1/', 'system:*', 1, 'fa fa-wrench', 4, 0);
INSERT INTO `sys_resource` VALUES (70, '系统日志', 'MENU', '#log', 69, '0/1/69/', 'log:*', 1, 'fa fa-history', NULL, 1);
INSERT INTO `sys_resource` VALUES (73, '一级菜单', 'MENU', '#', 1, '0/1/', '', 1, '', 999, 0);
INSERT INTO `sys_resource` VALUES (83, '用户组管理', 'MENU', '#group', 21, '0/1/21/', 'group:*', 1, 'fa fa-users', 3, 0);
INSERT INTO `sys_resource` VALUES (84, '用户组新增', 'BUTTON', '', 83, '0/1/21/83/', 'group:create', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (85, '用户组修改', 'BUTTON', '', 83, '0/1/21/83/', 'group:update', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (86, '用户组删除', 'BUTTON', '', 83, '0/1/21/83/', 'group:delete', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (87, '用户组查看', 'BUTTON', '#', 83, '0/1/21/83/', 'group:view', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (88, '百度', 'MENU', 'https://www.baidu.com', 73, '0/1/73/', '', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (511, '设备管理', 'MENU', '#', 51, '0/1/51/', '', 1, '', 1, 0);
INSERT INTO `sys_resource` VALUES (512, '设备巡检', 'MENU', '#', 51, '0/1/51/', '', 1, '', 2, 0);
INSERT INTO `sys_resource` VALUES (521, '耗材管理', 'MENU', '#', 52, '0/1/52/', '', 1, '', 1, 0);
INSERT INTO `sys_resource` VALUES (522, '工具管理', 'MENU', '#', 52, '0/1/52/', '', 1, '', 2, 0);
INSERT INTO `sys_resource` VALUES (531, '课程管理', 'MENU', '#', 53, '0/1/53/', '', 1, '', 1, 0);
INSERT INTO `sys_resource` VALUES (532, '教案管理', 'MENU', '#', 53, '0/1/53/', '', 1, '', 2, 0);
INSERT INTO `sys_resource` VALUES (533, '课程实施', 'MENU', '#', 53, '0/1/53/', '', 1, '', 3, 0);
INSERT INTO `sys_resource` VALUES (5111, '实训室管理', 'MENU', '#trainingroom', 511, '0/1/51/511/', 'trainingroom:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5112, '设备管理', 'MENU', '#asset', 511, '0/1/51/511/', 'asset:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5121, '巡检管理', 'MENU', '#inspectionplanyear', 512, '0/1/51/512/', 'inspectionplanyear:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5122, '巡检记录', 'BUTTON', '#inspectionplan', 512, '0/1/51/512/', 'inspectionplan:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5123, '巡检详情', 'BUTTON', '#inspectionrecord', 512, '0/1/51/512/', 'inspectionrecord:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (5211, '耗材管理', 'MENU', '#consumables', 521, '0/1/52/521/', 'consumables:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5212, '耗材详情', 'BUTTON', '#warehousingrecord', 521, '0/1/52/521/', 'warehousingrecord:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5221, '工具管理', 'MENU', '#tools', 522, '0/1/52/522/', 'tools:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5222, '工具详情', 'BUTTON', '#collectionrecord', 522, '0/1/52/522/', 'collectionrecord:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5311, '课程设计', 'MENU', '#courses', 531, '0/1/53/531/', 'courses:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5312, '课程章节', 'BUTTON', '#chapters', 531, '0/1/53/531/', 'chapters:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5321, '教案设计', 'MENU', '#teachingplan', 532, '0/1/53/532/', 'teachingplan:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5331, '排课管理', 'MENU', '#coursearrangement', 533, '0/1/53/533/', 'coursearrangement:*', 1, '', 1, 1);

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
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'admin', '超级管理员', '11,21,31,41,46,69,70,83,5111,5112,5121,5122,5123,5211,5212,5221,5222,5311,5312,5321,5331,59', 0);
INSERT INTO `sys_role` VALUES (2, 'guest', '访客', '15,35', 0);
INSERT INTO `sys_role` VALUES (4, 'ceshi3', '测试的角色', '12,14,34,35', 0);
INSERT INTO `sys_role` VALUES (5, 'test', '测试角色', '12,13,14,43,47', 0);
INSERT INTO `sys_role` VALUES (6, '测试1', '222', '73', 0);

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

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 1, 'admin', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', '1', '1', 0);
INSERT INTO `sys_user` VALUES (2, 2, 'ceshi', 'c067bee5cf7f216f352011cb9064241e', '2632e0a577dba732bbfb4b298ff0b6e5', '4', '1', 0);
INSERT INTO `sys_user` VALUES (3, 4, 'ceshi22323', 'f0c6227912db35e27eaa82308be055cd', 'a2425da3d41a6ef79a1ec69a7d845767', '1', '1', 0);
INSERT INTO `sys_user` VALUES (4, 3, 'guest22223', '6622b95a30cf730253550985718102bc', '7de124e9822c092d56750969eebcf260', '1,2', '1', 0);
INSERT INTO `sys_user` VALUES (5, 3, 'guest', 'fdd97263888fb3767d55ff084751c125', '9f1bdc22981ae8730e89f94d241a73cc', '2', '1', 0);
INSERT INTO `sys_user` VALUES (6, 7, '12434', 'f17bf5e211de8a5cb611c4b6d83b728b', 'ffb57814a69d37ec1898282d4090cbfc', '2', '1,2', 0);
INSERT INTO `sys_user` VALUES (7, 3, 'admin212', 'f51764c4e21a7226f92ce79bef273a33', 'b184db3641404a412c28d0863f46054e', '2,4', '1', 0);
INSERT INTO `sys_user` VALUES (8, 4, '1208', '0aff55b46e9c7f91f622c0f579f6b43f', '3f83092c188d3de0695d260aec6ac4c1', '1,2,4,5', '1', 0);
INSERT INTO `sys_user` VALUES (9, 14, '12234343', '3e5657ac9987290841d99ed6f575f4e0', 'b48f560c40f4a53a0793184e45992f3d', '1,2,4,5', '1', 0);
INSERT INTO `sys_user` VALUES (10, 3, 'ada', '150f2974610a97f26f9f295329e24afc', 'ec55c34cc25616aff30c0cc08f43f9eb', '2,4,5', '1', 0);
INSERT INTO `sys_user` VALUES (11, 3, '232323', '4ffa547335faf5b18ccff6e9a227af88', '8e3272e3ac9aac76370af12692f993ce', '1,2', '1', 0);
INSERT INTO `sys_user` VALUES (12, 3, 'ceshcie', 'cca5985abc9a89f4d29e2e02aa6afca2', 'b789c54f40d592cdeaa17c452cee27b2', '4', '1', 0);
INSERT INTO `sys_user` VALUES (13, 3, '1233445', '6283a19b895a571a2637a3bec3215cf3', '34245e29965cfcd25da1fa671f5047d3', '2', '1', 0);
INSERT INTO `sys_user` VALUES (14, 3, '12334', '677a3e446421395315aeb52844959acd', '4e8f403e236e5910a2d13532796963bd', '4', '1', 0);
INSERT INTO `sys_user` VALUES (15, 3, '1221', '3a7b7a1d99a5e23fb9f9e1e88da499b0', 'f91e00aadbdea44b8d3a18f490173eb6', '1', '1', 0);
INSERT INTO `sys_user` VALUES (16, 3, '123456', '2aa2c7bf65db34867eb4fd7a49b8b18f', '685e4e4a2a9d57ccb2a3bd24ee01691a', '5', '1', 0);
INSERT INTO `sys_user` VALUES (17, 2, '123434', '355ff1f1a7c60a82b9d0685ec6406987', '821b7c15dcf108502a1a024a5746e7b7', '2', '1', 0);
INSERT INTO `sys_user` VALUES (18, 3, 'admin2', '6e327ade642adb0d344b9909f7d9f990', 'ccf50557508af772c13bedfcc320c4f1', '1,2,4,5', '1', 0);
INSERT INTO `sys_user` VALUES (19, 3, 'cee', 'ca9708541f98523b5c0b88661b2bb559', '3ea093a5cb06042f825fcdb51b76cb5c', '1,2,4,5', '1', 0);
INSERT INTO `sys_user` VALUES (20, 3, 'admin222', '13503530117f28b48fc32a1eea299bf0', '7292e549e492358c0233fde9e1c46ac3', '1,2,4', '1', 0);
INSERT INTO `sys_user` VALUES (21, 14, 'admin333', '387a1e939344d1dee392a7c02debb34b', '28e95c4e30c53414e5b63cca2427e173', '1,2,4', '1', 0);
INSERT INTO `sys_user` VALUES (22, 4, 'john', 'e755e2c4bb208ac9665bed5b9f6b81c5', '33a2c9562d191e090d83840a2920f3c1', '1', '1', 0);
INSERT INTO `sys_user` VALUES (23, 15, 'hello', '37f338a760c7c5fb204e2ee14a44d755', 'a9a5b7a5c2e7e8321f48e17a0425304d', '2', '1', 0);

-- ----------------------------
-- Table structure for t_asset
-- ----------------------------
DROP TABLE IF EXISTS `t_asset`;
CREATE TABLE `t_asset`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '资产id',
  `asset_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产编号',
  `asset_classification_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类编号',
  `asset_classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类名称',
  `asset_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产名称',
  `asset_value` int(11) DEFAULT NULL COMMENT '资产价值',
  `bookkeeping_date` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记账日期',
  `asset_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产类型编号',
  `asset_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产类型',
  `asset_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产使用人',
  `asset_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产使用人编号',
  `position_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置编号',
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置名称',
  `use_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '使用部门',
  `use_department_id` int(11) DEFAULT NULL COMMENT '使用部门编号',
  `inspection_cycle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '巡检周期',
  `inspection_cycle_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '巡检周期编号',
  `asset_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产状态',
  `asset_status_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产状态编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `asset_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源图片地址',
  `room_id` int(11) DEFAULT NULL COMMENT '实训室编号',
  `room_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实训室名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_asset
-- ----------------------------
INSERT INTO `t_asset` VALUES (1, '1702060002007000104', '1', '教学用机电实验仪器', '丰田皇冠教具车', 352400, '2017-12-12', '1', '丰田皇冠教具车', 'admin', '1', '1', '丰田T-TEP整车实训区', '南校区汽车系', 1, '月', 'inspection_cycle_month', '正常', 'asset_status_normal', '2020-04-24 18:00:00', '2020-04-24 18:00:00', '/file/img/1.png', 1, '丰田T-TEP整车实训区');
INSERT INTO `t_asset` VALUES (2, 'test', '1', '教学用机电实验仪器', '丰田皇冠教具车', 352400, '2017-12-12', '1', '丰田皇冠教具车', 'admin', '1', '1', '丰田T-TEP整车实训区', '南校区汽车系', 1, '月', 'inspection_cycle_month', '正常', 'asset_status_normal', '2020-04-24 18:00:00', '2020-04-24 18:00:00', '/file/img/1.png', 1, '丰田T-TEP整车实训区');

-- ----------------------------
-- Table structure for t_asset_classification
-- ----------------------------
DROP TABLE IF EXISTS `t_asset_classification`;
CREATE TABLE `t_asset_classification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `classification_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分类编码',
  `classification_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分类名称',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_asset_classification
-- ----------------------------
INSERT INTO `t_asset_classification` VALUES (1, 'AC1001', '教学用机电实验仪器', '2020-04-29 08:00:00', '2020-04-29 08:00:0');

-- ----------------------------
-- Table structure for t_asset_type
-- ----------------------------
DROP TABLE IF EXISTS `t_asset_type`;
CREATE TABLE `t_asset_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型编码',
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型名称',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_asset_type
-- ----------------------------
INSERT INTO `t_asset_type` VALUES (1, 'AT1001', '丰田皇冠教具车', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_asset_type` VALUES (2, 'AT1002', '丰田示教板', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_asset_type` VALUES (3, 'AT1003', '丰田霸道教具车', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_asset_type` VALUES (4, 'AT1004', '丰田差速器', '2020-04-29 08:00:00', '2020-04-29 08:00:00');

-- ----------------------------
-- Table structure for t_chapters
-- ----------------------------
DROP TABLE IF EXISTS `t_chapters`;
CREATE TABLE `t_chapters`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '章节编号（系统自动生成）',
  `chapter_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '章节名称',
  `chapter_sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '章节排序',
  `chapter_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '章节层级',
  `training_rooms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实训室名称（可以多个用；好隔离）',
  `training_room_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实训室编号（可以多个用；好隔离）',
  `teaching_plan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '教案名称',
  `teaching_plan_id` int(11) DEFAULT NULL COMMENT '教案编号',
  `devices_required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所需设备（可以多个用；好隔离）',
  `device_ids_required` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所需设备编号（可以多个用；好隔离）',
  `consumables_required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所需耗材（可以多个用；好隔离）',
  `consumables_ids_required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所需耗材编号（可以多个用；好隔离）',
  `course_id` int(11) DEFAULT NULL COMMENT '课程编号',
  `parent_id` int(11) DEFAULT NULL COMMENT '父节点',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `leaf` tinyint(1) DEFAULT 0 COMMENT '叶子节点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_chapters
-- ----------------------------
INSERT INTO `t_chapters` VALUES (1, '第1章 汽车常用构件力学分析', '1', '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-04-22 16:52:00', '2020-04-22 16:52:00', 0);
INSERT INTO `t_chapters` VALUES (2, '第1节 构件静力分析', '2', '2', '一汽大众整车实训区；\r\n\r\n丰田T-TEP整车实训区', '1;2', '01 构件静力分析讲义-1', 1, '丰田皇冠教具车；\r\n\r\n一汽大众教具车', '1;2', '汽车防护三件套', '1', 1, 1, '2020-04-22 16:52:00', '2020-04-22 16:52:00', 1);
INSERT INTO `t_chapters` VALUES (3, '第2节 构件静力分析2', '3', '2', '一汽大众整车实训区', '1', '02 构件静力分析讲义-2', 2, '丰田皇冠教具车；\r\n\r\n一汽大众教具车', '1;2', '汽车防护三件套', '1', 1, 1, '2020-04-22 16:52:00', '2020-04-22 16:52:00', 1);

-- ----------------------------
-- Table structure for t_collection_record
-- ----------------------------
DROP TABLE IF EXISTS `t_collection_record`;
CREATE TABLE `t_collection_record`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '领用编号',
  `asset_id` int(11) DEFAULT NULL COMMENT '资产id',
  `asset_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产名称',
  `asset_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具',
  `asset_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具',
  `collection time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '领用时间',
  `collection_major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '领用的专业(系)',
  `collection_major_id` int(11) DEFAULT NULL COMMENT '领用的专业(系)编号',
  `collection_course` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '领用的课程',
  `collection_course_id` int(11) DEFAULT NULL COMMENT '领用的课程编号',
  `applicant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '申请人',
  `applicant_id` int(11) DEFAULT NULL COMMENT '申请人编号',
  `collected_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '领用数量',
  `return_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '归还时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_collection_record
-- ----------------------------
INSERT INTO `t_collection_record` VALUES (1, 1, '发动机机油', '耗材', 'asset_type_consumables', '2020-03-23 00:00:00', '汽修系', 1, '车身电气系统课程', 1, '李旭', 1, '10', '2020-03-24 00:00:00', '无', '2020-04-22 16:52:00', '2020-04-22 16:52:00');

-- ----------------------------
-- Table structure for t_consumables
-- ----------------------------
DROP TABLE IF EXISTS `t_consumables`;
CREATE TABLE `t_consumables`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '耗材编号(系统生成)',
  `consumables_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '耗材编号（自编）',
  `consumables_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '耗材名称',
  `bookkeeping_date` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记账日期',
  `specification_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '耗材规格型号',
  `specification_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '规格型号编号',
  `unit_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单价(元) ',
  `position_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置编号',
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置名称',
  `manager` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '耗材管理人',
  `manager_id` int(11) DEFAULT NULL COMMENT '耗材管理人编号',
  `cumulative_receipt_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '累计入库数量',
  `total_existing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '现存总数',
  `cumulative_collected_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '累计领用数量',
  `remaining_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '剩余数量',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_consumables
-- ----------------------------
INSERT INTO `t_consumables` VALUES (1, 'CC001', '发动机机油', '2020-04-22', '嘉实多5W-30', '1', '100', '1', '实训三层器材室', '张春田', 1, '100', '50', '40', '10', '2020-04-22 16:52:00', '2020-04-22 16:52:00');

-- ----------------------------
-- Table structure for t_course_arrangement
-- ----------------------------
DROP TABLE IF EXISTS `t_course_arrangement`;
CREATE TABLE `t_course_arrangement`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '排课编号（系统自动生成）',
  `week_id` int(11) DEFAULT NULL COMMENT '周编号',
  `week_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '周名称',
  `section_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '节次名称',
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程名称',
  `course_id` int(11) DEFAULT NULL COMMENT '课程编号',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '班级',
  `class_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '班级编号',
  `number_of_people` int(11) DEFAULT NULL COMMENT '人数',
  `lecturerl_teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主讲教师',
  `lecturerl_teacher_id` int(11) DEFAULT NULL COMMENT '主讲教师编号',
  `regional_teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '区域教师',
  `regional_teacher_id` int(11) DEFAULT NULL COMMENT '区域教师编号',
  `assistant_teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '辅助教师',
  `assistant_teacher_id` int(11) DEFAULT NULL COMMENT '辅助教师编号',
  `training_room_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实训室名称',
  `training_room_id` int(11) DEFAULT NULL COMMENT '实训室编号',
  `teaching_plan_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '教案名称',
  `teaching_plan_id` int(11) DEFAULT NULL COMMENT '教案编号',
  `training_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实训内容',
  `number_of_devices` int(11) DEFAULT NULL COMMENT '设备数量',
  `number_of_consumables` int(11) DEFAULT NULL COMMENT '耗材数量',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_course_arrangement
-- ----------------------------
INSERT INTO `t_course_arrangement` VALUES (1, 1, '2020年 第19周 (5月4日-5月10日)', '1-2', '车身电气系统', 1, '17汽运1501', '1', 28, '张新敏', 1, '李旭', 2, '陈俊杰', 3, '大众整车实训室', 1, '构件静力分析讲义-1', 1, '实操考核', 3, 15, '2020-03-24 00:00:00', '2020-03-24 00:00:00');

-- ----------------------------
-- Table structure for t_course_arrangement_re_asset
-- ----------------------------
DROP TABLE IF EXISTS `t_course_arrangement_re_asset`;
CREATE TABLE `t_course_arrangement_re_asset`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '排课管理和设备关联编号（系统自动生成）',
  `course_arrangement_id` int(11) DEFAULT NULL COMMENT '排课管理编号',
  `asset_id` int(11) DEFAULT NULL COMMENT '资源编号',
  `asset_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产编号',
  `asset_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源名称',
  `asset_classification_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类编号',
  `asset_classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类名称',
  `asset_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产状态',
  `asset_status_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产状态编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_course_arrangement_re_asset
-- ----------------------------
INSERT INTO `t_course_arrangement_re_asset` VALUES (1, 1, 1, '1702060002007000104', '奔驰维修扭矩基础实训设备', '1', '教学用机电实验仪器', '正常', 'asset_status_normal', '2020-04-24 18:00:00', '2020-04-24 18:00:00');

-- ----------------------------
-- Table structure for t_course_arrangement_re_consumables
-- ----------------------------
DROP TABLE IF EXISTS `t_course_arrangement_re_consumables`;
CREATE TABLE `t_course_arrangement_re_consumables`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '排课管理和耗材关联编号（系统自动生成）',
  `course_arrangement_id` int(11) DEFAULT NULL COMMENT '排课管理编号',
  `consumables_id` int(11) DEFAULT NULL COMMENT '耗材编号(系统生成)',
  `consumables_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '耗材编号（自编）',
  `consumables_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '耗材名称',
  `specification_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '耗材规格型号',
  `specification_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '规格型号编号',
  `position_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置编号',
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置名称',
  `number_of_applications` int(11) DEFAULT NULL COMMENT '申请数量',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_course_arrangement_re_consumables
-- ----------------------------
INSERT INTO `t_course_arrangement_re_consumables` VALUES (1, 1, 1, 'CC001', '发动机机油', '嘉实多5W-30', '1', '1', '实训三层器材室', 15, '2020-04-22 16:52:00', '2020-04-22 16:52:00');

-- ----------------------------
-- Table structure for t_courses
-- ----------------------------
DROP TABLE IF EXISTS `t_courses`;
CREATE TABLE `t_courses`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '课程编号（系统自动生成）',
  `course_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程编码（自编）',
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程名称',
  `course_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程类型',
  `course_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程类型编号',
  `course_director` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程负责人',
  `course_director_id` int(11) DEFAULT NULL COMMENT '课程负责人编号',
  `create_date` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建日期',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_courses
-- ----------------------------
INSERT INTO `t_courses` VALUES (1, '10001', '汽车机械基础', '实训课', '1', '李旭', 1, '2020-04-22', '2020-04-22 16:52:00', '2020-04-22 16:52:00');

-- ----------------------------
-- Table structure for t_director_approval
-- ----------------------------
DROP TABLE IF EXISTS `t_director_approval`;
CREATE TABLE `t_director_approval`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主任审批编号',
  `approver` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审批人',
  `approver_id` int(11) DEFAULT NULL COMMENT '审批人编号',
  `approval_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审批部门',
  `approval_department_id` int(11) DEFAULT NULL COMMENT '审批部门编号',
  `pass_or_not` int(2) DEFAULT NULL COMMENT '是否通过  0 不通过 1通过',
  `approval_comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审批意见',
  `record_id` int(11) DEFAULT NULL COMMENT '维修申请编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_director_approval
-- ----------------------------
INSERT INTO `t_director_approval` VALUES (1, '李四', 1, '实训管理部', 1, 1, '无', 1, '2019-04-02 22:31', '2019-04-02 22:31');

-- ----------------------------
-- Table structure for t_failure_confirmation
-- ----------------------------
DROP TABLE IF EXISTS `t_failure_confirmation`;
CREATE TABLE `t_failure_confirmation`  (
  `id` int(11) NOT NULL COMMENT '故障确认编号',
  `confirming_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '故障确认人',
  `confirming_person_id` int(11) DEFAULT NULL COMMENT '故障确认人编号',
  `confirmation_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '确认部门',
  `confirmation_department_id` int(11) DEFAULT NULL COMMENT '确认部门编号',
  `repair_required` int(2) DEFAULT NULL COMMENT '是否需要维修 1 是 0 否',
  `maintenance_cost_estimate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '维修费用预估',
  `maintenance_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '维修类型',
  `maintenance_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '维修类型编号',
  `maintenance_cooperation_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '维修配合单位',
  `maintenance_cooperation_unit_id` int(11) DEFAULT NULL COMMENT '维修配合单位编号',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `attachment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '附件名称',
  `attachment_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '附件下载地址',
  `record_id` int(11) DEFAULT NULL COMMENT '维修申请编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_failure_confirmation
-- ----------------------------
INSERT INTO `t_failure_confirmation` VALUES (1, '李四', 1, '实训管理部', 1, 1, '2000元内', '上门维修', '1', 'xx公司', 111, '无', '', NULL, 1, '2019-04-01 22:31', '2019-04-01 22:31');

-- ----------------------------
-- Table structure for t_flow_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_flow_detail`;
CREATE TABLE `t_flow_detail`  (
  `id` int(11) NOT NULL COMMENT '流程记录编号',
  `person_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '人员名称',
  `person_id` int(11) DEFAULT NULL COMMENT '人员编号',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  `role_id` int(11) DEFAULT NULL COMMENT '角色编号',
  `processing_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '处理内容',
  `processing_date` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '处理日期',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `flow_id` int(11) DEFAULT NULL COMMENT '流程编号',
  `flow_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程类型 维修记录 领用记录',
  `flow_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程类型编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_flow_detail
-- ----------------------------
INSERT INTO `t_flow_detail` VALUES (1, '张三', 1, '汽车系教师', 1, '填写设备维修单', '2019-03-30', '2019-03-30 22:31', '2019-03-30 22:31', 1, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (2, '李四', 1, '设备管理员', 1, '确认设备故障', '2019-04-01', '2019-04-01 22:31', '2019-04-01 22:31', 1, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (4, '李四', 1, '设备管理员', 1, '填写设备维修结果', '2019-04-03', '2019-04-03 22:31', '2019-04-03 22:31', 1, '设备维修', 'equipment_maintenance');

-- ----------------------------
-- Table structure for t_flow_node
-- ----------------------------
DROP TABLE IF EXISTS `t_flow_node`;
CREATE TABLE `t_flow_node`  (
  `id` int(11) NOT NULL COMMENT '流程节点记录',
  `flow_node_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程节点名称',
  `flow_node_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程节点编号',
  `flow_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程类型名称',
  `flow_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程类型编号',
  `flow_node_order` int(11) DEFAULT NULL COMMENT '流程节点顺序',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `role_id` int(11) DEFAULT NULL COMMENT '角色编号',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_flow_node
-- ----------------------------
INSERT INTO `t_flow_node` VALUES (1, '填写设备维修单', 'em_write', '设备维修', 'equipment_maintenance', 1, '填写设备维修单', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (2, '待确认', 'em_confirmed', '设备维修', 'equipment_maintenance', 2, '确认设备故障', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (3, '待审批', 'em_pending_approval', '设备维修', 'equipment_maintenance', 3, '审批设备维修单', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (4, '维修中', 'em_to_be_repaired', '设备维修', 'equipment_maintenance', 4, '填写设备维修结果', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (5, '维修完成', 'em_end', '设备维修', 'equipment_maintenance', 5, '结束', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');

-- ----------------------------
-- Table structure for t_inspection_plan
-- ----------------------------
DROP TABLE IF EXISTS `t_inspection_plan`;
CREATE TABLE `t_inspection_plan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '巡检计划编号',
  `room_id` int(11) DEFAULT NULL COMMENT '实训室编号',
  `room_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实训室名称',
  `inspector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '巡检人',
  `inspector_id` int(11) DEFAULT NULL COMMENT '巡检人编号',
  `normal_devices_in_inspection` int(11) DEFAULT NULL COMMENT '本次巡检设备数',
  `number_normal_devices` int(11) DEFAULT NULL COMMENT '正常设备数量',
  `number_abnormal_devices` int(11) DEFAULT NULL COMMENT '异常设备数量',
  `number_reported_repair_equipment` int(11) DEFAULT NULL COMMENT '已报修设备数量',
  `inspection_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '巡检时间',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `inspection_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '巡检状态 0 正常 1 异常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_inspection_plan
-- ----------------------------
INSERT INTO `t_inspection_plan` VALUES (1, 1, '丰田T-TEP整车实训区', 'admin', 1, 12, 10, 2, 2, '2020-04-24', '2020-04-24 18:00:00', '2020-04-24 18:00:00', '0');

-- ----------------------------
-- Table structure for t_inspection_plan_year
-- ----------------------------
DROP TABLE IF EXISTS `t_inspection_plan_year`;
CREATE TABLE `t_inspection_plan_year`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '年度巡检计划统计编号',
  `room_id` int(11) DEFAULT NULL COMMENT '实训室编号',
  `room_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实训室名称',
  `person_in_charge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '巡检负责人',
  `person_in_charge_id` int(11) DEFAULT NULL COMMENT '巡检负责人编号',
  `inspection_cycle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '巡检周期',
  `inspection_cycle_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '巡检周期编号',
  `inspection_times_year` int(11) DEFAULT NULL COMMENT '本年度应巡检次数',
  `inspectioned_times_year` int(11) DEFAULT NULL COMMENT '本年度已巡检次数',
  `number_abnormal_devices` int(11) DEFAULT NULL COMMENT '异常设备数量',
  `number_reported_repair_equipment` int(11) DEFAULT NULL COMMENT '已报修设备数量',
  `number_repaired_equipmen` int(11) DEFAULT NULL COMMENT '已维修设备数量',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `create_year` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建年份',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_inspection_plan_year
-- ----------------------------
INSERT INTO `t_inspection_plan_year` VALUES (1, 1, '丰田T-TEP整车实训区', 'admin', 1, '周', 'inspection_cycle_week', 12, 10, 1, 2, 2, '2020-04-24 18:00:00', '2020-04-24 18:00:00', '2020');

-- ----------------------------
-- Table structure for t_inspection_record
-- ----------------------------
DROP TABLE IF EXISTS `t_inspection_record`;
CREATE TABLE `t_inspection_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '巡检记录编号',
  `asset_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产编号',
  `asset_classification_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类编号',
  `asset_classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类名称',
  `asset_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产状态',
  `asset_status_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产状态编号',
  `is_repair` int(11) DEFAULT NULL COMMENT '是否维修 是 1 否 0 ',
  `status_description` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态描述',
  `plan_id` int(11) DEFAULT NULL COMMENT '检修计划编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `repair_order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '维修单号',
  `asset_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_inspection_record
-- ----------------------------
INSERT INTO `t_inspection_record` VALUES (1, '1702060002007000104', '1', '教学用机电实验仪器', '正常', 'asset_status_normal', 0, 'test', 1, '2020-04-24 18:00:00', '2020-04-24 18:00:00', 'IR001', '丰田皇冠教具车');

-- ----------------------------
-- Table structure for t_maintenance_record
-- ----------------------------
DROP TABLE IF EXISTS `t_maintenance_record`;
CREATE TABLE `t_maintenance_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设备维修记录编号（系统生成）',
  `record_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录编号（自编）',
  `record_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '维修记录名称',
  `asset_id` int(11) DEFAULT NULL COMMENT '资产id',
  `asset_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产编号',
  `asset_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产名称',
  `asset_classification_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类编号',
  `asset_classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类名称',
  `flow_status_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程状态编码',
  `flow_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程状态',
  `maintenance_costs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '维修费用',
  `applicant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '申请人',
  `applicant_id` int(11) DEFAULT NULL COMMENT '申请人编号',
  `applicant_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '申请人部门',
  `applicant_department_id` int(11) DEFAULT NULL COMMENT '申请人部门编号',
  `position_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置编号',
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置名称',
  `failure_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '故障发生时间',
  `fault_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '故障描述',
  `attachment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '附件名称',
  `attachment_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '附件下载地址',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_maintenance_record
-- ----------------------------
INSERT INTO `t_maintenance_record` VALUES (1, 'MR001', '丰田皇冠教具车维修单', 1, '1702060002007000104', '丰田皇冠教具车', '1', '教学用机电实验仪器', 'em_confirmed', '待确认', '1000', '张三', 1, '汽车工程系', 2, '1', '丰田T-TEP整车实训区', '2020-05-11 00:00:00', '无法开机', '问题截图', '/img/1.png', '2020-05-11 00:00:00', '2020-05-11 00:00:00');

-- ----------------------------
-- Table structure for t_maintenance_record_results
-- ----------------------------
DROP TABLE IF EXISTS `t_maintenance_record_results`;
CREATE TABLE `t_maintenance_record_results`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修记录结果编号',
  `record_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录人',
  `record_person_id` int(11) DEFAULT NULL COMMENT '记录人编号',
  `record_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录部门',
  `record_department_id` int(11) DEFAULT NULL COMMENT '记录部门编号',
  `is_repaired` int(2) DEFAULT NULL COMMENT '是否修好 0 否 1 是',
  `maintenance_costs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '维修费用',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `record_id` int(11) DEFAULT NULL COMMENT '维修申请编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_maintenance_record_results
-- ----------------------------
INSERT INTO `t_maintenance_record_results` VALUES (1, '李四', 1, '实训管理部', 1, 1, '2000', '无', 1, '2019-04-03 22:31', '2019-04-03 22:31');

-- ----------------------------
-- Table structure for t_position
-- ----------------------------
DROP TABLE IF EXISTS `t_position`;
CREATE TABLE `t_position`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '位置编号',
  `position_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置编码',
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置名称',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_position
-- ----------------------------
INSERT INTO `t_position` VALUES (1, 'P1001', '丰田T-TEP整车实训区', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_position` VALUES (2, 'P1002', '北校区后勤服务中心', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_position` VALUES (3, 'P1003', '教学楼二段二层南侧', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_position` VALUES (4, 'P1004', '南校区教学楼二段一层北侧', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_position` VALUES (5, 'P1005', '南校区汽车系', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_position` VALUES (6, 'P1006', '南校区汽车系办公楼一层新能源实训室', '2020-04-29 08:00:00', '2020-04-29 08:00:00');

-- ----------------------------
-- Table structure for t_pub_code
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_code`;
CREATE TABLE `t_pub_code`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公共编码编号',
  `pub_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公共编码编码',
  `pub_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公共编码名称',
  `pub_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公共编码类型',
  `pub_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公共编码类型编码',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_pub_code
-- ----------------------------
INSERT INTO `t_pub_code` VALUES (1, 'inspection_cycle_day', '日', 'inspection_cycle', 'ic', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '巡检周期 日');
INSERT INTO `t_pub_code` VALUES (2, 'inspection_cycle_week', '周', 'inspection_cycle', 'ic', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '巡检周期 周');
INSERT INTO `t_pub_code` VALUES (3, 'inspection_cycle_month', '月', 'inspection_cycle', 'ic', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '巡检周期 月');
INSERT INTO `t_pub_code` VALUES (4, 'inspection_cycle_year', '年', 'inspection_cycle', 'ic', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '巡检周期 年');
INSERT INTO `t_pub_code` VALUES (5, 'asset_status_use', '在用', 'asset_status', 'as', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '资产状态 在用');
INSERT INTO `t_pub_code` VALUES (6, 'asset_status_normal', '正常', 'asset_status', 'as', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '资产状态 正常');
INSERT INTO `t_pub_code` VALUES (7, 'asset_status_repair', '维修', 'asset_status', 'as', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '资产状态 维修');
INSERT INTO `t_pub_code` VALUES (8, 'asset_status_scrapped', '报废', 'asset_status', 'as', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '资产状态 报废');
INSERT INTO `t_pub_code` VALUES (9, 'asset_type_device', '设备', 'asset_type', 'at', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '领用,入库中的资产类型');
INSERT INTO `t_pub_code` VALUES (10, 'asset_type_consumables', '耗材', 'asset_type', 'at', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '领用,入库中的资产类型');
INSERT INTO `t_pub_code` VALUES (11, 'asset_type_tool', '工具', 'asset_type', 'at', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '领用,入库中的资产类型');
INSERT INTO `t_pub_code` VALUES (12, 'course_type_practical_training_course', '实训课', 'course_type', 'ct', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '课程类型 实训课');
INSERT INTO `t_pub_code` VALUES (13, 'course_type_theory_Course', '理论课', 'course_type', 'ct', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '课程类型 理论课');

-- ----------------------------
-- Table structure for t_sys
-- ----------------------------
DROP TABLE IF EXISTS `t_sys`;
CREATE TABLE `t_sys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系编号',
  `sys_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '系编码',
  `sys_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '系名称',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys
-- ----------------------------
INSERT INTO `t_sys` VALUES (1, 'S1001', '南校区汽车工程系', '2020-04-22 16:52:00', '2020-04-22 16:52:00');
INSERT INTO `t_sys` VALUES (2, 'S1002', '南校区汽车系', '2020-04-22 16:52:00', '2020-04-22 16:52:00');

-- ----------------------------
-- Table structure for t_teaching_plan
-- ----------------------------
DROP TABLE IF EXISTS `t_teaching_plan`;
CREATE TABLE `t_teaching_plan`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '教案编号（系统自动生成）',
  `teaching_plan_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '教案名称',
  `estimated_time_duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预计时长',
  `teaching_plan_description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '教案描述',
  `document_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文档附件名称',
  `document_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文档附件路径',
  `video_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '视频名称',
  `video_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '视频路径',
  `chapter_id` int(11) DEFAULT NULL COMMENT '章节编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_teaching_plan
-- ----------------------------
INSERT INTO `t_teaching_plan` VALUES (1, '构件静力分析讲义-1', '35分钟', '理解静力学的基本概念，掌握工程中常见的约束和约束反力的画法，理解平面力系的合成和平和条件，能利用平衡的条件求解平面汇交力系的平衡问题。', '构件静力分析讲义-PPT   ', './file/1.doc', ' 构件静力分析讲义-视频 ', './file/1.mp4', 1, '2020-03-24 00:00:00', '2020-03-24 00:00:00');

-- ----------------------------
-- Table structure for t_tools
-- ----------------------------
DROP TABLE IF EXISTS `t_tools`;
CREATE TABLE `t_tools`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '资产编号（系统自动生成）',
  `asset_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产编号（自编）',
  `asset_classification_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类编号',
  `asset_classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类名称',
  `asset_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产名称',
  `asset_value` int(11) DEFAULT NULL COMMENT '资产价值',
  `bookkeeping_date` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记账日期',
  `specification_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '规格型号',
  `specification_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '规格型号编号',
  `asset_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产使用人',
  `asset_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产使用人编号',
  `position_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置编号',
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置名称',
  `use_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '使用部门',
  `use_department_id` int(11) DEFAULT NULL COMMENT '使用部门编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_tools
-- ----------------------------
INSERT INTO `t_tools` VALUES (1, 'ZY2015000663', '1', '教学用机电实验仪器', '拆装工具', 7700, '2017-12-12', '1', 'YT-5530-YT-5542.YT-55442.YT55444.YT55452', 'admin', '1', '1', '丰田T-TEP整车实训区', '南校区汽车系', 1, '2020-04-22 16:52:00', '2020-04-22 16:52:00');

-- ----------------------------
-- Table structure for t_training_room
-- ----------------------------
DROP TABLE IF EXISTS `t_training_room`;
CREATE TABLE `t_training_room`  (
  `room_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实训室名称',
  `belong_sys` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属系',
  `room_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置',
  `room_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理员',
  `create_date` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建日期',
  `equip_num` int(11) DEFAULT NULL COMMENT '设备数量',
  `is_enabled` int(11) DEFAULT NULL COMMENT '是否可用 0  不可用 1可用',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '实训室编号',
  `belong_sys_id` int(11) DEFAULT NULL COMMENT '所属系统编号',
  `room_position_code` int(11) DEFAULT NULL COMMENT '位置信息编号',
  `room_admin_id` int(11) DEFAULT NULL COMMENT '管理员编号',
  `room_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实训室编码（自编）',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_training_room
-- ----------------------------
INSERT INTO `t_training_room` VALUES ('丰田T-TEP整车实训区', '南校区汽车工程系', '丰田T-TEP整车实训区', 'admin', '2020-04-29', 12, 1, '2020-04-29 08:00:00', 1, 1, 1, 1, 'RC1001', '2020-04-29 08:00:00');

-- ----------------------------
-- Table structure for t_warehousing_record
-- ----------------------------
DROP TABLE IF EXISTS `t_warehousing_record`;
CREATE TABLE `t_warehousing_record`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT ' 入库编号',
  `asset_id` int(11) DEFAULT NULL COMMENT '资产id',
  `asset_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产名称',
  `asset_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具',
  `asset_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具',
  `warehousing_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 入库时间',
  `unit_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单价(元) ',
  `warehousing_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 入库数量',
  `position_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置编号',
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置名称',
  `manager` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理人',
  `manager_id` int(11) DEFAULT NULL COMMENT '管理人编号',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_warehousing_record
-- ----------------------------
INSERT INTO `t_warehousing_record` VALUES (1, 1, '发动机机油', '耗材', 'asset_type_consumables', '2020-03-23 00:00:00', '100', '200', '1', '实训三层器材室', '李旭', 1, '无', '2020-03-24 00:00:00', '2020-03-24 00:00:00');

-- ----------------------------
-- Table structure for t_week_year
-- ----------------------------
DROP TABLE IF EXISTS `t_week_year`;
CREATE TABLE `t_week_year`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '周编号（系统自动生成）',
  `week_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '周名称',
  `start_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '起始日期',
  `end_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '结束日期',
  `year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '年份',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_week_year
-- ----------------------------
INSERT INTO `t_week_year` VALUES (1, '2020年 第19周 (5月4日-5月10日)', '05-04', '05-10', '2020', '无', '2020-04-22 16:52:00', '2020-04-22 16:52:00');

SET FOREIGN_KEY_CHECKS = 1;
