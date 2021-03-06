package tech.wetech.admin.modules.training.service;

import java.util.List;

import tech.wetech.admin.modules.training.po.InspectionPlan;
import tech.wetech.admin.modules.training.po.MaintenanceRecord;
import tech.wetech.admin.modules.training.po.StatisticsPo;

public interface StatisticsPoService {
	
	List<StatisticsPo> selectAssetCountNumGroupByRoomId();
	
	List<StatisticsPo> selectAssetCountNumGroupByCourseArrangementId();
	
	List<StatisticsPo> selectConsumablesCountNumGroupByCourseArrangementId();
	
	List<StatisticsPo> selectToolCountNumGroupByCourseArrangementId();
	
	List<StatisticsPo> selectIsRepairedNumInInspectionPlanGroupByPlanYearId(InspectionPlan entity);
	
	List<StatisticsPo> selectIsRepairingNumInMaintenanceRecord(MaintenanceRecord entity);
	
	List<StatisticsPo> selectAssetNumByClassification();
	
	List<StatisticsPo> selectToolsNumByClassification();
	
	List<StatisticsPo> selectConsumablesNumByClassification();
	
}