package tech.wetech.admin.modules.training.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.CollectionRecordMapper;
import tech.wetech.admin.modules.training.po.CollectionRecord;
import tech.wetech.admin.modules.training.service.CollectionRecordService;

@Service
public class CollectionRecordServiceImpl extends BaseService<CollectionRecord> implements CollectionRecordService {
	
	@Autowired
	private CollectionRecordMapper mapper;
	
}