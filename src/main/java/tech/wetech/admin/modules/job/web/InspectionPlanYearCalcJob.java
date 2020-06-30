package tech.wetech.admin.modules.job.web;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.core.utils.StringUtil;
import tech.wetech.admin.modules.training.po.InspectionPlan;
import tech.wetech.admin.modules.training.po.InspectionPlanYear;
import tech.wetech.admin.modules.training.po.StatisticsPo;
import tech.wetech.admin.modules.training.service.InspectionPlanService;
import tech.wetech.admin.modules.training.service.InspectionPlanYearService;
import tech.wetech.admin.modules.training.service.StatisticsPoService;

@CrossOrigin
@Api(value = "inspectionplanyearcalcjob", tags = {"inspectionplanyearcalcjob"}, description = "年度巡检记录计算任务")
@RestController
@RequestMapping(value = "/inspectionplanyearcalcjob")
public class InspectionPlanYearCalcJob {

	@Autowired
	private InspectionPlanService inspectionPlanService;
	@Autowired
	private InspectionPlanYearService inspectionPlanYearService;
	@Autowired
	private StatisticsPoService statisticsPoService;
	
	
	
	@ApiOperation(value = "年度巡检记录计算任务", notes = "年度巡检记录计算任务")
	@GetMapping("/calcinspectionplanyeardata")
	public Result<String> calcInspectionPlanYearData(){
		//获取所有年度实训室巡检计划
		List<InspectionPlanYear> inspectionPlanYears = inspectionPlanYearService.queryAll();
		String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
		
		//获取所以的检修计划，每个检修计划的本次巡检设备数  正常设备数量  异常设备数量  已报修设备数量
		for (int i = 0; i < inspectionPlanYears.size(); i++) {
			InspectionPlanYear planYear = inspectionPlanYears.get(i);
			Integer planYearId = planYear.getId();
			InspectionPlan plan = new InspectionPlan();
			plan.setPlanYearId(planYearId);
			
			int inspectionedTimesYear =  0 ;//已巡检次数
			int abnormalNum = 0;//异常设备数量
			int repairNum = 0;//申请维修次数
			List<InspectionPlan> inspectionPlans = inspectionPlanService.queryList(plan);
			List<StatisticsPo>  staList = statisticsPoService.selectIsRepairedNumInInspectionPlanGroupByPlanYearId(plan);
			for (int j = 0; j < inspectionPlans.size(); j++) {
				InspectionPlan record = inspectionPlans.get(j);
				int midPlanYearId = record.getPlanYearId();
				if(planYearId==midPlanYearId){
					//本年度已巡检次数
					 int normalNum = record.getNumberNormalDevices();
					 if(normalNum!=0)inspectionedTimesYear=inspectionedTimesYear+1;
					//异常设备数量
					 abnormalNum = abnormalNum + record.getNumberAbnormalDevices();
					//已报修设备数量
					 repairNum = repairNum + record.getNumberReportedRepairEquipment();
				}//if(planYearId==midPlanYearId)
			}
			planYear.setInspectionedTimesYear(inspectionedTimesYear);
			planYear.setNumberAbnormalDevices(abnormalNum);
			planYear.setNumberReportedRepairEquipment(repairNum);
			
			for (int j = 0; j < staList.size(); j++) {
				StatisticsPo po = staList.get(j);
				int midPlanYearId = StringUtil.strToInt(po.getStatisticsCode());
				if(planYearId==midPlanYearId){
					int repairedNum = planYear.getNumberRepairedEquipmen();
					int midRepairedNum = po.getStatisticsTotal();
					planYear.setNumberRepairedEquipmen(repairedNum+midRepairedNum);
				}
			}
			planYear.setUpdateTime(curTime);
			inspectionPlanYearService.updateNotNull(planYear);
		}
		return Result.success();
	}
}
