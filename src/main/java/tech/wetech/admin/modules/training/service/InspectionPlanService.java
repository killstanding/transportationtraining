package tech.wetech.admin.modules.training.service;


import java.util.List;

import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.InspectionPlan;

public interface InspectionPlanService  extends IService<InspectionPlan> {
	void updateCodeById(InspectionPlan record);
	
	List<InspectionPlan> selectByMajordata(InspectionPlan record);
}