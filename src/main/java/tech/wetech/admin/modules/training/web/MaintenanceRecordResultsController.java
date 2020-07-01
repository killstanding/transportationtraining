package tech.wetech.admin.modules.training.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import com.github.pagehelper.Page;
import io.swagger.annotations.Api;
import tech.wetech.admin.core.annotation.SystemLog;
import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.modules.base.query.PageQuery;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.system.service.OrganizationService;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.FailureConfirmation;
import tech.wetech.admin.modules.training.po.MaintenanceRecord;
import tech.wetech.admin.modules.training.po.MaintenanceRecordResults;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.po.Tools;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.MaintenanceRecordResultsService;
import tech.wetech.admin.modules.training.service.MaintenanceRecordService;
import tech.wetech.admin.modules.training.service.PubCodeService;
import tech.wetech.admin.modules.training.service.ToolsService;

import org.springframework.ui.Model;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "maintenancerecordresults", tags = {"maintenancerecordresults"}, description = "设备维修记录结果")
@Controller
@RequestMapping("/maintenancerecordresults")
public class MaintenanceRecordResultsController extends BaseCrudController<MaintenanceRecordResults> {

    @Autowired
    private MaintenanceRecordResultsService service;
    @Autowired
	private UserService userService;
	@Autowired
    private OrganizationService organizationService;
	@Autowired
    private PubCodeService pubCodeService;
	@Autowired
	private MaintenanceRecordService maintenanceRecordService;
	@Autowired
    private AssetService assetService;
	@Autowired
	private ToolsService toolsService;
	
    @GetMapping
    @RequiresPermissions("maintenancerecordresults:view")
    public String page(Model model) {
    	model.addAttribute("userList", userService.queryAll());
    	model.addAttribute("organizationList", organizationService.queryAll());
    	PubCode pubCode = new PubCode();
    	pubCode.setPubType("maintenance_type");
    	model.addAttribute("maintenanceTypeList", pubCodeService.queryList(pubCode));
        return "system/maintenancerecordresults";
    }
    
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("maintenancerecordresults:view")
    @Override
    public Result<List<MaintenanceRecordResults>> queryList(MaintenanceRecordResults entity, PageQuery pageQuery) {
        Page<MaintenanceRecordResults> page = (Page<MaintenanceRecordResults>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("maintenancerecordresults:create")
    @SystemLog("设备维修设备维修记录结果创建")
    @Override
    public Result create(@Validated(MaintenanceRecordResults.MaintenanceRecordResultsCreateChecks.class) MaintenanceRecordResults entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
    	//根据维修结果更新设备状态为维修  修理好，设备状态变为正常，修理不好，设备状态根据选择更新
    	updateAssetStatus(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("maintenancerecordresults:update")
    @SystemLog("设备维修设备维修记录结果更新")
    @Override
    public Result update(@Validated(MaintenanceRecordResults.MaintenanceRecordResultsUpdateChecks.class) MaintenanceRecordResults entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
    	//根据维修结果更新设备状态为维修  修理好，设备状态变为正常，修理不好，设备状态根据选择更新
    	updateAssetStatus(entity);
        return Result.success();
    }

    /**
     * 根据维修结果更新设备状态为维修  修理好，设备状态变为正常，修理不好，设备状态根据选择更新
     * @param entity
     */
    private void updateAssetStatus(MaintenanceRecordResults entity){
    	//故障确认，那么设备状态变为维修
    	int isRepair = entity.getIsRepaired();//是否维修好 1 是 0 否
    	int recordId = entity.getRecordId();
		MaintenanceRecord record = maintenanceRecordService.queryById(recordId);
		if(record!=null){
			int assetId = record.getAssetId();
			String flowTypeCode = record.getFlowTypeCode();
			switch (flowTypeCode) {
			case "equipment_maintenance":
				if(isRepair==1){
		    		Asset asset = new Asset();
		        	asset.setId(assetId);
		        	asset.setAssetStatus("正常");
		        	asset.setAssetStatusCode("asset_status_normal");
		        	assetService.updateNotNull(asset);
		     	}else{
		    		Asset asset = new Asset();
		        	asset.setId(assetId);
		        	asset.setAssetStatus(entity.getAssetStatus());
		        	asset.setAssetStatusCode(entity.getAssetStatusCode());
		        	assetService.updateNotNull(asset);
		     	}
				break;
			case "tools_maintenance":
				if(isRepair==1){
		    		Tools tools = new Tools();
		    		tools.setId(assetId);
		    		tools.setAssetStatus("正常");
		    		tools.setAssetStatusCode("asset_status_normal");
		        	toolsService.updateNotNull(tools);
		     	}else{
		     		Tools tools = new Tools();
		    		tools.setId(assetId);
		    		tools.setAssetStatus(entity.getAssetStatus());
		    		tools.setAssetStatusCode(entity.getAssetStatusCode());
		        	toolsService.updateNotNull(tools);
		     	}
				break;
			default:
				break;
			}
		}//if(record!=null)
    } 
    
    
    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("maintenancerecordresults:delete")
    @SystemLog("设备维修设备维修记录结果删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
