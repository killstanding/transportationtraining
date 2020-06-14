package tech.wetech.admin.modules.training.service;

import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.ToolsNew;

public interface ToolsNewService extends IService<ToolsNew> {
	void updateCodeById(ToolsNew record);
}