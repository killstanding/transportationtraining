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
import tech.wetech.admin.modules.training.po.TeachingPlanReFile;
import tech.wetech.admin.modules.training.service.TeachingPlanReFileService;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "teachingplanrefile", tags = {"teachingplanrefile"}, description = "教案关联文件")
@Controller
@RequestMapping("/teachingplanrefile")
public class TeachingPlanReFileController extends BaseCrudController<TeachingPlanReFile> {

	@Autowired
    private TeachingPlanReFileService service;
    
    @GetMapping
    @RequiresPermissions("teachingplanrefile:view")
    public String page(Model model) {
        return "system/teachingplanrefile";
    }
    
    @GetMapping("/editpage")
    @RequiresPermissions("teachingplanrefile:view")
    public String editpage(Model model) {
        return "system/teachingplanrefileedit";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("teachingplanrefile:view")
    @Override
    public Result<List<TeachingPlanReFile>> queryList(TeachingPlanReFile entity, PageQuery pageQuery) {
        Page<TeachingPlanReFile> page = (Page<TeachingPlanReFile>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("teachingplanrefile:create")
    @SystemLog("教案关联文件创建")
    @Override
    public Result<String> create(@Validated(TeachingPlanReFile.TeachingPlanReFileCreateChecks.class) TeachingPlanReFile entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("teachingplanrefile:update")
    @SystemLog("教案关联文件更新")
    @Override
    public Result<String> update(@Validated(TeachingPlanReFile.TeachingPlanReFileUpdateChecks.class) TeachingPlanReFile entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("teachingplanrefile:delete")
    @SystemLog("教案关联文件删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
