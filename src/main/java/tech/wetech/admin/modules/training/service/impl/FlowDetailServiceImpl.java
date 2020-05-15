package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.FlowDetailMapper;
import tech.wetech.admin.modules.training.po.FlowDetail;
import tech.wetech.admin.modules.training.service.FlowDetailService;

public class FlowDetailServiceImpl extends BaseService<FlowDetail> implements FlowDetailService{
	@Autowired
	private FlowDetailMapper mapper;
}