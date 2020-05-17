package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.CourseArrangementReConsumablesMapper;
import tech.wetech.admin.modules.training.po.CourseArrangementReConsumables;
import tech.wetech.admin.modules.training.service.CourseArrangementReConsumablesService;

@Service
public class CourseArrangementReConsumablesServiceImpl extends BaseService<CourseArrangementReConsumables> implements CourseArrangementReConsumablesService {
    @Autowired
    private CourseArrangementReConsumablesMapper mapper;
}