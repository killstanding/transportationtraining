package tech.wetech.admin.modules.training.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import com.github.pagehelper.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tech.wetech.admin.core.annotation.SystemLog;
import tech.wetech.admin.core.common.ConfigProperties;
import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.core.utils.Logger;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.core.utils.ResultCodeEnum;
import tech.wetech.admin.modules.base.query.PageQuery;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.InspectionPlan;
import tech.wetech.admin.modules.training.po.InspectionRecord;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.InspectionPlanService;
import tech.wetech.admin.modules.training.service.InspectionRecordService;
import tech.wetech.admin.modules.training.service.TrainingRoomService;
import tech.wetech.excel.ExcelWriteUtil;

import org.springframework.ui.Model;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "巡检计划", tags = {"inspectionplan"}, description = "巡检计划")
@Controller
@RequestMapping("/inspectionplan")
@SuppressWarnings("unchecked") 
public class InspectionPlanController extends BaseCrudController<InspectionPlan> {

    @Autowired
    private InspectionPlanService service;
    @Autowired
    private ConfigProperties configProperties;
    @Autowired
    private UserService userService;
    @Autowired
    private TrainingRoomService trainingRoomService;
    @Autowired
    private AssetService assetService;
    @Autowired
    private InspectionRecordService inspectionRecordService;
    
    @GetMapping
    @RequiresPermissions("inspectionplan:view")
    public String page(Model model) {
    	model.addAttribute("userList", userService.queryAll());
    	model.addAttribute("trainingRoomList", trainingRoomService.queryAll());
        return "system/inspectionplan";
    }
    
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("inspectionplan:view")
    @Override
    public Result<List<InspectionPlan>> queryList(InspectionPlan entity, PageQuery pageQuery) {
        Page<InspectionPlan> page = (Page<InspectionPlan>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("inspectionplan:create")
    @SystemLog("设备管理巡检计划创建")
    @Override
    public Result<String> create(@Validated(InspectionPlan.InspectionPlanCreateChecks.class) InspectionPlan entity) {
    	Date cur = new Date();
    	String curTime  = DateUtil.dateToStr(cur, DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
    	
    	//获取实训室下面的设备
    	Asset assetPara = new Asset();
    	assetPara.setRoomId(entity.getRoomId());
    	assetPara.setAssetStatusCode("asset_status_normal");
    	List<Asset> assets = assetService.queryList(assetPara);
    	if(assets!=null){
    		//插入正常设备的巡检记录
    		for (int i = 0; i < assets.size(); i++) {
    			Asset asset = assets.get(i);
    			InspectionRecord record = new InspectionRecord();
    			record.setAssetCode(asset.getAssetCode());
    			record.setAssetClassification(asset.getAssetClassification());
    			record.setAssetClassificationCode(asset.getAssetClassificationCode());
    			record.setAssetStatus(asset.getAssetStatus());
    			record.setAssetStatusCode(asset.getAssetStatusCode());
    			record.setIsRepair(0);
    			record.setPlanId(entity.getId());
    			record.setAssetName(asset.getAssetName());
    			record.setCreateTime(curTime);
    			record.setUpdateTime(curTime);
    			inspectionRecordService.create(record);
    		}
    	}//if(assets!=null)
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("inspectionplan:update")
    @SystemLog("设备管理巡检计划更新")
    @Override
    public Result<String> update(@Validated(InspectionPlan.InspectionPlanUpdateChecks.class) InspectionPlan entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("inspectionplan:delete")
    @SystemLog("设备管理巡检计划删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("inspectionplan:exportexcel")
	public Result<String> exportExcel(InspectionPlan entity) {
		String fileName="";
		try {
			List<InspectionPlan> list = service.queryList(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, InspectionPlan.class, "巡检计划");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
}
