package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.AssetTypeMapper;
import tech.wetech.admin.modules.training.po.AssetType;
import tech.wetech.admin.modules.training.service.AssetTypeService;

@Service
public class AssetTypeServiceImpl extends BaseService<AssetType> implements AssetTypeService {

    @Autowired
    private AssetTypeMapper mapper;
}