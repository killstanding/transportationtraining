package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.MaintenanceRecordMapper;
import tech.wetech.admin.modules.training.po.MaintenanceRecord;
import tech.wetech.admin.modules.training.service.MaintenanceRecordService;

public class MaintenanceRecordServiceImpl extends BaseService<MaintenanceRecord> implements MaintenanceRecordService{
	@Autowired
	private MaintenanceRecordMapper mapper;
}