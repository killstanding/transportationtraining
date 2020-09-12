package tech.wetech.admin.modules.training.service;


import java.util.List;

import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.InspectionRecord;

public interface InspectionRecordService extends IService<InspectionRecord> {
	void updateCodeById(InspectionRecord record);
	
	List<InspectionRecord> selectByMajordata(InspectionRecord record);
}