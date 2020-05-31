package tech.wetech.admin.modules.training.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.training.mapper.StatisticsPoMapper;
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
	
}