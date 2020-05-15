package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.MaintenanceRecordResultsMapper;
import tech.wetech.admin.modules.training.po.MaintenanceRecordResults;
import tech.wetech.admin.modules.training.service.MaintenanceRecordResultsService;

public class MaintenanceRecordResultsServiceImpl extends BaseService<MaintenanceRecordResults> implements MaintenanceRecordResultsService{
	@Autowired
	private MaintenanceRecordResultsMapper mapper;

}