package tech.wetech.admin.modules.job.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.modules.training.po.SummaryStatisticsDate;
import tech.wetech.admin.modules.training.service.SummaryStatisticsDateService;
import tech.wetech.admin.modules.training.service.SummaryStatisticsMonthService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@CrossOrigin
@Api(value = "job", tags = {"job"}, description = "任务")
@RestController
@RequestMapping(value = "/job")
public class JobController {
	
	@Autowired
	private SummaryStatisticsDateService summaryStatisticsDateService; 
	@Autowired
	private SummaryStatisticsMonthService summaryStatisticsMonthService; 
	
	@ApiOperation(value = "日统计指标计算", notes = "日统计指标计算")
	@GetMapping("/calcsummarystatisticsdatedata")
	public Result<String> calcSummaryStatisticsDateData(){
		//计算
		SummaryStatisticsDate ssDate = new SummaryStatisticsDate();
//		ssDate.setStatisticsCode(statisticsCode);
//		ssDate.setStatisticsName(statisticsName);
//		ssDate.setStatisticsValue(statisticsValue);
//		ssDate.setStatisticsType(statisticsType);
//		ssDate.setStatisticsTypeCode(statisticsTypeCode);
//		ssDate.setRemark(remark);
//		ssDate.setUpdateTime(updateTime);
		
		
		return Result.success();
	}
}
