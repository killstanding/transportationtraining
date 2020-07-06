package tech.wetech.admin.modules.training.service;

import java.util.List;

import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.Courses;
import tech.wetech.admin.modules.training.po.TeachingPlan;

public interface CoursesService extends IService<Courses> {
	
	List<TeachingPlan> selectTeachingPlanByCourseId(Courses entity);
}