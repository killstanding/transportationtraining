package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.TeachingPlanMapper;
import tech.wetech.admin.modules.training.po.TeachingPlan;
import tech.wetech.admin.modules.training.service.TeachingPlanService;

@Service
public class TeachingPlanServiceImpl extends BaseService<TeachingPlan> implements TeachingPlanService {
    @Autowired
    private TeachingPlanMapper mapper;
}