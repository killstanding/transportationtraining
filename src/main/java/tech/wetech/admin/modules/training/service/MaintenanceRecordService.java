package tech.wetech.admin.modules.training.service;

import java.util.List;
import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.MaintenanceRecord;
import tech.wetech.admin.modules.training.po.StatusCountResult;

public interface MaintenanceRecordService extends IService<MaintenanceRecord> {
	List<StatusCountResult> selectCountNumGourpByStatus();
	
	List<MaintenanceRecord> selectAllDone(MaintenanceRecord entity);
}