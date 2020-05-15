package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.DirectorApprovalMapper;
import tech.wetech.admin.modules.training.po.DirectorApproval;
import tech.wetech.admin.modules.training.service.DirectorApprovalService;

public class DirectorApprovalServiceImpl extends BaseService<DirectorApproval> implements DirectorApprovalService{
	@Autowired
	private DirectorApprovalMapper mapper;
}