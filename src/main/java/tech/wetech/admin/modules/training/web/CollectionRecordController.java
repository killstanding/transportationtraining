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
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.CollectionRecord;
import tech.wetech.admin.modules.training.service.CollectionRecordService;
import tech.wetech.admin.modules.training.service.PositionService;
import tech.wetech.excel.ExcelWriteUtil;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "collectionrecord", tags = {"collectionrecord"}, description = "领用记录")
@Controller
@RequestMapping("/collectionrecord")
public class CollectionRecordController extends BaseCrudController<CollectionRecord> {

	@Autowired
    private CollectionRecordService service;
	@Autowired
	private PositionService positionService;
    @Autowired
    private ConfigProperties configProperties;
    @Autowired
    private UserService userService;
    
    @GetMapping
    @RequiresPermissions("collectionrecord:view")
    public String page(Model model) {
    	model.addAttribute("positionList", positionService.queryAll());
    	model.addAttribute("userList", userService.queryAll());
        return "system/collectionrecord";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("collectionrecord:view")
    @Override
    public Result<List<CollectionRecord>> queryList(CollectionRecord entity, PageQuery pageQuery) {
        Page<CollectionRecord> page = (Page<CollectionRecord>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("collectionrecord:create")
    @SystemLog("领用记录创建")
    @Override
    public Result<String> create(@Validated(CollectionRecord.CollectionRecordCreateChecks.class) CollectionRecord entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("collectionrecord:update")
    @SystemLog("领用记录更新")
    @Override
    public Result<String> update(@Validated(CollectionRecord.CollectionRecordUpdateChecks.class) CollectionRecord entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("collectionrecord:delete")
    @SystemLog("领用记录删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }
    
    @ResponseBody
	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("collectionrecord:exportexcel")
	public Result<String> exportExcel(CollectionRecord entity) {
		String fileName="";
		try {
			List<CollectionRecord> list = service.keyValueByExample(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, CollectionRecord.class, "信息");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
}
