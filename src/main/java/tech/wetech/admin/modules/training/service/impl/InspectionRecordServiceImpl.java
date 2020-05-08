package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.InspectionRecordMapper;
import tech.wetech.admin.modules.training.po.InspectionRecord;
import tech.wetech.admin.modules.training.service.InspectionRecordService;

@Service
public class InspectionRecordServiceImpl extends BaseService<InspectionRecord> implements InspectionRecordService {
	@Autowired
	private InspectionRecordMapper mapper;
}