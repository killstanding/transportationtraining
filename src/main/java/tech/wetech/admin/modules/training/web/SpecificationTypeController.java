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
import tech.wetech.admin.modules.training.po.SpecificationType;
import tech.wetech.admin.modules.training.service.SpecificationTypeService;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "specificationtype", tags = {"specificationtype"}, description = "资产类型")
@Controller
@RequestMapping("/specificationtype")
public class SpecificationTypeController extends BaseCrudController<SpecificationType> {

    @Autowired
    private SpecificationTypeService service;

    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("specificationtype:view")
    @Override
    public Result<List<SpecificationType>> queryList(SpecificationType entity, PageQuery pageQuery) {
        Page<SpecificationType> page = (Page<SpecificationType>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("specificationtype:create")
    @SystemLog("资产类型管理资产类型创建")
    @Override
    public Result create(@Validated(SpecificationType.SpecificationTypeCreateChecks.class) SpecificationType entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("specificationtype:update")
    @SystemLog("资产类型管理资产类型更新")
    @Override
    public Result update(@Validated(SpecificationType.SpecificationTypeUpdateChecks.class) SpecificationType entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("specificationtype:delete")
    @SystemLog("资产类型管理资产类型删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
