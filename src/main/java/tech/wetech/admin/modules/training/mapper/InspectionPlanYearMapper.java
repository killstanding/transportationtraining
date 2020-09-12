package tech.wetech.admin.modules.training.mapper;

import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.InspectionPlanYear;

public interface InspectionPlanYearMapper extends MyMapper<InspectionPlanYear> {
	void updateCodeById(InspectionPlanYear record);
}