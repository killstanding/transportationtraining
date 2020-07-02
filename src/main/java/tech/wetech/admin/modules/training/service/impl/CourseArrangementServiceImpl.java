package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.CourseArrangementMapper;
import tech.wetech.admin.modules.training.po.CourseArrangement;
import tech.wetech.admin.modules.training.service.CourseArrangementService;

@Service
public class CourseArrangementServiceImpl extends BaseService<CourseArrangement> implements CourseArrangementService {
    @Autowired
    private CourseArrangementMapper mapper;

	@Override
	public void updateIsLockedByWeekId(CourseArrangement entity) {
		// TODO Auto-generated method stub
		mapper.updateIsLockedByWeekId(entity);
	}
}