package tech.wetech.admin.modules.training.mapper;

import java.util.List;

import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.InspectionPlan;

public interface InspectionPlanMapper extends MyMapper<InspectionPlan> {
	void updateCodeById(InspectionPlan record);
	
	List<InspectionPlan> selectByMajordata(InspectionPlan record);
}