package tech.wetech.admin.modules.training.mapper;

import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.ToolsNew;

public interface ToolsNewMapper extends MyMapper<ToolsNew> {
	
	void updateCodeById(ToolsNew record);
}