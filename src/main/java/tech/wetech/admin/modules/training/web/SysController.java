package tech.wetech.admin.modules.training.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import tech.wetech.admin.core.annotation.SystemLog;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.training.po.Sys;
import tech.wetech.admin.modules.training.service.SysService;
import javax.validation.constraints.NotNull;

@Api(value = "sys", tags = {"sys"}, description = "系信息")
@Controller
@RequestMapping("/sys")
public class SysController extends BaseCrudController<Sys> {

    @Autowired
    private SysService service;

    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("sys：create")
    @SystemLog("系信息管理系信息创建")
    @Override
    public Result create(@Validated(Sys.SysCreateChecks.class) Sys entity) {
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("sys：update")
    @SystemLog("系信息管理系信息更新")
    @Override
    public Result update(@Validated(Sys.SysUpdateChecks.class) Sys entity) {
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("sys：delete")
    @SystemLog("系信息管理系信息删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
