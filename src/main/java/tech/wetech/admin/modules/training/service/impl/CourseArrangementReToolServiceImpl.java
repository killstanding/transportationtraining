package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.CourseArrangementReToolMapper;
import tech.wetech.admin.modules.training.po.CourseArrangementReTool;
import tech.wetech.admin.modules.training.service.CourseArrangementReToolService;

public class CourseArrangementReToolServiceImpl extends BaseService<CourseArrangementReTool> implements CourseArrangementReToolService {
    @Autowired
    private CourseArrangementReToolMapper mapper;
}