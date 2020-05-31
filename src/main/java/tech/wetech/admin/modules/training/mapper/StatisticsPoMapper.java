package tech.wetech.admin.modules.training.mapper;

import java.util.List;

import tech.wetech.admin.modules.training.po.StatisticsPo;

public interface StatisticsPoMapper {
	
	List<StatisticsPo> selectAssetCountNumGroupByRoomId();
	
	List<StatisticsPo> selectAssetCountNumGroupByCourseArrangementId();
	
	List<StatisticsPo> selectConsumablesCountNumGroupByCourseArrangementId();
	
	List<StatisticsPo> selectToolCountNumGroupByCourseArrangementId();
	
}