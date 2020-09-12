package tech.wetech.admin.modules.training.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.InspectionPlanMapper;
import tech.wetech.admin.modules.training.po.InspectionPlan;
import tech.wetech.admin.modules.training.service.InspectionPlanService;

@Service
public class InspectionPlanServiceImpl  extends BaseService<InspectionPlan> implements InspectionPlanService {
	@Autowired
	private InspectionPlanMapper mapper;
	
	@Override
	public void updateCodeById(InspectionPlan record) {
		// TODO Auto-generated method stub
		mapper.updateCodeById(record);
	}

	@Override
	public List<InspectionPlan> selectByMajordata(InspectionPlan record) {
		// TODO Auto-generated method stub
		return mapper.selectByMajordata(record);
	}
}