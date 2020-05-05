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
import tech.wetech.admin.modules.training.po.Position;
import tech.wetech.admin.modules.training.service.PositionService;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "position", tags = {"position"}, description = "位置信息")
@Controller
@RequestMapping("/position")
public class PositionController extends BaseCrudController<Position> {

    @Autowired
    private PositionService service;

    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("position:view")
    @Override
    public Result<List<Position>> queryList(Position entity, PageQuery pageQuery) {
        Page<Position> page = (Page<Position>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("position:create")
    @SystemLog("位置信息管理位置信息创建")
    @Override
    public Result create(@Validated(Position.PositionCreateChecks.class) Position entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("position:update")
    @SystemLog("位置信息管理位置信息更新")
    @Override
    public Result update(@Validated(Position.PositionUpdateChecks.class) Position entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("position:delete")
    @SystemLog("位置信息管理位置信息删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
