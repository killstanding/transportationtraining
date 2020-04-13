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

 Date: 27/03/2020 14:50:30
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
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
-- Records of sys_organization
-- ----------------------------
INSERT INTO `sys_organization` VALUES (1, '总公司', 0, '0/', 1, 0, 0);
INSERT INTO `sys_organization` VALUES (2, '分公司', 1, '0/1/', 1, 1, 0);
INSERT INTO `sys_organization` VALUES (3, '分公司33', 1, '0/1/', 1, 23, 0);
INSERT INTO `sys_organization` VALUES (4, '分公司10', 2, '0/1/2/', 1, 221, 0);
INSERT INTO `sys_organization` VALUES (5, '一级节点', 1, '0/1/', 1, 122, 0);
INSERT INTO `sys_organization` VALUES (6, '二级节点', 17, '0/1/17/', 1, NULL, 0);
INSERT INTO `sys_organization` VALUES (7, '三级节点', 18, '0/1/17/18/', 0, NULL, 0);
INSERT INTO `sys_organization` VALUES (8, '133', 2, '0/1/2/', 1, 121212, 0);
INSERT INTO `sys_organization` VALUES (9, '222', 3, '0/1/3/', 1, 3333, 0);
INSERT INTO `sys_organization` VALUES (10, '222', 24, '0/1/2/24/', 1, 333, 0);
INSERT INTO `sys_organization` VALUES (11, '232', 3, '0/1/3/', 1, 2323, 0);
INSERT INTO `sys_organization` VALUES (12, '333', 32, '0/1/3/32/', 1, 444, 0);
INSERT INTO `sys_organization` VALUES (13, '222', 2, '0/1/2/', 1, 3333, 0);
INSERT INTO `sys_organization` VALUES (14, '333', 25, '0/1/3/25/', 1, 232332, 0);
INSERT INTO `sys_organization` VALUES (15, '测试', 5, '0/1/5/', 1, 123123, 0);

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
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES (1, '资源', 'MENU', '#', 0, '0/', '', 1, '', 0, 0);
INSERT INTO `sys_resource` VALUES (11, '组织机构管理', 'MENU', '#', 1, '0/1/', 'organization:*', 1, 'fa fa-sitemap', 3, 0);
INSERT INTO `sys_resource` VALUES (12, '组织机构新增', 'BUTTON', '', 11, '0/1/11/', 'organization:create', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (13, '组织机构修改', 'BUTTON', '', 11, '0/1/11/', 'organization:update', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (14, '组织机构删除', 'BUTTON', '', 11, '0/1/11/', 'organization:delete', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (15, '组织机构查看', 'BUTTON', '', 11, '0/1/11/', 'organization:view', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (21, '用户管理', 'MENU', '#', 1, '0/1/', '', 1, 'fa fa-user', 1, 0);
INSERT INTO `sys_resource` VALUES (22, '用户新增', 'BUTTON', '', 46, '0/1/21/', 'user:create', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (23, '用户修改', 'BUTTON', '', 46, '0/1/21/', 'user:update', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (24, '用户删除', 'BUTTON', '', 46, '0/1/21/', 'user:delete', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (25, '用户查看', 'BUTTON', '', 46, '0/1/21/', 'user:view', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (31, '资源管理', 'MENU', '#', 1, '0/1/', 'resource:*', 1, 'fa fa-desktop', 2, 0);
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
INSERT INTO `sys_resource` VALUES (69, '系统管理', 'MENU', '#', 1, '0/1/', 'system:*', 1, 'fa fa-wrench', 4, 0);
INSERT INTO `sys_resource` VALUES (70, '系统日志', 'MENU', '#log', 69, '0/1/69/', 'log:*', 1, 'fa fa-history', NULL, 1);
INSERT INTO `sys_resource` VALUES (73, '一级菜单', 'MENU', '#', 1, '0/1/', '', 1, '', 999, 0);
INSERT INTO `sys_resource` VALUES (83, '用户组管理', 'MENU', '#group', 21, '0/1/21/', 'group:*', 1, 'fa fa-users', 3, 0);
INSERT INTO `sys_resource` VALUES (84, '用户组新增', 'BUTTON', '', 83, '0/1/21/83/', 'group:create', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (85, '用户组修改', 'BUTTON', '', 83, '0/1/21/83/', 'group:update', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (86, '用户组删除', 'BUTTON', '', 83, '0/1/21/83/', 'group:delete', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (87, '用户组查看', 'BUTTON', '#', 83, '0/1/21/83/', 'group:view', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (88, '百度', 'MENU', 'https://www.baidu.com', 73, '0/1/73/', '', 1, '', NULL, 0);

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
INSERT INTO `sys_role` VALUES (1, 'admin', '超级管理员', '11,21,31,41,46,69,70,83', 0);
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

SET FOREIGN_KEY_CHECKS = 1;
