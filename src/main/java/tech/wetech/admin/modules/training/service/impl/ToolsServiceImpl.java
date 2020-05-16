package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.ToolsMapper;
import tech.wetech.admin.modules.training.po.Tools;
import tech.wetech.admin.modules.training.service.ToolsService;

@Service
public class ToolsServiceImpl extends BaseService<Tools> implements ToolsService{
	
	@Autowired
	private ToolsMapper mapper;
	
	@Override
	public void updateCodeById(Tools record) {
		// TODO Auto-generated method stub
		mapper.updateCodeById(record);
	}
}