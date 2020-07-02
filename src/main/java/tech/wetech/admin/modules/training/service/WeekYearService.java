package tech.wetech.admin.modules.training.service;

import java.util.List;

import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.WeekYear;

public interface WeekYearService  extends IService<WeekYear> {
	
	List<WeekYear> selectByMondayAndYear(WeekYear entity);
}