package tech.wetech.admin.modules.training.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.TeachingPlanReFileMapper;
import tech.wetech.admin.modules.training.po.TeachingPlanReFile;
import tech.wetech.admin.modules.training.service.TeachingPlanReFileService;
@Service
public class TeachingPlanReFileServiceImpl extends BaseService<TeachingPlanReFile> implements TeachingPlanReFileService {
    @Autowired
    private TeachingPlanReFileMapper mapper;
}