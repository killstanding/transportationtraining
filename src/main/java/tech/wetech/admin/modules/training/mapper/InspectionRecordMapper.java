package tech.wetech.admin.modules.training.mapper;

import java.util.List;

import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.InspectionRecord;

public interface InspectionRecordMapper extends MyMapper<InspectionRecord> {
	void updateCodeById(InspectionRecord record);
	
	List<InspectionRecord> selectByMajordata(InspectionRecord record);
}