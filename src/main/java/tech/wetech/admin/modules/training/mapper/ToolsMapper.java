package tech.wetech.admin.modules.training.mapper;

import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.Tools;

public interface ToolsMapper extends MyMapper<Tools> {
	void updateCodeById(Tools record);
}