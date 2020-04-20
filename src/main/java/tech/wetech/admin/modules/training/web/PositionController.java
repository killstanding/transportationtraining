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
import tech.wetech.admin.modules.training.po.Position;
import tech.wetech.admin.modules.training.service.PositionService;
import javax.validation.constraints.NotNull;

@Api(value = "position", tags = {"position"}, description = "位置信息")
@Controller
@RequestMapping("/position")
public class PositionController extends BaseCrudController<Position> {

    @Autowired
    private PositionService service;

    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("position：create")
    @SystemLog("位置信息管理位置信息创建")
    @Override
    public Result create(@Validated(Position.PositionCreateChecks.class) Position entity) {
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("position：update")
    @SystemLog("位置信息管理位置信息更新")
    @Override
    public Result update(@Validated(Position.PositionUpdateChecks.class) Position entity) {
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("position：delete")
    @SystemLog("位置信息管理位置信息删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
