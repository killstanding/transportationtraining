package tech.wetech.admin.modules.training.mapper;

import java.util.List;

import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.Courses;
import tech.wetech.admin.modules.training.po.TeachingPlan;

public interface CoursesMapper extends MyMapper<Courses> {
	
	List<TeachingPlan> selectTeachingPlanByCourseId(Courses entity);
}