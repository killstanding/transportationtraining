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
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.po.InspectionRecord;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.InspectionRecordService;
import tech.wetech.admin.modules.training.service.PubCodeService;
import tech.wetech.admin.modules.training.service.TrainingRoomService;
import tech.wetech.excel.ExcelWriteUtil;

import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "巡检记录", tags = {"inspectionrecord"}, description = "巡检记录")
@Controller
@RequestMapping("/inspectionrecord")
@SuppressWarnings("unchecked") 
public class InspectionRecordController extends BaseCrudController<InspectionRecord> {

    @Autowired
    private InspectionRecordService service;
    @Autowired
    private ConfigProperties configProperties;
    
    @Autowired
    private UserService userService;
    @Autowired
    private AssetService assetService;
	@Autowired
    private AssetClassificationService assetClassificationService;
	@Autowired
    private PubCodeService pubCodeService;
	
    @GetMapping
    @RequiresPermissions("inspectionrecord:view")
    public String page(Model model) {
    	model.addAttribute("userList", userService.queryAll());
    	model.addAttribute("assetList", assetService.queryAll());
    	AssetClassification assetClassification = new AssetClassification();
    	assetClassification.setAssetTypeCode("asset_type_device");//设备
    	model.addAttribute("assetClassificationList", assetClassificationService.queryList(assetClassification));
    	PubCode pubCode = new PubCode();
    	pubCode.setPubType("asset_status");
    	model.addAttribute("assetStatusList", pubCodeService.queryList(pubCode));
        return "system/inspectionrecord";
    }
    
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("inspectionrecord:view")
    @Override
    public Result<List<InspectionRecord>> queryList(InspectionRecord entity, PageQuery pageQuery) {    	
        Page<InspectionRecord> page = (Page<InspectionRecord>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @GetMapping("/listbyplanid")
    @RequiresPermissions("inspectionrecord:view")
    public Result<List<InspectionRecord>> queryListByPlan(InspectionRecord entity) {    	
    	List<InspectionRecord>  list =  service.keyValueByExample(entity);
        return Result.success(list);
    }
    
    @ResponseBody
    @GetMapping("/editlistbyplanid")
    @RequiresPermissions("inspectionrecord:view")
    public Result<List<InspectionRecord>> queryEditListByplan(InspectionRecord entity) {    	
    	List<InspectionRecord> list =  service.keyValueByExample(entity);
    	if(list==null){
    		list = new ArrayList<>();
    		//获取实训室下面的设备
        	Asset assetPara = new Asset();
        	assetPara.setRoomId(entity.getRoomId());
        	assetPara.setAssetStatusCode("asset_status_normal");
        	List<Asset> assets = assetService.queryList(assetPara);
        	if(assets!=null){
        		//插入正常设备的巡检记录基础信息
        		for (int i = 0; i < assets.size(); i++) {
        			Asset asset = assets.get(i);
        			InspectionRecord record = new InspectionRecord();
        			record.setAssetCode(asset.getAssetCode());
        			record.setAssetClassification(asset.getAssetClassification());
        			record.setAssetClassificationCode(asset.getAssetClassificationCode());
        			record.setAssetStatus(asset.getAssetStatus());
        			record.setAssetStatusCode(asset.getAssetStatusCode());
        			record.setIsRepair(0);
        			record.setPlanId(entity.getPlanId());
        			record.setAssetName(asset.getAssetName());
        			list.add(record);
        		}
        	}//if(assets!=null)
    	}//if(list==null)
    	return Result.success(list);
    }
    
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("inspectionrecord:create")
    @SystemLog("设备管理巡检记录创建")
    @Override
    public Result<String> create(@Validated(InspectionRecord.InspectionRecordCreateChecks.class) InspectionRecord entity) {
    	Date cur = new Date();
    	String curTime  = DateUtil.dateToStr(cur, DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("inspectionrecord:update")
    @SystemLog("设备管理巡检记录更新")
    @Override
    public Result<String> update(@Validated(InspectionRecord.InspectionRecordUpdateChecks.class) InspectionRecord entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("inspectionrecord:delete")
    @SystemLog("设备管理巡检记录删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("inspectionrecord:exportexcel")
	public Result<String> exportExcel(InspectionRecord entity) {
		String fileName="";
		try {
			List<InspectionRecord> list = service.keyValueByExample(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, InspectionRecord.class, "巡检记录");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
}
