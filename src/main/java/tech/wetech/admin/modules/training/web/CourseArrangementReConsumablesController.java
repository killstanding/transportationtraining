package tech.wetech.admin.modules.training.web;


import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import com.github.pagehelper.Page;
import io.swagger.annotations.Api;
import tech.wetech.admin.core.annotation.SystemLog;
import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.modules.base.query.PageQuery;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.training.po.CourseArrangementReConsumables;
import tech.wetech.admin.modules.training.service.CourseArrangementReConsumablesService;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "coursearrangementreconsumables", tags = {"coursearrangementreconsumables"}, description = "排课管理和耗材关联")
@Controller
@RequestMapping("/coursearrangementreconsumables")
public class CourseArrangementReConsumablesController extends BaseCrudController<CourseArrangementReConsumables> {

	@Autowired
    private CourseArrangementReConsumablesService service;
    
    
    @GetMapping
    @RequiresPermissions("coursearrangementreconsumables:view")
    public String page(Model model) {
        return "system/coursearrangementreconsumables";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("coursearrangementreconsumables:view")
    @Override
    public Result<List<CourseArrangementReConsumables>> queryList(CourseArrangementReConsumables entity, PageQuery pageQuery) {
        Page<CourseArrangementReConsumables> page = (Page<CourseArrangementReConsumables>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("coursearrangementreconsumables:create")
    @SystemLog("排课管理和耗材关联创建")
    @Override
    public Result<String> create(@Validated(CourseArrangementReConsumables.CourseArrangementReConsumablesCreateChecks.class) CourseArrangementReConsumables entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("coursearrangementreconsumables:update")
    @SystemLog("排课管理和耗材关联更新")
    @Override
    public Result<String> update(@Validated(CourseArrangementReConsumables.CourseArrangementReConsumablesUpdateChecks.class) CourseArrangementReConsumables entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("coursearrangementreconsumables:delete")
    @SystemLog("排课管理和耗材关联删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }
}
