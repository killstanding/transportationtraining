package tech.wetech.admin.modules.training.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.MaintenanceRecordMapper;
import tech.wetech.admin.modules.training.po.MaintenanceRecord;
import tech.wetech.admin.modules.training.po.StatusCountResult;
import tech.wetech.admin.modules.training.service.MaintenanceRecordService;

@Service
public class MaintenanceRecordServiceImpl extends BaseService<MaintenanceRecord> implements MaintenanceRecordService{
	@Autowired
	private MaintenanceRecordMapper mapper;

	@Override
	public List<StatusCountResult>  selectCountNumGourpByStatus() {
		// TODO Auto-generated method stub
		return mapper.selectCountNumGourpByStatus();
	}
	
}