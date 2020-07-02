package tech.wetech.admin.modules.training.mapper;

import java.util.List;

import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.WeekYear;

public interface WeekYearMapper extends MyMapper<WeekYear> {
	
	List<WeekYear> selectByMondayAndYear(WeekYear entity);
}