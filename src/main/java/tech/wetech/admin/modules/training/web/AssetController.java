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
import tech.wetech.admin.modules.system.service.OrganizationService;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.AssetTypeService;
import tech.wetech.admin.modules.training.service.PositionService;
import tech.wetech.admin.modules.training.service.PubCodeService;
import tech.wetech.admin.modules.training.service.TrainingRoomService;
import tech.wetech.admin.modules.training.vo.FileVo;
import tech.wetech.excel.ExcelReadUtil;
import tech.wetech.excel.ExcelWriteUtil;

import java.util.Date;
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
    private AssetTypeService assetTypeService;
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
    public String userPage(Model model) {
    	model.addAttribute("assetClassificationList", assetClassificationService.queryAll());
    	model.addAttribute("assetTypeList", assetTypeService.queryAll());
    	model.addAttribute("positionList", positionService.queryAll());
    	model.addAttribute("organizationList", organizationService.queryAll());
    	PubCode pubCode = new PubCode();
    	pubCode.setPubType("inspection_cycle");
    	model.addAttribute("inspectionCycleList", pubCodeService.queryList(pubCode));
    	pubCode.setPubType("asset_status");
    	model.addAttribute("assetStatusList", pubCodeService.queryList(pubCode));
    	model.addAttribute("userList", userService.queryAll());
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
    @ApiOperation(value = "根据资源状态统计数量", notes = "根据资源状态统计数量")
    @ResponseBody
    @GetMapping("/getcountnumgourpbystatus")
    @RequiresPermissions("asset:view")
    public Result<Map<String, String>> selectCountNumGourpByStatus() {
        Map<String, String> result =  service.selectCountNumGourpByStatus();
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
			List<Asset> list = service.queryList(entity);
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
