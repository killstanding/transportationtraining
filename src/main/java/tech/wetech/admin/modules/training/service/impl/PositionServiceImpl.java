package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.PositionMapper;
import tech.wetech.admin.modules.training.po.Position;
import tech.wetech.admin.modules.training.service.PositionService;

@Service
public class PositionServiceImpl extends BaseService<Position> implements PositionService {

    @Autowired
    private PositionMapper mapper;
}