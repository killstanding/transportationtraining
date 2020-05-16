package tech.wetech.admin.modules.training.service;

import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.Tools;

public interface ToolsService extends IService<Tools> {
	void updateCodeById(Tools record);
}