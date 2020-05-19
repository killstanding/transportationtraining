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
import tech.wetech.admin.modules.training.po.WeekYear;
import tech.wetech.admin.modules.training.service.WeekYearService;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "weekyear", tags = {"weekyear"}, description = "年度周信息")
@Controller
@RequestMapping("/weekyear")
public class WeekYearController extends BaseCrudController<WeekYear> {

    @Autowired
    private WeekYearService service;

    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("weekyear:view")
    @Override
    public Result<List<WeekYear>> queryList(WeekYear entity, PageQuery pageQuery) {
        Page<WeekYear> page = (Page<WeekYear>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("weekyear:create")
    @SystemLog("年度周信息创建")
    @Override
    public Result create(@Validated(WeekYear.WeekYearCreateChecks.class) WeekYear entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("weekyear:update")
    @SystemLog("年度周信息更新")
    @Override
    public Result update(@Validated(WeekYear.WeekYearUpdateChecks.class) WeekYear entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("weekyear:delete")
    @SystemLog("年度周信息删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
