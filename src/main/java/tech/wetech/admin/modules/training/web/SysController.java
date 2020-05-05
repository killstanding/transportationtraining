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
import tech.wetech.admin.modules.training.po.Sys;
import tech.wetech.admin.modules.training.service.SysService;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "sys", tags = {"sys"}, description = "系信息")
@Controller
@RequestMapping("/sys")
public class SysController extends BaseCrudController<Sys> {

    @Autowired
    private SysService service;

    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("sys:view")
    @Override
    public Result<List<Sys>> queryList(Sys entity, PageQuery pageQuery) {
        Page<Sys> page = (Page<Sys>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("sys:create")
    @SystemLog("系信息管理系信息创建")
    @Override
    public Result create(@Validated(Sys.SysCreateChecks.class) Sys entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("sys:update")
    @SystemLog("系信息管理系信息更新")
    @Override
    public Result update(@Validated(Sys.SysUpdateChecks.class) Sys entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("sys:delete")
    @SystemLog("系信息管理系信息删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
