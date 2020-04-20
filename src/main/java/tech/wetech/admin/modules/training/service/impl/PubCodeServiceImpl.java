package tech.wetech.admin.modules.training.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.PubCodeMapper;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.service.PubCodeService;

@Service
public class PubCodeServiceImpl extends BaseService<PubCode> implements PubCodeService {

    @Autowired
    private PubCodeMapper mapper;
}