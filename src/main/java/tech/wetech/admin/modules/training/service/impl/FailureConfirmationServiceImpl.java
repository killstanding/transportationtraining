package tech.wetech.admin.modules.training.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.FailureConfirmationMapper;
import tech.wetech.admin.modules.training.po.FailureConfirmation;
import tech.wetech.admin.modules.training.service.FailureConfirmationService;

@Service
public class FailureConfirmationServiceImpl extends BaseService<FailureConfirmation> implements FailureConfirmationService{
	@Autowired
	private FailureConfirmationMapper mapper;
}