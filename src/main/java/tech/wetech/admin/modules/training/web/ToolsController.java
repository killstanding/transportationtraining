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
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.po.SpecificationType;
import tech.wetech.admin.modules.training.po.Tools;
import tech.wetech.admin.modules.training.service.ToolsService;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import tech.wetech.admin.modules.training.service.PositionService;
import tech.wetech.admin.modules.training.service.SpecificationTypeService;
import tech.wetech.admin.modules.training.vo.FileVo;
import tech.wetech.excel.ExcelReadUtil;
import tech.wetech.excel.ExcelWriteUtil;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "tools", tags = {"tools"}, description = "工具管理")
@Controller
@RequestMapping("/tools")
public class ToolsController extends BaseCrudController<Tools> {

	@Autowired
    private ToolsService service;
	@Autowired
	private PositionService positionService;
	@Autowired
    private OrganizationService organizationService;
    @Autowired
    private ConfigProperties configProperties;
    @Autowired
    private UserService userService;
	@Autowired
    private AssetClassificationService assetClassificationService;
	@Autowired
	private SpecificationTypeService specificationTypeService;
	
    @GetMapping
    @RequiresPermissions("tools:view")
    public String page(Model model) {
    	model.addAttribute("positionList", positionService.queryAll());
    	model.addAttribute("organizationList", organizationService.queryAll());
    	model.addAttribute("userList", userService.queryAll());
    	AssetClassification assetClassification = new AssetClassification();
    	assetClassification.setAssetTypeCode("asset_type_tool");//工具
    	model.addAttribute("assetClassificationList", assetClassificationService.queryList(assetClassification));
    	SpecificationType specificationType = new SpecificationType();
    	specificationType.setAssetTypeCode("asset_type_tool");//工具
    	model.addAttribute("assetTypeList", specificationTypeService.queryList(specificationType));//规格型号
        return "system/tools";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("tools:view")
    @Override
    public Result<List<Tools>> queryList(Tools entity, PageQuery pageQuery) {
        Page<Tools> page = (Page<Tools>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("tools:create")
    @SystemLog("工具管理工具创建")
    @Override
    public Result<String> create(@Validated(Tools.ToolsCreateChecks.class) Tools entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("tools:update")
    @SystemLog("工具管理工具更新")
    @Override
    public Result<String> update(@Validated(Tools.ToolsUpdateChecks.class) Tools entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("tools:delete")
    @SystemLog("工具管理工具删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("tools:exportexcel")
	public Result<String> exportExcel(Tools entity) {
		String fileName="";
		try {
			List<Tools> list = service.keyValueByExample(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, Tools.class, "工具信息");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
	
	
	@PostMapping("/importexcel/")
	@ApiOperation(value = "导入")
	@RequiresPermissions("tools:importexcel")
	public Result<String> importExcel(FileVo file) {
		try {
			String syncTime = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
			List<Object> list = ExcelReadUtil.readExcelData(file.getPath(), Tools.class);
			if(list!=null){
				for (int i = 0; i < list.size(); i++) {
					Tools record = (Tools)list.get(i);
					record.setUpdateTime(syncTime);
					//制定唯一编号 j根据id进行唯一性识别
					Tools mid = service.queryById(record);
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
