package tech.wetech.admin.modules.training.mapper;

import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.CourseArrangement;

public interface CourseArrangementMapper extends MyMapper<CourseArrangement> {
	
	void updateIsLockedByWeekId(CourseArrangement entity);
}