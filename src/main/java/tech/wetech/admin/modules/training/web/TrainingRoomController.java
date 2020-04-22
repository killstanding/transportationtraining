package tech.wetech.admin.modules.training.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import com.github.pagehelper.Page;
import io.swagger.annotations.Api;
import tech.wetech.admin.core.annotation.SystemLog;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.modules.base.query.PageQuery;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.TrainingRoom;
import tech.wetech.admin.modules.training.service.PositionService;
import tech.wetech.admin.modules.training.service.SysService;
import tech.wetech.admin.modules.training.service.TrainingRoomService;
import org.springframework.ui.Model;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "trainingroom", tags = {"trainingroom"}, description = "实训室")
@Controller
@RequestMapping("/trainingroom")
public class TrainingRoomController extends BaseCrudController<TrainingRoom> {

    @Autowired
    private TrainingRoomService service;
    @Autowired
    private SysService sysService;
    @Autowired
    private PositionService positionService;
    @Autowired
    private UserService userService;
    
    @GetMapping
    @RequiresPermissions("trainingroom:view")
    public String userPage(Model model) {
    	model.addAttribute("sysList", sysService.queryAll());
    	model.addAttribute("positionList", positionService.queryAll());
    	model.addAttribute("userList", userService.queryAll());
        return "system/trainingroom";
    }
    
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("trainingroom:view")
    @Override
    public Result<List<TrainingRoom>> queryList(TrainingRoom entity, PageQuery pageQuery) {
        Page<TrainingRoom> page = (Page<TrainingRoom>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("trainingroom：create")
    @SystemLog("实训室管理实训室创建")
    @Override
    public Result create(@Validated(TrainingRoom.TrainingRoomCreateChecks.class) TrainingRoom entity) {
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("trainingroom：update")
    @SystemLog("实训室管理实训室更新")
    @Override
    public Result update(@Validated(TrainingRoom.TrainingRoomUpdateChecks.class) TrainingRoom entity) {
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("trainingroom：delete")
    @SystemLog("实训室管理实训室删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
