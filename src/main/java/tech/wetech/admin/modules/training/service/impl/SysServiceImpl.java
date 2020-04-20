package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.SysMapper;
import tech.wetech.admin.modules.training.po.Sys;
import tech.wetech.admin.modules.training.service.SysService;

@Service
public class SysServiceImpl extends BaseService<Sys> implements SysService {

    @Autowired
    private SysMapper mapper;
}