package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.FlowNodeMapper;
import tech.wetech.admin.modules.training.po.FlowNode;
import tech.wetech.admin.modules.training.service.FlowNodeService;

@Service
public class FlowNodeServiceImpl extends BaseService<FlowNode> implements FlowNodeService{
	@Autowired
	private FlowNodeMapper mapper;
}