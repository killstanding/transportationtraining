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
import tech.wetech.admin.modules.training.po.MaintenanceRecord;
import tech.wetech.admin.modules.training.service.MaintenanceRecordService;
import tech.wetech.excel.ExcelWriteUtil;
import org.springframework.ui.Model;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "maintenancerecord", tags = {"maintenancerecord"}, description = "设备维修记录（申请）")
@Controller
@RequestMapping("/maintenancerecord")
public class MaintenanceRecordController extends BaseCrudController<MaintenanceRecord> {

    @Autowired
    private MaintenanceRecordService service;
    @Autowired
    private ConfigProperties configProperties;
    
    @GetMapping
    @RequiresPermissions("maintenancerecord:view")
    public String userPage(Model model) {
        return "system/maintenancerecord";
    }
    
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("maintenancerecord:view")
    @Override
    public Result<List<MaintenanceRecord>> queryList(MaintenanceRecord entity, PageQuery pageQuery) {
        Page<MaintenanceRecord> page = (Page<MaintenanceRecord>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("maintenancerecord:create")
    @SystemLog("设备维修设备维修记录创建")
    @Override
    public Result create(@Validated(MaintenanceRecord.MaintenanceRecordCreateChecks.class) MaintenanceRecord entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("maintenancerecord:update")
    @SystemLog("设备维修设备维修记录更新")
    @Override
    public Result update(@Validated(MaintenanceRecord.MaintenanceRecordUpdateChecks.class) MaintenanceRecord entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("maintenancerecord:delete")
    @SystemLog("设备维修设备维修记录删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("maintenancerecord:exportexcel")
	public Result<String> exportExcel(MaintenanceRecord entity) {
		String fileName="";
		try {
			List<MaintenanceRecord> list = service.queryList(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, MaintenanceRecord.class, "设备维修记录");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
}
