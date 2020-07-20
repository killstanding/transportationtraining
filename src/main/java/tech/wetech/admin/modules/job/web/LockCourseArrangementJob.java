package tech.wetech.admin.modules.job.web;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.modules.training.po.CourseArrangement;
import tech.wetech.admin.modules.training.po.WeekYear;
import tech.wetech.admin.modules.training.service.CourseArrangementService;
import tech.wetech.admin.modules.training.service.WeekYearService;

@CrossOrigin
@Api(value = "lockcoursearrangementjob", tags = {"lockcoursearrangementjob"}, description = "上周六锁定下周排课任务")
@RestController
@RequestMapping(value = "/lockcoursearrangementjob")
public class LockCourseArrangementJob {
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private CourseArrangementService courseArrangementService;
	@Autowired
	private WeekYearService weekYearService;
	
	
	@ApiOperation(value = "上周六锁定下周排课任务", notes = "上周六锁定下周排课任务")
	@GetMapping("/lockcoursearrangement")
	public Result<String> lockCoursearrangement(){
		//判定今天是否为周六
		Date today = new Date();
		String week = DateUtil.getWeek(today);
		if(week.equals("周六")){
			//计算下周日期
			Date nextMonday  = DateUtil.getDayOfWeek(Calendar.MONDAY, +1);
			String curYear = DateUtil.dateToStr(nextMonday, DateUtil.DATE_FORMATE_WITHOUT_YEAR);
		    String nextMondayDate = DateUtil.dateToStr(nextMonday, DateUtil.YEAR_FORMATE);
			WeekYear weekYearEntity = new WeekYear();
			weekYearEntity.setYear(curYear);
			weekYearEntity.setStartDate(nextMondayDate);
			List<WeekYear> weekYearList = weekYearService.selectByMondayAndYear(weekYearEntity);
			int weekYearId = 0;
			if(weekYearList!=null&&weekYearList.size()>0){
				weekYearId =  weekYearList.get(0).getId();
				CourseArrangement courseArrangement = new CourseArrangement();
				courseArrangement.setWeekId(weekYearId);
				courseArrangement.setIsLock("1");
				courseArrangementService.updateIsLockedByWeekId(courseArrangement);
			}
		}else{
			logger.info("当前日期是"+week+",不是周六,任务不执行！");
		}
		return Result.success();
	}
}
