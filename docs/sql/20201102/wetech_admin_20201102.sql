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

 Date: 02/11/2020 17:28:48
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
  `args` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '入参',
  `return_val` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '返回值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 294 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `sys_log` VALUES (102, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.DirectorApprovalController.create(DirectorApproval)', 70, '设备维修主任审批创建', '处理成功', '2020-06-14 09:33:27', 'http://127.0.0.1:8889/tt/directorapproval/create', '{\"id\":2,\"approver\":\"admin\",\"approverId\":1,\"approvalDepartment\":\"北京交通运输职业学院\",\"approvalDepartmentId\":1,\"passOrNot\":1,\"approvalComments\":\"12312412421\",\"recordId\":1,\"createTime\":\"2020-06-14 09:33:27\",\"updateTime\":\"2020-06-14 09:33:27\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (103, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.DirectorApprovalController.create(DirectorApproval)', 70, '设备维修主任审批创建', '处理成功', '2020-06-14 09:33:27', 'http://127.0.0.1:8889/tt/directorapproval/create', '{\"id\":2,\"approver\":\"admin\",\"approverId\":1,\"approvalDepartment\":\"北京交通运输职业学院\",\"approvalDepartmentId\":1,\"passOrNot\":1,\"approvalComments\":\"12312412421\",\"recordId\":1,\"createTime\":\"2020-06-14 09:33:27\",\"updateTime\":\"2020-06-14 09:33:27\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (104, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.deleteBatchByIds(Object[])', 8, '排课管理排课删除', '处理成功', '2020-06-14 09:42:33', 'http://127.0.0.1:8889/tt/coursearrangement/delete-batch', '[\"1\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (105, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.deleteBatchByIds(Object[])', 8, '排课管理排课删除', '处理成功', '2020-06-14 09:42:33', 'http://127.0.0.1:8889/tt/coursearrangement/delete-batch', '[\"1\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (106, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TrainingRoomController.deleteBatchByIds(Object[])', 61, '实训室管理实训室删除', '处理成功', '2020-06-14 18:09:49', 'http://127.0.0.1:8889/tt/trainingroom/delete-batch', '[\"1\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (107, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TrainingRoomController.deleteBatchByIds(Object[])', 61, '实训室管理实训室删除', '处理成功', '2020-06-14 18:09:49', 'http://127.0.0.1:8889/tt/trainingroom/delete-batch', '[\"1\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (108, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetController.deleteBatchByIds(Object[])', 17, '资产管理资产删除', '处理成功', '2020-06-14 18:10:54', 'http://127.0.0.1:8889/tt/asset/delete-batch', '[\"1\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (109, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetController.deleteBatchByIds(Object[])', 17, '资产管理资产删除', '处理成功', '2020-06-14 18:10:54', 'http://127.0.0.1:8889/tt/asset/delete-batch', '[\"1\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (110, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionPlanYearController.deleteBatchByIds(Object[])', 25, '设备管理年度巡检计划统计删除', '处理成功', '2020-06-14 18:12:52', 'http://127.0.0.1:8889/tt/inspectionplanyear/delete-batch', '[\"1\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (111, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionPlanYearController.deleteBatchByIds(Object[])', 25, '设备管理年度巡检计划统计删除', '处理成功', '2020-06-14 18:12:52', 'http://127.0.0.1:8889/tt/inspectionplanyear/delete-batch', '[\"1\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (112, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CoursesController.deleteBatchByIds(Object[])', 9, '课程管理课程删除', '处理成功', '2020-06-15 08:43:58', 'http://localhost:8889/tt/courses/delete-batch', '[\"2\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (113, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CoursesController.deleteBatchByIds(Object[])', 9, '课程管理课程删除', '处理成功', '2020-06-15 08:43:58', 'http://localhost:8889/tt/courses/delete-batch', '[\"2\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (114, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CoursesController.deleteBatchByIds(Object[])', 1, '课程管理课程删除', '处理成功', '2020-06-15 08:44:01', 'http://localhost:8889/tt/courses/delete-batch', '[\"1\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (115, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CoursesController.deleteBatchByIds(Object[])', 1, '课程管理课程删除', '处理成功', '2020-06-15 08:44:01', 'http://localhost:8889/tt/courses/delete-batch', '[\"1\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (116, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TeachingPlanController.create(TeachingPlan)', 4, '教案管理教案创建', '处理成功', '2020-06-15 08:46:27', 'http://localhost:8889/tt/teachingplan/create', '{\"id\":2,\"teachingPlanName\":\"测试课程\",\"estimatedTimeDuration\":\"30\",\"teachingPlanDescription\":\"测试课程\",\"documentName\":\"\",\"documentPath\":\"\",\"videoName\":\"\",\"videoPath\":\"\",\"chapterId\":6,\"createTime\":\"2020-06-15 08:46:28\",\"updateTime\":\"2020-06-15 08:46:28\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (117, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TeachingPlanController.create(TeachingPlan)', 4, '教案管理教案创建', '处理成功', '2020-06-15 08:46:27', 'http://localhost:8889/tt/teachingplan/create', '{\"id\":2,\"teachingPlanName\":\"测试课程\",\"estimatedTimeDuration\":\"30\",\"teachingPlanDescription\":\"测试课程\",\"documentName\":\"\",\"documentPath\":\"\",\"videoName\":\"\",\"videoPath\":\"\",\"chapterId\":6,\"createTime\":\"2020-06-15 08:46:28\",\"updateTime\":\"2020-06-15 08:46:28\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (118, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TeachingPlanController.create(TeachingPlan)', 4, '教案管理教案创建', '处理成功', '2020-06-20 10:56:36', 'http://localhost:8889/tt/teachingplan/create', '{\"id\":3,\"teachingPlanName\":\"测试课程\",\"estimatedTimeDuration\":\"30\",\"teachingPlanDescription\":\"特殊\",\"documentName\":\"\",\"documentPath\":\"\",\"videoName\":\"\",\"videoPath\":\"\",\"chapterId\":9,\"createTime\":\"2020-06-20 10:56:36\",\"updateTime\":\"2020-06-20 10:56:36\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (119, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionPlanController.deleteBatchByIds(Object[])', 9, '设备管理巡检计划删除', '处理成功', '2020-06-26 10:19:22', 'http://127.0.0.1:8889/tt/inspectionplan/delete-batch', '[\"4\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (120, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionPlanController.create(InspectionPlan)', 3, '设备管理巡检计划创建', '处理成功', '2020-06-26 10:19:30', 'http://127.0.0.1:8889/tt/inspectionplan/create', '{\"cellStyleMap\":{},\"id\":5,\"roomId\":3,\"roomName\":\"吉利实训室\",\"inspector\":\"admin\",\"inspectorId\":1,\"normalDevicesInInspection\":null,\"numberNormalDevices\":null,\"numberAbnormalDevices\":null,\"numberReportedRepairEquipment\":null,\"inspectionTime\":\"2020-06-26\",\"inspectionStatus\":null,\"planYearId\":3,\"createTime\":\"2020-06-26 10:19:30\",\"updateTime\":\"2020-06-26 10:19:30\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (121, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionPlanController.create(InspectionPlan)', 10, '设备管理巡检计划创建', '处理成功', '2020-06-26 10:46:10', 'http://127.0.0.1:8889/tt/inspectionplan/create', '{\"cellStyleMap\":{},\"id\":6,\"roomId\":3,\"roomName\":\"吉利实训室\",\"inspector\":\"admin\",\"inspectorId\":1,\"normalDevicesInInspection\":null,\"numberNormalDevices\":null,\"numberAbnormalDevices\":null,\"numberReportedRepairEquipment\":null,\"inspectionTime\":\"2020-06-27\",\"inspectionStatus\":null,\"planYearId\":3,\"createTime\":\"2020-06-26 10:46:09\",\"updateTime\":\"2020-06-26 10:46:09\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (122, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.WarehousingRecordController.create(WarehousingRecord)', 12, '入库记录创建', '处理成功', '2020-06-27 10:47:25', 'http://127.0.0.1:8889/tt/warehousingrecord/create', '{\"cellStyleMap\":{},\"id\":4,\"assetId\":2,\"assetName\":\"耗材测试\",\"assetType\":\"耗材\",\"assetTypeCode\":\"asset_type_consumables\",\"warehousingTime\":\"2020-06-27\",\"unitPrice\":\"100\",\"warehousingQuantity\":\"10\",\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"manager\":\"admin\",\"managerId\":1,\"remark\":null,\"createTime\":\"2020-06-27 10:47:25\",\"updateTime\":\"2020-06-27 10:47:25\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (123, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.WarehousingRecordController.create(WarehousingRecord)', 79, '入库记录创建', '处理成功', '2020-06-27 10:54:15', 'http://127.0.0.1:8889/tt/warehousingrecord/create', '{\"cellStyleMap\":{},\"id\":5,\"assetId\":2,\"assetName\":\"耗材测试\",\"assetType\":\"耗材\",\"assetTypeCode\":\"asset_type_consumables\",\"warehousingTime\":\"2020-06-27\",\"unitPrice\":\"100\",\"warehousingQuantity\":\"1\",\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"manager\":\"admin\",\"managerId\":1,\"remark\":null,\"createTime\":\"2020-06-27 10:54:15\",\"updateTime\":\"2020-06-27 10:54:15\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (124, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.WarehousingRecordController.create(WarehousingRecord)', 54, '入库记录创建', '处理成功', '2020-06-27 10:54:59', 'http://127.0.0.1:8889/tt/warehousingrecord/create', '{\"cellStyleMap\":{},\"id\":6,\"assetId\":1,\"assetName\":\"拆装工具\",\"assetType\":\"工具\",\"assetTypeCode\":\"asset_type_tool\",\"warehousingTime\":\"2020-06-27\",\"unitPrice\":\"100\",\"warehousingQuantity\":\"10\",\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"manager\":\"admin\",\"managerId\":1,\"remark\":null,\"createTime\":\"2020-06-27 10:54:58\",\"updateTime\":\"2020-06-27 10:54:58\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (125, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TrainingRoomController.deleteBatchByIds(Object[])', 7, '实训室管理实训室删除', '处理成功', '2020-07-20 15:15:34', 'http://127.0.0.1:8889/tt/trainingroom/delete-batch', '[\"2\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (126, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TrainingRoomController.deleteBatchByIds(Object[])', 1, '实训室管理实训室删除', '处理成功', '2020-07-20 15:15:37', 'http://127.0.0.1:8889/tt/trainingroom/delete-batch', '[\"3\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (127, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetController.deleteBatchByIds(Object[])', 14, '资产管理资产删除', '处理成功', '2020-07-20 15:15:42', 'http://127.0.0.1:8889/tt/asset/delete-batch', '[\"5\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (128, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetController.deleteBatchByIds(Object[])', 12, '资产管理资产删除', '处理成功', '2020-07-20 15:15:44', 'http://127.0.0.1:8889/tt/asset/delete-batch', '[\"6\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (129, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetController.deleteBatchByIds(Object[])', 5, '资产管理资产删除', '处理成功', '2020-07-20 15:15:46', 'http://127.0.0.1:8889/tt/asset/delete-batch', '[\"7\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (130, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TrainingRoomController.create(TrainingRoom)', 5, '实训室管理实训室创建', '处理成功', '2020-07-20 15:25:35', 'http://127.0.0.1:8889/tt/trainingroom/create', '{\"cellStyleMap\":{},\"id\":4,\"roomCode\":null,\"roomName\":\"丰田实训室\",\"belongSys\":\"汽车工程系\",\"roomPosition\":\"丰田T-TEP整车实训区\",\"roomAdmin\":\"admin\",\"createDate\":null,\"equipNum\":null,\"isEnabled\":1,\"updateTime\":\"2020-07-20 15:25:35\",\"belongSysId\":2,\"roomPositionCode\":1,\"roomAdminId\":1,\"createTime\":\"2020-07-20 15:25:35\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (131, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetController.create(Asset)', 10, '资产管理资产创建', '处理成功', '2020-07-20 15:26:14', 'http://127.0.0.1:8889/tt/asset/create', '{\"cellStyleMap\":{},\"id\":8,\"assetCode\":\"FTJJC001\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"assetName\":\"丰田教具车\",\"assetValue\":20000,\"bookkeepingDate\":\"2020-07-20\",\"assetTypeCode\":null,\"assetType\":\"丰田教具车001\",\"assetUser\":\"admin\",\"assetUserId\":1,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"useDepartment\":\"汽车工程系\",\"useDepartmentId\":2,\"inspectionCycle\":null,\"inspectionCycleCode\":null,\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"createTime\":\"2020-07-20 15:26:14\",\"updateTime\":\"2020-07-20 15:26:14\",\"assetImg\":null,\"roomId\":4,\"roomName\":\"丰田实训室\",\"roomIsEnabled\":1}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (132, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetController.create(Asset)', 15, '资产管理资产创建', '处理成功', '2020-07-20 15:26:53', 'http://127.0.0.1:8889/tt/asset/create', '{\"cellStyleMap\":{},\"id\":9,\"assetCode\":\"FTJJC002\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"assetName\":\"丰田教具车002\",\"assetValue\":30000,\"bookkeepingDate\":\"2020-07-20\",\"assetTypeCode\":null,\"assetType\":\"丰田教具车\",\"assetUser\":\"\",\"assetUserId\":null,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"useDepartment\":\"汽车工程系\",\"useDepartmentId\":2,\"inspectionCycle\":null,\"inspectionCycleCode\":null,\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"createTime\":\"2020-07-20 15:26:52\",\"updateTime\":\"2020-07-20 15:26:52\",\"assetImg\":null,\"roomId\":4,\"roomName\":\"丰田实训室\",\"roomIsEnabled\":1}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (133, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetController.create(Asset)', 11, '资产管理资产创建', '处理成功', '2020-07-20 15:31:58', 'http://127.0.0.1:8889/tt/asset/create', '{\"cellStyleMap\":{},\"id\":10,\"assetCode\":\"FTJJC003\",\"assetClassificationCode\":\"1\",\"assetClassification\":\"教学用机电实验仪器\",\"assetName\":\"丰田教具车\",\"assetValue\":30000,\"bookkeepingDate\":\"2020-07-20\",\"assetTypeCode\":null,\"assetType\":\"丰田教具车003\",\"assetUser\":\"admin\",\"assetUserId\":1,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"useDepartment\":\"汽车工程系\",\"useDepartmentId\":2,\"inspectionCycle\":null,\"inspectionCycleCode\":null,\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"createTime\":\"2020-07-20 15:31:58\",\"updateTime\":\"2020-07-20 15:31:58\",\"assetImg\":null,\"roomId\":4,\"roomName\":\"丰田实训室\",\"roomIsEnabled\":1}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (134, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionPlanYearController.create(InspectionPlanYear)', 40, '设备管理年度巡检计划统计创建', '处理成功', '2020-07-20 15:33:24', 'http://127.0.0.1:8889/tt/inspectionplanyear/create', '{\"cellStyleMap\":{},\"id\":4,\"roomId\":4,\"roomName\":\"丰田实训室\",\"personInCharge\":\"admin\",\"personInChargeId\":1,\"inspectionCycle\":\"日\",\"inspectionCycleCode\":\"inspection_cycle_day\",\"inspectionTimesYear\":24,\"inspectionedTimesYear\":null,\"numberAbnormalDevices\":null,\"numberReportedRepairEquipment\":null,\"numberRepairedEquipmen\":null,\"createTime\":\"2020-07-20 15:33:24\",\"updateTime\":\"2020-07-20 15:33:24\",\"createYear\":\"2020\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (135, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionPlanController.create(InspectionPlan)', 4, '设备管理巡检计划创建', '处理成功', '2020-07-20 15:33:33', 'http://127.0.0.1:8889/tt/inspectionplan/create', '{\"cellStyleMap\":{},\"id\":7,\"roomId\":4,\"roomName\":\"丰田实训室\",\"inspector\":\"admin\",\"inspectorId\":1,\"normalDevicesInInspection\":null,\"numberNormalDevices\":null,\"numberAbnormalDevices\":null,\"numberReportedRepairEquipment\":null,\"inspectionTime\":\"2020-07-20\",\"inspectionStatus\":null,\"planYearId\":4,\"createTime\":\"2020-07-20 15:33:32\",\"updateTime\":\"2020-07-20 15:33:32\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (136, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionRecordController.createByList(ListVo)', 15755, '设备管理巡检记录创建', '处理成功', '2020-07-20 15:34:19', 'http://127.0.0.1:8889/tt/inspectionrecord/createbylist', '{\"objList\":[{\"cellStyleMap\":{},\"id\":2,\"assetId\":8,\"assetCode\":\"FTJJC001\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"assetName\":\"丰田教具车\",\"assetStatus\":\"异常\",\"assetStatusCode\":\"asset_status_abnormal\",\"isRepair\":1,\"statusDescription\":\"无法启动\",\"planId\":7,\"repairOrderNo\":null,\"createTime\":\"2020-07-20 15:34:18\",\"updateTime\":\"2020-07-20 15:34:18\"},{\"cellStyleMap\":{},\"id\":3,\"assetId\":10,\"assetCode\":\"FTJJC003\",\"assetClassificationCode\":\"1\",\"assetClassification\":\"教学用机电实验仪器\",\"assetName\":\"丰田教具车\",\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"isRepair\":0,\"statusDescription\":\"\",\"planId\":7,\"repairOrderNo\":null,\"createTime\":\"2020-07-20 15:34:18\",\"updateTime\":\"2020-07-20 15:34:18\"}]}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (137, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionRecordController.createByList(ListVo)', 34, '设备管理巡检记录创建', '处理成功', '2020-07-20 15:36:21', 'http://127.0.0.1:8889/tt/inspectionrecord/createbylist', '{\"objList\":[{\"cellStyleMap\":{},\"id\":2,\"assetId\":8,\"assetCode\":\"FTJJC001\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"assetName\":\"丰田教具车\",\"assetStatus\":\"异常\",\"assetStatusCode\":\"asset_status_abnormal\",\"isRepair\":1,\"statusDescription\":\"无法启动\",\"planId\":7,\"repairOrderNo\":null,\"createTime\":\"2020-07-20 15:34:18\",\"updateTime\":\"2020-07-20 15:36:21\"},{\"cellStyleMap\":{},\"id\":3,\"assetId\":10,\"assetCode\":\"FTJJC003\",\"assetClassificationCode\":\"1\",\"assetClassification\":\"教学用机电实验仪器\",\"assetName\":\"丰田教具车\",\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"isRepair\":0,\"statusDescription\":\"\",\"planId\":7,\"repairOrderNo\":null,\"createTime\":\"2020-07-20 15:34:18\",\"updateTime\":\"2020-07-20 15:36:21\"}]}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (138, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionRecordController.update(InspectionRecord)', 4, '设备管理巡检记录更新', '处理成功', '2020-07-20 15:36:39', 'http://127.0.0.1:8889/tt/inspectionrecord/update', '{\"cellStyleMap\":{},\"id\":2,\"assetId\":null,\"assetCode\":null,\"assetClassificationCode\":null,\"assetClassification\":null,\"assetName\":null,\"assetStatus\":null,\"assetStatusCode\":null,\"isRepair\":null,\"statusDescription\":null,\"planId\":null,\"repairOrderNo\":\"MR202007204\",\"createTime\":null,\"updateTime\":\"2020-07-20 15:36:39\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (139, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.FailureConfirmationController.create(FailureConfirmation)', 22, '设备维修故障确认创建', '处理成功', '2020-07-20 15:38:14', 'http://127.0.0.1:8889/tt/failureconfirmation/create', '{\"id\":3,\"confirmingPerson\":\"admin\",\"confirmingPersonId\":1,\"confirmationDepartment\":\"北京交通运输职业学院\",\"confirmationDepartmentId\":1,\"repairRequired\":1,\"maintenanceCostEstimate\":\"2000\",\"maintenanceType\":\"上门维修\",\"maintenanceTypeCode\":\"maintenance_type_door_to_door\",\"maintenanceCooperationUnit\":\"xxxx\",\"maintenanceCooperationUnitId\":null,\"remark\":\"111\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"recordId\":3,\"createTime\":\"2020-07-20 15:38:13\",\"updateTime\":\"2020-07-20 15:38:13\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (140, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.FlowDetailController.create(FlowDetail)', 15, '设备维修流程记录创建', '处理成功', '2020-07-20 15:38:14', 'http://127.0.0.1:8889/tt/flowdetail/create', '{\"cellStyleMap\":{},\"id\":12,\"personName\":\"admin\",\"personId\":1,\"roleName\":null,\"roleId\":null,\"processingContent\":\"确认设备故障\",\"processingDate\":null,\"createTime\":\"2020-07-20 15:38:13\",\"updateTime\":\"2020-07-20 15:38:13\",\"flowId\":3,\"flowType\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (141, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.update(MaintenanceRecord)', 62, '设备维修设备维修记录更新', '处理成功', '2020-07-20 15:38:14', 'http://127.0.0.1:8889/tt/maintenancerecord/update', '{\"cellStyleMap\":{},\"id\":3,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetCode\":null,\"assetName\":null,\"assetClassificationCode\":null,\"assetClassification\":null,\"flowStatusCode\":\"em_pending_approval\",\"flowStatus\":\"待审批\",\"maintenanceCosts\":null,\"applicant\":null,\"applicantId\":null,\"applicantDepartment\":null,\"applicantDepartmentId\":null,\"positionCode\":null,\"positionName\":null,\"failureTime\":null,\"faultDescription\":null,\"attachmentName\":null,\"attachmentPath\":null,\"createTime\":null,\"updateTime\":\"2020-07-20 15:38:13\",\"createYear\":null,\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":null,\"flowTypeCode\":null,\"createMonth\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (142, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.DirectorApprovalController.create(DirectorApproval)', 6, '设备维修主任审批创建', '处理成功', '2020-07-20 15:38:21', 'http://127.0.0.1:8889/tt/directorapproval/create', '{\"id\":3,\"approver\":\"admin\",\"approverId\":1,\"approvalDepartment\":\"北京交通运输职业学院\",\"approvalDepartmentId\":1,\"passOrNot\":1,\"approvalComments\":\"1111\",\"recordId\":3,\"createTime\":\"2020-07-20 15:38:20\",\"updateTime\":\"2020-07-20 15:38:20\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (143, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.FlowDetailController.create(FlowDetail)', 3, '设备维修流程记录创建', '处理成功', '2020-07-20 15:38:21', 'http://127.0.0.1:8889/tt/flowdetail/create', '{\"cellStyleMap\":{},\"id\":13,\"personName\":\"admin\",\"personId\":1,\"roleName\":null,\"roleId\":null,\"processingContent\":\"审批设备维修单\",\"processingDate\":null,\"createTime\":\"2020-07-20 15:38:20\",\"updateTime\":\"2020-07-20 15:38:20\",\"flowId\":3,\"flowType\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (144, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.update(MaintenanceRecord)', 27, '设备维修设备维修记录更新', '处理成功', '2020-07-20 15:38:21', 'http://127.0.0.1:8889/tt/maintenancerecord/update', '{\"cellStyleMap\":{},\"id\":3,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetCode\":null,\"assetName\":null,\"assetClassificationCode\":null,\"assetClassification\":null,\"flowStatusCode\":\"em_to_be_repaired\",\"flowStatus\":\"维修中\",\"maintenanceCosts\":null,\"applicant\":null,\"applicantId\":null,\"applicantDepartment\":null,\"applicantDepartmentId\":null,\"positionCode\":null,\"positionName\":null,\"failureTime\":null,\"faultDescription\":null,\"attachmentName\":null,\"attachmentPath\":null,\"createTime\":null,\"updateTime\":\"2020-07-20 15:38:20\",\"createYear\":null,\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":null,\"flowTypeCode\":null,\"createMonth\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (145, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordResultsController.create(MaintenanceRecordResults)', 22, '设备维修设备维修记录结果创建', '处理成功', '2020-07-20 15:38:59', 'http://127.0.0.1:8889/tt/maintenancerecordresults/create', '{\"id\":3,\"recordPerson\":\"admin\",\"recordPersonId\":1,\"recordDepartment\":\"北京交通运输职业学院\",\"recordDepartmentId\":1,\"isRepaired\":1,\"maintenanceCosts\":\"2000\",\"remark\":\"111\",\"recordId\":3,\"createTime\":\"2020-07-20 15:38:59\",\"updateTime\":\"2020-07-20 15:38:59\",\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (146, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.FlowDetailController.create(FlowDetail)', 130, '设备维修流程记录创建', '处理成功', '2020-07-20 15:38:59', 'http://127.0.0.1:8889/tt/flowdetail/create', '{\"cellStyleMap\":{},\"id\":14,\"personName\":\"admin\",\"personId\":1,\"roleName\":null,\"roleId\":null,\"processingContent\":\"填写设备维修结果\",\"processingDate\":null,\"createTime\":\"2020-07-20 15:38:59\",\"updateTime\":\"2020-07-20 15:38:59\",\"flowId\":3,\"flowType\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (147, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.update(MaintenanceRecord)', 2, '设备维修设备维修记录更新', '处理成功', '2020-07-20 15:39:00', 'http://127.0.0.1:8889/tt/maintenancerecord/update', '{\"cellStyleMap\":{},\"id\":3,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetCode\":null,\"assetName\":null,\"assetClassificationCode\":null,\"assetClassification\":null,\"flowStatusCode\":\"em_end\",\"flowStatus\":\"维修完成\",\"maintenanceCosts\":\"2000\",\"applicant\":null,\"applicantId\":null,\"applicantDepartment\":null,\"applicantDepartmentId\":null,\"positionCode\":null,\"positionName\":null,\"failureTime\":null,\"faultDescription\":null,\"attachmentName\":null,\"attachmentPath\":null,\"createTime\":null,\"updateTime\":\"2020-07-20 15:38:59\",\"createYear\":null,\"pendingPerson\":\"\",\"pendingPersonId\":0,\"flowTypeName\":null,\"flowTypeCode\":null,\"createMonth\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (148, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.ConsumablesController.create(Consumables)', 3, '耗材管理耗材创建', '处理成功', '2020-07-20 15:40:08', 'http://127.0.0.1:8889/tt/consumables/create', '{\"cellStyleMap\":{},\"id\":3,\"consumablesCode\":null,\"consumablesName\":\"闪亮发动机机油\",\"bookkeepingDate\":\"2020-07-20\",\"assetClassificationCode\":\"9\",\"assetClassification\":\"发动机机油\",\"specificationType\":\"SL001\",\"specificationTypeCode\":null,\"unitPrice\":null,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"manager\":\"admin\",\"managerId\":1,\"cumulativeReceiptQuantity\":\"0\",\"usedQuantity\":\"0\",\"totalExisting\":\"0\",\"cumulativeCollectedQuantity\":\"0\",\"remainingQuantity\":\"0\",\"createTime\":\"2020-07-20 15:40:08\",\"updateTime\":\"2020-07-20 15:40:08\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (149, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.WarehousingRecordController.create(WarehousingRecord)', 25, '入库记录创建', '处理成功', '2020-07-20 15:40:15', 'http://127.0.0.1:8889/tt/warehousingrecord/create', '{\"cellStyleMap\":{},\"id\":7,\"assetId\":3,\"assetName\":\"闪亮发动机机油\",\"assetType\":\"耗材\",\"assetTypeCode\":\"asset_type_consumables\",\"warehousingTime\":\"2020-07-20\",\"unitPrice\":\"200\",\"warehousingQuantity\":\"20\",\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"manager\":\"admin\",\"managerId\":1,\"remark\":null,\"createTime\":\"2020-07-20 15:40:15\",\"updateTime\":\"2020-07-20 15:40:15\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (150, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.ToolsController.create(Tools)', 40, '工具管理工具创建', '处理成功', '2020-07-20 15:51:50', 'http://127.0.0.1:8889/tt/tools/create', '{\"cellStyleMap\":{},\"id\":2,\"assetCode\":\"GJ0001\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetName\":\"拆装工具\",\"assetValue\":null,\"bookkeepingDate\":null,\"specificationTypeCode\":null,\"specificationType\":\"通用拆装工具\",\"assetUser\":\"admin\",\"assetUserId\":1,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"useDepartment\":\"汽车工程系\",\"useDepartmentId\":2,\"cumulativeReceiptQuantity\":\"0\",\"totalExisting\":\"0\",\"cumulativeCollectedQuantity\":\"0\",\"remainingQuantity\":\"0\",\"repairingQuantity\":\"0\",\"toBeScrappedQuantity\":\"0\",\"createTime\":\"2020-07-20 15:51:49\",\"updateTime\":\"2020-07-20 15:51:49\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (151, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.WarehousingRecordController.create(WarehousingRecord)', 17, '入库记录创建', '处理成功', '2020-07-20 15:51:58', 'http://127.0.0.1:8889/tt/warehousingrecord/create', '{\"cellStyleMap\":{},\"id\":8,\"assetId\":2,\"assetName\":\"拆装工具\",\"assetType\":\"工具\",\"assetTypeCode\":\"asset_type_tool\",\"warehousingTime\":\"2020-07-20\",\"unitPrice\":\"300\",\"warehousingQuantity\":\"20\",\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"manager\":\"admin\",\"managerId\":1,\"remark\":null,\"createTime\":\"2020-07-20 15:51:58\",\"updateTime\":\"2020-07-20 15:51:58\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (152, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.create(MaintenanceRecord)', 37, '设备维修设备维修记录创建', '处理成功', '2020-07-20 15:52:26', 'http://127.0.0.1:8889/tt/maintenancerecord/create', '{\"cellStyleMap\":{},\"id\":5,\"recordId\":\"MR202007205\",\"recordName\":\"工具维修\",\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"flowStatusCode\":\"em_confirmed\",\"flowStatus\":\"待确认\",\"maintenanceCosts\":null,\"applicant\":\"admin\",\"applicantId\":1,\"applicantDepartment\":\"北京交通运输职业学院\",\"applicantDepartmentId\":1,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"failureTime\":\"2020-07-20\",\"faultDescription\":\"仪器故障\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"createTime\":\"2020-07-20 15:52:26\",\"updateTime\":\"2020-07-20 15:52:26\",\"createYear\":\"2020\",\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":\"工具仪器维修\",\"flowTypeCode\":\"tools_maintenance\",\"createMonth\":\"07\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{\"cellStyleMap\":{},\"id\":5,\"recordId\":\"MR202007205\",\"recordName\":\"工具维修\",\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"flowStatusCode\":\"em_confirmed\",\"flowStatus\":\"待确认\",\"maintenanceCosts\":null,\"applicant\":\"admin\",\"applicantId\":1,\"applicantDepartment\":\"北京交通运输职业学院\",\"applicantDepartmentId\":1,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"failureTime\":\"2020-07-20\",\"faultDescription\":\"仪器故障\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"createTime\":\"2020-07-20 15:52:26\",\"updateTime\":\"2020-07-20 15:52:26\",\"createYear\":\"2020\",\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":\"工具仪器维修\",\"flowTypeCode\":\"tools_maintenance\",\"createMonth\":\"07\"},\"extra\":null}');
INSERT INTO `sys_log` VALUES (153, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.FailureConfirmationController.create(FailureConfirmation)', 6, '设备维修故障确认创建', '处理成功', '2020-07-20 15:53:03', 'http://127.0.0.1:8889/tt/failureconfirmation/create', '{\"id\":4,\"confirmingPerson\":\"admin\",\"confirmingPersonId\":1,\"confirmationDepartment\":\"北京交通运输职业学院\",\"confirmationDepartmentId\":1,\"repairRequired\":1,\"maintenanceCostEstimate\":\"200\",\"maintenanceType\":\"上门维修\",\"maintenanceTypeCode\":\"maintenance_type_door_to_door\",\"maintenanceCooperationUnit\":\"xxx\",\"maintenanceCooperationUnitId\":null,\"remark\":\"111\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"recordId\":5,\"createTime\":\"2020-07-20 15:53:03\",\"updateTime\":\"2020-07-20 15:53:03\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (154, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.FlowDetailController.create(FlowDetail)', 10, '设备维修流程记录创建', '处理成功', '2020-07-20 15:53:04', 'http://127.0.0.1:8889/tt/flowdetail/create', '{\"cellStyleMap\":{},\"id\":16,\"personName\":\"admin\",\"personId\":1,\"roleName\":null,\"roleId\":null,\"processingContent\":\"确认设备故障\",\"processingDate\":null,\"createTime\":\"2020-07-20 15:53:03\",\"updateTime\":\"2020-07-20 15:53:03\",\"flowId\":5,\"flowType\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (155, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.update(MaintenanceRecord)', 6, '设备维修设备维修记录更新', '处理成功', '2020-07-20 15:53:04', 'http://127.0.0.1:8889/tt/maintenancerecord/update', '{\"cellStyleMap\":{},\"id\":5,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetCode\":null,\"assetName\":null,\"assetClassificationCode\":null,\"assetClassification\":null,\"flowStatusCode\":\"em_pending_approval\",\"flowStatus\":\"待审批\",\"maintenanceCosts\":null,\"applicant\":null,\"applicantId\":null,\"applicantDepartment\":null,\"applicantDepartmentId\":null,\"positionCode\":null,\"positionName\":null,\"failureTime\":null,\"faultDescription\":null,\"attachmentName\":null,\"attachmentPath\":null,\"createTime\":null,\"updateTime\":\"2020-07-20 15:53:03\",\"createYear\":null,\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":null,\"flowTypeCode\":null,\"createMonth\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (156, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.DirectorApprovalController.create(DirectorApproval)', 8, '设备维修主任审批创建', '处理成功', '2020-07-20 15:53:20', 'http://127.0.0.1:8889/tt/directorapproval/create', '{\"id\":4,\"approver\":\"admin\",\"approverId\":1,\"approvalDepartment\":\"北京交通运输职业学院\",\"approvalDepartmentId\":1,\"passOrNot\":1,\"approvalComments\":\"111\",\"recordId\":5,\"createTime\":\"2020-07-20 15:53:20\",\"updateTime\":\"2020-07-20 15:53:20\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (157, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.FlowDetailController.create(FlowDetail)', 2, '设备维修流程记录创建', '处理成功', '2020-07-20 15:53:20', 'http://127.0.0.1:8889/tt/flowdetail/create', '{\"cellStyleMap\":{},\"id\":17,\"personName\":\"admin\",\"personId\":1,\"roleName\":null,\"roleId\":null,\"processingContent\":\"审批设备维修单\",\"processingDate\":null,\"createTime\":\"2020-07-20 15:53:20\",\"updateTime\":\"2020-07-20 15:53:20\",\"flowId\":5,\"flowType\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (158, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.update(MaintenanceRecord)', 2, '设备维修设备维修记录更新', '处理成功', '2020-07-20 15:53:21', 'http://127.0.0.1:8889/tt/maintenancerecord/update', '{\"cellStyleMap\":{},\"id\":5,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetCode\":null,\"assetName\":null,\"assetClassificationCode\":null,\"assetClassification\":null,\"flowStatusCode\":\"em_to_be_repaired\",\"flowStatus\":\"维修中\",\"maintenanceCosts\":null,\"applicant\":null,\"applicantId\":null,\"applicantDepartment\":null,\"applicantDepartmentId\":null,\"positionCode\":null,\"positionName\":null,\"failureTime\":null,\"faultDescription\":null,\"attachmentName\":null,\"attachmentPath\":null,\"createTime\":null,\"updateTime\":\"2020-07-20 15:53:20\",\"createYear\":null,\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":null,\"flowTypeCode\":null,\"createMonth\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (159, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordResultsController.create(MaintenanceRecordResults)', 8, '设备维修设备维修记录结果创建', '处理成功', '2020-07-20 15:53:26', 'http://127.0.0.1:8889/tt/maintenancerecordresults/create', '{\"id\":4,\"recordPerson\":\"admin\",\"recordPersonId\":1,\"recordDepartment\":\"北京交通运输职业学院\",\"recordDepartmentId\":1,\"isRepaired\":1,\"maintenanceCosts\":\"100\",\"remark\":\"11\",\"recordId\":5,\"createTime\":\"2020-07-20 15:53:26\",\"updateTime\":\"2020-07-20 15:53:26\",\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (160, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.FlowDetailController.create(FlowDetail)', 2, '设备维修流程记录创建', '处理成功', '2020-07-20 15:53:26', 'http://127.0.0.1:8889/tt/flowdetail/create', '{\"cellStyleMap\":{},\"id\":18,\"personName\":\"admin\",\"personId\":1,\"roleName\":null,\"roleId\":null,\"processingContent\":\"填写设备维修结果\",\"processingDate\":null,\"createTime\":\"2020-07-20 15:53:26\",\"updateTime\":\"2020-07-20 15:53:26\",\"flowId\":5,\"flowType\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (161, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.update(MaintenanceRecord)', 1, '设备维修设备维修记录更新', '处理成功', '2020-07-20 15:53:26', 'http://127.0.0.1:8889/tt/maintenancerecord/update', '{\"cellStyleMap\":{},\"id\":5,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetCode\":null,\"assetName\":null,\"assetClassificationCode\":null,\"assetClassification\":null,\"flowStatusCode\":\"em_end\",\"flowStatus\":\"维修完成\",\"maintenanceCosts\":\"100\",\"applicant\":null,\"applicantId\":null,\"applicantDepartment\":null,\"applicantDepartmentId\":null,\"positionCode\":null,\"positionName\":null,\"failureTime\":null,\"faultDescription\":null,\"attachmentName\":null,\"attachmentPath\":null,\"createTime\":null,\"updateTime\":\"2020-07-20 15:53:26\",\"createYear\":null,\"pendingPerson\":\"\",\"pendingPersonId\":0,\"flowTypeName\":null,\"flowTypeCode\":null,\"createMonth\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (162, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CoursesController.create(Courses)', 8, '课程管理课程创建', '处理成功', '2020-07-20 15:54:06', 'http://127.0.0.1:8889/tt/courses/create', '{\"id\":5,\"courseCode\":\"FTKC001\",\"courseName\":\"丰田汽车培训课\",\"courseType\":\"实训课\",\"courseTypeCode\":\"course_type_practical_training_course\",\"courseDirector\":\"admin\",\"courseDirectorId\":1,\"createDate\":null,\"createTime\":\"2020-07-20 15:54:05\",\"updateTime\":\"2020-07-20 15:54:05\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (163, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.ChaptersController.create(Chapters)', 26, '章节管理章节创建', '处理成功', '2020-07-20 15:54:31', 'http://127.0.0.1:8889/tt/chapters/create', '{\"cellStyleMap\":{},\"id\":12,\"chapterName\":\"第一章 汽车结构\",\"chapterSort\":\"1\",\"chapterLevel\":null,\"trainingRooms\":null,\"trainingRoomIds\":null,\"teachingPlan\":null,\"teachingPlanId\":null,\"devicesRequired\":null,\"deviceIdsRequired\":null,\"consumablesRequired\":null,\"consumablesIdsRequired\":null,\"leaf\":false,\"courseId\":5,\"parentId\":11,\"createTime\":\"2020-07-20 15:54:31\",\"updateTime\":\"2020-07-20 15:54:31\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (164, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.ChaptersController.create(Chapters)', 3, '章节管理章节创建', '处理成功', '2020-07-20 15:54:46', 'http://127.0.0.1:8889/tt/chapters/create', '{\"cellStyleMap\":{},\"id\":13,\"chapterName\":\"第一节 发动机\",\"chapterSort\":\"1\",\"chapterLevel\":null,\"trainingRooms\":null,\"trainingRoomIds\":null,\"teachingPlan\":null,\"teachingPlanId\":null,\"devicesRequired\":null,\"deviceIdsRequired\":null,\"consumablesRequired\":null,\"consumablesIdsRequired\":null,\"leaf\":true,\"courseId\":5,\"parentId\":12,\"createTime\":\"2020-07-20 15:54:45\",\"updateTime\":\"2020-07-20 15:54:45\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (165, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CoursesReTrainingRoomController.create(CoursesReTrainingRoom)', 5, '课程关联实训室创建', '处理成功', '2020-07-20 15:55:54', 'http://127.0.0.1:8889/tt/coursesretrainingroom/create', '{\"id\":1,\"roomId\":4,\"roomCode\":null,\"roomName\":\"丰田实训室\",\"belongSysId\":2,\"belongSys\":\"汽车工程系\",\"roomPositionCode\":1,\"roomPosition\":\"丰田T-TEP整车实训区\",\"roomAdminId\":1,\"roomAdmin\":\"admin\",\"courseId\":5,\"createTime\":\"2020-07-20 15:55:54\",\"updateTime\":\"2020-07-20 15:55:54\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (166, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TeachingPlanController.create(TeachingPlan)', 8, '教案管理教案创建', '处理成功', '2020-07-20 15:56:58', 'http://127.0.0.1:8889/tt/teachingplan/create', '{\"id\":4,\"teachingPlanName\":\"第一节发动机\",\"estimatedTimeDuration\":\"30\",\"teachingPlanDescription\":\"第一节发动机\",\"documentName\":null,\"documentPath\":null,\"videoName\":null,\"videoPath\":null,\"chapterId\":13,\"createTime\":\"2020-07-20 15:56:57\",\"updateTime\":\"2020-07-20 15:56:57\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (167, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TeachingPlanReFileController.create(TeachingPlanReFile)', 3, '教案关联文件创建', '处理成功', '2020-07-20 15:57:39', 'http://127.0.0.1:8889/tt/teachingplanrefile/create', '{\"id\":1,\"fileName\":\"需要的资料\",\"filePath\":\"D:/result_dir/files/20200720/0794288e5ac7441c8558dfa407306642.txt\",\"techingPlanId\":4,\"createTime\":\"2020-07-20 15:57:38\",\"updateTime\":\"2020-07-20 15:57:38\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (168, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.create(CourseArrangement)', 12, '排课管理排课创建', '处理成功', '2020-07-20 16:03:10', 'http://127.0.0.1:8889/tt/coursearrangement/create', '{\"cellStyleMap\":{},\"id\":5,\"weekId\":1,\"weekName\":\"2020年 第19周 (5月4日-5月10日)\",\"sectionName\":\"1-2\",\"courseName\":\"丰田汽车培训课\",\"courseId\":5,\"className\":\"15汽运01\",\"classId\":\"5\",\"numberOfPeople\":0,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"admin\",\"regionalTeacherId\":1,\"assistantTeacher\":\"admin\",\"assistantTeacherId\":1,\"trainingRoomName\":\"丰田实训室\",\"trainingRoomId\":1,\"teachingPlanName\":\"第一节发动机\",\"teachingPlanId\":4,\"trainingContent\":\"111\",\"numberOfDevices\":0,\"numberOfConsumables\":0,\"createTime\":\"2020-07-20 16:03:09\",\"updateTime\":\"2020-07-20 16:03:09\",\"numberOfTools\":0,\"isLock\":null,\"courseDate\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (169, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.create(CourseArrangementReTool)', 2, '排课管理和工具关联创建', '工具不足', '2020-07-20 16:03:20', 'http://127.0.0.1:8889/tt/coursearrangementretool/create', '{\"id\":null,\"courseArrangementId\":5,\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetStatus\":null,\"assetStatusCode\":null,\"createTime\":\"2020-07-20 16:03:20\",\"updateTime\":\"2020-07-20 16:03:20\",\"numberOfApplications\":22}', '{\"success\":false,\"code\":\"101\",\"msg\":\"工具不足\",\"data\":null,\"extra\":null}');
INSERT INTO `sys_log` VALUES (170, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.create(CourseArrangementReTool)', 30, '排课管理和工具关联创建', '处理成功', '2020-07-20 16:03:26', 'http://127.0.0.1:8889/tt/coursearrangementretool/create', '{\"id\":3,\"courseArrangementId\":5,\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetStatus\":null,\"assetStatusCode\":null,\"createTime\":\"2020-07-20 16:03:26\",\"updateTime\":\"2020-07-20 16:03:26\",\"numberOfApplications\":2}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (171, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.deleteBatchByIds(Object[])', 4, '排课管理和工具关联删除', NULL, '2020-07-20 16:04:47', 'http://127.0.0.1:8889/tt/coursearrangementretool/delete-batch', '[\"3\"]', 'ClassCastException: java.lang.String cannot be cast to java.lang.Integer');
INSERT INTO `sys_log` VALUES (172, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.deleteBatchByIds(Object[])', 0, '排课管理和工具关联删除', NULL, '2020-07-20 16:05:36', 'http://127.0.0.1:8889/tt/coursearrangementretool/delete-batch', '[\"3\"]', 'ClassCastException: java.lang.String cannot be cast to java.lang.Integer');
INSERT INTO `sys_log` VALUES (173, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.create(CourseArrangementReTool)', 13232, '排课管理和工具关联创建', '处理成功', '2020-07-20 16:10:52', 'http://127.0.0.1:8889/tt/coursearrangementretool/create', '{\"id\":4,\"courseArrangementId\":5,\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetStatus\":null,\"assetStatusCode\":null,\"createTime\":\"2020-07-20 16:10:38\",\"updateTime\":\"2020-07-20 16:10:38\",\"numberOfApplications\":2}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (174, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.deleteBatchByIds(Object[])', 33688, '排课管理和工具关联删除', NULL, '2020-07-20 16:12:27', 'http://127.0.0.1:8889/tt/coursearrangementretool/delete-batch', '[\"4\"]', 'ClassCastException: java.lang.String cannot be cast to java.lang.Integer');
INSERT INTO `sys_log` VALUES (175, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.create(CourseArrangementReTool)', 5967, '排课管理和工具关联创建', '处理成功', '2020-07-20 16:16:03', 'http://127.0.0.1:8889/tt/coursearrangementretool/create', '{\"id\":5,\"courseArrangementId\":5,\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetStatus\":null,\"assetStatusCode\":null,\"createTime\":\"2020-07-20 16:15:57\",\"updateTime\":\"2020-07-20 16:15:57\",\"numberOfApplications\":2}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (176, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.deleteBatchByIds(Object[])', 10657, '排课管理和工具关联删除', '处理成功', '2020-07-20 16:19:35', 'http://127.0.0.1:8889/tt/coursearrangementretool/delete-batch', '[\"5\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (177, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.create(CourseArrangementReTool)', 27, '排课管理和工具关联创建', '处理成功', '2020-07-20 16:27:12', 'http://127.0.0.1:8889/tt/coursearrangementretool/create', '{\"id\":6,\"courseArrangementId\":5,\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetStatus\":null,\"assetStatusCode\":null,\"createTime\":\"2020-07-20 16:27:11\",\"updateTime\":\"2020-07-20 16:27:11\",\"numberOfApplications\":2}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (178, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.deleteBatchByIds(Object[])', 11, '排课管理和工具关联删除', '处理成功', '2020-07-20 16:27:32', 'http://127.0.0.1:8889/tt/coursearrangementretool/delete-batch', '[\"6\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (179, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReConsumablesController.create(CourseArrangementReConsumables)', 55, '排课管理和耗材关联创建', '处理成功', '2020-07-20 16:30:51', 'http://127.0.0.1:8889/tt/coursearrangementreconsumables/create', '{\"id\":5,\"courseArrangementId\":5,\"consumablesId\":3,\"consumablesCode\":null,\"consumablesName\":\"闪亮发动机机油\",\"specificationType\":\"SL001\",\"specificationTypeCode\":null,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"numberOfApplications\":2,\"createTime\":\"2020-07-20 16:30:51\",\"updateTime\":\"2020-07-20 16:30:51\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (180, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReConsumablesController.deleteBatchByIds(Object[])', 34, '排课管理和耗材关联删除', '处理成功', '2020-07-20 16:31:11', 'http://127.0.0.1:8889/tt/coursearrangementreconsumables/delete-batch', '[\"5\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (181, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.create(CourseArrangementReTool)', 26, '排课管理和工具关联创建', '处理成功', '2020-07-20 16:31:30', 'http://127.0.0.1:8889/tt/coursearrangementretool/create', '{\"id\":7,\"courseArrangementId\":5,\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetStatus\":null,\"assetStatusCode\":null,\"createTime\":\"2020-07-20 16:31:30\",\"updateTime\":\"2020-07-20 16:31:30\",\"numberOfApplications\":2}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (182, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReConsumablesController.create(CourseArrangementReConsumables)', 29, '排课管理和耗材关联创建', '处理成功', '2020-07-20 16:32:43', 'http://127.0.0.1:8889/tt/coursearrangementreconsumables/create', '{\"id\":6,\"courseArrangementId\":5,\"consumablesId\":3,\"consumablesCode\":null,\"consumablesName\":\"闪亮发动机机油\",\"specificationType\":\"SL001\",\"specificationTypeCode\":null,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"numberOfApplications\":2,\"createTime\":\"2020-07-20 16:32:42\",\"updateTime\":\"2020-07-20 16:32:42\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (183, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.StudentController.create(Student)', 3, '学生管理学生创建', '处理成功', '2020-07-20 16:41:14', 'http://127.0.0.1:8889/tt/student/create', '{\"cellStyleMap\":{},\"id\":1,\"studentName\":\"Jim\",\"studentSex\":\"1\",\"studentAge\":\"18\",\"studentPhone\":\"123123\",\"studentEmail\":\"123123\",\"studentIdCard\":\"1231313\",\"studentImg\":null,\"createTime\":\"2020-07-20 16:41:14\",\"updateTime\":\"2020-07-20 16:41:14\",\"sysId\":2,\"sysName\":\"汽车工程系\",\"classId\":5,\"className\":\"15汽运01\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (184, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.StudentController.create(Student)', 2, '学生管理学生创建', '处理成功', '2020-07-20 16:41:26', 'http://127.0.0.1:8889/tt/student/create', '{\"cellStyleMap\":{},\"id\":2,\"studentName\":\"Lucy\",\"studentSex\":\"0\",\"studentAge\":\"123\",\"studentPhone\":\"123123\",\"studentEmail\":\"12312312\",\"studentIdCard\":\"1231231\",\"studentImg\":null,\"createTime\":\"2020-07-20 16:41:26\",\"updateTime\":\"2020-07-20 16:41:26\",\"sysId\":2,\"sysName\":\"汽车工程系\",\"classId\":5,\"className\":\"15汽运01\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (185, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.create(CourseArrangement)', 11, '排课管理排课创建', '处理成功', '2020-07-20 16:50:43', 'http://127.0.0.1:8889/tt/coursearrangement/create', '{\"cellStyleMap\":{},\"id\":6,\"weekId\":1,\"weekName\":\"2020年 第19周 (5月4日-5月10日)\",\"sectionName\":\"1-1\",\"courseName\":\"丰田汽车培训课\",\"courseId\":5,\"className\":\"16汽运01\",\"classId\":\"6\",\"numberOfPeople\":0,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"teacher\",\"regionalTeacherId\":26,\"assistantTeacher\":\"teacher\",\"assistantTeacherId\":26,\"trainingRoomName\":\"丰田实训室\",\"trainingRoomId\":1,\"teachingPlanName\":\"第一节发动机\",\"teachingPlanId\":4,\"trainingContent\":\"123\",\"numberOfDevices\":0,\"numberOfConsumables\":0,\"createTime\":\"2020-07-20 16:50:42\",\"updateTime\":\"2020-07-20 16:50:42\",\"numberOfTools\":0,\"isLock\":null,\"courseDate\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (186, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.create(CourseArrangement)', 27, '排课管理排课创建', '处理成功', '2020-07-20 16:51:58', 'http://127.0.0.1:8889/tt/coursearrangement/create', '{\"cellStyleMap\":{},\"id\":7,\"weekId\":1,\"weekName\":\"2020年 第19周 (5月4日-5月10日)\",\"sectionName\":\"1-5\",\"courseName\":\"丰田汽车培训课\",\"courseId\":5,\"className\":\"15汽运01\",\"classId\":\"5\",\"numberOfPeople\":2,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"admin\",\"regionalTeacherId\":1,\"assistantTeacher\":\"teacher\",\"assistantTeacherId\":26,\"trainingRoomName\":\"丰田实训室\",\"trainingRoomId\":4,\"teachingPlanName\":\"第一节发动机\",\"teachingPlanId\":4,\"trainingContent\":\"123\",\"numberOfDevices\":0,\"numberOfConsumables\":0,\"createTime\":\"2020-07-20 16:51:58\",\"updateTime\":\"2020-07-20 16:51:58\",\"numberOfTools\":0,\"isLock\":null,\"courseDate\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (187, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.deleteBatchByIds(Object[])', 4, '排课管理排课删除', '处理成功', '2020-07-20 17:21:38', 'http://127.0.0.1:8889/tt/coursearrangement/delete-batch', '[\"6\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (188, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.deleteBatchByIds(Object[])', 19, '排课管理排课删除', '处理成功', '2020-07-20 17:21:40', 'http://127.0.0.1:8889/tt/coursearrangement/delete-batch', '[\"7\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (189, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetClassificationController.create(AssetClassification)', 9, '资产分类管理资产分类创建', '处理成功', '2020-07-20 17:22:48', 'http://127.0.0.1:8889/tt/assetclassification/create', '{\"cellStyleMap\":{},\"id\":24,\"classificationCode\":\"111\",\"classificationName\":\"ceshi \",\"createTime\":\"2020-07-20 17:22:48\",\"updateTime\":\"2020-07-20 17:22:48\",\"assetType\":\"\",\"assetTypeCode\":\"asset_type_device\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (190, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetClassificationController.deleteBatchByIds(Object[])', 2, '资产分类管理资产分类删除', '处理成功', '2020-07-20 17:22:57', 'http://127.0.0.1:8889/tt/assetclassification/delete-batch', '[\"24\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (191, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.PositionController.create(Position)', 7, '位置信息管理位置信息创建', '处理成功', '2020-07-20 17:23:05', 'http://127.0.0.1:8889/tt/position/create', '{\"cellStyleMap\":{},\"id\":7,\"positionCode\":\"112312\",\"positionName\":\"1231231\",\"createTime\":\"2020-07-20 17:23:05\",\"updateTime\":\"2020-07-20 17:23:05\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (192, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.PositionController.deleteBatchByIds(Object[])', 1, '位置信息管理位置信息删除', '处理成功', '2020-07-20 17:23:10', 'http://127.0.0.1:8889/tt/position/delete-batch', '[\"7\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (193, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReConsumablesController.deleteBatchByIds(Object[])', 68, '排课管理和耗材关联删除', '处理成功', '2020-07-21 10:21:17', 'http://127.0.0.1:8889/tt/coursearrangementreconsumables/delete-batch', '[\"6\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (194, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.deleteBatchByIds(Object[])', 27, '排课管理和工具关联删除', '处理成功', '2020-07-21 10:21:23', 'http://127.0.0.1:8889/tt/coursearrangementretool/delete-batch', '[\"7\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (195, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.deleteBatchByIds(Object[])', 2, '排课管理排课删除', '处理成功', '2020-07-21 10:21:27', 'http://127.0.0.1:8889/tt/coursearrangement/delete-batch', '[\"5\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (196, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.create(CourseArrangement)', 7, '排课管理排课创建', '处理成功', '2020-07-21 10:21:45', 'http://127.0.0.1:8889/tt/coursearrangement/create', '{\"cellStyleMap\":{},\"id\":6,\"weekId\":1,\"weekName\":\"2020年 第19周 (5月4日-5月10日)\",\"sectionName\":\"2-4\",\"courseName\":\"丰田汽车培训课\",\"courseId\":5,\"className\":\"15汽运01\",\"classId\":\"5\",\"numberOfPeople\":2,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"admin\",\"regionalTeacherId\":1,\"assistantTeacher\":\"admin\",\"assistantTeacherId\":1,\"trainingRoomName\":\"丰田实训室\",\"trainingRoomId\":4,\"teachingPlanName\":\"第一节发动机\",\"teachingPlanId\":4,\"trainingContent\":\"\",\"numberOfDevices\":0,\"numberOfConsumables\":0,\"createTime\":\"2020-07-21 10:21:43\",\"updateTime\":\"2020-07-21 10:21:43\",\"numberOfTools\":0,\"isLock\":null,\"courseDate\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (197, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReAssetController.create(CourseArrangementReAsset)', 90, '排课管理和设备关联创建', NULL, '2020-07-21 10:21:52', 'http://127.0.0.1:8889/tt/coursearrangementreasset/create', '{\"id\":null,\"courseArrangementId\":6,\"assetId\":8,\"assetCode\":null,\"assetName\":\"丰田教具车\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"createTime\":\"2020-07-21 10:21:50\",\"updateTime\":\"2020-07-21 10:21:50\"}', 'BadSqlGrammarException: \r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'asset_id\' in \'field list\'\r\n### The error may involve tech.wetech.admin.modules.training.mapper.CourseArrangementReAssetMapper.insertSelective-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO t_course_arrangement_re_asset  ( id,course_arrangement_id,asset_id,asset_name,asset_classification_code,asset_classification,asset_status,asset_status_code,create_time,update_Time ) VALUES( ?,?,?,?,?,?,?,?,?,? )\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'asset_id\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'asset_id\' in \'field list\'');
INSERT INTO `sys_log` VALUES (198, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReAssetController.create(CourseArrangementReAsset)', 3, '排课管理和设备关联创建', NULL, '2020-07-21 10:21:57', 'http://127.0.0.1:8889/tt/coursearrangementreasset/create', '{\"id\":null,\"courseArrangementId\":6,\"assetId\":8,\"assetCode\":null,\"assetName\":\"丰田教具车\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"createTime\":\"2020-07-21 10:21:55\",\"updateTime\":\"2020-07-21 10:21:55\"}', 'BadSqlGrammarException: \r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'asset_id\' in \'field list\'\r\n### The error may involve tech.wetech.admin.modules.training.mapper.CourseArrangementReAssetMapper.insertSelective-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO t_course_arrangement_re_asset  ( id,course_arrangement_id,asset_id,asset_name,asset_classification_code,asset_classification,asset_status,asset_status_code,create_time,update_Time ) VALUES( ?,?,?,?,?,?,?,?,?,? )\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'asset_id\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'asset_id\' in \'field list\'');
INSERT INTO `sys_log` VALUES (199, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReAssetController.create(CourseArrangementReAsset)', 2, '排课管理和设备关联创建', NULL, '2020-07-21 10:24:27', 'http://127.0.0.1:8889/tt/coursearrangementreasset/create', '{\"id\":null,\"courseArrangementId\":6,\"assetId\":8,\"assetCode\":null,\"assetName\":\"丰田教具车\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"createTime\":\"2020-07-21 10:24:25\",\"updateTime\":\"2020-07-21 10:24:25\"}', 'BadSqlGrammarException: \r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'asset_id\' in \'field list\'\r\n### The error may involve tech.wetech.admin.modules.training.mapper.CourseArrangementReAssetMapper.insertSelective-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO t_course_arrangement_re_asset  ( id,course_arrangement_id,asset_id,asset_name,asset_classification_code,asset_classification,asset_status,asset_status_code,create_time,update_Time ) VALUES( ?,?,?,?,?,?,?,?,?,? )\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'asset_id\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'asset_id\' in \'field list\'');
INSERT INTO `sys_log` VALUES (200, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReAssetController.create(CourseArrangementReAsset)', 3, '排课管理和设备关联创建', '处理成功', '2020-07-21 10:26:44', 'http://127.0.0.1:8889/tt/coursearrangementreasset/create', '{\"id\":1,\"courseArrangementId\":6,\"assetId\":8,\"assetCode\":null,\"assetName\":\"丰田教具车\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"createTime\":\"2020-07-21 10:26:42\",\"updateTime\":\"2020-07-21 10:26:42\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (201, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReConsumablesController.create(CourseArrangementReConsumables)', 37, '排课管理和耗材关联创建', '处理成功', '2020-07-21 10:27:06', 'http://127.0.0.1:8889/tt/coursearrangementreconsumables/create', '{\"id\":7,\"courseArrangementId\":6,\"consumablesId\":3,\"consumablesCode\":null,\"consumablesName\":\"闪亮发动机机油\",\"specificationType\":\"SL001\",\"specificationTypeCode\":null,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"numberOfApplications\":2,\"createTime\":\"2020-07-21 10:27:04\",\"updateTime\":\"2020-07-21 10:27:04\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (202, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.create(CourseArrangementReTool)', 37, '排课管理和工具关联创建', '处理成功', '2020-07-21 10:27:19', 'http://127.0.0.1:8889/tt/coursearrangementretool/create', '{\"id\":8,\"courseArrangementId\":6,\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetStatus\":null,\"assetStatusCode\":null,\"createTime\":\"2020-07-21 10:27:17\",\"updateTime\":\"2020-07-21 10:27:17\",\"numberOfApplications\":2}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (203, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CollectionRecordController.collect(CollectionRecord)', 29, '领用记录领用确认', '处理成功', '2020-07-21 10:30:20', 'http://127.0.0.1:8889/tt/collectionrecord/collect', '{\"cellStyleMap\":{},\"id\":9,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetName\":null,\"assetType\":null,\"assetTypeCode\":\"asset_type_consumables\",\"collectionTime\":null,\"collectionMajor\":null,\"collectionMajorId\":null,\"collectionCourse\":null,\"collectionCourseId\":null,\"applicant\":null,\"applicantId\":null,\"collectedQuantity\":null,\"returnTime\":null,\"remark\":null,\"createTime\":null,\"updateTime\":\"2020-07-21 10:30:17\",\"flowStatusCode\":null,\"flowStatus\":null,\"createYear\":null,\"pendingPerson\":null,\"pendingPersonId\":null,\"isCollected\":\"1\",\"isReturned\":null,\"reId\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (204, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CollectionRecordController.collect(CollectionRecord)', 23, '领用记录领用确认', '处理成功', '2020-07-21 10:32:08', 'http://127.0.0.1:8889/tt/collectionrecord/collect', '{\"cellStyleMap\":{},\"id\":10,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetName\":null,\"assetType\":null,\"assetTypeCode\":\"asset_type_tool\",\"collectionTime\":null,\"collectionMajor\":null,\"collectionMajorId\":null,\"collectionCourse\":null,\"collectionCourseId\":null,\"applicant\":null,\"applicantId\":null,\"collectedQuantity\":null,\"returnTime\":null,\"remark\":null,\"createTime\":null,\"updateTime\":\"2020-07-21 10:32:06\",\"flowStatusCode\":null,\"flowStatus\":null,\"createYear\":null,\"pendingPerson\":null,\"pendingPersonId\":null,\"isCollected\":\"1\",\"isReturned\":null,\"reId\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (205, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CollectionRecordController.returnTool(CollectionRecord)', 1, '领用记录工具仪器归还确认', NULL, '2020-07-21 10:39:34', 'http://127.0.0.1:8889/tt/collectionrecord/returntool', '{\"cellStyleMap\":{},\"id\":10,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetName\":null,\"assetType\":null,\"assetTypeCode\":\"asset_type_tool\",\"collectionTime\":null,\"collectionMajor\":null,\"collectionMajorId\":null,\"collectionCourse\":null,\"collectionCourseId\":null,\"applicant\":null,\"applicantId\":null,\"collectedQuantity\":null,\"returnTime\":null,\"remark\":null,\"createTime\":null,\"updateTime\":null,\"flowStatusCode\":null,\"flowStatus\":null,\"createYear\":null,\"pendingPerson\":null,\"pendingPersonId\":null,\"isCollected\":null,\"isReturned\":null,\"reId\":null}', 'NullPointerException');
INSERT INTO `sys_log` VALUES (206, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CollectionRecordController.returnTool(CollectionRecord)', 16, '领用记录工具仪器归还确认', '处理成功', '2020-07-21 10:46:08', 'http://127.0.0.1:8889/tt/collectionrecord/returntool', '{\"cellStyleMap\":{},\"id\":10,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetName\":null,\"assetType\":null,\"assetTypeCode\":\"asset_type_tool\",\"collectionTime\":null,\"collectionMajor\":null,\"collectionMajorId\":null,\"collectionCourse\":null,\"collectionCourseId\":null,\"applicant\":null,\"applicantId\":null,\"collectedQuantity\":null,\"returnTime\":\"2020-07-21 10:46:06\",\"remark\":null,\"createTime\":null,\"updateTime\":\"2020-07-21 10:46:06\",\"flowStatusCode\":null,\"flowStatus\":null,\"createYear\":null,\"pendingPerson\":null,\"pendingPersonId\":null,\"isCollected\":\"1\",\"isReturned\":null,\"reId\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (207, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.deleteBatchByIds(Object[])', 6601, '排课管理和工具关联删除', '处理成功', '2020-07-21 10:48:50', 'http://127.0.0.1:8889/tt/coursearrangementretool/delete-batch', '[\"8\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (208, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.create(CourseArrangementReTool)', 36, '排课管理和工具关联创建', '处理成功', '2020-07-21 10:50:01', 'http://127.0.0.1:8889/tt/coursearrangementretool/create', '{\"id\":9,\"courseArrangementId\":6,\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetStatus\":null,\"assetStatusCode\":null,\"createTime\":\"2020-07-21 10:49:59\",\"updateTime\":\"2020-07-21 10:49:59\",\"numberOfApplications\":2}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (209, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CollectionRecordController.collect(CollectionRecord)', 3, '领用记录领用确认', '处理成功', '2020-07-21 10:50:11', 'http://127.0.0.1:8889/tt/collectionrecord/collect', '{\"cellStyleMap\":{},\"id\":11,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetName\":null,\"assetType\":null,\"assetTypeCode\":\"asset_type_tool\",\"collectionTime\":\"2020-07-21 10:50:09\",\"collectionMajor\":null,\"collectionMajorId\":null,\"collectionCourse\":null,\"collectionCourseId\":null,\"applicant\":null,\"applicantId\":null,\"collectedQuantity\":null,\"returnTime\":null,\"remark\":null,\"createTime\":null,\"updateTime\":\"2020-07-21 10:50:09\",\"flowStatusCode\":null,\"flowStatus\":null,\"createYear\":null,\"pendingPerson\":null,\"pendingPersonId\":null,\"isCollected\":\"1\",\"isReturned\":null,\"reId\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (210, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CollectionRecordController.returnTool(CollectionRecord)', 12, '领用记录工具仪器归还确认', '处理成功', '2020-07-21 10:52:57', 'http://127.0.0.1:8889/tt/collectionrecord/returntool', '{\"cellStyleMap\":{},\"id\":11,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetName\":null,\"assetType\":null,\"assetTypeCode\":\"asset_type_tool\",\"collectionTime\":null,\"collectionMajor\":null,\"collectionMajorId\":null,\"collectionCourse\":null,\"collectionCourseId\":null,\"applicant\":null,\"applicantId\":null,\"collectedQuantity\":null,\"returnTime\":\"2020-07-21 10:52:55\",\"remark\":null,\"createTime\":null,\"updateTime\":\"2020-07-21 10:52:55\",\"flowStatusCode\":null,\"flowStatus\":null,\"createYear\":null,\"pendingPerson\":null,\"pendingPersonId\":null,\"isCollected\":\"1\",\"isReturned\":null,\"reId\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (211, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.deleteBatchByIds(Object[])', 19, '排课管理和工具关联删除', '处理成功', '2020-07-21 10:53:18', 'http://127.0.0.1:8889/tt/coursearrangementretool/delete-batch', '[\"9\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (212, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.create(CourseArrangementReTool)', 98, '排课管理和工具关联创建', '处理成功', '2020-07-21 10:53:38', 'http://127.0.0.1:8889/tt/coursearrangementretool/create', '{\"id\":10,\"courseArrangementId\":6,\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetStatus\":null,\"assetStatusCode\":null,\"createTime\":\"2020-07-21 10:53:36\",\"updateTime\":\"2020-07-21 10:53:36\",\"numberOfApplications\":2}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (213, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CollectionRecordController.collect(CollectionRecord)', 12, '领用记录领用确认', '处理成功', '2020-07-21 10:54:24', 'http://127.0.0.1:8889/tt/collectionrecord/collect', '{\"cellStyleMap\":{},\"id\":12,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetName\":null,\"assetType\":null,\"assetTypeCode\":\"asset_type_tool\",\"collectionTime\":\"2020-07-21 10:54:21\",\"collectionMajor\":null,\"collectionMajorId\":null,\"collectionCourse\":null,\"collectionCourseId\":null,\"applicant\":null,\"applicantId\":null,\"collectedQuantity\":null,\"returnTime\":null,\"remark\":null,\"createTime\":null,\"updateTime\":\"2020-07-21 10:54:21\",\"flowStatusCode\":null,\"flowStatus\":null,\"createYear\":null,\"pendingPerson\":null,\"pendingPersonId\":null,\"isCollected\":\"1\",\"isReturned\":null,\"reId\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (214, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CollectionRecordController.returnTool(CollectionRecord)', 12401, '领用记录工具仪器归还确认', '处理成功', '2020-07-21 10:56:01', 'http://127.0.0.1:8889/tt/collectionrecord/returntool', '{\"cellStyleMap\":{},\"id\":12,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetName\":null,\"assetType\":null,\"assetTypeCode\":\"asset_type_tool\",\"collectionTime\":null,\"collectionMajor\":null,\"collectionMajorId\":null,\"collectionCourse\":null,\"collectionCourseId\":null,\"applicant\":null,\"applicantId\":null,\"collectedQuantity\":null,\"returnTime\":\"2020-07-21 10:55:59\",\"remark\":null,\"createTime\":null,\"updateTime\":\"2020-07-21 10:55:59\",\"flowStatusCode\":null,\"flowStatus\":null,\"createYear\":null,\"pendingPerson\":null,\"pendingPersonId\":null,\"isCollected\":\"1\",\"isReturned\":null,\"reId\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (215, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.deleteBatchByIds(Object[])', 14, '排课管理和工具关联删除', '处理成功', '2020-07-21 11:05:12', 'http://127.0.0.1:8889/tt/coursearrangementretool/delete-batch', '[\"10\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (216, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.create(CourseArrangementReTool)', 38, '排课管理和工具关联创建', '处理成功', '2020-07-21 11:07:05', 'http://127.0.0.1:8889/tt/coursearrangementretool/create', '{\"id\":11,\"courseArrangementId\":6,\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetStatus\":null,\"assetStatusCode\":null,\"createTime\":\"2020-07-21 11:07:03\",\"updateTime\":\"2020-07-21 11:07:03\",\"numberOfApplications\":2}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (217, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CollectionRecordController.collect(CollectionRecord)', 3, '领用记录领用确认', '处理成功', '2020-07-21 11:07:29', 'http://127.0.0.1:8889/tt/collectionrecord/collect', '{\"cellStyleMap\":{},\"id\":13,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetName\":null,\"assetType\":null,\"assetTypeCode\":\"asset_type_tool\",\"collectionTime\":\"2020-07-21 11:07:27\",\"collectionMajor\":null,\"collectionMajorId\":null,\"collectionCourse\":null,\"collectionCourseId\":null,\"applicant\":null,\"applicantId\":null,\"collectedQuantity\":null,\"returnTime\":null,\"remark\":null,\"createTime\":null,\"updateTime\":\"2020-07-21 11:07:27\",\"flowStatusCode\":null,\"flowStatus\":null,\"createYear\":null,\"pendingPerson\":null,\"pendingPersonId\":null,\"isCollected\":\"1\",\"isReturned\":null,\"reId\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (218, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CollectionRecordController.returnTool(CollectionRecord)', 28, '领用记录工具仪器归还确认', '处理成功', '2020-07-21 11:07:33', 'http://127.0.0.1:8889/tt/collectionrecord/returntool', '{\"cellStyleMap\":{},\"id\":13,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetName\":null,\"assetType\":null,\"assetTypeCode\":\"asset_type_tool\",\"collectionTime\":null,\"collectionMajor\":null,\"collectionMajorId\":null,\"collectionCourse\":null,\"collectionCourseId\":null,\"applicant\":null,\"applicantId\":null,\"collectedQuantity\":null,\"returnTime\":\"2020-07-21 11:07:31\",\"remark\":null,\"createTime\":null,\"updateTime\":\"2020-07-21 11:07:31\",\"flowStatusCode\":null,\"flowStatus\":null,\"createYear\":null,\"pendingPerson\":null,\"pendingPersonId\":null,\"isCollected\":null,\"isReturned\":\"1\",\"reId\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (219, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReConsumablesController.deleteBatchByIds(Object[])', 26, '排课管理和耗材关联删除', '处理成功', '2020-07-21 11:23:54', 'http://127.0.0.1:8889/tt/coursearrangementreconsumables/delete-batch', '[\"7\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (220, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReConsumablesController.create(CourseArrangementReConsumables)', 45, '排课管理和耗材关联创建', '处理成功', '2020-07-21 11:24:00', 'http://127.0.0.1:8889/tt/coursearrangementreconsumables/create', '{\"id\":8,\"courseArrangementId\":6,\"consumablesId\":3,\"consumablesCode\":null,\"consumablesName\":\"闪亮发动机机油\",\"specificationType\":\"SL001\",\"specificationTypeCode\":null,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"numberOfApplications\":2,\"createTime\":\"2020-07-21 11:23:58\",\"updateTime\":\"2020-07-21 11:23:58\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (221, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CollectionRecordController.collect(CollectionRecord)', 18, '领用记录领用确认', '处理成功', '2020-07-21 11:24:25', 'http://127.0.0.1:8889/tt/collectionrecord/collect', '{\"cellStyleMap\":{},\"id\":14,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetName\":null,\"assetType\":null,\"assetTypeCode\":\"asset_type_consumables\",\"collectionTime\":\"2020-07-21 11:24:23\",\"collectionMajor\":null,\"collectionMajorId\":null,\"collectionCourse\":null,\"collectionCourseId\":null,\"applicant\":null,\"applicantId\":null,\"collectedQuantity\":null,\"returnTime\":null,\"remark\":null,\"createTime\":null,\"updateTime\":\"2020-07-21 11:24:23\",\"flowStatusCode\":null,\"flowStatus\":null,\"createYear\":null,\"pendingPerson\":null,\"pendingPersonId\":null,\"isCollected\":\"1\",\"isReturned\":null,\"reId\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (222, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.create(CourseArrangement)', 73, '排课管理排课创建', '处理成功', '2020-07-22 08:38:22', 'http://127.0.0.1:8889/tt/coursearrangement/create', '{\"cellStyleMap\":{},\"id\":7,\"weekId\":1,\"weekName\":\"2020年 第19周 (5月4日-5月10日)\",\"sectionName\":\"3-4\",\"courseName\":\"丰田汽车培训课\",\"courseId\":5,\"className\":\"15汽运01\",\"classId\":\"5\",\"numberOfPeople\":2,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"admin\",\"regionalTeacherId\":1,\"assistantTeacher\":\"admin\",\"assistantTeacherId\":1,\"trainingRoomName\":\"丰田实训室\",\"trainingRoomId\":4,\"teachingPlanName\":\"第一节发动机\",\"teachingPlanId\":4,\"trainingContent\":\"\",\"numberOfDevices\":0,\"numberOfConsumables\":0,\"createTime\":\"2020-07-22 08:38:22\",\"updateTime\":\"2020-07-22 08:38:22\",\"numberOfTools\":0,\"isLock\":null,\"courseDate\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (223, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.create(CourseArrangementReTool)', 367, '排课管理和工具关联创建', '处理成功', '2020-07-22 08:38:36', 'http://127.0.0.1:8889/tt/coursearrangementretool/create', '{\"id\":12,\"courseArrangementId\":7,\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetStatus\":null,\"assetStatusCode\":null,\"createTime\":\"2020-07-22 08:38:36\",\"updateTime\":\"2020-07-22 08:38:36\",\"numberOfApplications\":2}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (224, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReConsumablesController.create(CourseArrangementReConsumables)', 31, '排课管理和耗材关联创建', '处理成功', '2020-07-22 08:47:21', 'http://127.0.0.1:8889/tt/coursearrangementreconsumables/create', '{\"id\":9,\"courseArrangementId\":7,\"consumablesId\":3,\"consumablesCode\":null,\"consumablesName\":\"闪亮发动机机油\",\"specificationType\":\"SL001\",\"specificationTypeCode\":null,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"numberOfApplications\":2,\"createTime\":\"2020-07-22 08:47:21\",\"updateTime\":\"2020-07-22 08:47:21\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (225, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.create(MaintenanceRecord)', 27, '设备维修设备维修记录创建', '处理成功', '2020-07-22 08:47:56', 'http://127.0.0.1:8889/tt/maintenancerecord/create', '{\"cellStyleMap\":{},\"id\":6,\"recordId\":\"MR202007226\",\"recordName\":\"拆装工具维修\",\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"flowStatusCode\":\"em_confirmed\",\"flowStatus\":\"待确认\",\"maintenanceCosts\":null,\"applicant\":\"admin\",\"applicantId\":1,\"applicantDepartment\":\"北京交通运输职业学院\",\"applicantDepartmentId\":1,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"failureTime\":\"2020-07-22\",\"faultDescription\":\"tst\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"createTime\":\"2020-07-22 08:47:57\",\"updateTime\":\"2020-07-22 08:47:57\",\"createYear\":\"2020\",\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":\"工具仪器维修\",\"flowTypeCode\":\"tools_maintenance\",\"createMonth\":\"07\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{\"cellStyleMap\":{},\"id\":6,\"recordId\":\"MR202007226\",\"recordName\":\"拆装工具维修\",\"assetId\":2,\"assetCode\":null,\"assetName\":\"拆装工具\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"flowStatusCode\":\"em_confirmed\",\"flowStatus\":\"待确认\",\"maintenanceCosts\":null,\"applicant\":\"admin\",\"applicantId\":1,\"applicantDepartment\":\"北京交通运输职业学院\",\"applicantDepartmentId\":1,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"failureTime\":\"2020-07-22\",\"faultDescription\":\"tst\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"createTime\":\"2020-07-22 08:47:57\",\"updateTime\":\"2020-07-22 08:47:57\",\"createYear\":\"2020\",\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":\"工具仪器维修\",\"flowTypeCode\":\"tools_maintenance\",\"createMonth\":\"07\"},\"extra\":null}');
INSERT INTO `sys_log` VALUES (226, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionPlanController.create(InspectionPlan)', 26, '设备管理巡检计划创建', '处理成功', '2020-07-22 08:48:16', 'http://127.0.0.1:8889/tt/inspectionplan/create', '{\"cellStyleMap\":{},\"id\":8,\"roomId\":4,\"roomName\":\"丰田实训室\",\"inspector\":\"admin\",\"inspectorId\":1,\"normalDevicesInInspection\":null,\"numberNormalDevices\":null,\"numberAbnormalDevices\":null,\"numberReportedRepairEquipment\":null,\"inspectionTime\":\"2020-07-22\",\"inspectionStatus\":null,\"planYearId\":4,\"createTime\":\"2020-07-22 08:48:16\",\"updateTime\":\"2020-07-22 08:48:16\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (227, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TrainingRoomController.create(TrainingRoom)', 175, '实训室管理实训室创建', '处理成功', '2020-08-08 16:42:05', 'http://127.0.0.1:8889/tt/trainingroom/create', '{\"cellStyleMap\":{},\"id\":5,\"roomCode\":null,\"roomName\":\"吉利汽车实训室\",\"belongSys\":\"汽车工程系\",\"roomPosition\":\"丰田T-TEP整车实训区\",\"roomAdmin\":\"admin\",\"createDate\":null,\"equipNum\":null,\"isEnabled\":1,\"updateTime\":\"2020-08-08 16:42:05\",\"belongSysId\":2,\"roomPositionCode\":1,\"roomAdminId\":1,\"createTime\":\"2020-08-08 16:42:05\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (228, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetController.create(Asset)', 91, '资产管理资产创建', '处理成功', '2020-08-08 17:07:53', 'http://127.0.0.1:8889/tt/asset/create', '{\"cellStyleMap\":{},\"id\":11,\"assetCode\":\"SB00001\",\"assetClassificationCode\":\"1\",\"assetClassification\":\"教学用机电实验仪器\",\"assetName\":\"吉利教具车\",\"assetValue\":20000,\"bookkeepingDate\":\"2020-08-08\",\"assetTypeCode\":null,\"assetType\":\"吉利教具车\",\"assetUser\":\"admin\",\"assetUserId\":1,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"useDepartment\":\"汽车工程系\",\"useDepartmentId\":2,\"inspectionCycle\":null,\"inspectionCycleCode\":null,\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"createTime\":\"2020-08-08 17:07:54\",\"updateTime\":\"2020-08-08 17:07:54\",\"assetImg\":null,\"roomId\":5,\"roomName\":\"吉利汽车实训室\",\"roomIsEnabled\":1}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (229, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetController.update(Asset)', 84, '资产管理资产更新', '处理成功', '2020-08-08 17:09:31', 'http://127.0.0.1:8889/tt/asset/update', '{\"cellStyleMap\":{},\"id\":8,\"assetCode\":\"FTJJC001\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"assetName\":\"丰田教具车\",\"assetValue\":20000,\"bookkeepingDate\":\"2020-07-20\",\"assetTypeCode\":null,\"assetType\":\"丰田教具车001\",\"assetUser\":null,\"assetUserId\":null,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"useDepartment\":\"汽车工程系\",\"useDepartmentId\":2,\"inspectionCycle\":null,\"inspectionCycleCode\":null,\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"createTime\":null,\"updateTime\":\"2020-08-08 17:09:31\",\"assetImg\":null,\"roomId\":4,\"roomName\":\"丰田实训室\",\"roomIsEnabled\":1}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (230, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionPlanYearController.create(InspectionPlanYear)', 155, '设备管理年度巡检计划统计创建', '处理成功', '2020-08-09 10:37:32', 'http://127.0.0.1:8889/tt/inspectionplanyear/create', '{\"cellStyleMap\":{},\"id\":5,\"roomId\":5,\"roomName\":\"吉利汽车实训室\",\"personInCharge\":\"admin\",\"personInChargeId\":1,\"inspectionCycle\":\"月\",\"inspectionCycleCode\":\"inspection_cycle_month\",\"inspectionTimesYear\":12,\"inspectionedTimesYear\":null,\"numberAbnormalDevices\":null,\"numberReportedRepairEquipment\":null,\"numberRepairedEquipmen\":null,\"createTime\":\"2020-08-09 10:37:33\",\"updateTime\":\"2020-08-09 10:37:33\",\"createYear\":\"2020\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (231, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionPlanYearController.update(InspectionPlanYear)', 77, '设备管理年度巡检计划统计更新', '处理成功', '2020-08-09 10:44:55', 'http://127.0.0.1:8889/tt/inspectionplanyear/update', '{\"cellStyleMap\":{},\"id\":4,\"roomId\":null,\"roomName\":\"丰田实训室\",\"personInCharge\":\"admin\",\"personInChargeId\":1,\"inspectionCycle\":\"日\",\"inspectionCycleCode\":\"inspection_cycle_day\",\"inspectionTimesYear\":24,\"inspectionedTimesYear\":null,\"numberAbnormalDevices\":null,\"numberReportedRepairEquipment\":null,\"numberRepairedEquipmen\":null,\"createTime\":null,\"updateTime\":\"2020-08-09 10:44:56\",\"createYear\":\"2020\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (232, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionPlanController.create(InspectionPlan)', 46, '设备管理巡检计划创建', '处理成功', '2020-08-09 10:51:18', 'http://127.0.0.1:8889/tt/inspectionplan/create', '{\"cellStyleMap\":{},\"id\":9,\"roomId\":4,\"roomName\":\"丰田实训室\",\"inspector\":\"admin\",\"inspectorId\":1,\"normalDevicesInInspection\":null,\"numberNormalDevices\":null,\"numberAbnormalDevices\":null,\"numberReportedRepairEquipment\":null,\"inspectionTime\":\"2020-08-09\",\"inspectionStatus\":null,\"planYearId\":4,\"createTime\":\"2020-08-09 10:51:18\",\"updateTime\":\"2020-08-09 10:51:18\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (233, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionPlanController.update(InspectionPlan)', 63, '设备管理巡检计划更新', '处理成功', '2020-08-09 10:53:17', 'http://127.0.0.1:8889/tt/inspectionplan/update', '{\"cellStyleMap\":{},\"id\":7,\"roomId\":null,\"roomName\":null,\"inspector\":\"admin\",\"inspectorId\":1,\"normalDevicesInInspection\":null,\"numberNormalDevices\":null,\"numberAbnormalDevices\":null,\"numberReportedRepairEquipment\":null,\"inspectionTime\":\"2020-07-20\",\"inspectionStatus\":null,\"planYearId\":null,\"createTime\":null,\"updateTime\":\"2020-08-09 10:53:17\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (234, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.create(MaintenanceRecord)', 94, '设备维修设备维修记录创建', '处理成功', '2020-08-09 11:26:34', 'http://127.0.0.1:8889/tt/maintenancerecord/create', '{\"cellStyleMap\":{},\"id\":7,\"recordId\":\"MR202008097\",\"recordName\":\"吉利桥车维修单\",\"assetId\":11,\"assetCode\":null,\"assetName\":\"吉利教具车\",\"assetClassificationCode\":\"1\",\"assetClassification\":\"教学用机电实验仪器\",\"flowStatusCode\":\"em_confirmed\",\"flowStatus\":\"待确认\",\"maintenanceCosts\":null,\"applicant\":\"admin\",\"applicantId\":1,\"applicantDepartment\":\"北京交通运输职业学院\",\"applicantDepartmentId\":1,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"failureTime\":\"2020-08-09\",\"faultDescription\":\"\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"createTime\":\"2020-08-09 11:26:35\",\"updateTime\":\"2020-08-09 11:26:35\",\"createYear\":\"2020\",\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\",\"createMonth\":\"08\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{\"cellStyleMap\":{},\"id\":7,\"recordId\":\"MR202008097\",\"recordName\":\"吉利桥车维修单\",\"assetId\":11,\"assetCode\":null,\"assetName\":\"吉利教具车\",\"assetClassificationCode\":\"1\",\"assetClassification\":\"教学用机电实验仪器\",\"flowStatusCode\":\"em_confirmed\",\"flowStatus\":\"待确认\",\"maintenanceCosts\":null,\"applicant\":\"admin\",\"applicantId\":1,\"applicantDepartment\":\"北京交通运输职业学院\",\"applicantDepartmentId\":1,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"failureTime\":\"2020-08-09\",\"faultDescription\":\"\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"createTime\":\"2020-08-09 11:26:35\",\"updateTime\":\"2020-08-09 11:26:35\",\"createYear\":\"2020\",\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\",\"createMonth\":\"08\"},\"extra\":null}');
INSERT INTO `sys_log` VALUES (235, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.ConsumablesController.create(Consumables)', 41, '耗材管理耗材创建', '处理成功', '2020-08-09 12:05:26', 'http://127.0.0.1:8889/tt/consumables/create', '{\"cellStyleMap\":{},\"id\":4,\"consumablesCode\":null,\"consumablesName\":\"长城润滑油\",\"bookkeepingDate\":\"2020-08-09\",\"assetClassificationCode\":\"16\",\"assetClassification\":\"润滑脂\",\"specificationType\":\"CC00001\",\"specificationTypeCode\":null,\"unitPrice\":null,\"positionCode\":\"3\",\"positionName\":\"教学楼二段二层南侧\",\"manager\":\"admin\",\"managerId\":1,\"cumulativeReceiptQuantity\":\"0\",\"usedQuantity\":\"0\",\"totalExisting\":\"0\",\"cumulativeCollectedQuantity\":\"0\",\"remainingQuantity\":\"0\",\"createTime\":\"2020-08-09 12:05:26\",\"updateTime\":\"2020-08-09 12:05:26\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (236, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.WarehousingRecordController.create(WarehousingRecord)', 40, '入库记录创建', '处理成功', '2020-08-09 12:11:03', 'http://127.0.0.1:8889/tt/warehousingrecord/create', '{\"cellStyleMap\":{},\"id\":9,\"assetId\":4,\"assetName\":\"长城润滑油\",\"assetType\":\"耗材\",\"assetTypeCode\":\"asset_type_consumables\",\"warehousingTime\":\"2020-08-09\",\"unitPrice\":\"100\",\"warehousingQuantity\":\"20\",\"positionCode\":\"3\",\"positionName\":\"教学楼二段二层南侧\",\"manager\":\"admin\",\"managerId\":1,\"remark\":null,\"createTime\":\"2020-08-09 12:11:04\",\"updateTime\":\"2020-08-09 12:11:04\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (237, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.ToolsController.create(Tools)', 48, '工具管理工具创建', '处理成功', '2020-08-09 12:25:16', 'http://127.0.0.1:8889/tt/tools/create', '{\"cellStyleMap\":{},\"id\":3,\"assetCode\":\"GJ0002\",\"assetClassificationCode\":\"19\",\"assetClassification\":\"教学用机电实验仪器\",\"assetName\":\"千斤顶\",\"assetValue\":null,\"bookkeepingDate\":null,\"specificationTypeCode\":null,\"specificationType\":\"QJD0001\",\"assetUser\":\"admin\",\"assetUserId\":1,\"positionCode\":\"2\",\"positionName\":\"北校区后勤服务中心\",\"useDepartment\":\"汽车工程系\",\"useDepartmentId\":2,\"cumulativeReceiptQuantity\":\"0\",\"totalExisting\":\"0\",\"cumulativeCollectedQuantity\":\"0\",\"remainingQuantity\":\"0\",\"repairingQuantity\":\"0\",\"toBeScrappedQuantity\":\"0\",\"createTime\":\"2020-08-09 12:25:17\",\"updateTime\":\"2020-08-09 12:25:17\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (238, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.ToolsController.update(Tools)', 2, '工具管理工具更新', '处理成功', '2020-08-09 12:26:18', 'http://127.0.0.1:8889/tt/tools/update', '{\"cellStyleMap\":{},\"id\":2,\"assetCode\":\"GJ0001\",\"assetClassificationCode\":\"21\",\"assetClassification\":\"通用拆装工具\",\"assetName\":\"拆装工具\",\"assetValue\":null,\"bookkeepingDate\":null,\"specificationTypeCode\":null,\"specificationType\":\"通用拆装工具\",\"assetUser\":null,\"assetUserId\":null,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"useDepartment\":\"汽车工程系\",\"useDepartmentId\":2,\"cumulativeReceiptQuantity\":null,\"totalExisting\":null,\"cumulativeCollectedQuantity\":null,\"remainingQuantity\":null,\"repairingQuantity\":null,\"toBeScrappedQuantity\":null,\"createTime\":null,\"updateTime\":\"2020-08-09 12:26:18\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (239, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.WarehousingRecordController.create(WarehousingRecord)', 10, '入库记录创建', '处理成功', '2020-08-09 12:28:04', 'http://127.0.0.1:8889/tt/warehousingrecord/create', '{\"cellStyleMap\":{},\"id\":10,\"assetId\":3,\"assetName\":\"千斤顶\",\"assetType\":\"工具\",\"assetTypeCode\":\"asset_type_tool\",\"warehousingTime\":\"2020-08-09\",\"unitPrice\":\"300\",\"warehousingQuantity\":\"10\",\"positionCode\":\"2\",\"positionName\":\"北校区后勤服务中心\",\"manager\":\"admin\",\"managerId\":1,\"remark\":null,\"createTime\":\"2020-08-09 12:28:04\",\"updateTime\":\"2020-08-09 12:28:04\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (240, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.create(MaintenanceRecord)', 48, '设备维修设备维修记录创建', '处理成功', '2020-08-09 12:34:59', 'http://127.0.0.1:8889/tt/maintenancerecord/create', '{\"cellStyleMap\":{},\"id\":8,\"recordId\":\"MR202008098\",\"recordName\":\"千斤顶维修申请\",\"assetId\":3,\"assetCode\":null,\"assetName\":\"千斤顶\",\"assetClassificationCode\":\"19\",\"assetClassification\":\"教学用机电实验仪器\",\"flowStatusCode\":\"em_confirmed\",\"flowStatus\":\"待确认\",\"maintenanceCosts\":null,\"applicant\":\"admin\",\"applicantId\":1,\"applicantDepartment\":\"北京交通运输职业学院\",\"applicantDepartmentId\":1,\"positionCode\":\"2\",\"positionName\":\"北校区后勤服务中心\",\"failureTime\":\"2020-08-09\",\"faultDescription\":\"test\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"createTime\":\"2020-08-09 12:34:59\",\"updateTime\":\"2020-08-09 12:34:59\",\"createYear\":\"2020\",\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":\"工具仪器维修\",\"flowTypeCode\":\"tools_maintenance\",\"createMonth\":\"08\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{\"cellStyleMap\":{},\"id\":8,\"recordId\":\"MR202008098\",\"recordName\":\"千斤顶维修申请\",\"assetId\":3,\"assetCode\":null,\"assetName\":\"千斤顶\",\"assetClassificationCode\":\"19\",\"assetClassification\":\"教学用机电实验仪器\",\"flowStatusCode\":\"em_confirmed\",\"flowStatus\":\"待确认\",\"maintenanceCosts\":null,\"applicant\":\"admin\",\"applicantId\":1,\"applicantDepartment\":\"北京交通运输职业学院\",\"applicantDepartmentId\":1,\"positionCode\":\"2\",\"positionName\":\"北校区后勤服务中心\",\"failureTime\":\"2020-08-09\",\"faultDescription\":\"test\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"createTime\":\"2020-08-09 12:34:59\",\"updateTime\":\"2020-08-09 12:34:59\",\"createYear\":\"2020\",\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":\"工具仪器维修\",\"flowTypeCode\":\"tools_maintenance\",\"createMonth\":\"08\"},\"extra\":null}');
INSERT INTO `sys_log` VALUES (241, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.FailureConfirmationController.create(FailureConfirmation)', 28, '设备维修故障确认创建', '处理成功', '2020-08-09 12:38:12', 'http://127.0.0.1:8889/tt/failureconfirmation/create', '{\"id\":5,\"confirmingPerson\":\"admin\",\"confirmingPersonId\":1,\"confirmationDepartment\":\"北京交通运输职业学院\",\"confirmationDepartmentId\":1,\"repairRequired\":1,\"maintenanceCostEstimate\":\"2000\",\"maintenanceType\":\"上门维修\",\"maintenanceTypeCode\":\"maintenance_type_door_to_door\",\"maintenanceCooperationUnit\":\"测试单位\",\"maintenanceCooperationUnitId\":null,\"remark\":\"\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"recordId\":8,\"createTime\":\"2020-08-09 12:38:12\",\"updateTime\":\"2020-08-09 12:38:12\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (242, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.FlowDetailController.create(FlowDetail)', 28, '设备维修流程记录创建', '处理成功', '2020-08-09 12:38:12', 'http://127.0.0.1:8889/tt/flowdetail/create', '{\"cellStyleMap\":{},\"id\":22,\"personName\":\"admin\",\"personId\":1,\"roleName\":null,\"roleId\":null,\"processingContent\":\"确认设备故障\",\"processingDate\":null,\"createTime\":\"2020-08-09 12:38:12\",\"updateTime\":\"2020-08-09 12:38:12\",\"flowId\":8,\"flowType\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (243, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.update(MaintenanceRecord)', 2, '设备维修设备维修记录更新', '处理成功', '2020-08-09 12:38:12', 'http://127.0.0.1:8889/tt/maintenancerecord/update', '{\"cellStyleMap\":{},\"id\":8,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetCode\":null,\"assetName\":null,\"assetClassificationCode\":null,\"assetClassification\":null,\"flowStatusCode\":\"em_pending_approval\",\"flowStatus\":\"待审批\",\"maintenanceCosts\":null,\"applicant\":null,\"applicantId\":null,\"applicantDepartment\":null,\"applicantDepartmentId\":null,\"positionCode\":null,\"positionName\":null,\"failureTime\":null,\"faultDescription\":null,\"attachmentName\":null,\"attachmentPath\":null,\"createTime\":null,\"updateTime\":\"2020-08-09 12:38:13\",\"createYear\":null,\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":null,\"flowTypeCode\":null,\"createMonth\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (244, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.DirectorApprovalController.create(DirectorApproval)', 13, '设备维修主任审批创建', '处理成功', '2020-08-09 12:38:21', 'http://127.0.0.1:8889/tt/directorapproval/create', '{\"id\":5,\"approver\":\"admin\",\"approverId\":1,\"approvalDepartment\":\"北京交通运输职业学院\",\"approvalDepartmentId\":1,\"passOrNot\":1,\"approvalComments\":\"test\",\"recordId\":8,\"createTime\":\"2020-08-09 12:38:21\",\"updateTime\":\"2020-08-09 12:38:21\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (245, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.FlowDetailController.create(FlowDetail)', 6, '设备维修流程记录创建', '处理成功', '2020-08-09 12:38:21', 'http://127.0.0.1:8889/tt/flowdetail/create', '{\"cellStyleMap\":{},\"id\":23,\"personName\":\"admin\",\"personId\":1,\"roleName\":null,\"roleId\":null,\"processingContent\":\"审批设备维修单\",\"processingDate\":null,\"createTime\":\"2020-08-09 12:38:21\",\"updateTime\":\"2020-08-09 12:38:21\",\"flowId\":8,\"flowType\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (246, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.update(MaintenanceRecord)', 19, '设备维修设备维修记录更新', '处理成功', '2020-08-09 12:38:21', 'http://127.0.0.1:8889/tt/maintenancerecord/update', '{\"cellStyleMap\":{},\"id\":8,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetCode\":null,\"assetName\":null,\"assetClassificationCode\":null,\"assetClassification\":null,\"flowStatusCode\":\"em_to_be_repaired\",\"flowStatus\":\"维修中\",\"maintenanceCosts\":null,\"applicant\":null,\"applicantId\":null,\"applicantDepartment\":null,\"applicantDepartmentId\":null,\"positionCode\":null,\"positionName\":null,\"failureTime\":null,\"faultDescription\":null,\"attachmentName\":null,\"attachmentPath\":null,\"createTime\":null,\"updateTime\":\"2020-08-09 12:38:21\",\"createYear\":null,\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":null,\"flowTypeCode\":null,\"createMonth\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (247, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordResultsController.create(MaintenanceRecordResults)', 28, '设备维修设备维修记录结果创建', '处理成功', '2020-08-09 12:38:28', 'http://127.0.0.1:8889/tt/maintenancerecordresults/create', '{\"id\":5,\"recordPerson\":\"admin\",\"recordPersonId\":1,\"recordDepartment\":\"北京交通运输职业学院\",\"recordDepartmentId\":1,\"isRepaired\":1,\"maintenanceCosts\":\"2000\",\"remark\":\"t\",\"recordId\":8,\"createTime\":\"2020-08-09 12:38:28\",\"updateTime\":\"2020-08-09 12:38:28\",\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (248, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.FlowDetailController.create(FlowDetail)', 19, '设备维修流程记录创建', '处理成功', '2020-08-09 12:38:28', 'http://127.0.0.1:8889/tt/flowdetail/create', '{\"cellStyleMap\":{},\"id\":24,\"personName\":\"admin\",\"personId\":1,\"roleName\":null,\"roleId\":null,\"processingContent\":\"填写设备维修结果\",\"processingDate\":null,\"createTime\":\"2020-08-09 12:38:28\",\"updateTime\":\"2020-08-09 12:38:28\",\"flowId\":8,\"flowType\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (249, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.update(MaintenanceRecord)', 2, '设备维修设备维修记录更新', '处理成功', '2020-08-09 12:38:28', 'http://127.0.0.1:8889/tt/maintenancerecord/update', '{\"cellStyleMap\":{},\"id\":8,\"recordId\":null,\"recordName\":null,\"assetId\":null,\"assetCode\":null,\"assetName\":null,\"assetClassificationCode\":null,\"assetClassification\":null,\"flowStatusCode\":\"em_end\",\"flowStatus\":\"维修完成\",\"maintenanceCosts\":\"2000\",\"applicant\":null,\"applicantId\":null,\"applicantDepartment\":null,\"applicantDepartmentId\":null,\"positionCode\":null,\"positionName\":null,\"failureTime\":null,\"faultDescription\":null,\"attachmentName\":null,\"attachmentPath\":null,\"createTime\":null,\"updateTime\":\"2020-08-09 12:38:28\",\"createYear\":null,\"pendingPerson\":\"\",\"pendingPersonId\":0,\"flowTypeName\":null,\"flowTypeCode\":null,\"createMonth\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (250, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CoursesController.create(Courses)', 162, '课程管理课程创建', '处理成功', '2020-08-09 16:56:38', 'http://127.0.0.1:8889/tt/courses/create', '{\"id\":6,\"courseCode\":\"KC0001\",\"courseName\":\"吉利汽车实训课\",\"courseType\":\"实训课\",\"courseTypeCode\":\"course_type_practical_training_course\",\"courseDirector\":\"admin\",\"courseDirectorId\":1,\"createDate\":null,\"createTime\":\"2020-08-09 16:56:39\",\"updateTime\":\"2020-08-09 16:56:39\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (251, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CoursesController.update(Courses)', 87, '课程管理课程更新', '处理成功', '2020-08-09 16:58:06', 'http://127.0.0.1:8889/tt/courses/update', '{\"id\":5,\"courseCode\":\"FTKC001\",\"courseName\":\"丰田汽车培训课\",\"courseType\":\"实训课\",\"courseTypeCode\":\"course_type_practical_training_course\",\"courseDirector\":\"admin\",\"courseDirectorId\":1,\"createDate\":null,\"createTime\":null,\"updateTime\":\"2020-08-09 16:58:06\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (252, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CoursesReTrainingRoomController.create(CoursesReTrainingRoom)', 44, '课程关联实训室创建', '处理成功', '2020-08-09 17:05:14', 'http://127.0.0.1:8889/tt/coursesretrainingroom/create', '{\"id\":2,\"roomId\":5,\"roomCode\":null,\"roomName\":\"吉利汽车实训室\",\"belongSysId\":2,\"belongSys\":\"汽车工程系\",\"roomPositionCode\":1,\"roomPosition\":\"丰田T-TEP整车实训区\",\"roomAdminId\":1,\"roomAdmin\":\"admin\",\"courseId\":6,\"createTime\":\"2020-08-09 17:05:15\",\"updateTime\":\"2020-08-09 17:05:15\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (253, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.ChaptersController.create(Chapters)', 76, '章节管理章节创建', '处理成功', '2020-08-09 17:09:10', 'http://127.0.0.1:8889/tt/chapters/create', '{\"cellStyleMap\":{},\"id\":15,\"chapterName\":\"第一章\",\"chapterSort\":\"1\",\"chapterLevel\":null,\"trainingRooms\":null,\"trainingRoomIds\":null,\"teachingPlan\":null,\"teachingPlanId\":null,\"devicesRequired\":null,\"deviceIdsRequired\":null,\"consumablesRequired\":null,\"consumablesIdsRequired\":null,\"leaf\":false,\"courseId\":6,\"parentId\":14,\"createTime\":\"2020-08-09 17:09:11\",\"updateTime\":\"2020-08-09 17:09:11\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (254, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.ChaptersController.create(Chapters)', 26, '章节管理章节创建', '处理成功', '2020-08-09 17:10:26', 'http://127.0.0.1:8889/tt/chapters/create', '{\"cellStyleMap\":{},\"id\":16,\"chapterName\":\"第一节\",\"chapterSort\":\"1\",\"chapterLevel\":null,\"trainingRooms\":null,\"trainingRoomIds\":null,\"teachingPlan\":null,\"teachingPlanId\":null,\"devicesRequired\":null,\"deviceIdsRequired\":null,\"consumablesRequired\":null,\"consumablesIdsRequired\":null,\"leaf\":true,\"courseId\":6,\"parentId\":15,\"createTime\":\"2020-08-09 17:10:26\",\"updateTime\":\"2020-08-09 17:10:26\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (255, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TeachingPlanController.create(TeachingPlan)', 71, '教案管理教案创建', '处理成功', '2020-08-09 17:19:33', 'http://127.0.0.1:8889/tt/teachingplan/create', '{\"id\":5,\"teachingPlanName\":\"第一节教案\",\"estimatedTimeDuration\":\"30\",\"teachingPlanDescription\":\"讲述吉利汽车发展史\",\"documentName\":null,\"documentPath\":null,\"videoName\":null,\"videoPath\":null,\"chapterId\":16,\"createTime\":\"2020-08-09 17:19:33\",\"updateTime\":\"2020-08-09 17:19:33\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (256, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.TeachingPlanReFileController.create(TeachingPlanReFile)', 29, '教案关联文件创建', '处理成功', '2020-08-09 17:22:28', 'http://127.0.0.1:8889/tt/teachingplanrefile/create', '{\"id\":2,\"fileName\":\"问题\",\"filePath\":\"D:/result_dir/files/20200809/a8676c8415f042e79248bbc16683925c.txt\",\"techingPlanId\":5,\"createTime\":\"2020-08-09 17:22:29\",\"updateTime\":\"2020-08-09 17:22:29\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (257, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.create(CourseArrangement)', 48, '排课管理排课创建', '处理成功', '2020-08-09 17:30:35', 'http://127.0.0.1:8889/tt/coursearrangement/create', '{\"cellStyleMap\":{},\"id\":8,\"weekId\":1,\"weekName\":\"2020年 第19周 (5月4日-5月10日)\",\"sectionName\":\"4-5\",\"courseName\":\"吉利汽车实训课\",\"courseId\":6,\"className\":\"15汽运01\",\"classId\":\"5\",\"numberOfPeople\":2,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"admin\",\"regionalTeacherId\":1,\"assistantTeacher\":\"teacher\",\"assistantTeacherId\":26,\"trainingRoomName\":\"吉利汽车实训室\",\"trainingRoomId\":5,\"teachingPlanName\":\"第一节教案\",\"teachingPlanId\":5,\"trainingContent\":\"吉利汽车历史\",\"numberOfDevices\":0,\"numberOfConsumables\":0,\"createTime\":\"2020-08-09 17:30:35\",\"updateTime\":\"2020-08-09 17:30:35\",\"numberOfTools\":0,\"isLock\":null,\"courseDate\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (258, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReAssetController.create(CourseArrangementReAsset)', 27, '排课管理和设备关联创建', '处理成功', '2020-08-09 17:39:44', 'http://127.0.0.1:8889/tt/coursearrangementreasset/create', '{\"id\":2,\"courseArrangementId\":8,\"assetId\":11,\"assetCode\":null,\"assetName\":\"吉利教具车\",\"assetClassificationCode\":\"1\",\"assetClassification\":\"教学用机电实验仪器\",\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"createTime\":\"2020-08-09 17:39:45\",\"updateTime\":\"2020-08-09 17:39:45\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (259, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReConsumablesController.create(CourseArrangementReConsumables)', 133, '排课管理和耗材关联创建', '处理成功', '2020-08-09 17:44:18', 'http://127.0.0.1:8889/tt/coursearrangementreconsumables/create', '{\"id\":10,\"courseArrangementId\":8,\"consumablesId\":4,\"consumablesCode\":null,\"consumablesName\":\"长城润滑油\",\"specificationType\":\"CC00001\",\"specificationTypeCode\":null,\"positionCode\":\"3\",\"positionName\":\"教学楼二段二层南侧\",\"numberOfApplications\":2,\"createTime\":\"2020-08-09 17:44:19\",\"updateTime\":\"2020-08-09 17:44:19\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (260, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementReToolController.create(CourseArrangementReTool)', 226, '排课管理和工具关联创建', '处理成功', '2020-08-09 17:47:21', 'http://127.0.0.1:8889/tt/coursearrangementretool/create', '{\"id\":13,\"courseArrangementId\":8,\"assetId\":3,\"assetCode\":null,\"assetName\":\"千斤顶\",\"assetClassificationCode\":\"19\",\"assetClassification\":\"教学用机电实验仪器\",\"assetStatus\":null,\"assetStatusCode\":null,\"createTime\":\"2020-08-09 17:47:21\",\"updateTime\":\"2020-08-09 17:47:21\",\"numberOfApplications\":2}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (261, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.create(User)', 95, '用户管理创建用户', '处理成功', '2020-08-09 18:24:48', 'http://127.0.0.1:8889/tt/user/create', '{\"id\":31,\"organizationId\":5,\"username\":\"test\",\"password\":\"543735cca849df680257e5914389691d\",\"salt\":\"85f058e246eb33fb9fb01218ab959630\",\"roleIds\":\"1,7,8,9,10,11,12,13\",\"groupIds\":\"1\",\"locked\":null,\"credentialsSalt\":\"test85f058e246eb33fb9fb01218ab959630\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (262, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.UserController.deleteBatchByIds(Object[])', 66, '用户管理删除用户', '处理成功', '2020-08-09 18:31:31', 'http://127.0.0.1:8889/tt/user/delete-batch', '[\"31\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (263, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.RoleController.create(Role)', 41, '角色管理创建角色', '处理成功', '2020-08-09 18:32:36', 'http://127.0.0.1:8889/tt/role/create', '{\"id\":14,\"role\":\"test\",\"description\":\"测试\",\"resourceIds\":\"1,31,41,51,52,53,59\",\"available\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (264, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.GroupController.create(Group)', 44, '用户管理创建用户组', '处理成功', '2020-08-09 18:41:00', 'http://127.0.0.1:8889/tt/group/create', '{\"id\":4,\"name\":\"test\",\"type\":\"GROUP_1\",\"description\":\"test\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (265, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.GroupController.deleteBatchByIds(Object[])', 23, '用户管理删除用户组', '处理成功', '2020-08-09 18:43:37', 'http://127.0.0.1:8889/tt/group/delete-batch', '[\"4\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (266, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.create(Organization)', 46, '组织管理创建组织', '处理成功', '2020-08-09 18:51:03', 'http://127.0.0.1:8889/tt/organization/create', '{\"id\":14,\"name\":\"test\",\"parentId\":1,\"parentIds\":\"0/1/\",\"available\":true,\"leaf\":false,\"priority\":1}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (267, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.create(Organization)', 19, '组织管理创建组织', '处理成功', '2020-08-09 18:51:25', 'http://127.0.0.1:8889/tt/organization/create', '{\"id\":15,\"name\":\"test\",\"parentId\":14,\"parentIds\":\"0/1/14/\",\"available\":true,\"leaf\":false,\"priority\":1}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (268, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.update(Organization)', 36, '组织管理更新组织', '处理成功', '2020-08-09 18:57:09', 'http://127.0.0.1:8889/tt/organization/update', '{\"id\":15,\"name\":\"test\",\"parentId\":14,\"parentIds\":\"0/1/14/\",\"available\":true,\"leaf\":true,\"priority\":1}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (269, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.update(Organization)', 2, '组织管理更新组织', '处理成功', '2020-08-09 18:58:07', 'http://127.0.0.1:8889/tt/organization/update', '{\"id\":15,\"name\":\"test\",\"parentId\":14,\"parentIds\":\"0/1/14/\",\"available\":true,\"leaf\":true,\"priority\":1}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (270, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.delete(Object)', 27, '组织管理删除组织', '处理成功', '2020-08-09 18:58:12', 'http://127.0.0.1:8889/tt/organization/delete', '\"15\"', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (271, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.update(Organization)', 162, '组织管理更新组织', '处理成功', '2020-08-09 18:58:18', 'http://127.0.0.1:8889/tt/organization/update', '{\"id\":14,\"name\":\"test\",\"parentId\":1,\"parentIds\":\"0/1/\",\"available\":true,\"leaf\":true,\"priority\":1}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (272, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.system.web.OrganizationController.delete(Object)', 86, '组织管理删除组织', '处理成功', '2020-08-09 18:58:22', 'http://127.0.0.1:8889/tt/organization/delete', '\"14\"', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (273, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetClassificationController.create(AssetClassification)', 22, '资产分类管理资产分类创建', '处理成功', '2020-08-09 19:02:21', 'http://127.0.0.1:8889/tt/assetclassification/create', '{\"cellStyleMap\":{},\"id\":24,\"classificationCode\":\"test\",\"classificationName\":\"test\",\"createTime\":\"2020-08-09 19:02:22\",\"updateTime\":\"2020-08-09 19:02:22\",\"assetType\":\"\",\"assetTypeCode\":\"asset_type_device\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (274, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetClassificationController.update(AssetClassification)', 4, '资产分类管理资产分类更新', '处理成功', '2020-08-09 19:03:38', 'http://127.0.0.1:8889/tt/assetclassification/update', '{\"cellStyleMap\":{},\"id\":24,\"classificationCode\":\"test\",\"classificationName\":\"test111\",\"createTime\":null,\"updateTime\":\"2020-08-09 19:03:38\",\"assetType\":\"\",\"assetTypeCode\":\"asset_type_device\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (275, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.AssetClassificationController.deleteBatchByIds(Object[])', 27, '资产分类管理资产分类删除', '处理成功', '2020-08-09 19:04:30', 'http://127.0.0.1:8889/tt/assetclassification/delete-batch', '[\"24\"]', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (276, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.PositionController.create(Position)', 22, '位置信息管理位置信息创建', '处理成功', '2020-08-09 19:08:43', 'http://127.0.0.1:8889/tt/position/create', '{\"cellStyleMap\":{},\"id\":7,\"positionCode\":\"1231243123\",\"positionName\":\"测试\",\"createTime\":\"2020-08-09 19:08:43\",\"updateTime\":\"2020-08-09 19:08:43\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (277, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.PositionController.update(Position)', 1, '位置信息管理位置信息更新', '处理成功', '2020-08-09 19:09:43', 'http://127.0.0.1:8889/tt/position/update', '{\"cellStyleMap\":{},\"id\":7,\"positionCode\":\"1231243123\",\"positionName\":\"测试111\",\"createTime\":null,\"updateTime\":\"2020-08-09 19:09:44\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (278, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.StudentController.create(Student)', 121, '学生管理学生创建', '处理成功', '2020-08-09 19:14:15', 'http://127.0.0.1:8889/tt/student/create', '{\"cellStyleMap\":{},\"id\":3,\"studentName\":\"test\",\"studentSex\":\"1\",\"studentAge\":\"12\",\"studentPhone\":\"123123\",\"studentEmail\":\"123123\",\"studentIdCard\":\"2312312312\",\"studentImg\":null,\"createTime\":\"2020-08-09 19:14:15\",\"updateTime\":\"2020-08-09 19:14:15\",\"sysId\":2,\"sysName\":\"汽车工程系\",\"classId\":5,\"className\":\"15汽运01\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (279, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.StudentController.update(Student)', 17, '学生管理学生更新', '处理成功', '2020-08-09 19:16:04', 'http://127.0.0.1:8889/tt/student/update', '{\"cellStyleMap\":{},\"id\":3,\"studentName\":\"test\",\"studentSex\":\"1\",\"studentAge\":\"12\",\"studentPhone\":\"123123\",\"studentEmail\":\"123123\",\"studentIdCard\":\"2312312312\",\"studentImg\":null,\"createTime\":null,\"updateTime\":\"2020-08-09 19:16:05\",\"sysId\":3,\"sysName\":\"道路桥梁系\",\"classId\":9,\"className\":\"16新能源01\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (280, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.WeekYearController.create(WeekYear)', 41, '年度周信息创建', '处理成功', '2020-08-09 19:22:03', 'http://127.0.0.1:8889/tt/weekyear/create', '{\"cellStyleMap\":{},\"id\":2,\"weekName\":\"test\",\"startDate\":\"08-03\",\"endDate\":\"08-09\",\"year\":\"2020\",\"remark\":\"tst\",\"createTime\":\"2020-08-09 19:22:03\",\"updateTime\":\"2020-08-09 19:22:03\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (281, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.WeekYearController.update(WeekYear)', 50, '年度周信息更新', '处理成功', '2020-08-09 19:22:54', 'http://127.0.0.1:8889/tt/weekyear/update', '{\"cellStyleMap\":{},\"id\":2,\"weekName\":\"test\",\"startDate\":\"08-03\",\"endDate\":\"08-09\",\"year\":\"2020\",\"remark\":\"tst\",\"createTime\":null,\"updateTime\":\"2020-08-09 19:22:55\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (282, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionRecordController.createByList(ListVo)', 209, '设备管理巡检记录创建', '处理成功', '2020-10-17 10:36:09', 'http://127.0.0.1:8889/tt/inspectionrecord/createbylist', '{\"objList\":[{\"cellStyleMap\":{},\"id\":2,\"assetId\":8,\"assetCode\":\"FTJJC001\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"assetName\":\"丰田教具车\",\"assetStatus\":\"维修\",\"assetStatusCode\":\"asset_status_repair\",\"isRepair\":1,\"statusDescription\":\"无法启动\",\"planId\":7,\"repairOrderNo\":\"MR202007204\",\"createTime\":\"2020-07-20 15:34:18\",\"updateTime\":\"2020-10-17 10:36:09\"},{\"cellStyleMap\":{},\"id\":3,\"assetId\":10,\"assetCode\":\"FTJJC003\",\"assetClassificationCode\":\"1\",\"assetClassification\":\"教学用机电实验仪器\",\"assetName\":\"丰田教具车\",\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"isRepair\":0,\"statusDescription\":\"\",\"planId\":7,\"repairOrderNo\":null,\"createTime\":\"2020-07-20 15:34:18\",\"updateTime\":\"2020-10-17 10:36:09\"}]}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (283, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.InspectionRecordController.createByList(ListVo)', 21, '设备管理巡检记录创建', '处理成功', '2020-10-17 10:37:22', 'http://127.0.0.1:8889/tt/inspectionrecord/createbylist', '{\"objList\":[{\"cellStyleMap\":{},\"id\":4,\"assetId\":8,\"assetCode\":\"FTJJC001\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"assetName\":\"丰田教具车\",\"assetStatus\":\"维修\",\"assetStatusCode\":\"asset_status_repair\",\"isRepair\":1,\"statusDescription\":\"11\",\"planId\":8,\"repairOrderNo\":null,\"createTime\":\"2020-10-17 10:37:22\",\"updateTime\":\"2020-10-17 10:37:22\"},{\"cellStyleMap\":{},\"id\":5,\"assetId\":10,\"assetCode\":\"FTJJC003\",\"assetClassificationCode\":\"1\",\"assetClassification\":\"教学用机电实验仪器\",\"assetName\":\"丰田教具车\",\"assetStatus\":\"正常\",\"assetStatusCode\":\"asset_status_normal\",\"isRepair\":0,\"statusDescription\":\"\",\"planId\":8,\"repairOrderNo\":null,\"createTime\":\"2020-10-17 10:37:22\",\"updateTime\":\"2020-10-17 10:37:22\"}]}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (284, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.MaintenanceRecordController.create(MaintenanceRecord)', 19, '设备维修设备维修记录创建', '处理成功', '2020-10-17 10:37:29', 'http://127.0.0.1:8889/tt/maintenancerecord/create', '{\"cellStyleMap\":{},\"id\":9,\"recordId\":\"MR202010179\",\"recordName\":\"111\",\"assetId\":8,\"assetCode\":null,\"assetName\":\"丰田教具车\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"flowStatusCode\":\"em_confirmed\",\"flowStatus\":\"待确认\",\"maintenanceCosts\":null,\"applicant\":\"admin\",\"applicantId\":1,\"applicantDepartment\":\"北京交通运输职业学院\",\"applicantDepartmentId\":1,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"failureTime\":\"2020-10-17\",\"faultDescription\":\"1111\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"createTime\":\"2020-10-17 10:37:30\",\"updateTime\":\"2020-10-17 10:37:30\",\"createYear\":\"2020\",\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\",\"createMonth\":\"10\",\"roomId\":null,\"roomName\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{\"cellStyleMap\":{},\"id\":9,\"recordId\":\"MR202010179\",\"recordName\":\"111\",\"assetId\":8,\"assetCode\":null,\"assetName\":\"丰田教具车\",\"assetClassificationCode\":\"5\",\"assetClassification\":\"教具车\",\"flowStatusCode\":\"em_confirmed\",\"flowStatus\":\"待确认\",\"maintenanceCosts\":null,\"applicant\":\"admin\",\"applicantId\":1,\"applicantDepartment\":\"北京交通运输职业学院\",\"applicantDepartmentId\":1,\"positionCode\":\"1\",\"positionName\":\"丰田T-TEP整车实训区\",\"failureTime\":\"2020-10-17\",\"faultDescription\":\"1111\",\"attachmentName\":\"\",\"attachmentPath\":\"\",\"createTime\":\"2020-10-17 10:37:30\",\"updateTime\":\"2020-10-17 10:37:30\",\"createYear\":\"2020\",\"pendingPerson\":\"admin\",\"pendingPersonId\":1,\"flowTypeName\":\"设备维修\",\"flowTypeCode\":\"equipment_maintenance\",\"createMonth\":\"10\",\"roomId\":null,\"roomName\":null},\"extra\":null}');
INSERT INTO `sys_log` VALUES (285, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CoursesReTrainingRoomController.create(CoursesReTrainingRoom)', 38, '课程关联实训室创建', '处理成功', '2020-10-17 10:48:06', 'http://127.0.0.1:8889/tt/coursesretrainingroom/create', '{\"id\":3,\"roomId\":5,\"roomCode\":null,\"roomName\":\"吉利汽车实训室\",\"belongSysId\":2,\"belongSys\":\"汽车工程系\",\"roomPositionCode\":1,\"roomPosition\":\"丰田T-TEP整车实训区\",\"roomAdminId\":1,\"roomAdmin\":\"admin\",\"courseId\":5,\"createTime\":\"2020-10-17 10:48:06\",\"updateTime\":\"2020-10-17 10:48:06\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (286, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.create(CourseArrangement)', 20, '排课管理排课创建', '处理成功', '2020-10-17 10:50:08', 'http://127.0.0.1:8889/tt/coursearrangement/create', '{\"cellStyleMap\":{},\"id\":9,\"weekId\":1,\"weekName\":\"2020年 第19周 (5月4日-5月10日)\",\"sectionName\":\"1-3\",\"courseName\":\"丰田汽车培训课\",\"courseId\":5,\"className\":\"15汽运01\",\"classId\":\"5\",\"numberOfPeople\":2,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"teacher\",\"regionalTeacherId\":26,\"assistantTeacher\":\"admin\",\"assistantTeacherId\":1,\"trainingRoomName\":\"丰田实训室\",\"trainingRoomId\":4,\"teachingPlanName\":\"第一节发动机\",\"teachingPlanId\":4,\"trainingContent\":\"\",\"numberOfDevices\":0,\"numberOfConsumables\":0,\"createTime\":\"2020-10-17 10:50:09\",\"updateTime\":\"2020-10-17 10:50:09\",\"numberOfTools\":0,\"isLock\":null,\"courseDate\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (287, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.update(CourseArrangement)', 0, '排课管理排课更新', NULL, '2020-11-02 13:44:41', 'http://127.0.0.1:8889/tt/coursearrangement/update', '{\"cellStyleMap\":{},\"id\":7,\"weekId\":null,\"weekName\":null,\"sectionName\":null,\"courseName\":\"丰田汽车培训课\",\"courseId\":5,\"className\":\"15汽运01\",\"classId\":\"5\",\"numberOfPeople\":2,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"admin\",\"regionalTeacherId\":1,\"assistantTeacher\":\"admin\",\"assistantTeacherId\":1,\"trainingRoomName\":\"丰田实训室\",\"trainingRoomId\":4,\"teachingPlanName\":\"第一节发动机\",\"teachingPlanId\":4,\"trainingContent\":\"1\",\"numberOfDevices\":null,\"numberOfConsumables\":null,\"createTime\":null,\"updateTime\":\"2020-11-02 13:44:41\",\"numberOfTools\":null,\"isLock\":null,\"classHour\":null,\"courseDate\":null}', 'NullPointerException');
INSERT INTO `sys_log` VALUES (288, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.update(CourseArrangement)', 52, '排课管理排课更新', '处理成功', '2020-11-02 13:47:21', 'http://127.0.0.1:8889/tt/coursearrangement/update', '{\"cellStyleMap\":{},\"id\":9,\"weekId\":null,\"weekName\":null,\"sectionName\":null,\"courseName\":\"丰田汽车培训课\",\"courseId\":5,\"className\":\"15汽运01\",\"classId\":\"5\",\"numberOfPeople\":2,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"teacher\",\"regionalTeacherId\":26,\"assistantTeacher\":\"admin\",\"assistantTeacherId\":1,\"trainingRoomName\":\"丰田实训室\",\"trainingRoomId\":4,\"teachingPlanName\":\"第一节发动机\",\"teachingPlanId\":4,\"trainingContent\":\"1\",\"numberOfDevices\":null,\"numberOfConsumables\":null,\"createTime\":null,\"updateTime\":\"2020-11-02 13:47:21\",\"numberOfTools\":null,\"isLock\":null,\"classHour\":\"3\",\"courseDate\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (289, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.update(CourseArrangement)', 26, '排课管理排课更新', '处理成功', '2020-11-02 13:47:42', 'http://127.0.0.1:8889/tt/coursearrangement/update', '{\"cellStyleMap\":{},\"id\":8,\"weekId\":null,\"weekName\":null,\"sectionName\":null,\"courseName\":\"吉利汽车实训课\",\"courseId\":6,\"className\":\"15汽运01\",\"classId\":\"5\",\"numberOfPeople\":2,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"admin\",\"regionalTeacherId\":1,\"assistantTeacher\":\"teacher\",\"assistantTeacherId\":26,\"trainingRoomName\":\"吉利汽车实训室\",\"trainingRoomId\":5,\"teachingPlanName\":\"第一节教案\",\"teachingPlanId\":5,\"trainingContent\":\"吉利汽车历史\",\"numberOfDevices\":null,\"numberOfConsumables\":null,\"createTime\":null,\"updateTime\":\"2020-11-02 13:47:42\",\"numberOfTools\":null,\"isLock\":null,\"classHour\":\"2\",\"courseDate\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (290, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.update(CourseArrangement)', 76, '排课管理排课更新', '处理成功', '2020-11-02 13:47:46', 'http://127.0.0.1:8889/tt/coursearrangement/update', '{\"cellStyleMap\":{},\"id\":7,\"weekId\":null,\"weekName\":null,\"sectionName\":null,\"courseName\":\"丰田汽车培训课\",\"courseId\":5,\"className\":\"15汽运01\",\"classId\":\"5\",\"numberOfPeople\":2,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"admin\",\"regionalTeacherId\":1,\"assistantTeacher\":\"admin\",\"assistantTeacherId\":1,\"trainingRoomName\":\"丰田实训室\",\"trainingRoomId\":4,\"teachingPlanName\":\"第一节发动机\",\"teachingPlanId\":4,\"trainingContent\":\"1\",\"numberOfDevices\":null,\"numberOfConsumables\":null,\"createTime\":null,\"updateTime\":\"2020-11-02 13:47:46\",\"numberOfTools\":null,\"isLock\":null,\"classHour\":\"2\",\"courseDate\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (291, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.create(CourseArrangement)', 21, '排课管理排课创建', '处理成功', '2020-11-02 13:48:31', 'http://127.0.0.1:8889/tt/coursearrangement/create', '{\"cellStyleMap\":{},\"id\":10,\"weekId\":1,\"weekName\":\"2020年 第19周 (5月4日-5月10日)\",\"sectionName\":\"1-1\",\"courseName\":\"丰田汽车培训课\",\"courseId\":5,\"className\":\"15汽运01\",\"classId\":\"5\",\"numberOfPeople\":2,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"admin\",\"regionalTeacherId\":1,\"assistantTeacher\":\"admin\",\"assistantTeacherId\":1,\"trainingRoomName\":\"丰田实训室\",\"trainingRoomId\":4,\"teachingPlanName\":\"第一节发动机\",\"teachingPlanId\":4,\"trainingContent\":\"\",\"numberOfDevices\":0,\"numberOfConsumables\":0,\"createTime\":\"2020-11-02 13:48:31\",\"updateTime\":\"2020-11-02 13:48:31\",\"numberOfTools\":0,\"isLock\":null,\"classHour\":\"1\",\"courseDate\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (292, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.WeekYearController.create(WeekYear)', 48, '年度周信息创建', '处理成功', '2020-11-02 15:16:18', 'http://127.0.0.1:8889/tt/weekyear/create', '{\"cellStyleMap\":{},\"id\":3,\"weekName\":\"2020年11月第一周\",\"startDate\":\"11-02\",\"endDate\":\"11-07\",\"year\":\"2020\",\"remark\":\"2020年11月第一周\",\"createTime\":\"2020-11-02 15:16:18\",\"updateTime\":\"2020-11-02 15:16:18\"}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');
INSERT INTO `sys_log` VALUES (293, 'admin', '127.0.0.1', 'POST HTTP/1.1', 'Result tech.wetech.admin.modules.training.web.CourseArrangementController.create(CourseArrangement)', 9, '排课管理排课创建', '处理成功', '2020-11-02 15:16:57', 'http://127.0.0.1:8889/tt/coursearrangement/create', '{\"cellStyleMap\":{},\"id\":11,\"weekId\":3,\"weekName\":\"2020年11月第一周\",\"sectionName\":\"1-4\",\"courseName\":\"丰田汽车培训课\",\"courseId\":5,\"className\":\"15汽运01\",\"classId\":\"5\",\"numberOfPeople\":2,\"lecturerlTeacher\":\"admin\",\"lecturerlTeacherId\":1,\"regionalTeacher\":\"teacher\",\"regionalTeacherId\":26,\"assistantTeacher\":\"admin\",\"assistantTeacherId\":1,\"trainingRoomName\":\"丰田实训室\",\"trainingRoomId\":4,\"teachingPlanName\":\"第一节发动机\",\"teachingPlanId\":4,\"trainingContent\":\"\",\"numberOfDevices\":0,\"numberOfConsumables\":0,\"createTime\":\"2020-11-02 15:16:57\",\"updateTime\":\"2020-11-02 15:16:57\",\"numberOfTools\":0,\"isLock\":null,\"classHour\":\"4\",\"courseDate\":null}', '{\"success\":true,\"code\":\"200\",\"msg\":\"处理成功\",\"data\":{},\"extra\":null}');

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
) ENGINE = InnoDB AUTO_INCREMENT = 41215 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES (1, '资源', 'MENU', '#', 0, '0/', '', 1, '', 0, 0);
INSERT INTO `sys_resource` VALUES (31, '资源管理', 'MENU', '#', 1, '0/1/', 'resource:*', 1, 'fa fa-desktop', 6, 0);
INSERT INTO `sys_resource` VALUES (32, '资源新增', 'BUTTON', '', 31, '0/1/31/', 'resource:create', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (33, '资源修改', 'BUTTON', '', 31, '0/1/31/', 'resource:update', 1, '', NULL, 0);
INSERT INTO `sys_resource` VALUES (34, '资源删除', 'BUTTON', '', 31, '0/1/31/', 'resource:delete', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (35, '资源查看', 'BUTTON', '', 31, '0/1/31/', 'resource:view', 1, NULL, NULL, 0);
INSERT INTO `sys_resource` VALUES (41, '系统管理', 'MENU', '#', 1, '0/1/', 'system:*', 1, 'fa fa-gear', 5, 0);
INSERT INTO `sys_resource` VALUES (50, '资源管理', 'MENU', '#resource', 31, '0/1/', 'resource:*', 1, '', NULL, 1);
INSERT INTO `sys_resource` VALUES (51, '设备管理', 'MENU', '#', 1, '0/1/', '', 1, 'fa fa-codepen', 2, 0);
INSERT INTO `sys_resource` VALUES (52, '仪器耗材', 'MENU', '#', 1, '0/1/', '', 1, 'fa fa-wrench', 3, 0);
INSERT INTO `sys_resource` VALUES (53, '课程管理', 'MENU', '#', 1, '0/1/', '', 1, 'fa fa-table', 4, 0);
INSERT INTO `sys_resource` VALUES (59, '首页', 'MENU', '#main', 1, '0/1/', 'main:*', 1, 'fa fa-home', 1, 1);
INSERT INTO `sys_resource` VALUES (411, '用户管理', 'MENU', '#', 41, '0/1/41/', '', 1, '', 1, 0);
INSERT INTO `sys_resource` VALUES (412, '组织机构管理', 'MENU', '#', 41, '0/1/41/', 'organization:*', 1, '', 2, 0);
INSERT INTO `sys_resource` VALUES (413, '类型管理', 'MENU', '#assetclassification', 41, '0/1/41/', 'assetclassification:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (414, '位置管理', 'MENU', '#position', 41, '0/1/41/', 'position:*', 1, '', 4, 1);
INSERT INTO `sys_resource` VALUES (415, '学生管理', 'MENU', '#student', 41, '0/1/41/', 'student:*', 1, '', 5, 1);
INSERT INTO `sys_resource` VALUES (416, '周管理', 'MENU', '#weekyear', 41, '0/1/41/', 'weekyear:*', 1, '', 6, 1);
INSERT INTO `sys_resource` VALUES (417, '系统日志', 'MENU', '#log', 41, '0/1/41/', 'log:*', 1, '', 7, 1);
INSERT INTO `sys_resource` VALUES (511, '台账管理', 'MENU', '#', 51, '0/1/51/', '', 1, '', 1, 0);
INSERT INTO `sys_resource` VALUES (512, '设备巡检', 'MENU', '#', 51, '0/1/51/', '', 1, '', 2, 0);
INSERT INTO `sys_resource` VALUES (513, '设备维修', 'MENU', '#', 51, '0/1/51/', '', 1, '', 3, 0);
INSERT INTO `sys_resource` VALUES (521, '耗材管理', 'MENU', '#', 52, '0/1/52/', '', 1, '', 1, 0);
INSERT INTO `sys_resource` VALUES (522, '仪器工具管理', 'MENU', '#', 52, '0/1/52/', '', 1, '', 2, 0);
INSERT INTO `sys_resource` VALUES (523, '领用及归还', 'MENU', '#collectionrecord/showedit', 52, '0/1/52/', 'collectionrecord:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (531, '课程管理', 'MENU', '#', 53, '0/1/53/', '', 1, '', 1, 0);
INSERT INTO `sys_resource` VALUES (532, '教案管理', 'MENU', '#', 53, '0/1/53/', '', 1, '', 2, 0);
INSERT INTO `sys_resource` VALUES (533, '课程实施', 'MENU', '#', 53, '0/1/53/', '', 1, '', 3, 0);
INSERT INTO `sys_resource` VALUES (4111, '系统用户', 'MENU', '#user', 411, '0/1/41/411/', 'user:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (4112, '角色管理', 'MENU', '#role', 411, '0/1/41/411/', 'role:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (4113, '用户组管理', 'MENU', '#group', 411, '0/1/41/411/', 'group:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (4121, '组织机构', 'MENU', '#organization', 412, '0/1/41/412/', 'organization:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5111, '实训室明细', 'MENU', '#trainingroom', 511, '0/1/51/511/', 'trainingroom:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5112, '设备台账', 'MENU', '#asset', 511, '0/1/51/511/', 'asset:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5113, '设备详情', 'BUTTON', '#asset/detail', 511, '0/1/51/511/', 'asset:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (5121, '巡检管理', 'MENU', '#inspectionplanyear', 512, '0/1/51/512/', 'inspectionplanyear:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5122, '巡检记录', 'BUTTON', '#inspectionplan', 512, '0/1/51/512/', 'inspectionplan:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5123, '巡检详情', 'BUTTON', '#inspectionrecord', 512, '0/1/51/512/', 'inspectionrecord:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (5124, '巡检填写', 'BUTTON', '#inspectionrecord/show', 512, '0/1/51/512/', 'inspectionrecord:*', 1, '', 4, 1);
INSERT INTO `sys_resource` VALUES (5131, '维修申请', 'MENU', '#failureconfirmation', 513, '0/1/51/513/', 'failureconfirmation:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5132, '维修流程', 'BUTTON', '#maintenancerecordresults', 513, '0/1/51/513/', 'maintenancerecordresults:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5133, '维修记录', 'MENU', '#maintenancerecord', 513, '0/1/51/513/', 'maintenancerecord:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (5134, '维修审批', 'BUTTON', '#maintenancerecordresults', 513, '0/1/51/513/', 'directorapproval:*', 1, '', 4, 1);
INSERT INTO `sys_resource` VALUES (5135, '维修节点', 'BUTTON', '#flowdetail', 513, '0/1/51/513/', 'flowdetail:*', 1, '', 5, 1);
INSERT INTO `sys_resource` VALUES (5136, '维修编辑', 'BUTTON', '#maintenancerecord/edit', 513, '0/1/51/513/', 'maintenancerecord:*', 1, '', 6, 1);
INSERT INTO `sys_resource` VALUES (5137, '节点管理', 'BUTTON', '#flownode', 513, '0/1/51/513/', 'flownode:*', 1, '', 7, 1);
INSERT INTO `sys_resource` VALUES (5211, '耗材管理', 'MENU', '#consumables', 521, '0/1/52/521/', 'consumables:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5212, '耗材详情', 'BUTTON', '#warehousingrecord', 521, '0/1/52/521/', 'warehousingrecord:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5221, '工具管理', 'MENU', '#tools', 522, '0/1/52/522/', 'tools:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5222, '工具详情', 'BUTTON', '#collectionrecord', 522, '0/1/52/522/', 'collectionrecord:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5223, '维修申请', 'MENU', '#failureconfirmation/toolfailureconfirmation', 522, '0/1/52/522/', 'toolfailureconfirmation:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (5224, '维修记录', 'MENU', '#maintenancerecord/toolmaintenancerecord', 522, '0/1/52/522/', 'toolmaintenancerecord:*', 1, '', 4, 1);
INSERT INTO `sys_resource` VALUES (5225, '维修编辑', 'BUTTON', '#maintenancerecord/tooledit', 522, '0/1/52/522/', 'maintenancerecord:*', 1, '', 5, 1);
INSERT INTO `sys_resource` VALUES (5311, '课程设计', 'MENU', '#courses', 531, '0/1/53/531/', 'courses:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5312, '课程章节', 'BUTTON', '#chapters', 531, '0/1/53/531/', 'chapters:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5313, '课程实训室', 'BUTTON', '#courses/coursesretrainingroompage', 531, '0/1/53/531/', 'coursesretrainingroom:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (5321, '教案设计', 'MENU', '#teachingplan', 532, '0/1/53/532/', 'teachingplan:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5322, '教案编辑', 'BUTTON', ' #teachingplan/editpage', 532, '0/1/53/532/', 'teachingplan:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5323, '教案上传', 'BUTTON', ' #', 532, '0/1/53/532/', 'file:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (5324, '教案列表', 'BUTTON', ' #', 532, '0/1/53/532/', 'teachingplanrefile:*', 1, '', 4, 1);
INSERT INTO `sys_resource` VALUES (5331, '排课管理', 'MENU', '#coursearrangement', 533, '0/1/53/533/', 'coursearrangement:*', 1, '', 1, 1);
INSERT INTO `sys_resource` VALUES (5332, '排课资产关联', 'BUTTON', '#coursearrangementreasset', 533, '0/1/53/533/', 'coursearrangementreasset:*', 1, '', 2, 1);
INSERT INTO `sys_resource` VALUES (5333, '排课耗材关联', 'BUTTON', '#coursearrangementreconsumables', 533, '0/1/53/533/', 'coursearrangementreconsumables:*', 1, '', 3, 1);
INSERT INTO `sys_resource` VALUES (5334, '排课工具关联', 'BUTTON', '#coursearrangementretool', 533, '0/1/53/533/', 'coursearrangementretool:*', 1, '', 4, 1);
INSERT INTO `sys_resource` VALUES (41111, '用户新增', 'BUTTON', '', 4111, '0/1/41/411/4111/', 'user:create', 1, NULL, 1, 0);
INSERT INTO `sys_resource` VALUES (41112, '用户修改', 'BUTTON', '', 4111, '0/1/41/411/4111/', 'user:update', 1, '', 2, 0);
INSERT INTO `sys_resource` VALUES (41113, '用户删除', 'BUTTON', '', 4111, '0/1/41/411/4111/', 'user:delete', 1, NULL, 3, 0);
INSERT INTO `sys_resource` VALUES (41114, '用户查看', 'BUTTON', '', 4111, '0/1/41/411/4111/', 'user:view', 1, NULL, 4, 0);
INSERT INTO `sys_resource` VALUES (41121, '角色新增', 'BUTTON', '', 4112, '0/1/41/411/4112/', 'role:create', 1, NULL, 1, 0);
INSERT INTO `sys_resource` VALUES (41122, '角色修改', 'BUTTON', '', 4112, '0/1/41/411/4112/', 'role:update', 1, NULL, 2, 0);
INSERT INTO `sys_resource` VALUES (41123, '角色删除', 'BUTTON', '', 4112, '0/1/41/411/4112/', 'role:delete', 1, NULL, 3, 0);
INSERT INTO `sys_resource` VALUES (41124, '角色查看', 'BUTTON', '', 4112, '0/1/41/411/4112/', 'role:view', 1, NULL, 4, 0);
INSERT INTO `sys_resource` VALUES (41131, '用户组新增', 'BUTTON', '', 4113, '0/1/41/411/4113/', 'group:create', 1, '', 1, 0);
INSERT INTO `sys_resource` VALUES (41132, '用户组修改', 'BUTTON', '', 4113, '0/1/41/411/4113/', 'group:update', 1, '', 2, 0);
INSERT INTO `sys_resource` VALUES (41133, '用户组删除', 'BUTTON', '', 4113, '0/1/41/411/4113/', 'group:delete', 1, '', 3, 0);
INSERT INTO `sys_resource` VALUES (41134, '用户组查看', 'BUTTON', '#', 4113, '0/1/41/411/4113/', 'group:view', 1, '', 4, 0);
INSERT INTO `sys_resource` VALUES (41211, '组织机构新增', 'BUTTON', '', 4121, '0/1/41/412/4121/', 'organization:create', 1, NULL, 1, 0);
INSERT INTO `sys_resource` VALUES (41212, '组织机构修改', 'BUTTON', '', 4121, '0/1/41/412/4121/', 'organization:update', 1, NULL, 2, 0);
INSERT INTO `sys_resource` VALUES (41213, '组织机构删除', 'BUTTON', '', 4121, '0/1/41/412/4121/', 'organization:delete', 1, NULL, 3, 0);
INSERT INTO `sys_resource` VALUES (41214, '组织机构查看', 'BUTTON', '', 4121, '0/1/41/412/4121/', 'organization:view', 1, NULL, 4, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'admin', '超级管理员', '11,21,31,41,46,59,69,70,83,411,412,413,414,415,416,417,523,4111,4112,4113,4121,5111,5112,5113,5121,5122,5123,5124,5131,5132,5133,5134,5135,5136,5137,5211,5212,5221,5222,5223,5224,5225,5311,5312,5313,5321,5322,5323,5324,5331,5331,5332,5333,5334', 0);
INSERT INTO `sys_role` VALUES (2, 'guest', '访客', '15,35', 0);
INSERT INTO `sys_role` VALUES (7, '实训室管理员', '实训室管理员', '59,511,5111,5112', 0);
INSERT INTO `sys_role` VALUES (8, '设备管理员', '设备管理员', '59,511,512,5112,5121,5122,5123', 0);
INSERT INTO `sys_role` VALUES (9, '教师', '教师', '59,532,5321,5322', 0);
INSERT INTO `sys_role` VALUES (10, '主任', '主任', '59,512,5121,5122,5123,51231', 0);
INSERT INTO `sys_role` VALUES (11, '耗材管理员', '耗材管理员', '59,521,5211,5212', 0);
INSERT INTO `sys_role` VALUES (12, '工具管理员', '工具管理员', '59,522,5221,5222', 0);
INSERT INTO `sys_role` VALUES (13, '课程管理员', '课程管理员', '53,59,531,532,533,5311,5312,5321,5322,5331', 0);
INSERT INTO `sys_role` VALUES (14, 'test', '测试', '1,31,41,51,52,53,59', 0);

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
  `asset_user_id` int(11) DEFAULT NULL COMMENT '资产使用人编号',
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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_asset
-- ----------------------------
INSERT INTO `t_asset` VALUES (8, 'FTJJC001', '5', '教具车', '丰田教具车', 20000, '2020-07-20', NULL, '丰田教具车001', 'admin', 1, '1', '丰田T-TEP整车实训区', '汽车工程系', 2, NULL, NULL, '正常', 'asset_status_normal', '2020-07-20 15:26:14', '2020-08-08 17:09:31', NULL, 4, '丰田实训室', 1);
INSERT INTO `t_asset` VALUES (10, 'FTJJC003', '1', '教学用机电实验仪器', '丰田教具车', 30000, '2020-07-20', NULL, '丰田教具车003', 'admin', 1, '1', '丰田T-TEP整车实训区', '汽车工程系', 2, NULL, NULL, '正常', 'asset_status_normal', '2020-07-20 15:31:58', '2020-07-20 15:31:58', NULL, 4, '丰田实训室', 1);
INSERT INTO `t_asset` VALUES (11, 'SB00001', '1', '教学用机电实验仪器', '吉利教具车', 20000, '2020-08-08', NULL, '吉利教具车', 'admin', 1, '1', '丰田T-TEP整车实训区', '汽车工程系', 2, NULL, NULL, '正常', 'asset_status_normal', '2020-08-08 17:07:54', '2020-08-08 17:07:54', NULL, 5, '吉利汽车实训室', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_chapters
-- ----------------------------
INSERT INTO `t_chapters` VALUES (11, '课程大纲', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0, '2020-07-20 15:54:05', '2020-07-20 15:54:05', 0);
INSERT INTO `t_chapters` VALUES (12, '第一章 汽车结构', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 11, '2020-07-20 15:54:31', '2020-07-20 15:54:31', 0);
INSERT INTO `t_chapters` VALUES (13, '第一节 发动机', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 12, '2020-07-20 15:54:45', '2020-07-20 15:54:45', 1);
INSERT INTO `t_chapters` VALUES (14, '课程大纲', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0, '2020-08-09 16:56:39', '2020-08-09 16:56:39', 0);
INSERT INTO `t_chapters` VALUES (15, '第一章', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 14, '2020-08-09 17:09:11', '2020-08-09 17:09:11', 0);
INSERT INTO `t_chapters` VALUES (16, '第一节', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 15, '2020-08-09 17:10:26', '2020-08-09 17:10:26', 1);

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
  `collection_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '领用时间',
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
  `is_collected` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否领用 0 否 1是',
  `is_returned` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否归还 0 否 1是',
  `re_id` int(11) DEFAULT NULL COMMENT '排课关联资源表编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_collection_record
-- ----------------------------
INSERT INTO `t_collection_record` VALUES (13, 2, '拆装工具', '工具', 'asset_type_tool', '2020-07-21 11:07:27', '汽车工程系', 2, '丰田汽车培训课', 5, 'admin', 1, '2', '2020-07-21 11:07:31', NULL, '2020-07-21 11:07:03', '2020-07-21 11:07:31', NULL, NULL, '2020', 'admin', 1, 'CR2020072113', '拆装工具领用申请', '1', '1', 11);
INSERT INTO `t_collection_record` VALUES (14, 3, '闪亮发动机机油', '耗材', 'asset_type_consumables', '2020-07-21 11:24:23', '汽车工程系', 2, '丰田汽车培训课', 5, 'admin', 1, '2', NULL, NULL, '2020-07-21 11:23:58', '2020-07-21 11:24:23', NULL, NULL, '2020', 'admin', 1, 'CR2020072114', '闪亮发动机机油领用申请', '1', '0', 8);
INSERT INTO `t_collection_record` VALUES (15, 2, '拆装工具', '工具', 'asset_type_tool', NULL, '汽车工程系', 2, '丰田汽车培训课', 5, 'admin', 1, '2', NULL, NULL, '2020-07-22 08:38:36', '2020-07-22 08:38:36', NULL, NULL, '2020', 'admin', 1, 'CR2020072215', '拆装工具领用申请', '0', '0', 12);
INSERT INTO `t_collection_record` VALUES (16, 3, '闪亮发动机机油', '耗材', 'asset_type_consumables', NULL, '汽车工程系', 2, '丰田汽车培训课', 5, 'admin', 1, '2', NULL, NULL, '2020-07-22 08:47:21', '2020-07-22 08:47:21', NULL, NULL, '2020', 'admin', 1, 'CR2020072216', '闪亮发动机机油领用申请', '0', '0', 9);
INSERT INTO `t_collection_record` VALUES (17, 4, '长城润滑油', '耗材', 'asset_type_consumables', NULL, '汽车工程系', 2, '吉利汽车实训课', 6, 'admin', 1, '2', NULL, NULL, '2020-08-09 17:44:19', '2020-08-09 17:44:19', NULL, NULL, '2020', 'admin', 1, 'CR2020080917', '长城润滑油领用申请', '0', '0', 10);
INSERT INTO `t_collection_record` VALUES (18, 3, '千斤顶', '工具', 'asset_type_tool', NULL, '汽车工程系', 2, '吉利汽车实训课', 6, 'admin', 1, '2', NULL, NULL, '2020-08-09 17:47:21', '2020-08-09 17:47:21', NULL, NULL, '2020', 'admin', 1, 'CR2020080918', '千斤顶领用申请', '0', '0', 13);

-- ----------------------------
-- Table structure for t_consumables
-- ----------------------------
DROP TABLE IF EXISTS `t_consumables`;
CREATE TABLE `t_consumables`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '   ',
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
  `used_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '已用数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_consumables
-- ----------------------------
INSERT INTO `t_consumables` VALUES (3, NULL, '闪亮发动机机油', '2020-07-20', 'SL001', NULL, NULL, '1', '丰田T-TEP整车实训区', 'admin', 1, '20', '16', '4', '16', '2020-07-20 15:40:08', '2020-07-20 15:40:08', '9', '发动机机油', '4');
INSERT INTO `t_consumables` VALUES (4, NULL, '长城润滑油', '2020-08-09', 'CC00001', NULL, NULL, '3', '教学楼二段二层南侧', 'admin', 1, '20', '18', '2', '18', '2020-08-09 12:05:26', '2020-08-09 12:05:26', '16', '润滑脂', '0');

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
  `number_of_tools` int(11) DEFAULT NULL COMMENT '工具数量',
  `is_lock` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '是否锁定 0 否 1 是',
  `course_date` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程日期2020-06-28',
  `class_hour` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课时',
  `week_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '星期几',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_course_arrangement
-- ----------------------------
INSERT INTO `t_course_arrangement` VALUES (6, 1, '2020年 第19周 (5月4日-5月10日)', '2-4', '丰田汽车培训课', 5, '15汽运01', '5', 2, 'admin', 1, 'admin', 1, 'admin', 1, '丰田实训室', 4, '第一节发动机', 4, '', 0, 0, '2020-07-21 10:21:43', '2020-07-21 10:21:43', 0, '1', NULL, '3', '5');
INSERT INTO `t_course_arrangement` VALUES (7, 1, '2020年 第19周 (5月4日-5月10日)', '3-4', '丰田汽车培训课', 5, '15汽运01', '5', 2, 'admin', 1, 'admin', 1, 'admin', 1, '丰田实训室', 4, '第一节发动机', 4, '1', 0, 0, '2020-07-22 08:38:22', '2020-11-02 13:47:46', 0, '0', NULL, '2', '4');
INSERT INTO `t_course_arrangement` VALUES (8, 1, '2020年 第19周 (5月4日-5月10日)', '4-5', '吉利汽车实训课', 6, '15汽运01', '5', 2, 'admin', 1, 'admin', 1, 'teacher', 26, '吉利汽车实训室', 5, '第一节教案', 5, '吉利汽车历史', 0, 0, '2020-08-09 17:30:35', '2020-11-02 13:47:42', 0, '0', NULL, '2', '3');
INSERT INTO `t_course_arrangement` VALUES (9, 1, '2020年 第19周 (5月4日-5月10日)', '1-3', '丰田汽车培训课', 5, '15汽运01', '5', 2, 'admin', 1, 'teacher', 26, 'admin', 1, '丰田实训室', 4, '第一节发动机', 4, '1', 0, 0, '2020-10-17 10:50:09', '2020-11-02 13:47:21', 0, '0', NULL, '3', '2');
INSERT INTO `t_course_arrangement` VALUES (10, 1, '2020年 第19周 (5月4日-5月10日)', '1-1', '丰田汽车培训课', 5, '15汽运01', '5', 2, 'admin', 1, 'admin', 1, 'admin', 1, '丰田实训室', 4, '第一节发动机', 4, '', 0, 0, '2020-11-02 13:48:31', '2020-11-02 13:48:31', 0, '0', NULL, '1', '2');
INSERT INTO `t_course_arrangement` VALUES (11, 3, '2020年11月第一周', '1-4', '丰田汽车培训课', 5, '15汽运01', '5', 2, 'admin', 1, 'teacher', 26, 'admin', 1, '丰田实训室', 4, '第一节发动机', 4, '', 0, 0, '2020-11-02 15:16:57', '2020-11-02 15:16:57', 0, '0', NULL, '4', '1');

-- ----------------------------
-- Table structure for t_course_arrangement_re_asset
-- ----------------------------
DROP TABLE IF EXISTS `t_course_arrangement_re_asset`;
CREATE TABLE `t_course_arrangement_re_asset`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '排课管理和资产关联编号（系统自动生成）',
  `course_arrangement_id` int(11) DEFAULT NULL COMMENT '排课管理编号',
  `asset_id` int(11) DEFAULT NULL COMMENT '资产编号',
  `asset_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产编号',
  `asset_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源名称',
  `asset_classification_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类编号',
  `asset_classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产分类名称',
  `asset_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产状态',
  `asset_status_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产状态编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_course_arrangement_re_asset
-- ----------------------------
INSERT INTO `t_course_arrangement_re_asset` VALUES (1, 6, 8, NULL, '丰田教具车', '5', '教具车', '正常', 'asset_status_normal', '2020-07-21 10:26:42', '2020-07-21 10:26:42');
INSERT INTO `t_course_arrangement_re_asset` VALUES (2, 8, 11, NULL, '吉利教具车', '1', '教学用机电实验仪器', '正常', 'asset_status_normal', '2020-08-09 17:39:45', '2020-08-09 17:39:45');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_course_arrangement_re_consumables
-- ----------------------------
INSERT INTO `t_course_arrangement_re_consumables` VALUES (8, 6, 3, NULL, '闪亮发动机机油', 'SL001', NULL, '1', '丰田T-TEP整车实训区', 2, '2020-07-21 11:23:58', '2020-07-21 11:23:58');
INSERT INTO `t_course_arrangement_re_consumables` VALUES (9, 7, 3, NULL, '闪亮发动机机油', 'SL001', NULL, '1', '丰田T-TEP整车实训区', 2, '2020-07-22 08:47:21', '2020-07-22 08:47:21');
INSERT INTO `t_course_arrangement_re_consumables` VALUES (10, 8, 4, NULL, '长城润滑油', 'CC00001', NULL, '3', '教学楼二段二层南侧', 2, '2020-08-09 17:44:19', '2020-08-09 17:44:19');

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
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `number_of_applications` int(11) DEFAULT NULL COMMENT '申请数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_course_arrangement_re_tool
-- ----------------------------
INSERT INTO `t_course_arrangement_re_tool` VALUES (11, 6, 2, NULL, '拆装工具', '21', '通用拆装工具', NULL, NULL, '2020-07-21 11:07:03', '2020-07-21 11:07:03', 2);
INSERT INTO `t_course_arrangement_re_tool` VALUES (12, 7, 2, NULL, '拆装工具', '21', '通用拆装工具', NULL, NULL, '2020-07-22 08:38:36', '2020-07-22 08:38:36', 2);
INSERT INTO `t_course_arrangement_re_tool` VALUES (13, 8, 3, NULL, '千斤顶', '19', '教学用机电实验仪器', NULL, NULL, '2020-08-09 17:47:21', '2020-08-09 17:47:21', 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_courses
-- ----------------------------
INSERT INTO `t_courses` VALUES (5, 'FTKC001', '丰田汽车培训课', '实训课', 'course_type_practical_training_course', 'admin', 1, NULL, '2020-07-20 15:54:05', '2020-08-09 16:58:06');
INSERT INTO `t_courses` VALUES (6, 'KC0001', '吉利汽车实训课', '实训课', 'course_type_practical_training_course', 'admin', 1, NULL, '2020-08-09 16:56:39', '2020-08-09 16:56:39');

-- ----------------------------
-- Table structure for t_courses_re_training_room
-- ----------------------------
DROP TABLE IF EXISTS `t_courses_re_training_room`;
CREATE TABLE `t_courses_re_training_room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `room_id` int(11) DEFAULT NULL COMMENT '实训室编号（系统自动生成）',
  `room_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实训室编码（自编）',
  `room_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实训室名称',
  `belong_sys_id` int(11) DEFAULT NULL COMMENT '所属系统编号',
  `belong_sys` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属系',
  `room_position_code` int(11) DEFAULT NULL COMMENT '位置信息编号',
  `room_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置',
  `room_admin_id` int(11) DEFAULT NULL COMMENT '管理员编号',
  `room_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理员',
  `course_id` int(11) DEFAULT NULL COMMENT '课程编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_courses_re_training_room
-- ----------------------------
INSERT INTO `t_courses_re_training_room` VALUES (1, 4, NULL, '丰田实训室', 2, '汽车工程系', 1, '丰田T-TEP整车实训区', 1, 'admin', 5, '2020-07-20 15:55:54', '2020-07-20 15:55:54');
INSERT INTO `t_courses_re_training_room` VALUES (2, 5, NULL, '吉利汽车实训室', 2, '汽车工程系', 1, '丰田T-TEP整车实训区', 1, 'admin', 6, '2020-08-09 17:05:15', '2020-08-09 17:05:15');
INSERT INTO `t_courses_re_training_room` VALUES (3, 5, NULL, '吉利汽车实训室', 2, '汽车工程系', 1, '丰田T-TEP整车实训区', 1, 'admin', 5, '2020-10-17 10:48:06', '2020-10-17 10:48:06');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_director_approval
-- ----------------------------
INSERT INTO `t_director_approval` VALUES (3, 'admin', 1, '北京交通运输职业学院', 1, 1, '1111', 3, '2020-07-20 15:38:20', '2020-07-20 15:38:20');
INSERT INTO `t_director_approval` VALUES (4, 'admin', 1, '北京交通运输职业学院', 1, 1, '111', 5, '2020-07-20 15:53:20', '2020-07-20 15:53:20');
INSERT INTO `t_director_approval` VALUES (5, 'admin', 1, '北京交通运输职业学院', 1, 1, 'test', 8, '2020-08-09 12:38:21', '2020-08-09 12:38:21');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_failure_confirmation
-- ----------------------------
INSERT INTO `t_failure_confirmation` VALUES (3, 'admin', 1, '北京交通运输职业学院', 1, 1, '2000', '上门维修', 'maintenance_type_door_to_door', 'xxxx', NULL, '111', '', '', 3, '2020-07-20 15:38:13', '2020-07-20 15:38:13');
INSERT INTO `t_failure_confirmation` VALUES (4, 'admin', 1, '北京交通运输职业学院', 1, 1, '200', '上门维修', 'maintenance_type_door_to_door', 'xxx', NULL, '111', '', '', 5, '2020-07-20 15:53:03', '2020-07-20 15:53:03');
INSERT INTO `t_failure_confirmation` VALUES (5, 'admin', 1, '北京交通运输职业学院', 1, 1, '2000', '上门维修', 'maintenance_type_door_to_door', '测试单位', NULL, '', '', '', 8, '2020-08-09 12:38:12', '2020-08-09 12:38:12');

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
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_flow_detail
-- ----------------------------
INSERT INTO `t_flow_detail` VALUES (10, 'admin', 1, '设备管理员', 8, '填写位置在丰田T-TEP整车实训区的丰田教具车设备维修单', '2020-07-20', '2020-07-20 15:34:29', '2020-07-20 15:34:29', 3, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (11, 'admin', 1, '设备管理员', 8, '填写位置在丰田T-TEP整车实训区的丰田教具车设备维修单', '2020-07-20', '2020-07-20 15:36:38', '2020-07-20 15:36:38', 4, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (12, 'admin', 1, NULL, NULL, '确认设备故障', NULL, '2020-07-20 15:38:13', '2020-07-20 15:38:13', 3, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (13, 'admin', 1, NULL, NULL, '审批设备维修单', NULL, '2020-07-20 15:38:20', '2020-07-20 15:38:20', 3, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (14, 'admin', 1, NULL, NULL, '填写设备维修结果', NULL, '2020-07-20 15:38:59', '2020-07-20 15:38:59', 3, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (15, 'admin', 1, '设备管理员', 8, '填写位置在丰田T-TEP整车实训区的拆装工具设备维修单', '2020-07-20', '2020-07-20 15:52:26', '2020-07-20 15:52:26', 5, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (16, 'admin', 1, NULL, NULL, '确认设备故障', NULL, '2020-07-20 15:53:03', '2020-07-20 15:53:03', 5, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (17, 'admin', 1, NULL, NULL, '审批设备维修单', NULL, '2020-07-20 15:53:20', '2020-07-20 15:53:20', 5, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (18, 'admin', 1, NULL, NULL, '填写设备维修结果', NULL, '2020-07-20 15:53:26', '2020-07-20 15:53:26', 5, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (19, 'admin', 1, '设备管理员', 8, '填写位置在丰田T-TEP整车实训区的拆装工具设备维修单', '2020-07-22', '2020-07-22 08:47:57', '2020-07-22 08:47:57', 6, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (20, 'admin', 1, '设备管理员', 8, '填写位置在丰田T-TEP整车实训区的吉利教具车设备维修单', '2020-08-09', '2020-08-09 11:26:35', '2020-08-09 11:26:35', 7, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (21, 'admin', 1, '设备管理员', 8, '填写位置在北校区后勤服务中心的千斤顶设备维修单', '2020-08-09', '2020-08-09 12:34:59', '2020-08-09 12:34:59', 8, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (22, 'admin', 1, NULL, NULL, '确认设备故障', NULL, '2020-08-09 12:38:12', '2020-08-09 12:38:12', 8, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (23, 'admin', 1, NULL, NULL, '审批设备维修单', NULL, '2020-08-09 12:38:21', '2020-08-09 12:38:21', 8, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (24, 'admin', 1, NULL, NULL, '填写设备维修结果', NULL, '2020-08-09 12:38:28', '2020-08-09 12:38:28', 8, '设备维修', 'equipment_maintenance');
INSERT INTO `t_flow_detail` VALUES (25, 'admin', 1, '设备管理员', 8, '填写位置在丰田T-TEP整车实训区的丰田教具车设备维修单', '2020-10-17', '2020-10-17 10:37:30', '2020-10-17 10:37:30', 9, '设备维修', 'equipment_maintenance');

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
  `plan_year_id` int(11) DEFAULT NULL COMMENT '年度巡检计划编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_inspection_plan
-- ----------------------------
INSERT INTO `t_inspection_plan` VALUES (7, 4, '丰田实训室', 'admin', 1, 2, 1, 0, 1, '2020-07-20', '2020-07-20 15:33:32', '2020-10-17 10:36:09', '0', 4);
INSERT INTO `t_inspection_plan` VALUES (8, 4, '丰田实训室', 'admin', 1, 2, 1, 0, 1, '2020-07-22', '2020-07-22 08:48:16', '2020-10-17 10:37:22', '0', 4);
INSERT INTO `t_inspection_plan` VALUES (9, 4, '丰田实训室', 'admin', 1, NULL, NULL, NULL, NULL, '2020-08-09', '2020-08-09 10:51:18', '2020-08-09 10:51:18', NULL, 4);

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_inspection_plan_year
-- ----------------------------
INSERT INTO `t_inspection_plan_year` VALUES (4, 4, '丰田实训室', 'admin', 1, '日', 'inspection_cycle_day', 24, 1, 1, 0, NULL, '2020-07-20 15:33:24', '2020-08-09 10:44:56', '2020');
INSERT INTO `t_inspection_plan_year` VALUES (5, 5, '吉利汽车实训室', 'admin', 1, '月', 'inspection_cycle_month', 12, NULL, NULL, NULL, NULL, '2020-08-09 10:37:33', '2020-08-09 10:37:33', '2020');

-- ----------------------------
-- Table structure for t_inspection_record
-- ----------------------------
DROP TABLE IF EXISTS `t_inspection_record`;
CREATE TABLE `t_inspection_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '巡检记录编号',
  `asset_id` int(11) DEFAULT NULL COMMENT '资产id',
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_inspection_record
-- ----------------------------
INSERT INTO `t_inspection_record` VALUES (2, 8, 'FTJJC001', '5', '教具车', '维修', 'asset_status_repair', 1, '无法启动', 7, '2020-07-20 15:34:18', '2020-10-17 10:36:09', 'MR202007204', '丰田教具车');
INSERT INTO `t_inspection_record` VALUES (3, 10, 'FTJJC003', '1', '教学用机电实验仪器', '正常', 'asset_status_normal', 0, '', 7, '2020-07-20 15:34:18', '2020-10-17 10:36:09', NULL, '丰田教具车');
INSERT INTO `t_inspection_record` VALUES (4, 8, 'FTJJC001', '5', '教具车', '维修', 'asset_status_repair', 1, '11', 8, '2020-10-17 10:37:22', '2020-10-17 10:37:22', NULL, '丰田教具车');
INSERT INTO `t_inspection_record` VALUES (5, 10, 'FTJJC003', '1', '教学用机电实验仪器', '正常', 'asset_status_normal', 0, '', 8, '2020-10-17 10:37:22', '2020-10-17 10:37:22', NULL, '丰田教具车');

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
  `flow_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程类型名称 设备维修 工具仪器维修',
  `flow_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程类型编号 equipment_maintenance tools_maintenance ',
  `create_month` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建月份',
  `room_id` int(11) DEFAULT NULL COMMENT '实训室编号',
  `room_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实训室名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_maintenance_record
-- ----------------------------
INSERT INTO `t_maintenance_record` VALUES (3, 'MR202007203', '测试检修单', 8, NULL, '丰田教具车', '5', '教具车', 'em_end', '维修完成', '2000', 'admin', 1, '北京交通运输职业学院', 1, '1', '丰田T-TEP整车实训区', '2020-07-20', '无法启动', '', '', '2020-07-20 15:34:29', '2020-07-20 15:38:59', '2020', '', 0, '设备维修', 'equipment_maintenance', '07', NULL, NULL);
INSERT INTO `t_maintenance_record` VALUES (4, 'MR202007204', '测试检修单', 8, NULL, '丰田教具车', '5', '教具车', 'em_confirmed', '待确认', NULL, 'admin', 1, '北京交通运输职业学院', 1, '1', '丰田T-TEP整车实训区', '2020-07-20', '无法启动', '', '', '2020-07-20 15:36:38', '2020-07-20 15:36:38', '2020', 'admin', 1, '设备维修', 'equipment_maintenance', '07', NULL, NULL);
INSERT INTO `t_maintenance_record` VALUES (5, 'MR202007205', '工具维修', 2, NULL, '拆装工具', '21', '通用拆装工具', 'em_end', '维修完成', '100', 'admin', 1, '北京交通运输职业学院', 1, '1', '丰田T-TEP整车实训区', '2020-07-20', '仪器故障', '', '', '2020-07-20 15:52:26', '2020-07-20 15:53:26', '2020', '', 0, '工具仪器维修', 'tools_maintenance', '07', NULL, NULL);
INSERT INTO `t_maintenance_record` VALUES (6, 'MR202007226', '拆装工具维修', 2, NULL, '拆装工具', '21', '通用拆装工具', 'em_confirmed', '待确认', NULL, 'admin', 1, '北京交通运输职业学院', 1, '1', '丰田T-TEP整车实训区', '2020-07-22', 'tst', '', '', '2020-07-22 08:47:57', '2020-07-22 08:47:57', '2020', 'admin', 1, '工具仪器维修', 'tools_maintenance', '07', NULL, NULL);
INSERT INTO `t_maintenance_record` VALUES (7, 'MR202008097', '吉利桥车维修单', 11, NULL, '吉利教具车', '1', '教学用机电实验仪器', 'em_confirmed', '待确认', NULL, 'admin', 1, '北京交通运输职业学院', 1, '1', '丰田T-TEP整车实训区', '2020-08-09', '', '', '', '2020-08-09 11:26:35', '2020-08-09 11:26:35', '2020', 'admin', 1, '设备维修', 'equipment_maintenance', '08', NULL, NULL);
INSERT INTO `t_maintenance_record` VALUES (8, 'MR202008098', '千斤顶维修申请', 3, NULL, '千斤顶', '19', '教学用机电实验仪器', 'em_end', '维修完成', '2000', 'admin', 1, '北京交通运输职业学院', 1, '2', '北校区后勤服务中心', '2020-08-09', 'test', '', '', '2020-08-09 12:34:59', '2020-08-09 12:38:28', '2020', '', 0, '工具仪器维修', 'tools_maintenance', '08', NULL, NULL);
INSERT INTO `t_maintenance_record` VALUES (9, 'MR202010179', '111', 8, NULL, '丰田教具车', '5', '教具车', 'em_confirmed', '待确认', NULL, 'admin', 1, '北京交通运输职业学院', 1, '1', '丰田T-TEP整车实训区', '2020-10-17', '1111', '', '', '2020-10-17 10:37:30', '2020-10-17 10:37:30', '2020', 'admin', 1, '设备维修', 'equipment_maintenance', '10', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_maintenance_record_results
-- ----------------------------
INSERT INTO `t_maintenance_record_results` VALUES (3, 'admin', 1, '北京交通运输职业学院', 1, 1, '2000', '111', 3, '2020-07-20 15:38:59', '2020-07-20 15:38:59', '正常', 'asset_status_normal');
INSERT INTO `t_maintenance_record_results` VALUES (4, 'admin', 1, '北京交通运输职业学院', 1, 1, '100', '11', 5, '2020-07-20 15:53:26', '2020-07-20 15:53:26', '正常', 'asset_status_normal');
INSERT INTO `t_maintenance_record_results` VALUES (5, 'admin', 1, '北京交通运输职业学院', 1, 1, '2000', 't', 8, '2020-08-09 12:38:28', '2020-08-09 12:38:28', '正常', 'asset_status_normal');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_position
-- ----------------------------
INSERT INTO `t_position` VALUES (1, 'P1001', '丰田T-TEP整车实训区', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_position` VALUES (2, 'P1002', '北校区后勤服务中心', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_position` VALUES (3, 'P1003', '教学楼二段二层南侧', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_position` VALUES (4, 'P1004', '南校区教学楼二段一层北侧', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_position` VALUES (5, 'P1005', '南校区汽车系', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_position` VALUES (6, 'P1006', '南校区汽车系办公楼一层新能源实训室', '2020-04-29 08:00:00', '2020-04-29 08:00:00');
INSERT INTO `t_position` VALUES (7, '1231243123', '测试111', '2020-08-09 19:08:43', '2020-08-09 19:09:44');

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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `t_pub_code` VALUES (8, 'asset_status_scrapped', '待报废', 'asset_status', 'as', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '资产状态 报废');
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
INSERT INTO `t_pub_code` VALUES (24, 'devices_maintenance', '设备维修', 'matter_type', 'mat', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '待办事项类别');
INSERT INTO `t_pub_code` VALUES (25, 'consumables_collect', '耗材申请', 'matter_type', 'mat', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '待办事项类别');
INSERT INTO `t_pub_code` VALUES (26, 'tools_collect', '工具申请', 'matter_type', 'mat', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '待办事项类别');
INSERT INTO `t_pub_code` VALUES (27, 'devices_inspection', '设备巡检', 'matter_type', 'mat', '2020-04-22 16:52:00', '2020-04-22 16:52:00', '待办事项类别');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES (1, 'Jim', '1', '18', '123123', '123123', '1231313', NULL, '2020-07-20 16:41:14', '2020-07-20 16:41:14', 2, '汽车工程系', 5, '15汽运01');
INSERT INTO `t_student` VALUES (2, 'Lucy', '0', '123', '123123', '12312312', '1231231', NULL, '2020-07-20 16:41:26', '2020-07-20 16:41:26', 2, '汽车工程系', 5, '15汽运01');
INSERT INTO `t_student` VALUES (3, 'test', '1', '12', '123123', '123123', '2312312312', NULL, '2020-08-09 19:14:15', '2020-08-09 19:16:05', 3, '道路桥梁系', 9, '16新能源01');

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
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_summary_statistics_date
-- ----------------------------
INSERT INTO `t_summary_statistics_date` VALUES (1, '实训室数', 'training_room_total_num', '20', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (2, '设备数', 'devices_total_num', '20', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (3, '维修设备数', 'repairing_devices_total_num', '2', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (4, '耗材数', 'consumables_total_num', '20', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (5, '教具车', 'AC1005', '4', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '设备分类统计', 'statistics_type_device_classification');
INSERT INTO `t_summary_statistics_date` VALUES (6, '发动机机油', 'AC1009', '32', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '耗材分类统计', 'statistics_type_consumables_classification');
INSERT INTO `t_summary_statistics_date` VALUES (7, '通用拆装工具', 'AC1021', '5', '无', '2020-05-23', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '工具分类统计', 'statistics_type_tool_classification');
INSERT INTO `t_summary_statistics_date` VALUES (8, '实训室数', 'training_room_total_num', '2', '', '2020-06-30', '2020-06-30 17:04:11', '2020-06-30 18:00:29', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (9, '设备数', 'devices_total_num', '3', '', '2020-06-30', '2020-06-30 17:23:17', '2020-06-30 18:00:29', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (10, '维修设备数', 'repairing_devices_total_num', '0', '', '2020-06-30', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (11, '维修工具仪器数', 'repairing_tools_total_num', '0', '', '2020-06-30', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (12, '耗材数', 'consumables_total_num', '2', '', '2020-06-30', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (13, '工具仪器数', 'tools_total_num', '1', '', '2020-06-30', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (14, '教学用机电实验仪器', '1', '3', '', '2020-06-30', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '设备分类统计', 'statistics_type_device_classification');
INSERT INTO `t_summary_statistics_date` VALUES (15, '发动机机油', '9', '1', '', '2020-06-30', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '耗材分类统计', 'statistics_type_device_classification');
INSERT INTO `t_summary_statistics_date` VALUES (16, '发动机机油滤清器', 'AC1010', '1', '', '2020-06-30', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '耗材分类统计', 'statistics_type_device_classification');
INSERT INTO `t_summary_statistics_date` VALUES (17, '教学用机电实验仪器', '1', '1', '', '2020-06-30', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '工具分类统计', 'statistics_type_tool_classification');
INSERT INTO `t_summary_statistics_date` VALUES (18, '实训室数', 'training_room_total_num', '1', '', '2020-07-20', '2020-07-20 17:26:59', '2020-07-20 17:26:59', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (19, '设备数', 'devices_total_num', '2', '', '2020-07-20', '2020-07-20 17:26:59', '2020-07-20 17:26:59', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (20, '维修设备数', 'repairing_devices_total_num', '0', '', '2020-07-20', '2020-07-20 17:26:59', '2020-07-20 17:26:59', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (21, '维修工具仪器数', 'repairing_tools_total_num', '0', '', '2020-07-20', '2020-07-20 17:26:59', '2020-07-20 17:26:59', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (22, '耗材数', 'consumables_total_num', '1', '', '2020-07-20', '2020-07-20 17:26:59', '2020-07-20 17:26:59', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (23, '工具仪器数', 'tools_total_num', '1', '', '2020-07-20', '2020-07-20 17:26:59', '2020-07-20 17:26:59', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (24, '教具车', '5', '1', '', '2020-07-20', '2020-07-20 17:26:59', '2020-07-20 17:26:59', '设备分类统计', 'statistics_type_device_classification');
INSERT INTO `t_summary_statistics_date` VALUES (25, '教学用机电实验仪器', '1', '1', '', '2020-07-20', '2020-07-20 17:26:59', '2020-07-20 17:26:59', '设备分类统计', 'statistics_type_device_classification');
INSERT INTO `t_summary_statistics_date` VALUES (26, '发动机机油', '9', '1', '', '2020-07-20', '2020-07-20 17:26:59', '2020-07-20 17:26:59', '耗材分类统计', 'statistics_type_device_classification');
INSERT INTO `t_summary_statistics_date` VALUES (27, '通用拆装工具', '21', '1', '', '2020-07-20', '2020-07-20 17:26:59', '2020-07-20 17:26:59', '工具分类统计', 'statistics_type_tool_classification');
INSERT INTO `t_summary_statistics_date` VALUES (28, '实训室数', 'training_room_total_num', '1', '', '2020-07-21', '2020-07-21 19:07:38', '2020-07-21 19:09:41', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (29, '设备数', 'devices_total_num', '2', '', '2020-07-21', '2020-07-21 19:07:38', '2020-07-21 19:09:41', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (30, '维修设备数', 'repairing_devices_total_num', '0', '', '2020-07-21', '2020-07-21 19:07:38', '2020-07-21 19:09:41', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (31, '维修工具仪器数', 'repairing_tools_total_num', '0', '', '2020-07-21', '2020-07-21 19:07:38', '2020-07-21 19:09:41', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (32, '耗材数', 'consumables_total_num', '1', '', '2020-07-21', '2020-07-21 19:07:38', '2020-07-21 19:09:41', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (33, '工具仪器数', 'tools_total_num', '1', '', '2020-07-21', '2020-07-21 19:07:38', '2020-07-21 19:09:41', '汇总统计', 'statistics_type_summary');
INSERT INTO `t_summary_statistics_date` VALUES (34, '教具车', '5', '1', '', '2020-07-21', '2020-07-21 19:07:38', '2020-07-21 19:09:41', '设备分类统计', 'statistics_type_device_classification');
INSERT INTO `t_summary_statistics_date` VALUES (35, '教学用机电实验仪器', '1', '1', '', '2020-07-21', '2020-07-21 19:07:38', '2020-07-21 19:09:41', '设备分类统计', 'statistics_type_device_classification');
INSERT INTO `t_summary_statistics_date` VALUES (36, '发动机机油', '9', '1', '', '2020-07-21', '2020-07-21 19:07:38', '2020-07-21 19:09:41', '耗材分类统计', 'statistics_type_device_classification');
INSERT INTO `t_summary_statistics_date` VALUES (37, '通用拆装工具', '21', '1', '', '2020-07-21', '2020-07-21 19:07:38', '2020-07-21 19:09:41', '工具分类统计', 'statistics_type_tool_classification');

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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_summary_statistics_month
-- ----------------------------
INSERT INTO `t_summary_statistics_month` VALUES (1, '实训室数', 'training_room_total_num', '20', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (2, '设备数', 'devices_total_num', '20', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (3, '维修设备数', 'repairing_devices_total_num', '2', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (4, '耗材数', 'consumables_total_num', '20', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (5, '教具车', 'AC1005', '4', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '设备分类统计', 'statistics_type_device_classification', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (6, '发动机机油', 'AC1009', '32', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '耗材分类统计', 'statistics_type_consumables_classification', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (7, '通用拆装工具', 'AC1021', '5', '无', '2020-05', '2020-04-29 08:00:00', '2020-04-29 08:00:00', '工具分类统计', 'statistics_type_tool_classification', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (8, '实训室数', 'training_room_total_num', '2', '', '2020-06', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (9, '设备数', 'devices_total_num', '3', '', '2020-06', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (10, '维修设备数', 'repairing_devices_total_num', '0', '', '2020-06', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (11, '维修工具仪器数', 'repairing_tools_total_num', '0', '', '2020-06', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (12, '耗材数', 'consumables_total_num', '2', '', '2020-06', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (13, '工具仪器数', 'tools_total_num', '1', '', '2020-06', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (14, '教学用机电实验仪器', '1', '3', '', '2020-06', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '设备分类统计', 'statistics_type_device_classification', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (15, '发动机机油', '9', '1', '', '2020-06', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '耗材分类统计', 'statistics_type_device_classification', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (16, '发动机机油滤清器', 'AC1010', '1', '', '2020-06', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '耗材分类统计', 'statistics_type_device_classification', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (17, '教学用机电实验仪器', '1', '1', '', '2020-06', '2020-06-30 17:33:09', '2020-06-30 18:00:29', '工具分类统计', 'statistics_type_tool_classification', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (18, '实训室数', 'training_room_total_num', '1', '', '2020-07', '2020-07-20 17:26:59', '2020-07-21 19:09:41', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (19, '设备数', 'devices_total_num', '2', '', '2020-07', '2020-07-20 17:26:59', '2020-07-21 19:09:41', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (20, '维修设备数', 'repairing_devices_total_num', '0', '', '2020-07', '2020-07-20 17:26:59', '2020-07-21 19:09:41', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (21, '维修工具仪器数', 'repairing_tools_total_num', '0', '', '2020-07', '2020-07-20 17:26:59', '2020-07-21 19:09:41', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (22, '耗材数', 'consumables_total_num', '1', '', '2020-07', '2020-07-20 17:26:59', '2020-07-21 19:09:41', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (23, '工具仪器数', 'tools_total_num', '1', '', '2020-07', '2020-07-20 17:26:59', '2020-07-21 19:09:41', '汇总统计', 'statistics_type_summary', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (24, '教具车', '5', '1', '', '2020-07', '2020-07-20 17:26:59', '2020-07-21 19:09:41', '设备分类统计', 'statistics_type_device_classification', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (25, '教学用机电实验仪器', '1', '1', '', '2020-07', '2020-07-20 17:26:59', '2020-07-21 19:09:41', '设备分类统计', 'statistics_type_device_classification', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (26, '发动机机油', '9', '1', '', '2020-07', '2020-07-20 17:26:59', '2020-07-21 19:09:41', '耗材分类统计', 'statistics_type_device_classification', '2020');
INSERT INTO `t_summary_statistics_month` VALUES (27, '通用拆装工具', '21', '1', '', '2020-07', '2020-07-20 17:26:59', '2020-07-21 19:09:41', '工具分类统计', 'statistics_type_tool_classification', '2020');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_teaching_plan
-- ----------------------------
INSERT INTO `t_teaching_plan` VALUES (4, '第一节发动机', '30', '第一节发动机', NULL, NULL, NULL, NULL, 13, '2020-07-20 15:56:57', '2020-07-20 15:56:57');
INSERT INTO `t_teaching_plan` VALUES (5, '第一节教案', '30', '讲述吉利汽车发展史', NULL, NULL, NULL, NULL, 16, '2020-08-09 17:19:33', '2020-08-09 17:19:33');

-- ----------------------------
-- Table structure for t_teaching_plan_re_file
-- ----------------------------
DROP TABLE IF EXISTS `t_teaching_plan_re_file`;
CREATE TABLE `t_teaching_plan_re_file`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名称',
  `file_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件路径',
  `teching_plan_id` int(11) DEFAULT NULL COMMENT '教案编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_teaching_plan_re_file
-- ----------------------------
INSERT INTO `t_teaching_plan_re_file` VALUES (1, '需要的资料', 'D:/result_dir/files/20200720/0794288e5ac7441c8558dfa407306642.txt', 4, '2020-07-20 15:57:38', '2020-07-20 15:57:38');
INSERT INTO `t_teaching_plan_re_file` VALUES (2, '问题', 'D:/result_dir/files/20200809/a8676c8415f042e79248bbc16683925c.txt', 5, '2020-08-09 17:22:29', '2020-08-09 17:22:29');

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
  `asset_user_id` int(11) DEFAULT NULL COMMENT '资产使用人编号',
  `position_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置编号',
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置名称',
  `use_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '使用部门',
  `use_department_id` int(11) DEFAULT NULL COMMENT '使用部门编号',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `cumulative_receipt_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '累计入库数量',
  `total_existing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '现存总数',
  `cumulative_collected_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '累计领用数量',
  `remaining_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '剩余数量',
  `repairing_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '正在维修数量',
  `to_be_scrapped_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '待报废数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_tools
-- ----------------------------
INSERT INTO `t_tools` VALUES (2, 'GJ0001', '21', '通用拆装工具', '拆装工具', NULL, NULL, '通用拆装工具', NULL, 'admin', 1, '1', '丰田T-TEP整车实训区', '汽车工程系', 2, '2020-07-20 15:51:49', '2020-08-09 12:26:18', '20', '20', '2', '18', '0', '0');
INSERT INTO `t_tools` VALUES (3, 'GJ0002', '19', '教学用机电实验仪器', '千斤顶', NULL, NULL, 'QJD0001', NULL, 'admin', 1, '2', '北校区后勤服务中心', '汽车工程系', 2, '2020-08-09 12:25:17', '2020-08-09 12:25:17', '10', '10', '2', '8', '0', '0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_training_room
-- ----------------------------
INSERT INTO `t_training_room` VALUES ('丰田实训室', '汽车工程系', '丰田T-TEP整车实训区', 'admin', NULL, NULL, 1, '2020-07-20 15:25:35', 4, 2, 1, 1, NULL, '2020-07-20 15:25:35');
INSERT INTO `t_training_room` VALUES ('吉利汽车实训室', '汽车工程系', '丰田T-TEP整车实训区', 'admin', NULL, NULL, 1, '2020-08-08 16:42:05', 5, 2, 1, 1, NULL, '2020-08-08 16:42:05');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_warehousing_record
-- ----------------------------
INSERT INTO `t_warehousing_record` VALUES (7, 3, '闪亮发动机机油', '耗材', 'asset_type_consumables', '2020-07-20', '200', '20', '1', '丰田T-TEP整车实训区', 'admin', 1, NULL, '2020-07-20 15:40:15', '2020-07-20 15:40:15');
INSERT INTO `t_warehousing_record` VALUES (8, 2, '拆装工具', '工具', 'asset_type_tool', '2020-07-20', '300', '20', '1', '丰田T-TEP整车实训区', 'admin', 1, NULL, '2020-07-20 15:51:58', '2020-07-20 15:51:58');
INSERT INTO `t_warehousing_record` VALUES (9, 4, '长城润滑油', '耗材', 'asset_type_consumables', '2020-08-09', '100', '20', '3', '教学楼二段二层南侧', 'admin', 1, NULL, '2020-08-09 12:11:04', '2020-08-09 12:11:04');
INSERT INTO `t_warehousing_record` VALUES (10, 3, '千斤顶', '工具', 'asset_type_tool', '2020-08-09', '300', '10', '2', '北校区后勤服务中心', 'admin', 1, NULL, '2020-08-09 12:28:04', '2020-08-09 12:28:04');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_week_year
-- ----------------------------
INSERT INTO `t_week_year` VALUES (1, '2020年 第19周 (5月4日-5月10日)', '05-04', '05-10', '2020', '无', '2020-04-22 16:52:00', '2020-04-22 16:52:00');
INSERT INTO `t_week_year` VALUES (2, 'test', '08-03', '08-09', '2020', 'tst', '2020-08-09 19:22:03', '2020-08-09 19:22:55');
INSERT INTO `t_week_year` VALUES (3, '2020年11月第一周', '11-02', '11-07', '2020', '2020年11月第一周', '2020-11-02 15:16:18', '2020-11-02 15:16:18');

SET FOREIGN_KEY_CHECKS = 1;
