package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.WeekYearMapper;
import tech.wetech.admin.modules.training.po.WeekYear;
import tech.wetech.admin.modules.training.service.WeekYearService;
@Service
public class WeekYearServiceImpl extends BaseService<WeekYear> implements WeekYearService {
	@Autowired
	private WeekYearMapper mapper;
}