package tech.wetech.admin.modules.training.service.impl;

import java.util.List;

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
	
	@Override
	public void updateCodeById(InspectionRecord record) {
		// TODO Auto-generated method stub
		mapper.updateCodeById(record);
	}

	@Override
	public List<InspectionRecord> selectByMajordata(InspectionRecord record) {
		// TODO Auto-generated method stub
		return mapper.selectByMajordata(record);
	}
    
}