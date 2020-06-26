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
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import tech.wetech.admin.modules.training.vo.FileVo;
import tech.wetech.excel.ExcelReadUtil;
import tech.wetech.excel.ExcelWriteUtil;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "assetclassification", tags = {"assetclassification"}, description = "资产分类")
@Controller
@RequestMapping("/assetclassification")
public class AssetClassificationController extends BaseCrudController<AssetClassification> {

    @Autowired
    private AssetClassificationService service;
    @Autowired
    private ConfigProperties configProperties;
    
    
    @GetMapping
    @RequiresPermissions("assetclassification:view")
    public String page(Model model) {
    	 return "system/assetclassification";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("assetclassification:view")
    @Override
    public Result<List<AssetClassification>> queryList(AssetClassification entity, PageQuery pageQuery) {
        Page<AssetClassification> page = (Page<AssetClassification>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("assetclassification:create")
    @SystemLog("资产分类管理资产分类创建")
    @Override
    public Result create(@Validated(AssetClassification.AssetClassificationCreateChecks.class) AssetClassification entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("assetclassification:update")
    @SystemLog("资产分类管理资产分类更新")
    @Override
    public Result update(@Validated(AssetClassification.AssetClassificationUpdateChecks.class) AssetClassification entity) {
     	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("assetclassification:delete")
    @SystemLog("资产分类管理资产分类删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

    @ResponseBody
   	@PostMapping("/exportexcel")
   	@ApiOperation(value = "导出")
   	@RequiresPermissions("assetclassification:exportexcel")
   	public Result<String> exportExcel(AssetClassification entity) {
   		String fileName="";
   		try {
   			List<AssetClassification> list = service.keyValueByExample(entity);
   			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, Asset.class, "位置信息");
   		} catch (Exception e) {
   			e.printStackTrace();
   			Logger.error(getClass(), e.getMessage());
   			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
   		}
   		
   		return Result.success(fileName);
   	}
   	
       @ResponseBody
   	@PostMapping("/importexcel/")
   	@ApiOperation(value = "导入")
   	@RequiresPermissions("assetclassification:importexcel")
   	public Result<String> importExcel(FileVo file) {
   		try {
   			String syncTime = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
   			List<Object> list = ExcelReadUtil.readExcelData(file.getPath(), Asset.class);
   			if(list!=null){
   				for (int i = 0; i < list.size(); i++) {
   					AssetClassification record = (AssetClassification)list.get(i);
   					record.setUpdateTime(syncTime);
   					//制定唯一编号 j根据id进行唯一性识别
   					AssetClassification mid = service.queryById(record);
   					if(mid!=null){
   						service.updateNotNull(record);
   					}else{
   						record.setCreateTime(syncTime);
   						service.create(record);
   					}//else
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
