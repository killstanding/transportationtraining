package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.CourseArrangementReAssetMapper;
import tech.wetech.admin.modules.training.po.CourseArrangementReAsset;
import tech.wetech.admin.modules.training.service.CourseArrangementReAssetService;

@Service
public class CourseArrangementReAssetServiceImpl extends BaseService<CourseArrangementReAsset> implements CourseArrangementReAssetService {
    @Autowired
    private CourseArrangementReAssetMapper mapper;
}