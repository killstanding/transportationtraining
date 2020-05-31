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

 Date: 31/05/2020 15:41:38
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
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `sys_log` VALUES (28, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 128, '角色管理更新角色', '处理成功', '2020-05-20 18:18:32', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":1,\"role\":\"admin\",\"description\":\"超级管理员\",\"resourceIds\":\"11,21,31,41,46,59,69,70,83,5111,5112,5121,5122,5123,5211,5212,5221,5222,5311,5312,5321,5322,5331\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (29, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 128, '角色管理更新角色', '处理成功', '2020-05-20 18:18:32', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":1,\"role\":\"admin\",\"description\":\"超级管理员\",\"resourceIds\":\"11,21,31,41,46,59,69,70,83,5111,5112,5121,5122,5123,5211,5212,5221,5222,5311,5312,5321,5322,5331\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (30, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 41, '角色管理更新角色', '处理成功', '2020-05-20 18:38:37', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":1,\"role\":\"admin\",\"description\":\"超级管理员\",\"resourceIds\":\"11,21,31,41,46,59,69,70,83,5111,5112,5121,5122,5123,5211,5212,5221,5222,5311,5312,5321,5322,5331\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (31, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 41, '角色管理更新角色', '处理成功', '2020-05-20 18:38:37', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":1,\"role\":\"admin\",\"description\":\"超级管理员\",\"resourceIds\":\"11,21,31,41,46,59,69,70,83,5111,5112,5121,5122,5123,5211,5212,5221,5222,5311,5312,5321,5322,5331\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (32, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 1, '角色管理更新角色', '处理成功', '2020-05-23 22:17:42', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":1,\"role\":\"admin\",\"description\":\"超级管理员\",\"resourceIds\":\"11,21,31,41,46,59,69,70,83,5111,5112,5121,5122,5123,5211,5212,5221,5222,5311,5312,5321,5322,5331,51231\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (33, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 1, '角色管理更新角色', '处理成功', '2020-05-23 22:17:42', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":1,\"role\":\"admin\",\"description\":\"超级管理员\",\"resourceIds\":\"11,21,31,41,46,59,69,70,83,5111,5112,5121,5122,5123,5211,5212,5221,5222,5311,5312,5321,5322,5331,51231\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (34, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 119, '角色管理创建角色', '处理成功', '2020-05-30 18:59:31', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":7,\"role\":\"实训室管理员\",\"description\":\"管理实训室\",\"resourceIds\":\"59,5111\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (35, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 119, '角色管理创建角色', '处理成功', '2020-05-30 18:59:31', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":7,\"role\":\"实训室管理员\",\"description\":\"管理实训室\",\"resourceIds\":\"59,5111\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (36, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 41, '角色管理创建角色', '处理成功', '2020-05-30 19:00:22', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":8,\"role\":\"设备管理员\",\"description\":\"管理设备\",\"resourceIds\":\"511,512,5112,5121,5122,5123\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (37, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 41, '角色管理创建角色', '处理成功', '2020-05-30 19:00:22', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":8,\"role\":\"设备管理员\",\"description\":\"管理设备\",\"resourceIds\":\"511,512,5112,5121,5122,5123\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (38, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 55, '角色管理创建角色', '处理成功', '2020-05-30 19:01:08', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":9,\"role\":\"教师\",\"description\":\"管理课程排课\",\"resourceIds\":\"531,532,533\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (39, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 55, '角色管理创建角色', '处理成功', '2020-05-30 19:01:08', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":9,\"role\":\"教师\",\"description\":\"管理课程排课\",\"resourceIds\":\"531,532,533\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (40, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 22, '角色管理创建角色', '处理成功', '2020-05-30 19:02:14', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":10,\"role\":\"主任\",\"description\":\"总览系统，审批流程查看\",\"resourceIds\":\"59,512,5121,5122,5123,51231\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (41, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 22, '角色管理创建角色', '处理成功', '2020-05-30 19:02:14', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":10,\"role\":\"主任\",\"description\":\"总览系统，审批流程查看\",\"resourceIds\":\"59,512,5121,5122,5123,51231\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (42, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 31, '角色管理创建角色', '处理成功', '2020-05-30 19:02:38', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":11,\"role\":\"耗材管理员\",\"description\":\"管理耗材\",\"resourceIds\":\"521,5211,5212\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (43, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 31, '角色管理创建角色', '处理成功', '2020-05-30 19:02:38', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":11,\"role\":\"耗材管理员\",\"description\":\"管理耗材\",\"resourceIds\":\"521,5211,5212\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (44, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 23, '角色管理创建角色', '处理成功', '2020-05-30 19:03:36', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":12,\"role\":\"工具管理员\",\"description\":\"管理工具\",\"resourceIds\":\"522,5221,5222\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (45, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 23, '角色管理创建角色', '处理成功', '2020-05-30 19:03:36', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":12,\"role\":\"工具管理员\",\"description\":\"管理工具\",\"resourceIds\":\"522,5221,5222\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (46, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.deleteBatchByIds(Object[])', 16, '用户管理删除用户', '处理成功', '2020-05-31 09:28:29', 'http://127.0.0.1:8889/tt/user/delete-batch', '[\"2\",\"3\",\"4\",\"6\",\"7\",\"8\",\"9\",\"10\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (47, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.deleteBatchByIds(Object[])', 16, '用户管理删除用户', '处理成功', '2020-05-31 09:28:29', 'http://127.0.0.1:8889/tt/user/delete-batch', '[\"2\",\"3\",\"4\",\"6\",\"7\",\"8\",\"9\",\"10\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (48, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.deleteBatchByIds(Object[])', 11, '用户管理删除用户', '处理成功', '2020-05-31 09:28:37', 'http://127.0.0.1:8889/tt/user/delete-batch', '[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (49, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.deleteBatchByIds(Object[])', 11, '用户管理删除用户', '处理成功', '2020-05-31 09:28:37', 'http://127.0.0.1:8889/tt/user/delete-batch', '[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (50, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.deleteBatchByIds(Object[])', 5, '用户管理删除用户', '处理成功', '2020-05-31 09:28:45', 'http://127.0.0.1:8889/tt/user/delete-batch', '[\"19\",\"20\",\"21\",\"22\",\"23\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (51, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.deleteBatchByIds(Object[])', 5, '用户管理删除用户', '处理成功', '2020-05-31 09:28:45', 'http://127.0.0.1:8889/tt/user/delete-batch', '[\"19\",\"20\",\"21\",\"22\",\"23\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (52, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 21, '角色管理更新角色', '处理成功', '2020-05-31 09:29:21', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":8,\"role\":\"设备管理员\",\"description\":\"设备管理员\",\"resourceIds\":\"511,512,5112,5121,5122,5123\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (53, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 21, '角色管理更新角色', '处理成功', '2020-05-31 09:29:21', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":8,\"role\":\"设备管理员\",\"description\":\"设备管理员\",\"resourceIds\":\"511,512,5112,5121,5122,5123\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (54, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 09:29:27', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":9,\"role\":\"教师\",\"description\":\"教师\",\"resourceIds\":\"531,532,533\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (55, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 09:29:27', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":9,\"role\":\"教师\",\"description\":\"教师\",\"resourceIds\":\"531,532,533\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (56, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 09:29:32', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":10,\"role\":\"主任\",\"description\":\"主任\",\"resourceIds\":\"59,512,5121,5122,5123,51231\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (57, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 09:29:32', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":10,\"role\":\"主任\",\"description\":\"主任\",\"resourceIds\":\"59,512,5121,5122,5123,51231\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (58, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 09:29:40', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":11,\"role\":\"耗材管理员\",\"description\":\"耗材管理员\",\"resourceIds\":\"521,5211,5212\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (59, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 09:29:40', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":11,\"role\":\"耗材管理员\",\"description\":\"耗材管理员\",\"resourceIds\":\"521,5211,5212\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (60, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.deleteBatchByIds(Object[])', 2, '角色管理删除角色', '处理成功', '2020-05-31 09:29:45', 'http://127.0.0.1:8889/tt/role/delete-batch', '[\"4\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (61, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.deleteBatchByIds(Object[])', 2, '角色管理删除角色', '处理成功', '2020-05-31 09:29:45', 'http://127.0.0.1:8889/tt/role/delete-batch', '[\"4\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (62, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.deleteBatchByIds(Object[])', 2, '角色管理删除角色', '处理成功', '2020-05-31 09:29:48', 'http://127.0.0.1:8889/tt/role/delete-batch', '[\"5\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (63, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.deleteBatchByIds(Object[])', 2, '角色管理删除角色', '处理成功', '2020-05-31 09:29:48', 'http://127.0.0.1:8889/tt/role/delete-batch', '[\"5\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (64, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.deleteBatchByIds(Object[])', 2, '角色管理删除角色', '处理成功', '2020-05-31 09:29:52', 'http://127.0.0.1:8889/tt/role/delete-batch', '[\"6\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (65, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.deleteBatchByIds(Object[])', 2, '角色管理删除角色', '处理成功', '2020-05-31 09:29:52', 'http://127.0.0.1:8889/tt/role/delete-batch', '[\"6\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (66, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 09:29:58', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":12,\"role\":\"工具管理员\",\"description\":\"工具管理员\",\"resourceIds\":\"522,5221,5222\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (67, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 09:29:58', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":12,\"role\":\"工具管理员\",\"description\":\"工具管理员\",\"resourceIds\":\"522,5221,5222\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (68, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 1, '角色管理更新角色', '处理成功', '2020-05-31 09:30:10', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":7,\"role\":\"实训室管理员\",\"description\":\"实训室管理员\",\"resourceIds\":\"59,5111\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (69, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 1, '角色管理更新角色', '处理成功', '2020-05-31 09:30:10', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":7,\"role\":\"实训室管理员\",\"description\":\"实训室管理员\",\"resourceIds\":\"59,5111\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (70, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 9, '用户管理创建用户', '处理成功', '2020-05-31 09:31:16', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":24,\"organizationId\":1,\"username\":\"sxsgly\",\"password\":\"e94e7fbd4c0b5271d20343fe40b9cbf1\",\"salt\":\"2161ff43742ce0c706ee65663886563b\",\"roleIds\":\"7\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"sxsgly2161ff43742ce0c706ee65663886563b\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (71, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 9, '用户管理创建用户', '处理成功', '2020-05-31 09:31:16', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":24,\"organizationId\":1,\"username\":\"sxsgly\",\"password\":\"e94e7fbd4c0b5271d20343fe40b9cbf1\",\"salt\":\"2161ff43742ce0c706ee65663886563b\",\"roleIds\":\"7\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"sxsgly2161ff43742ce0c706ee65663886563b\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (72, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 12, '用户管理创建用户', '处理成功', '2020-05-31 09:31:35', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":25,\"organizationId\":1,\"username\":\"sbgly\",\"password\":\"57e0b8e4551e879cecf4ee8d3166ee3a\",\"salt\":\"0e88111137506c5ab288bd07f8307c33\",\"roleIds\":\"8\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"sbgly0e88111137506c5ab288bd07f8307c33\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (73, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 12, '用户管理创建用户', '处理成功', '2020-05-31 09:31:35', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":25,\"organizationId\":1,\"username\":\"sbgly\",\"password\":\"57e0b8e4551e879cecf4ee8d3166ee3a\",\"salt\":\"0e88111137506c5ab288bd07f8307c33\",\"roleIds\":\"8\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"sbgly0e88111137506c5ab288bd07f8307c33\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (74, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 2, '用户管理创建用户', '处理成功', '2020-05-31 09:31:56', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":26,\"organizationId\":1,\"username\":\"teacher\",\"password\":\"82f4884bae854318b0a103716bace959\",\"salt\":\"bf212bf6e4afdd366921bfd8e2519c16\",\"roleIds\":\"9\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"teacherbf212bf6e4afdd366921bfd8e2519c16\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (75, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 2, '用户管理创建用户', '处理成功', '2020-05-31 09:31:56', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":26,\"organizationId\":1,\"username\":\"teacher\",\"password\":\"82f4884bae854318b0a103716bace959\",\"salt\":\"bf212bf6e4afdd366921bfd8e2519c16\",\"roleIds\":\"9\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"teacherbf212bf6e4afdd366921bfd8e2519c16\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (76, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 3, '用户管理创建用户', '处理成功', '2020-05-31 09:32:40', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":27,\"organizationId\":1,\"username\":\"director\",\"password\":\"843acb3fc35d2288e5fa67bd0f4954d9\",\"salt\":\"faad570955092e996fd1e0ff4f971502\",\"roleIds\":\"10\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"directorfaad570955092e996fd1e0ff4f971502\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (77, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 3, '用户管理创建用户', '处理成功', '2020-05-31 09:32:40', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":27,\"organizationId\":1,\"username\":\"director\",\"password\":\"843acb3fc35d2288e5fa67bd0f4954d9\",\"salt\":\"faad570955092e996fd1e0ff4f971502\",\"roleIds\":\"10\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"directorfaad570955092e996fd1e0ff4f971502\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (78, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.update(User)', 1, '用户管理更新用户', '处理成功', '2020-05-31 09:32:55', 'http://127.0.0.1:8889/tt/user/update', '{\"id\":1,\"organizationId\":1,\"username\":\"admin\",\"password\":null,\"salt\":null,\"roleIds\":\"1,7,8,9,10\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"adminnull\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (79, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.update(User)', 1, '用户管理更新用户', '处理成功', '2020-05-31 09:32:55', 'http://127.0.0.1:8889/tt/user/update', '{\"id\":1,\"organizationId\":1,\"username\":\"admin\",\"password\":null,\"salt\":null,\"roleIds\":\"1,7,8,9,10\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"adminnull\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (80, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.update(User)', 2, '用户管理更新用户', '处理成功', '2020-05-31 09:33:08', 'http://127.0.0.1:8889/tt/user/update', '{\"id\":5,\"organizationId\":3,\"username\":\"guest\",\"password\":null,\"salt\":null,\"roleIds\":\"2\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"guestnull\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (81, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.update(User)', 2, '用户管理更新用户', '处理成功', '2020-05-31 09:33:08', 'http://127.0.0.1:8889/tt/user/update', '{\"id\":5,\"organizationId\":3,\"username\":\"guest\",\"password\":null,\"salt\":null,\"roleIds\":\"2\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"guestnull\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (82, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 9, '角色管理创建角色', '处理成功', '2020-05-31 09:59:15', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":13,\"role\":\"课程管理员\",\"description\":\"课程管理员\",\"resourceIds\":\"53,59,531,532,533,5311,5312,5321,5322,5331\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (83, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 9, '角色管理创建角色', '处理成功', '2020-05-31 09:59:15', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":13,\"role\":\"课程管理员\",\"description\":\"课程管理员\",\"resourceIds\":\"53,59,531,532,533,5311,5312,5321,5322,5331\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (84, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 09:59:41', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":12,\"role\":\"工具管理员\",\"description\":\"工具管理员\",\"resourceIds\":\"59,522,5221,5222\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (85, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 09:59:41', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":12,\"role\":\"工具管理员\",\"description\":\"工具管理员\",\"resourceIds\":\"59,522,5221,5222\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (86, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 09:59:50', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":11,\"role\":\"耗材管理员\",\"description\":\"耗材管理员\",\"resourceIds\":\"59,521,5211,5212\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (87, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 09:59:50', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":11,\"role\":\"耗材管理员\",\"description\":\"耗材管理员\",\"resourceIds\":\"59,521,5211,5212\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (88, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 10:00:18', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":9,\"role\":\"教师\",\"description\":\"教师\",\"resourceIds\":\"59,532,5321,5322\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (89, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 10:00:18', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":9,\"role\":\"教师\",\"description\":\"教师\",\"resourceIds\":\"59,532,5321,5322\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (90, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 10:00:37', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":8,\"role\":\"设备管理员\",\"description\":\"设备管理员\",\"resourceIds\":\"59,511,512,5112,5121,5122,5123\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (91, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 2, '角色管理更新角色', '处理成功', '2020-05-31 10:00:37', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":8,\"role\":\"设备管理员\",\"description\":\"设备管理员\",\"resourceIds\":\"59,511,512,5112,5121,5122,5123\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (92, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 3, '角色管理更新角色', '处理成功', '2020-05-31 10:01:09', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":7,\"role\":\"实训室管理员\",\"description\":\"实训室管理员\",\"resourceIds\":\"59,511,5111,5112\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (93, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.update(Role)', 3, '角色管理更新角色', '处理成功', '2020-05-31 10:01:09', 'http://127.0.0.1:8889/tt/role/update', '{\"id\":7,\"role\":\"实训室管理员\",\"description\":\"实训室管理员\",\"resourceIds\":\"59,511,5111,5112\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (94, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 4, '用户管理创建用户', '处理成功', '2020-05-31 10:01:47', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":28,\"organizationId\":1,\"username\":\"courses\",\"password\":\"1dfa6caeda7bd7b54d02194f1804d338\",\"salt\":\"d4ab7e3c18e020c1074cfbb27f27c2da\",\"roleIds\":\"13\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"coursesd4ab7e3c18e020c1074cfbb27f27c2da\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (95, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 4, '用户管理创建用户', '处理成功', '2020-05-31 10:01:47', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":28,\"organizationId\":1,\"username\":\"courses\",\"password\":\"1dfa6caeda7bd7b54d02194f1804d338\",\"salt\":\"d4ab7e3c18e020c1074cfbb27f27c2da\",\"roleIds\":\"13\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"coursesd4ab7e3c18e020c1074cfbb27f27c2da\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (96, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 4, '用户管理创建用户', '处理成功', '2020-05-31 10:02:18', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":29,\"organizationId\":1,\"username\":\"consumables\",\"password\":\"efb6ec3f85d35f7d15c5dfb2952d77b3\",\"salt\":\"4779049cfa3851a8d3f2345f1fc1ac48\",\"roleIds\":\"11\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"consumables4779049cfa3851a8d3f2345f1fc1ac48\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (97, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 4, '用户管理创建用户', '处理成功', '2020-05-31 10:02:18', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":29,\"organizationId\":1,\"username\":\"consumables\",\"password\":\"efb6ec3f85d35f7d15c5dfb2952d77b3\",\"salt\":\"4779049cfa3851a8d3f2345f1fc1ac48\",\"roleIds\":\"11\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"consumables4779049cfa3851a8d3f2345f1fc1ac48\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (98, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 4, '用户管理创建用户', '处理成功', '2020-05-31 10:02:35', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":30,\"organizationId\":1,\"username\":\"tool\",\"password\":\"2d08c1330635ba6ac3fa443f7d057123\",\"salt\":\"5b36f0dcb71f8b59faf43f9cc94cff70\",\"roleIds\":\"12\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"tool5b36f0dcb71f8b59faf43f9cc94cff70\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (99, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 4, '用户管理创建用户', '处理成功', '2020-05-31 10:02:35', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":30,\"organizationId\":1,\"username\":\"tool\",\"password\":\"2d08c1330635ba6ac3fa443f7d057123\",\"salt\":\"5b36f0dcb71f8b59faf43f9cc94cff70\",\"roleIds\":\"12\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"tool5b36f0dcb71f8b59faf43f9cc94cff70\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (100, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.update(User)', 3, '用户管理更新用户', '处理成功', '2020-05-31 10:02:56', 'http://127.0.0.1:8889/tt/user/update', '{\"id\":1,\"organizationId\":1,\"username\":\"admin\",\"password\":null,\"salt\":null,\"roleIds\":\"1,7,8,9,10,11,12,13\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"adminnull\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (101, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.update(User)', 3, '用户管理更新用户', '处理成功', '2020-05-31 10:02:56', 'http://127.0.0.1:8889/tt/user/update', '{\"id\":1,\"organizationId\":1,\"username\":\"admin\",\"password\":null,\"salt\":null,\"roleIds\":\"1,7,8,9,10,11,12,13\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"adminnull\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');

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
) ENGINE = InnoDB AUTO_INCREMENT = 51232 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES (1, '资源', 'MENU', '#main', 0, '0/', '', 1, '', 0, 0);
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
INSERT INTO `sys_resource` VALUES (513, '设备维修', 'MENU', '#', 51, '0/1/51/', '', 1, '', 3, 0);
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
INSERT INTO `sys_resource` VALUES (5131, '维修申请', 'MENU', '#failureconfirmation', 513, '0/1/51/513/', 'failureconfirmation:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5132, '维修流程', 'BUTTON', '#maintenancerecordresults', 513, '0/1/51/513/', 'maintenancerecordresults:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5133, '维修记录', 'MENU', '#maintenancerecord', 513, '0/1/51/513/', 'maintenancerecord:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (5134, '维修审批', 'BUTTON', '#maintenancerecordresults', 513, '0/1/51/513/', 'directorapproval:*', 1, '', 4, 1);
INSERT INTO `sys_resource` VALUES (5211, '耗材管理', 'MENU', '#consumables', 521, '0/1/52/521/', 'consumables:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5212, '入库', 'BUTTON', '#warehousingrecord', 521, '0/1/52/521/', 'warehousingrecord:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5221, '工具管理', 'MENU', '#tools', 522, '0/1/52/522/', 'tools:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5222, '工具详情', 'BUTTON', '#collectionrecord', 522, '0/1/52/522/', 'collectionrecord:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5311, '课程设计', 'MENU', '#courses', 531, '0/1/53/531/', 'courses:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5312, '课程章节', 'BUTTON', '#chapters', 531, '0/1/53/531/', 'chapters:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5321, '教案设计', 'MENU', '#teachingplan', 532, '0/1/53/532/', 'teachingplan:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5322, '教案编辑', 'BUTTON', ' #teachingplan/editpage', 532, '0/1/53/532/', 'teachingplan:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5323, '教案上传', 'BUTTON', ' #', 532, '0/1/53/532/', 'file:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (5331, '排课管理', 'MENU', '#coursearrangement', 533, '0/1/53/533/', 'coursearrangement:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5332, '排课资产关联', 'BUTTON', '#coursearrangementreasset', 533, '0/1/53/533/', 'coursearrangementreasset:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5333, '排课耗材关联', 'BUTTON', '#coursearrangementreconsumables', 533, '0/1/53/533/', 'coursearrangementreconsumables:*', 1, '', 3, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `resource_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源编号列表',
  `available` tinyint(1) DEFAULT 0 COMMENT '是否有效',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_role_resource_ids`(`resource_ids`(255)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'admin', '超级管理员', '11,21,31,41,46,59,69,70,83,5111,5112,5121,5122,5123,5211,5212,5221,5222,5311,5312,5321,5322,5331,51231', 0);
INSERT INTO `sys_role` VALUES (2, 'guest', '访客', '15,35', 0);
INSERT INTO `sys_role` VALUES (7, '实训室管理员', '实训室管理员', '59,511,5111,5112', 0);
INSERT INTO `sys_role` VALUES (8, '设备管理员', '设备管理员', '59,511,512,5112,5121,5122,5123', 0);
INSERT INTO `sys_role` VALUES (9, '教师', '教师', '59,532,5321,5322', 0);
INSERT INTO `sys_role` VALUES (10, '主任', '主任', '59,512,5121,5122,5123,51231', 0);
INSERT INTO `sys_role` VALUES (11, '耗材管理员', '耗材管理员', '59,521,5211,5212', 0);
INSERT INTO `sys_role` VALUES (12, '工具管理员', '工具管理员', '59,522,5221,5222', 0);
INSERT INTO `sys_role` VALUES (13, '课程管理员', '课程管理员', '53,59,531,532,533,5311,5312,5321,5322,5331', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 1, 'admin', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', '1,7,8,9,10,11,12,13', '1', 0);
INSERT INTO `sys_user` VALUES (5, 3, 'guest', 'fdd97263888fb3767d55ff084751c125', '9f1bdc22981ae8730e89f94d241a73cc', '2', '1', 0);
INSERT INTO `sys_user` VALUES (24, 1, 'sxsgly', 'e94e7fbd4c0b5271d20343fe40b9cbf1', '2161ff43742ce0c706ee65663886563b', '7', '1', 0);
INSERT INTO `sys_user` VALUES (25, 1, 'sbgly', '57e0b8e4551e879cecf4ee8d3166ee3a', '0e88111137506c5ab288bd07f8307c33', '8', '1', 0);
INSERT INTO `sys_user` VALUES (26, 1, 'teacher', '82f4884bae854318b0a103716bace959', 'bf212bf6e4afdd366921bfd8e2519c16', '9', '1', 0);
INSERT INTO `sys_user` VALUES (27, 1, 'director', '843acb3fc35d2288e5fa67bd0f4954d9', 'faad570955092e996fd1e0ff4f971502', '10', '1', 0);
INSERT INTO `sys_user` VALUES (28, 1, 'courses', '1dfa6caeda7bd7b54d02194f1804d338', 'd4ab7e3c18e020c1074cfbb27f27c2da', '13', '1', 0);
INSERT INTO `sys_user` VALUES (29, 1, 'consumables', 'efb6ec3f85d35f7d15c5dfb2952d77b3', '4779049cfa3851a8d3f2345f1fc1ac48', '11', '1', 0);
INSERT INTO `sys_user` VALUES (30, 1, 'tool', '2d08c1330635ba6ac3fa443f7d057123', '5b36f0dcb71f8b59faf43f9cc94cff70', '12', '1', 0);

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
  `room_is_enabled` int(11) DEFAULT NULL COMMENT '是否可用 0  不可用 1可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_asset
-- ----------------------------
INSERT INTO `t_asset` VALUES (1, '1702060002007000104', '1', '教学用机电实验仪器', '丰田皇冠教具车', 352400, '2017-12-12', '1', '丰田皇冠教具车', 'admin', '1', '1', '丰田T-TEP整车实训区', '南校区汽车系', 1, '月', 'inspection_cycle_month', '正常', 'asset_status_normal', '2020-04-24 18:00:00', '2020-04-24 18:00:00', '/file/img/1.png', 1, '丰田T-TEP整车实训区', NULL);
INSERT INTO `t_asset` VALUES (2, 'test', '1', '教学用机电实验仪器', '丰田皇冠教具车', 352400, '2017-12-12', '1', '丰田皇冠教具车', 'admin', '1', '1', '丰田T-TEP整车实训区', '南校区汽车系', 1, '月', 'inspection_cycle_month', '正常', 'asset_status_normal', '2020-04-24 18:00:00', '2020-04-24 18:00:00', '/file/img/1.png', 1, '丰田T-TEP整车实训区', NULL);

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
  `asset_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源类型',
  `asset_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源类型编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_asset_classification
-- ----------------------------
INSERT INTO `t_asset_classification` VALUES (1, 'AC1001', '教学用机电实验仪器', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_device');
INSERT INTO `t_asset_classification` VALUES (2, 'AC1002', '其他教学用机电实验仪器', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_device');
INSERT INTO `t_asset_classification` VALUES (3, 'AC1003', '维修扭矩基础实训设备', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_device');
INSERT INTO `t_asset_classification` VALUES (4, 'AC1004', '故障诊断与检测综合比赛平台', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_device');
INSERT INTO `t_asset_classification` VALUES (5, 'AC1005', '教具车', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_device');
INSERT INTO `t_asset_classification` VALUES (6, 'AC1006', '通讯系统实训模块', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_device');
INSERT INTO `t_asset_classification` VALUES (7, 'AC1007', '仪表实训模块', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_device');
INSERT INTO `t_asset_classification` VALUES (8, 'AC1008', '传动系统实训模块', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_device');
INSERT INTO `t_asset_classification` VALUES (9, 'AC1009', '发动机机油', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_consumables');
INSERT INTO `t_asset_classification` VALUES (10, 'AC1010', '发动机机油滤清器', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_consumables');
INSERT INTO `t_asset_classification` VALUES (11, 'AC1011', '发动机空气滤清器', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_consumables');
INSERT INTO `t_asset_classification` VALUES (12, 'AC1012', '空调滤清器', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_consumables');
INSERT INTO `t_asset_classification` VALUES (13, 'AC1013', '发动机冷却液', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_consumables');
INSERT INTO `t_asset_classification` VALUES (14, 'AC1014', '汽车制动液', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_consumables');
INSERT INTO `t_asset_classification` VALUES (15, 'AC1015', '自动变速器油', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_consumables');
INSERT INTO `t_asset_classification` VALUES (16, 'AC1016', '润滑脂', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_consumables');
INSERT INTO `t_asset_classification` VALUES (17, 'AC1017', '制冷液', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_consumables');
INSERT INTO `t_asset_classification` VALUES (18, 'AC1018', '汽车防护三件套', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_consumables');
INSERT INTO `t_asset_classification` VALUES (19, 'AC1019', '教学用机电实验仪器', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_tool');
INSERT INTO `t_asset_classification` VALUES (20, 'AC1020', '其他教学专用仪器', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_tool');
INSERT INTO `t_asset_classification` VALUES (21, 'AC1021', '通用拆装工具', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_tool');
INSERT INTO `t_asset_classification` VALUES (22, 'AC1022', '抽屉式工具柜', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_tool');
INSERT INTO `t_asset_classification` VALUES (23, 'AC1023', '器械台、柜等器具', '2020-04-29 08:00:00', '2020-04-29 08:00:0', '设备', 'asset_type_tool');

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
  `flow_status_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程状态编码',
  `flow_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程状态',
  `create_year` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建年份',
  `pending_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '待处理人',
  `pending_person_id` int(11) DEFAULT NULL COMMENT '待处理人编号',
  `record_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录编号（自编）',
  `record_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '领用记录名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_collection_record
-- ----------------------------
INSERT INTO `t_collection_record` VALUES (1, 1, '发动机机油', '耗材', 'asset_type_consumables', '2020-03-23 00:00:00', '汽修系', 1, '车身电气系统课程', 1, '李旭', 1, '10', '2020-03-24 00:00:00', '无', '2020-04-22 16:52:00', '2020-04-22 16:52:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `asset_classification_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类编号',
  `asset_classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_consumables
-- ----------------------------
INSERT INTO `t_consumables` VALUES (1, 'CC001', '发动机机油滤清器', '2020-04-22', '科鲁兹LDE', '1', '100', '1', '实训三层器材室', '张春田', 1, '100', '50', '40', '10', '2020-04-22 16:52:00', '2020-04-22 16:52:00', 'AC1010', '发动机机油滤清器');

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
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '排课管理和资产关联编号（系统自动生成）',
  `course_arrangement_id` int(11) DEFAULT NULL COMMENT '排课管理编号',
  `tool_id` int(11) DEFAULT NULL COMMENT '资产编号',
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
-- Table structure for t_course_arrangement_re_tool
-- ----------------------------
DROP TABLE IF EXISTS `t_course_arrangement_re_tool`;
CREATE TABLE `t_course_arrangement_re_tool`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '排课管理和工具关联编号（系统自动生成）',
  `course_arrangement_id` int(11) DEFAULT NULL COMMENT '排课管理编号',
  `asset_id` int(11) DEFAULT NULL COMMENT '工具编号',
  `asset_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产编号',
  `asset_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源名称',
  `asset_classification_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类编号',
  `asset_classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类名称',
  `asset_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产状态',
  `asset_status_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产状态编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_courses
-- ----------------------------
INSERT INTO `t_courses` VALUES (1, '10001', '汽车机械基础', '实训课', '1', '李旭', 1, '2020-04-22', '2020-04-22 16:52:00', '2020-04-22 16:52:00');
INSERT INTO `t_courses` VALUES (2, 'test', 'test', '实训课', 'course_type_practical_training_course', 'admin', 1, NULL, '2020-05-31 09:51:38', '2020-05-31 09:51:38');

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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '故障确认编号',
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_failure_confirmation
-- ----------------------------
INSERT INTO `t_failure_confirmation` VALUES (1, '李四', 1, '实训管理部', 1, 1, '2000元内', '上门维修', '1', 'xx公司', 111, '无', '', NULL, 1, '2019-04-01 22:31', '2019-04-01 22:31');

-- ----------------------------
-- Table structure for t_flow_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_flow_detail`;
CREATE TABLE `t_flow_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流程记录编号',
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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流程节点记录',
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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_flow_node
-- ----------------------------
INSERT INTO `t_flow_node` VALUES (1, '填写设备维修单', 'em_write', '设备维修', 'equipment_maintenance', 1, '填写设备维修单', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (2, '待确认', 'em_confirmed', '设备维修', 'equipment_maintenance', 2, '确认设备故障', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (3, '待审批', 'em_pending_approval', '设备维修', 'equipment_maintenance', 3, '审批设备维修单', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (4, '维修中', 'em_to_be_repaired', '设备维修', 'equipment_maintenance', 4, '填写设备维修结果', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (5, '维修完成', 'em_end', '设备维修', 'equipment_maintenance', 5, '结束', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (6, '填写耗材申请单', 'ccr_write', '耗材申请', 'consumables_collection_record', 1, '填写耗材申请', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (7, '待审批', 'ccr_pending_approval', '耗材申请', 'consumables_collection_record', 2, '待审批', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (8, '待领用', 'ccr_collar_use', '耗材申请', 'consumables_collection_record', 3, '待领用', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (9, '领用完成', 'ccr_end', '耗材申请', 'consumables_collection_record', 4, '结束', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (10, '填写工具申请', 'tcr_write', '工具申请', 'tools_collection_record', 1, '填写工具申请', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (11, '待审批', 'tcr_pending_approval', '工具申请', 'tools_collection_record', 2, '待审批', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (12, '待领用', 'tcr_collar_use', '工具申请', 'tools_collection_record', 3, '待领用', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (13, '待归还', 'tcr_return', '工具申请', 'tools_collection_record', 4, '待归还', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');
INSERT INTO `t_flow_node` VALUES (14, '归还', 'tcr_end', '工具申请', 'tools_collection_record', 4, '结束', '2020-05-10 00:00:00', '2020-05-10 00:00:00', 1, 'admin');

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
  `create_year` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建年份',
  `pending_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '待处理人',
  `pending_person_id` int(11) DEFAULT NULL COMMENT '待处理人编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_maintenance_record
-- ----------------------------
INSERT INTO `t_maintenance_record` VALUES (1, 'MR001', '丰田皇冠教具车维修单', 1, '1702060002007000104', '丰田皇冠教具车', '1', '教学用机电实验仪器', 'em_confirmed', '待确认', '1000', '张三', 1, '汽车工程系', 2, '1', '丰田T-TEP整车实训区', '2020-05-11 00:00:00', '无法开机', '问题截图', '/img/1.png', '2020-05-11 00:00:00', '2020-05-11 00:00:00', '2020', 'admin', 1);

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
  `asset_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设备状态',
  `asset_status_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设备状态编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_maintenance_record_results
-- ----------------------------
INSERT INTO `t_maintenance_record_results` VALUES (1, '李四', 1, '实训管理部', 1, 1, '2000', '无', 1, '2019-04-03 22:31', '2019-04-03 22:31', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_pub_code
-- ----------------------------
INSERT INTO `t_pub_code` VALUES (1, 'inspection_cycle_day', '日', 'inspection_cycle', 'ic', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '巡检周期 日');
INSERT INTO `t_pub_code` VALUES (2, 'inspection_cycle_week', '周', 'inspection_cycle', 'ic', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '巡检周期 周');
INSERT INTO `t_pub_code` VALUES (3, 'inspection_cycle_month', '月', 'inspection_cycle', 'ic', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '巡检周期 月');
INSERT INTO `t_pub_code` VALUES (4, 'inspection_cycle_year', '年', 'inspection_cycle', 'ic', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '巡检周期 年');
INSERT INTO `t_pub_code` VALUES (5, 'asset_status_abnormal', '异常', 'asset_status', 'as', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '资产状态 正常');
INSERT INTO `t_pub_code` VALUES (6, 'asset_status_normal', '正常', 'asset_status', 'as', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '资产状态 正常');
INSERT INTO `t_pub_code` VALUES (7, 'asset_status_repair', '维修', 'asset_status', 'as', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '资产状态 维修');
INSERT INTO `t_pub_code` VALUES (8, 'asset_status_scrapped', '报废', 'asset_status', 'as', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '资产状态 报废');
INSERT INTO `t_pub_code` VALUES (9, 'asset_type_device', '设备', 'asset_type', 'at', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '领用,入库中的资产类型');
INSERT INTO `t_pub_code` VALUES (10, 'asset_type_consumables', '耗材', 'asset_type', 'at', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '领用,入库中的资产类型');
INSERT INTO `t_pub_code` VALUES (11, 'asset_type_tool', '工具', 'asset_type', 'at', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '领用,入库中的资产类型');
INSERT INTO `t_pub_code` VALUES (12, 'course_type_practical_training_course', '实训课', 'course_type', 'ct', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '课程类型 实训课');
INSERT INTO `t_pub_code` VALUES (13, 'course_type_theory_Course', '理论课', 'course_type', 'ct', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '课程类型 理论课');
INSERT INTO `t_pub_code` VALUES (14, 'maintenance_type_door_to_door', '上门维修', 'maintenance_type', 'mt', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '维修类型 上门维修');
INSERT INTO `t_pub_code` VALUES (15, 'maintenance_type_send_to', '送修', 'maintenance_type', 'mt', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '维修类型 送修');
INSERT INTO `t_pub_code` VALUES (16, 'statistics_type_summary', '汇总统计', 'statistics_type', 'st', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '汇总统计');
INSERT INTO `t_pub_code` VALUES (17, 'statistics_type_device_classification', '设备分类统计', 'statistics_type', 'st', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '设备分类统计');
INSERT INTO `t_pub_code` VALUES (18, 'statistics_type_consumables_classification', '耗材分类统计', 'statistics_type', 'st', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '耗材分类统计');
INSERT INTO `t_pub_code` VALUES (19, 'statistics_type_tool_classification', '工具分类统计', 'statistics_type', 'st', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '工具分类统计');
INSERT INTO `t_pub_code` VALUES (20, 'training_room_total_num', '实训室数', 'statistics_type_summary', 'sts', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '汇总统计具体分类');
INSERT INTO `t_pub_code` VALUES (21, 'devices_total_num', '设备数', 'statistics_type_summary', 'sts', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '汇总统计具体分类');
INSERT INTO `t_pub_code` VALUES (22, 'repairing_devices_total_num', '维修设备数', 'statistics_type_summary', 'sts', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '汇总统计具体分类');
INSERT INTO `t_pub_code` VALUES (23, 'consumables_total_num', '耗材数', 'statistics_type_summary', 'sts', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '汇总统计具体分类');

-- ----------------------------
-- Table structure for t_specification_type
-- ----------------------------
DROP TABLE IF EXISTS `t_specification_type`;
CREATE TABLE `t_specification_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格型号编号（自动生成）',
  `type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '规格型号编码',
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '规格型号名称',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `asset_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源类型',
  `asset_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源类型编码',
  `asset_classification_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类编号',
  `asset_classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_specification_type
-- ----------------------------
INSERT INTO `t_specification_type` VALUES (1, 'AT1001', '华育天智HYTZ-JB105', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '设备', 'asset_type_device', 'AC1003', '维修扭矩基础实训设备');
INSERT INTO `t_specification_type` VALUES (2, 'AT1002', '中宝怡和ZBMT01', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '设备', 'asset_type_device', 'AC1004', '故障诊断与检测综合比赛平台');
INSERT INTO `t_specification_type` VALUES (3, 'AT1003', '威驰轿车（自动）', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '设备', 'asset_type_device', 'AC1005', '教具车');
INSERT INTO `t_specification_type` VALUES (4, 'AT1004', '科鲁兹LDE', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '耗材', 'asset_type_consumables', 'AC1010', '发动机机油滤清器');
INSERT INTO `t_specification_type` VALUES (5, 'AT1005', 'DEX-COOL', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '耗材', 'asset_type_consumables', 'AC1013', '发动机冷却液');
INSERT INTO `t_specification_type` VALUES (6, 'AT1006', 'DOT5', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '耗材', 'asset_type_consumables', 'AC1014', '汽车制动液');
INSERT INTO `t_specification_type` VALUES (7, 'AT1007', 'DEXRON-VI', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '耗材', 'asset_type_consumables', 'AC1015', '自动变速器油');
INSERT INTO `t_specification_type` VALUES (8, 'AT1008', '抽屉式工具柜', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '工具', 'asset_type_tool', 'AC1022', '抽屉式工具柜');
INSERT INTO `t_specification_type` VALUES (9, 'AT1009', 'YT-5530-YT-5542.YT-55442.YT55444.YT55452', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '工具', 'asset_type_tool', 'AC1021', '通用拆装工具');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学生名称',
  `student_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `student_age` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '年龄',
  `student_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `student_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `student_id_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证',
  `student_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '照片',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `sys_id` int(11) DEFAULT NULL COMMENT '系编号',
  `sys_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '系名称',
  `class_id` int(11) DEFAULT NULL COMMENT '班级编号',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '班级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_summary_statistics_date
-- ----------------------------
DROP TABLE IF EXISTS `t_summary_statistics_date`;
CREATE TABLE `t_summary_statistics_date`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '汇总统计（系统自动生成）',
  `statistics_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计名称',
  `statistics_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计类型',
  `statistics_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计结果',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `statistics_date` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计日期 2020-05-23',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `statistics_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计分类',
  `statistics_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计分类编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_summary_statistics_date
-- ----------------------------
INSERT INTO `t_summary_statistics_date` VALUES (1, '实训室数', 'training_room_total_num', '20', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (2, '设备数', 'devices_total_num', '2000', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (3, '维修设备数', 'repairing_devices_total_num', '2', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (4, '耗材数', 'consumables_total_num', '2000', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (5, '教具车', 'AC1005', '4', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '设备分类统计', 'statistics_type_device_classification');
INSERT INTO `t_summary_statistics_date` VALUES (6, '发动机机油', 'AC1009', '32', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '耗材分类统计', 'statistics_type_consumables_classification');
INSERT INTO `t_summary_statistics_date` VALUES (7, '通用拆装工具', 'AC1021', '5', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '工具分类统计', 'statistics_type_tool_classification');

-- ----------------------------
-- Table structure for t_summary_statistics_month
-- ----------------------------
DROP TABLE IF EXISTS `t_summary_statistics_month`;
CREATE TABLE `t_summary_statistics_month`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '汇总统计（系统自动生成）',
  `statistics_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计名称',
  `statistics_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计类型',
  `statistics_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计结果',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `statistics_month` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计月份 2020-05',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `statistics_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计分类',
  `statistics_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计分类编号',
  `statistics_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计年份2020',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_summary_statistics_month
-- ----------------------------
INSERT INTO `t_summary_statistics_month` VALUES (1, '实训室数', 'training_room_total_num', '20', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (2, '设备数', 'devices_total_num', '2000', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (3, '维修设备数', 'repairing_devices_total_num', '2', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (4, '耗材数', 'consumables_total_num', '2000', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (5, '教具车', 'AC1005', '4', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '设备分类统计', 'statistics_type_device_classification', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (6, '发动机机油', 'AC1009', '32', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '耗材分类统计', 'statistics_type_consumables_classification', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (7, '通用拆装工具', 'AC1021', '5', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '工具分类统计', 'statistics_type_tool_classification', '2020');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_warehousing_record
-- ----------------------------
INSERT INTO `t_warehousing_record` VALUES (1, 1, '发动机机油', '耗材', 'asset_type_consumables', '2020-03-23 00:00:00', '100', '200', '1', '实训三层器材室', '李旭', 1, '无', '2020-03-24 00:00:00', '2020-03-24 00:00:00');
INSERT INTO `t_warehousing_record` VALUES (2, 1, '发动机机油', '耗材', 'asset_type_consumables', '2020-03-23 00:00:00', '100', '10', '1', '田T-TEP整车实训区', '李旭', 1, '无', '2020-05-31 14:46:35', '2020-05-31 14:46:35');

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
