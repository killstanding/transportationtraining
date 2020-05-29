package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.SpecificationTypeMapper;
import tech.wetech.admin.modules.training.po.SpecificationType;
import tech.wetech.admin.modules.training.service.SpecificationTypeService;

@Service
public class SpecificationTypeServiceImpl extends BaseService<SpecificationType> implements SpecificationTypeService {

    @Autowired
    private SpecificationTypeMapper mapper;
}