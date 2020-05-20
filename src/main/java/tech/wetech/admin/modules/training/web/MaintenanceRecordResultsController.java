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
import tech.wetech.admin.modules.training.po.MaintenanceRecordResults;
import tech.wetech.admin.modules.training.service.MaintenanceRecordResultsService;
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
    
    @GetMapping
    @RequiresPermissions("maintenancerecordresults:view")
    public String page(Model model) {
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
        return Result.success();
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
