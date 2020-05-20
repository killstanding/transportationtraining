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
import tech.wetech.admin.modules.training.po.TeachingPlan;
import tech.wetech.admin.modules.training.service.TeachingPlanService;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "teachingplan", tags = {"teachingplan"}, description = "教案管理")
@Controller
@RequestMapping("/teachingplan")
public class TeachingPlanController extends BaseCrudController<TeachingPlan> {

	@Autowired
    private TeachingPlanService service;
    
    @GetMapping
    @RequiresPermissions("teachingplan:view")
    public String page(Model model) {
        return "system/teachingplan";
    }
    
    @GetMapping
    @RequiresPermissions("teachingplan:view")
    public String editPage(Model model) {
        return "system/teachingplanedit";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("teachingplan:view")
    @Override
    public Result<List<TeachingPlan>> queryList(TeachingPlan entity, PageQuery pageQuery) {
        Page<TeachingPlan> page = (Page<TeachingPlan>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("teachingplan:create")
    @SystemLog("教案管理教案创建")
    @Override
    public Result<String> create(@Validated(TeachingPlan.TeachingPlanCreateChecks.class) TeachingPlan entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("teachingplan:update")
    @SystemLog("教案管理教案更新")
    @Override
    public Result<String> update(@Validated(TeachingPlan.TeachingPlanUpdateChecks.class) TeachingPlan entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("teachingplan:delete")
    @SystemLog("教案管理教案删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
