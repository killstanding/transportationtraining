package tech.wetech.admin.modules.training.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.training.mapper.StatisticsPoMapper;
import tech.wetech.admin.modules.training.po.InspectionPlan;
import tech.wetech.admin.modules.training.po.MaintenanceRecord;
import tech.wetech.admin.modules.training.po.StatisticsPo;
import tech.wetech.admin.modules.training.service.StatisticsPoService;

@Service
public class StatisticsPoServiceImpl implements StatisticsPoService{
	
	@Autowired
	private StatisticsPoMapper mapper;

	@Override
	public List<StatisticsPo> selectAssetCountNumGroupByRoomId() {
		// TODO Auto-generated method stub
		return mapper.selectAssetCountNumGroupByRoomId();
	}

	@Override
	public List<StatisticsPo> selectAssetCountNumGroupByCourseArrangementId() {
		// TODO Auto-generated method stub
		return mapper.selectAssetCountNumGroupByCourseArrangementId();
	}

	@Override
	public List<StatisticsPo> selectConsumablesCountNumGroupByCourseArrangementId() {
		// TODO Auto-generated method stub
		return mapper.selectConsumablesCountNumGroupByCourseArrangementId();
	}

	@Override
	public List<StatisticsPo> selectToolCountNumGroupByCourseArrangementId() {
		// TODO Auto-generated method stub
		return mapper.selectToolCountNumGroupByCourseArrangementId();
	}

	@Override
	public List<StatisticsPo> selectIsRepairedNumInInspectionPlanGroupByPlanYearId(InspectionPlan entity) {
		// TODO Auto-generated method stub
		return mapper.selectIsRepairedNumInInspectionPlanGroupByPlanYearId(entity);
	}

	@Override
	public List<StatisticsPo> selectIsRepairingNumInMaintenanceRecord(MaintenanceRecord entity) {
		// TODO Auto-generated method stub
		return mapper.selectIsRepairingNumInMaintenanceRecord(entity);
	}

	@Override
	public List<StatisticsPo> selectAssetNumByClassification() {
		// TODO Auto-generated method stub
		return mapper.selectAssetNumByClassification();
	}

	@Override
	public List<StatisticsPo> selectToolsNumByClassification() {
		// TODO Auto-generated method stub
		return mapper.selectToolsNumByClassification();
	}

	@Override
	public List<StatisticsPo> selectConsumablesNumByClassification() {
		// TODO Auto-generated method stub
		return mapper.selectConsumablesNumByClassification();
	}
	
}