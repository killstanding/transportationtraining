package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.SummaryStatisticsMonthMapper;
import tech.wetech.admin.modules.training.po.SummaryStatisticsMonth;
import tech.wetech.admin.modules.training.service.SummaryStatisticsMonthService;

@Service
public class SummaryStatisticsMonthServiceImpl extends BaseService<SummaryStatisticsMonth> implements SummaryStatisticsMonthService {
	@Autowired
	private SummaryStatisticsMonthMapper mapper;
}