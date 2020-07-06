package tech.wetech.admin.modules.training.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.CoursesMapper;
import tech.wetech.admin.modules.training.po.Courses;
import tech.wetech.admin.modules.training.po.TeachingPlan;
import tech.wetech.admin.modules.training.service.CoursesService;

@Service
public class CoursesServiceImpl extends BaseService<Courses> implements CoursesService {
    @Autowired
    private CoursesMapper mapper;

	@Override
	public List<TeachingPlan> selectTeachingPlanByCourseId(Courses entity) {
		// TODO Auto-generated method stub
		return mapper.selectTeachingPlanByCourseId(entity);
	}
}