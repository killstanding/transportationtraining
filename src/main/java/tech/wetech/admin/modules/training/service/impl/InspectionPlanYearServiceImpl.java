package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.InspectionPlanYearMapper;
import tech.wetech.admin.modules.training.po.InspectionPlanYear;
import tech.wetech.admin.modules.training.service.InspectionPlanYearService;

@Service
public class InspectionPlanYearServiceImpl  extends BaseService<InspectionPlanYear> implements InspectionPlanYearService {
	@Autowired
	private InspectionPlanYearMapper mapper;
	
	@Override
	public void updateCodeById(InspectionPlanYear record) {
		// TODO Auto-generated method stub
		mapper.updateCodeById(record);
	}
}