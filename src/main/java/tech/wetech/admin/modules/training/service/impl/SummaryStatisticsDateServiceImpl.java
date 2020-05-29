package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.SummaryStatisticsDateMapper;
import tech.wetech.admin.modules.training.po.SummaryStatisticsDate;
import tech.wetech.admin.modules.training.service.SummaryStatisticsDateService;

@Service
public class SummaryStatisticsDateServiceImpl extends BaseService<SummaryStatisticsDate> implements SummaryStatisticsDateService {
	@Autowired
	private SummaryStatisticsDateMapper mapper;
}