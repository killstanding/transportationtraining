package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.AssetClassificationMapper;
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.service.AssetClassificationService;

@Service
public class AssetClassificationServiceImpl extends BaseService<AssetClassification> implements AssetClassificationService {

    @Autowired
    private AssetClassificationMapper mapper;
}