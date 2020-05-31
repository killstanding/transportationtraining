package tech.wetech.admin.modules.training.web;


import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import tech.wetech.admin.modules.system.common.CommonVariable;
import tech.wetech.admin.modules.system.service.OrganizationService;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.po.SpecificationType;
import tech.wetech.admin.modules.training.po.StatusCountResult;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.SpecificationTypeService;
import tech.wetech.admin.modules.training.service.PositionService;
import tech.wetech.admin.modules.training.service.PubCodeService;
import tech.wetech.admin.modules.training.service.TrainingRoomService;
import tech.wetech.admin.modules.training.vo.FileVo;
import tech.wetech.excel.ExcelReadUtil;
import tech.wetech.excel.ExcelWriteUtil;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.constraints.NotNull;

@Api(value = "asset", tags = {"asset"}, description = "资产管理")
@Controller
@RequestMapping("/asset")
public class AssetController extends BaseCrudController<Asset> {

	@Autowired
    private AssetService service;
	@Autowired
    private AssetClassificationService assetClassificationService;
	@Autowired
    private SpecificationTypeService specificationTypeService;
	@Autowired
	private PositionService positionService;
	@Autowired
    private OrganizationService organizationService;
	@Autowired
    private PubCodeService pubCodeService;
    @Autowired
    private ConfigProperties configProperties;
    @Autowired
    private UserService userService;
    @Autowired
    private TrainingRoomService trainingRoomService;
    
    @GetMapping
    @RequiresPermissions("asset:view")
    public String page(Model model) {
    	AssetClassification assetClassification = new AssetClassification();
    	assetClassification.setAssetTypeCode("asset_type_device");//设备
    	model.addAttribute("assetClassificationList", assetClassificationService.queryList(assetClassification));
    	SpecificationType specificationType = new SpecificationType();
    	specificationType.setAssetTypeCode("asset_type_device");//设备
    	model.addAttribute("assetTypeList", specificationTypeService.queryList(specificationType));//规格型号
    	model.addAttribute("positionList", positionService.queryAll());
    	model.addAttribute("organizationList", organizationService.queryAll());
    	PubCode pubCode = new PubCode();
    	pubCode.setPubType("inspection_cycle");
    	model.addAttribute("inspectionCycleList", pubCodeService.queryList(pubCode));
    	pubCode.setPubType("asset_status");
    	model.addAttribute("assetStatusList", pubCodeService.queryList(pubCode));
    	model.addAttribute("userList", userService.queryListByRoleId(CommonVariable.DEVICE_ADMIN_ROLE_ID));//获取设备管理员用户
    	model.addAttribute("trainingRoomList", trainingRoomService.queryAll());
        return "system/asset";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("asset:view")
    @Override
    public Result<List<Asset>> queryList(Asset entity, PageQuery pageQuery) {
        Page<Asset> page = (Page<Asset>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @GetMapping("/listbyroomid")
    @RequiresPermissions("asset:view")
    @ApiOperation(value = "根据实训室编号获取设备，不分页")
    public Result<List<Asset>> queryListByRoomId(Asset entity) {
    	entity.setRoomIsEnabled(1);
    	List<Asset> list = service.keyValueByExample(entity);
        return Result.success(list);
    }
    
    
    @ApiOperation(value = "根据资源状态统计数量", notes = "根据资源状态统计数量")
    @ResponseBody
    @GetMapping("/getcountnumgourpbystatus")
    @RequiresPermissions("asset:view")
    public Result<List<StatusCountResult>> selectCountNumGourpByStatus() {
    	PubCode pubCode = new PubCode();
    	pubCode.setPubType("inspection_cycle");
    	List<PubCode> pubCodeList = pubCodeService.queryList(pubCode);
    	List<StatusCountResult> result =  service.selectCountNumGourpByStatus();
    	Map<String,String> isHaveMap = new HashMap<>();
    	 int total = 0;
    	if(result!=null){
    		for (int i = 0; i < result.size(); i++) {
        		StatusCountResult sc = result.get(i);
        		if(isHaveMap.get(sc.getSTATUS_CODE())==null){
        			isHaveMap.put(sc.getSTATUS_CODE(), sc.getSTATUS_NAME());
        		}else{
        			String numStr = sc.getCOUNT_NUM();
        			total = total + Integer.parseInt(numStr);
        		}
    		}//for result
    	}//if(result!=null)
    	
        for (int i = 0; i < pubCodeList.size(); i++) {
			PubCode record = pubCodeList.get(i);
			String pubCodeStr = record.getPubCode();
			String pubCodeName = record.getPubName();
			if(isHaveMap.get(pubCodeStr)==null){
				StatusCountResult sc = new StatusCountResult();
				sc.setSTATUS_CODE(pubCodeStr);
				sc.setSTATUS_NAME(pubCodeName);
				sc.setCOUNT_NUM("0");
				result.add(sc);
			}
		}//for pubCodeList
        StatusCountResult sc = new StatusCountResult();
		sc.setSTATUS_CODE("total");
		sc.setSTATUS_NAME("总数");
		sc.setCOUNT_NUM(total+"");
		result.add(sc);
        
        return Result.success(result);
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("asset:create")
    @SystemLog("资产管理资产创建")
    @Override
    public Result<String> create(@Validated(Asset.AssetCreateChecks.class) Asset entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("asset:update")
    @SystemLog("资产管理资产更新")
    @Override
    public Result<String> update(@Validated(Asset.AssetUpdateChecks.class) Asset entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("asset:delete")
    @SystemLog("资产管理资产删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("asset:exportexcel")
	public Result<String> exportExcel(Asset entity) {
		String fileName="";
		try {
			List<Asset> list = service.keyValueByExample(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, Asset.class, "资产信息");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
	
	
	@PostMapping("/importexcel/")
	@ApiOperation(value = "导入")
	@RequiresPermissions("asset:importexcel")
	public Result<String> importExcel(FileVo file) {
		try {
			String syncTime = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
			List<Object> list = ExcelReadUtil.readExcelData(file.getPath(), Asset.class);
			if(list!=null){
				for (int i = 0; i < list.size(); i++) {
					Asset record = (Asset)list.get(i);
					record.setUpdateTime(syncTime);
					//制定唯一编号 j根据id进行唯一性识别
					Asset mid = service.queryById(record);
					if(mid!=null){
						service.updateNotNull(record);
					}else{
						record.setCreateTime(syncTime);
						service.create(record);
					}//else
					//更新编号
					service.updateCodeById(record);
					
				}//for+
			}//if(list!=null)
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		return Result.success();
	}
}
