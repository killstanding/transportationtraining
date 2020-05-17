package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.ChaptersMapper;
import tech.wetech.admin.modules.training.po.Chapters;
import tech.wetech.admin.modules.training.service.ChaptersService;

@Service
public class ChaptersServiceImpl extends BaseService<Chapters> implements ChaptersService {
    @Autowired
    private ChaptersMapper mapper;
}