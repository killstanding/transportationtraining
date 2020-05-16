package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.WarehousingRecordMapper;
import tech.wetech.admin.modules.training.po.WarehousingRecord;
import tech.wetech.admin.modules.training.service.WarehousingRecordService;

@Service
public class WarehousingRecordServiceImpl extends BaseService<WarehousingRecord> implements WarehousingRecordService{
	@Autowired
	private WarehousingRecordMapper mapper;
}