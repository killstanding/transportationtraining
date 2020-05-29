package tech.wetech.admin.modules.training.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.po.SummaryStatisticsDate;
import tech.wetech.admin.modules.training.po.SummaryStatisticsMonth;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import tech.wetech.admin.modules.training.service.PubCodeService;
import tech.wetech.admin.modules.training.service.SummaryStatisticsDateService;
import tech.wetech.admin.modules.training.service.SummaryStatisticsMonthService;
import tech.wetech.admin.modules.training.vo.HistogramVo;
import tech.wetech.admin.modules.training.vo.PieVo;

@Api(value = "main", tags = {"main"}, description = "主页")
@Controller
@RequestMapping("/main")
public class MainController {

	@Autowired
	private SummaryStatisticsDateService summaryStatisticsDateService; 
	@Autowired
	private SummaryStatisticsMonthService summaryStatisticsMonthService; 
	@Autowired
    private PubCodeService pubCodeService;
	@Autowired
    private AssetClassificationService assetClassificationService;
	
	
    @GetMapping
    @RequiresPermissions("main:view")
    public String page(Model model) {
    	model.addAttribute("signBoardData",getSignBoardData());// 指标牌数据
    	model.addAttribute("assetPieData",getPieData("asset_type_device","statistics_type_device_classification"));// 设备类别饼图数据   
    	model.addAttribute("PieData",getPieData("asset_type_consumables","statistics_type_consumables_classification"));// 耗材类别饼图数据  
    	model.addAttribute("deviceHistogramData",getHistogramData("devices_total_num"));// 设备柱状图数据
    	model.addAttribute("consumablesHistogramData",getHistogramData("consumables_total_num"));// 耗材柱状图数据
        return "system/main";
    }
   
    /**
     * 获取柱状图数据
     * @return
     */
    private HistogramVo getHistogramData(String statisticsCode){
    	HistogramVo result = new HistogramVo();
    	List<String> xAxisValues = new ArrayList<>();
    	List<Integer> monthList = DateUtil.MONTH_LIST;
    	for (int i = 0; i < monthList.size(); i++) {
			String xV = monthList.get(i)+"月";
			xAxisValues.add(xV);
		}
    	result.setXAxisValues(xAxisValues);
    	Date d = new Date();
    	String thisYear = DateUtil.dateToStr(d, DateUtil.TIME_FORMATE);
    	result.setYAxisValuesA(getYAxisValues(statisticsCode,thisYear));
    	String lastyear = DateUtil.dateToStr(DateUtil.getLastYear(d), DateUtil.TIME_FORMATE);
    	result.setYAxisValuesB(getYAxisValues(statisticsCode,lastyear));
    	return result;
    }
    private List<String> getYAxisValues(String statisticsCode,String year){
    	List<String> result = new ArrayList();
    	SummaryStatisticsMonth entity = new SummaryStatisticsMonth();
    	entity.setStatisticsCode(statisticsCode);
    	entity.setStatisticsTypeCode("statistics_type_summary");
    	entity.setStatisticsYear(year);
    	List<SummaryStatisticsMonth> dataList =  summaryStatisticsMonthService.queryList(entity);
    	List<Integer> monthList = DateUtil.MONTH_LIST;
    	monthListFor:for (int i = 0; i < monthList.size(); i++) {
    		int month = monthList.get(i);
    		String monthStr = year + "-" + month;
    		result.add("0");
    		for (int j = 0; j < dataList.size(); j++) {
    			SummaryStatisticsMonth record = dataList.get(j);
    			if(record.getStatisticsCode().equals(monthStr)){
    				result.add(i, record.getStatisticsValue());
    				continue monthListFor;
    			}
    		}//monthListFor
    	}
    	return result;
    }
    
    
    
    /**
     * 类别饼图数据
     * @return
     */
    private List<PieVo> getPieData(String assetTypeCode,String statisticsTypeCode) {
    	AssetClassification assetClassification = new AssetClassification();
    	assetClassification.setAssetTypeCode(assetTypeCode);//类别
    	List<AssetClassification> assetClassifications =  assetClassificationService.queryList(assetClassification);
    	Date d =new Date();
    	String dateStr = DateUtil.dateToStr(d, DateUtil.DATE_FORMATE);
    	SummaryStatisticsDate entity = new SummaryStatisticsDate();
    	entity.setStatisticsTypeCode(statisticsTypeCode);
    	entity.setStatisticsDate(dateStr);
    	List<SummaryStatisticsDate> dataList =  summaryStatisticsDateService.queryList(entity);
    	List<PieVo> result = new ArrayList<>();
    	assetClassificationsFor:for (int i = 0; i < assetClassifications.size(); i++) {
    		AssetClassification acf = assetClassifications.get(i);
    		PieVo vo = new PieVo();
    		vo.setName(acf.getClassificationName());
    		vo.setValue(0+"");
    		vo.setCode(acf.getClassificationCode());
    		result.add(vo);
    		for (int j = 0; j < dataList.size(); j++) {
    			SummaryStatisticsDate record = dataList.get(j);
    			if(record.getStatisticsCode().equals(vo.getCode())){
    				vo.setValue(record.getStatisticsValue());
    				continue assetClassificationsFor;
    			}
			}//for dataList
		}//pubCodesFor
        return null;
    }
    /**
     * 获取指标牌数据
     * @return
     */
    private List<SummaryStatisticsDate> getSignBoardData(){
    	Date d =new Date();
    	String dateStr = DateUtil.dateToStr(d, DateUtil.DATE_FORMATE);
    	SummaryStatisticsDate entity = new SummaryStatisticsDate();
    	entity.setStatisticsTypeCode("statistics_type_summary");
    	entity.setStatisticsDate(dateStr);
    	List<SummaryStatisticsDate> dataList =  summaryStatisticsDateService.queryList(entity);
    	PubCode pubCode = new PubCode();
    	pubCode.setPubType("statistics_type_summary");
    	List<PubCode> pubCodes =  pubCodeService.queryList(pubCode);
    	List<SummaryStatisticsDate> result = new ArrayList<SummaryStatisticsDate>();
    	pubCodesFor:for (int i = 0; i < pubCodes.size(); i++) {
    		PubCode pc = pubCodes.get(i);
    		SummaryStatisticsDate ssd  = new SummaryStatisticsDate();
    		ssd.setId(i);
    		ssd.setStatisticsCode(pc.getPubCode());
    		ssd.setStatisticsDate(dateStr);
    		ssd.setStatisticsName(pc.getPubName());
    		ssd.setStatisticsValue(0+"");
    		ssd.setStatisticsType(pc.getPubType());
    		ssd.setStatisticsTypeCode(pc.getPubTypeCode());
    		ssd.setRemark(pc.getRemark());
    		result.add(ssd);
    		for (int j = 0; j < dataList.size(); j++) {
    			SummaryStatisticsDate record = dataList.get(j);
    			if(record.getStatisticsCode().equals(ssd.getStatisticsCode())){
    				ssd.setStatisticsValue(record.getStatisticsValue());
    				continue pubCodesFor;
    			}
			}//for dataList
		}//pubCodesFor
    	return result;
    }

}
