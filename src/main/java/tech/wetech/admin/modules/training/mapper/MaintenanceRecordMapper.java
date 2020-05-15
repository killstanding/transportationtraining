package tech.wetech.admin.modules.training.mapper;

import java.util.List;
import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.MaintenanceRecord;
import tech.wetech.admin.modules.training.po.StatusCountResult;

public interface MaintenanceRecordMapper extends MyMapper<MaintenanceRecord> {
	List<StatusCountResult> selectCountNumGourpByStatus();
}