package tech.wetech.admin.modules.job.web;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.MaintenanceRecord;
import tech.wetech.admin.modules.training.po.StatisticsPo;
import tech.wetech.admin.modules.training.po.SummaryStatisticsDate;
import tech.wetech.admin.modules.training.po.SummaryStatisticsMonth;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.ConsumablesService;
import tech.wetech.admin.modules.training.service.MaintenanceRecordService;
import tech.wetech.admin.modules.training.service.StatisticsPoService;
import tech.wetech.admin.modules.training.service.SummaryStatisticsDateService;
import tech.wetech.admin.modules.training.service.SummaryStatisticsMonthService;
import tech.wetech.admin.modules.training.service.ToolsService;
import tech.wetech.admin.modules.training.service.TrainingRoomService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@CrossOrigin
@Api(value = "job", tags = {"job"}, description = "任务")
@RestController
@RequestMapping(value = "/job")
public class JobController {
	@Autowired
	private TrainingRoomService trainingRoomService;
	@Autowired
	private AssetService assetService;
	@Autowired
	private ConsumablesService consumablesService;
	@Autowired
	private ToolsService toolsService;
	@Autowired
	private StatisticsPoService statisticsPoService;
	@Autowired
	private SummaryStatisticsDateService summaryStatisticsDateService; 
	@Autowired
	private SummaryStatisticsMonthService summaryStatisticsMonthService; 

	@ApiOperation(value = "首页统计指标计算", notes = "首页统计指标计算")
	@GetMapping("/calcsummarystatisticsdata")
	public Result<String> calcSummaryStatisticsData(){
		Date d = new Date();
		String curTime  = DateUtil.dateToStr(d, DateUtil.TIME_FORMATE);
		String curDate = DateUtil.dateToStr(d, DateUtil.DATE_FORMATE);
		String curMonth = DateUtil.dateToStr(d, DateUtil.MONTH_FORMATE);
		String curyear = DateUtil.dateToStr(d, DateUtil.YEAR_FORMATE);
		//汇总统计计算
		//日指标
		SummaryStatisticsDate ssDate = new SummaryStatisticsDate();
		ssDate.setRemark("");
		ssDate.setStatisticsDate(curDate);
		//汇总统计  statistics_type_summary
		ssDate.setStatisticsType("汇总统计");
		ssDate.setStatisticsTypeCode("statistics_type_summary");
		//training_room_total_num  实训室数
		calcSummaryStatisticsDateData("training_room_total_num","实训室数",ssDate,curTime,trainingRoomService);
		//devices_total_num   设备数
		calcSummaryStatisticsDateData("devices_total_num","设备数",ssDate,curTime,assetService);
		//repairing_devices_total_num   维修设备数
		calcSummaryStatisticsDateRepairingNumData("repairing_devices_total_num","维修设备数",ssDate,curTime,"equipment_maintenance");
		//repairing_tools_total_num   维修工具仪器数
		calcSummaryStatisticsDateRepairingNumData("repairing_tools_total_num","维修工具仪器数",ssDate,curTime,"tools_maintenance");
		//consumables_total_num  耗材数
		calcSummaryStatisticsDateData("consumables_total_num","耗材数",ssDate,curTime,consumablesService);
		//tools_total_num 工具仪器数
		calcSummaryStatisticsDateData("tools_total_num","工具仪器数",ssDate,curTime,toolsService);

		//statistics_type_device_classification  设备分类统计
		List<StatisticsPo> assetStatisticsList =  statisticsPoService.selectAssetNumByClassification();
		calcSummaryStatisticsDateClassificationData("设备分类统计","statistics_type_device_classification",ssDate,curTime,assetStatisticsList);

		//statistics_type_consumables_classification 耗材分类统计
		List<StatisticsPo> consumablesStatisticsPos =  statisticsPoService.selectConsumablesNumByClassification();
		calcSummaryStatisticsDateClassificationData("耗材分类统计","statistics_type_device_classification",ssDate,curTime,consumablesStatisticsPos);

		//statistics_type_tool_classification 工具分类统计
		List<StatisticsPo> toolsStatisticsPos =  statisticsPoService.selectToolsNumByClassification();
		calcSummaryStatisticsDateClassificationData("工具分类统计","statistics_type_tool_classification",ssDate,curTime,toolsStatisticsPos);


		//月指标
		SummaryStatisticsMonth ssMonth  = new SummaryStatisticsMonth();
		ssMonth.setRemark("");
		ssMonth.setStatisticsMonth(curMonth);
		ssMonth.setStatisticsYear(curyear);
		//汇总统计  statistics_type_summary
		ssMonth.setStatisticsType("汇总统计");
		ssMonth.setStatisticsTypeCode("statistics_type_summary");
		//training_room_total_num  实训室数
		calcSummaryStatisticsMonthData("training_room_total_num","实训室数",ssMonth,curTime,trainingRoomService);
		//devices_total_num   设备数
		calcSummaryStatisticsMonthData("devices_total_num","设备数",ssMonth,curTime,assetService);
		//repairing_devices_total_num   维修设备数
		calcSummaryStatisticsMonthRepairingNumData("repairing_devices_total_num","维修设备数",ssMonth,curTime,"equipment_maintenance");
		//repairing_tools_total_num   维修工具仪器数
		calcSummaryStatisticsMonthRepairingNumData("repairing_tools_total_num","维修工具仪器数",ssMonth,curTime,"tools_maintenance");
		//consumables_total_num  耗材数
		calcSummaryStatisticsMonthData("consumables_total_num","耗材数",ssMonth,curTime,consumablesService);
		//tools_total_num 工具仪器数
		calcSummaryStatisticsMonthData("tools_total_num","工具仪器数",ssMonth,curTime,toolsService);

		//statistics_type_device_classification  设备分类统计
		calcSummaryStatisticsMonthClassificationData("设备分类统计","statistics_type_device_classification",ssMonth,curTime,assetStatisticsList);

		//statistics_type_consumables_classification 耗材分类统计
		calcSummaryStatisticsMonthClassificationData("耗材分类统计","statistics_type_device_classification",ssMonth,curTime,consumablesStatisticsPos);

		//statistics_type_tool_classification 工具分类统计
		calcSummaryStatisticsMonthClassificationData("工具分类统计","statistics_type_tool_classification",ssMonth,curTime,toolsStatisticsPos);
		return Result.success();
	}


	private void calcSummaryStatisticsDateRepairingNumData(String statisticsCode,String statisticsName, SummaryStatisticsDate ssDate,String curTime,String flowTypeCode){
		ssDate.setStatisticsCode(statisticsCode);
		ssDate.setStatisticsName(statisticsName);
		int  statisticsValue = 0 ;
		MaintenanceRecord record = new MaintenanceRecord();
		record.setFlowTypeCode(flowTypeCode);//流程类型编号 equipment_maintenance tools_maintenance 
		List<StatisticsPo> statisticsList = statisticsPoService.selectIsRepairingNumInMaintenanceRecord(record);
		if(statisticsList!=null){
			statisticsValue =  statisticsList.get(0).getStatisticsTotal();
		}

		SummaryStatisticsDate midSSDate = summaryStatisticsDateService.queryOne(ssDate); 

		if(midSSDate!=null){
			midSSDate.setStatisticsValue(statisticsValue+"");
			midSSDate.setUpdateTime(curTime);
			summaryStatisticsDateService.updateNotNull(midSSDate);
		}else{
			ssDate.setCreateTime(curTime);
			ssDate.setUpdateTime(curTime);
			ssDate.setStatisticsValue(statisticsValue+"");
			summaryStatisticsDateService.create(ssDate);
		}
		ssDate.setId(null);
		ssDate.setStatisticsValue(null);
		ssDate.setCreateTime(null);
		ssDate.setUpdateTime(null);
	}


	private void calcSummaryStatisticsDateData(String statisticsCode,String statisticsName,SummaryStatisticsDate ssDate,String curTime,IService service ){
		ssDate.setStatisticsCode(statisticsCode);
		ssDate.setStatisticsName(statisticsName);
		SummaryStatisticsDate midSSDate = summaryStatisticsDateService.queryOne(ssDate); 
		int  statisticsValue = service.count(null);
		if(midSSDate!=null){
			midSSDate.setStatisticsValue(statisticsValue+"");
			midSSDate.setUpdateTime(curTime);
			summaryStatisticsDateService.updateNotNull(midSSDate);
		}else{
			ssDate.setCreateTime(curTime);
			ssDate.setUpdateTime(curTime);
			ssDate.setStatisticsValue(statisticsValue+"");
			summaryStatisticsDateService.create(ssDate);
		}
		ssDate.setId(null);
		ssDate.setStatisticsValue(null);
		ssDate.setCreateTime(null);
		ssDate.setUpdateTime(null);
	}

	private void calcSummaryStatisticsDateClassificationData(String statisticsType,String statisticsTypeCode,SummaryStatisticsDate ssDate,String curTime,List<StatisticsPo> statisticsList){
		ssDate.setStatisticsType(statisticsType);
		ssDate.setStatisticsTypeCode(statisticsTypeCode);
		if(statisticsList!=null){
			for (int i = 0; i < statisticsList.size(); i++) {
				StatisticsPo po = statisticsList.get(i);
				ssDate.setStatisticsCode(po.getStatisticsCode());
				ssDate.setStatisticsName(po.getStatisticsName());
				SummaryStatisticsDate midSSDate = summaryStatisticsDateService.queryOne(ssDate); 
				int statisticsValue = po.getStatisticsTotal();
				if(midSSDate!=null){
					midSSDate.setStatisticsValue(statisticsValue+"");
					midSSDate.setUpdateTime(curTime);
					summaryStatisticsDateService.updateNotNull(midSSDate);
				}else{
					ssDate.setCreateTime(curTime);
					ssDate.setUpdateTime(curTime);
					ssDate.setStatisticsValue(statisticsValue+"");
					summaryStatisticsDateService.create(ssDate);
				}
				ssDate.setId(null);
				ssDate.setStatisticsValue(null);
				ssDate.setCreateTime(null);
				ssDate.setUpdateTime(null);
			}
		}
	}


	private void calcSummaryStatisticsMonthRepairingNumData(String statisticsCode,String statisticsName,SummaryStatisticsMonth ssMonth,String curTime,String flowTypeCode){
		ssMonth.setStatisticsCode(statisticsCode);
		ssMonth.setStatisticsName(statisticsName);
		int  statisticsValue = 0 ;
		MaintenanceRecord record = new MaintenanceRecord();
		record.setFlowTypeCode(flowTypeCode);//流程类型编号 equipment_maintenance tools_maintenance 
		List<StatisticsPo> statisticsList = statisticsPoService.selectIsRepairingNumInMaintenanceRecord(record);
		if(statisticsList!=null){
			statisticsValue =  statisticsList.get(0).getStatisticsTotal();
		}

		SummaryStatisticsMonth midSSMonth = summaryStatisticsMonthService.queryOne(ssMonth); 

		if(midSSMonth!=null){
			midSSMonth.setStatisticsValue(statisticsValue+"");
			midSSMonth.setUpdateTime(curTime);
			summaryStatisticsMonthService.updateNotNull(midSSMonth);
		}else{
			ssMonth.setCreateTime(curTime);
			ssMonth.setUpdateTime(curTime);
			ssMonth.setStatisticsValue(statisticsValue+"");
			summaryStatisticsMonthService.create(ssMonth);
		}
		ssMonth.setId(null);
		ssMonth.setStatisticsValue(null);
		ssMonth.setCreateTime(null);
		ssMonth.setUpdateTime(null);
	}


	private void calcSummaryStatisticsMonthData(String statisticsCode,String statisticsName,SummaryStatisticsMonth ssMonth,String curTime,IService service ){
		ssMonth.setStatisticsCode(statisticsCode);
		ssMonth.setStatisticsName(statisticsName);
		SummaryStatisticsMonth midSSMonth = summaryStatisticsMonthService.queryOne(ssMonth); 
		int  statisticsValue = service.count(null);
		if(midSSMonth!=null){
			midSSMonth.setStatisticsValue(statisticsValue+"");
			midSSMonth.setUpdateTime(curTime);
			summaryStatisticsMonthService.updateNotNull(midSSMonth);
		}else{
			ssMonth.setCreateTime(curTime);
			ssMonth.setUpdateTime(curTime);
			ssMonth.setStatisticsValue(statisticsValue+"");
			summaryStatisticsMonthService.create(ssMonth);
		}
		ssMonth.setId(null);
		ssMonth.setStatisticsValue(null);
		ssMonth.setCreateTime(null);
		ssMonth.setUpdateTime(null);
	}


	private void calcSummaryStatisticsMonthClassificationData(String statisticsType,String statisticsTypeCode,SummaryStatisticsMonth ssMonth,String curTime,List<StatisticsPo> statisticsList){
		ssMonth.setStatisticsType(statisticsType);
		ssMonth.setStatisticsTypeCode(statisticsTypeCode);
		if(statisticsList!=null){
			for (int i = 0; i < statisticsList.size(); i++) {
				StatisticsPo po = statisticsList.get(i);
				ssMonth.setStatisticsCode(po.getStatisticsCode());
				ssMonth.setStatisticsName(po.getStatisticsName());
				SummaryStatisticsMonth midSSMonth = summaryStatisticsMonthService.queryOne(ssMonth); 
				int statisticsValue = po.getStatisticsTotal();
				if(midSSMonth!=null){
					midSSMonth.setStatisticsValue(statisticsValue+"");
					midSSMonth.setUpdateTime(curTime);
					summaryStatisticsMonthService.updateNotNull(midSSMonth);
				}else{
					ssMonth.setCreateTime(curTime);
					ssMonth.setUpdateTime(curTime);
					ssMonth.setStatisticsValue(statisticsValue+"");
					summaryStatisticsMonthService.create(ssMonth);
				}
				ssMonth.setId(null);
				ssMonth.setStatisticsValue(null);
				ssMonth.setCreateTime(null);
				ssMonth.setUpdateTime(null);
			}
		}
	}
}
