INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (1, '资源', 'MENU', '#', 0, '0/', '', 1, '', 0, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (31, '资源管理', 'MENU', '#', 1, '0/1/', 'resource:*', 1, 'fa fa-desktop', 6, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (32, '资源新增', 'BUTTON', '', 31, '0/1/31/', 'resource:create', 1, NULL, NULL, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (33, '资源修改', 'BUTTON', '', 31, '0/1/31/', 'resource:update', 1, '', NULL, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (34, '资源删除', 'BUTTON', '', 31, '0/1/31/', 'resource:delete', 1, NULL, NULL, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (35, '资源查看', 'BUTTON', '', 31, '0/1/31/', 'resource:view', 1, NULL, NULL, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41, '系统管理', 'MENU', '#', 1, '0/1/', 'system:*', 1, 'fa fa-gear', 5, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (50, '资源管理', 'MENU', '#resource', 31, '0/1/', 'resource:*', 1, '', NULL, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (51, '设备管理', 'MENU', '#', 1, '0/1/', '', 1, 'fa fa-codepen', 2, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (52, '耗材工具', 'MENU', '#', 1, '0/1/', '', 1, 'fa fa-wrench', 3, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (53, '课程管理', 'MENU', '#', 1, '0/1/', '', 1, 'fa fa-table', 4, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (59, '首页', 'MENU', '#main', 1, '0/1/', 'main:*', 1, 'fa fa-home', 1, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (411, '用户管理', 'MENU', '#', 41, '0/1/41/', '', 1, '', 1, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (412, '组织机构管理', 'MENU', '#', 41, '0/1/41/', 'organization:*', 1, '', 2, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (413, '系统日志', 'MENU', '#log', 41, '0/1/41/', 'log:*', 1, '', 3, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (511, '设备管理', 'MENU', '#', 51, '0/1/51/', '', 1, '', 1, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (512, '设备巡检', 'MENU', '#', 51, '0/1/51/', '', 1, '', 2, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (513, '设备维修', 'MENU', '#', 51, '0/1/51/', '', 1, '', 3, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (521, '耗材管理', 'MENU', '#', 52, '0/1/52/', '', 1, '', 1, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (522, '工具管理', 'MENU', '#', 52, '0/1/52/', '', 1, '', 2, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (531, '课程管理', 'MENU', '#', 53, '0/1/53/', '', 1, '', 1, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (532, '教案管理', 'MENU', '#', 53, '0/1/53/', '', 1, '', 2, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (533, '课程实施', 'MENU', '#', 53, '0/1/53/', '', 1, '', 3, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (4111, '系统用户', 'MENU', '#user', 411, '0/1/41/411/', 'user:*', 1, '', 1, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (4112, '角色管理', 'MENU', '#role', 411, '0/1/41/411/', 'role:*', 1, '', 2, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (4113, '用户组管理', 'MENU', '#group', 411, '0/1/41/411/', 'group:*', 1, '', 3, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (4121, '组织机构', 'MENU', '#organization', 412, '0/1/41/412/', 'organization:*', 1, '', 1, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5111, '实训室管理', 'MENU', '#trainingroom', 511, '0/1/51/511/', 'trainingroom:*', 1, '', 1, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5112, '设备管理', 'MENU', '#asset', 511, '0/1/51/511/', 'asset:*', 1, '', 2, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5121, '巡检管理', 'MENU', '#inspectionplanyear', 512, '0/1/51/512/', 'inspectionplanyear:*', 1, '', 1, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5122, '巡检记录', 'BUTTON', '#inspectionplan', 512, '0/1/51/512/', 'inspectionplan:*', 1, '', 2, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5123, '巡检详情', 'BUTTON', '#inspectionrecord', 512, '0/1/51/512/', 'inspectionrecord:*', 1, '', 3, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5124, '巡检填写', 'BUTTON', '#inspectionrecord/show', 512, '0/1/51/512/', 'inspectionrecord:*', 1, '', 4, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5131, '维修申请', 'MENU', '#failureconfirmation', 513, '0/1/51/513/', 'failureconfirmation:*', 1, '', 1, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5132, '维修流程', 'BUTTON', '#maintenancerecordresults', 513, '0/1/51/513/', 'maintenancerecordresults:*', 1, '', 2, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5133, '维修记录', 'MENU', '#maintenancerecord', 513, '0/1/51/513/', 'maintenancerecord:*', 1, '', 3, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5134, '维修审批', 'BUTTON', '#maintenancerecordresults', 513, '0/1/51/513/', 'directorapproval:*', 1, '', 4, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5135, '维修节点', 'BUTTON', '#flowdetail', 513, '0/1/51/513/', 'flowdetail:*', 1, '', 5, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5136, '维修编辑', 'BUTTON', '#maintenancerecord/edit', 513, '0/1/51/513/', 'maintenancerecord:*', 1, '', 6, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5211, '耗材管理', 'MENU', '#consumables', 521, '0/1/52/521/', 'consumables:*', 1, '', 1, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5212, '耗材详情', 'BUTTON', '#warehousingrecord', 521, '0/1/52/521/', 'warehousingrecord:*', 1, '', 2, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5221, '工具管理', 'MENU', '#tools', 522, '0/1/52/522/', 'tools:*', 1, '', 1, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5222, '工具详情', 'BUTTON', '#collectionrecord', 522, '0/1/52/522/', 'collectionrecord:*', 1, '', 2, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5311, '课程设计', 'MENU', '#courses', 531, '0/1/53/531/', 'courses:*', 1, '', 1, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5312, '课程章节', 'BUTTON', '#chapters', 531, '0/1/53/531/', 'chapters:*', 1, '', 2, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5321, '教案设计', 'MENU', '#teachingplan', 532, '0/1/53/532/', 'teachingplan:*', 1, '', 1, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5322, '教案编辑', 'BUTTON', ' #teachingplan/editpage', 532, '0/1/53/532/', 'teachingplan:*', 1, '', 2, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5323, '教案上传', 'BUTTON', ' #', 532, '0/1/53/532/', 'file:*', 1, '', 3, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5331, '排课管理', 'MENU', '#coursearrangement', 533, '0/1/53/533/', 'coursearrangement:*', 1, '', 1, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5332, '排课资产关联', 'BUTTON', '#coursearrangementreasset', 533, '0/1/53/533/', 'coursearrangementreasset:*', 1, '', 2, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (5333, '排课耗材关联', 'BUTTON', '#coursearrangementreconsumables', 533, '0/1/53/533/', 'coursearrangementreconsumables:*', 1, '', 3, 1);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41111, '用户新增', 'BUTTON', '', 4111, '0/1/41/411/4111/', 'user:create', 1, NULL, 1, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41112, '用户修改', 'BUTTON', '', 4111, '0/1/41/411/4111/', 'user:update', 1, '', 2, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41113, '用户删除', 'BUTTON', '', 4111, '0/1/41/411/4111/', 'user:delete', 1, NULL, 3, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41114, '用户查看', 'BUTTON', '', 4111, '0/1/41/411/4111/', 'user:view', 1, NULL, 4, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41121, '角色新增', 'BUTTON', '', 4112, '0/1/41/411/4112/', 'role:create', 1, NULL, 1, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41122, '角色修改', 'BUTTON', '', 4112, '0/1/41/411/4112/', 'role:update', 1, NULL, 2, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41123, '角色删除', 'BUTTON', '', 4112, '0/1/41/411/4112/', 'role:delete', 1, NULL, 3, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41124, '角色查看', 'BUTTON', '', 4112, '0/1/41/411/4112/', 'role:view', 1, NULL, 4, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41131, '用户组新增', 'BUTTON', '', 4113, '0/1/41/411/4113/', 'group:create', 1, '', 1, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41132, '用户组修改', 'BUTTON', '', 4113, '0/1/41/411/4113/', 'group:update', 1, '', 2, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41133, '用户组删除', 'BUTTON', '', 4113, '0/1/41/411/4113/', 'group:delete', 1, '', 3, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41134, '用户组查看', 'BUTTON', '#', 4113, '0/1/41/411/4113/', 'group:view', 1, '', 4, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41211, '组织机构新增', 'BUTTON', '', 4121, '0/1/41/412/4121/', 'organization:create', 1, NULL, 1, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41212, '组织机构修改', 'BUTTON', '', 4121, '0/1/41/412/4121/', 'organization:update', 1, NULL, 2, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41213, '组织机构删除', 'BUTTON', '', 4121, '0/1/41/412/4121/', 'organization:delete', 1, NULL, 3, 0);
INSERT INTO `sys_resource`(`id`, `name`, `type`, `url`, `parent_id`, `parent_ids`, `permission`, `available`, `icon`, `priority`, `leaf`) VALUES (41214, '组织机构查看', 'BUTTON', '', 4121, '0/1/41/412/4121/', 'organization:view', 1, NULL, 4, 0);
