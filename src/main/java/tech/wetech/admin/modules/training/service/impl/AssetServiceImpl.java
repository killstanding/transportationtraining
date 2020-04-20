package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.AssetMapper;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.service.AssetService;

@Service
public class AssetServiceImpl extends BaseService<Asset> implements AssetService {

    @Autowired
    private AssetMapper mapper;
}