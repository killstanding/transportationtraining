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
import tech.wetech.admin.modules.training.po.CoursesReTrainingRoom;
import tech.wetech.admin.modules.training.service.CoursesReTrainingRoomService;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "coursesretrainingroom", tags = {"coursesretrainingroom"}, description = "课程关联实训室")
@Controller
@RequestMapping("/coursesretrainingroom")
public class CoursesReTrainingRoomController extends BaseCrudController<CoursesReTrainingRoom> {

	@Autowired
    private CoursesReTrainingRoomService service;
    
    @GetMapping
    @RequiresPermissions("coursesretrainingroom:view")
    public String page(Model model) {
        return "system/coursesretrainingroom";
    }
    
    @GetMapping("/editpage")
    @RequiresPermissions("coursesretrainingroom:view")
    public String editpage(Model model) {
        return "system/coursesretrainingroomedit";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("coursesretrainingroom:view")
    @Override
    public Result<List<CoursesReTrainingRoom>> queryList(CoursesReTrainingRoom entity, PageQuery pageQuery) {
        Page<CoursesReTrainingRoom> page = (Page<CoursesReTrainingRoom>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("coursesretrainingroom:create")
    @SystemLog("课程关联实训室创建")
    @Override
    public Result<String> create(@Validated(CoursesReTrainingRoom.CoursesReTrainingRoomCreateChecks.class) CoursesReTrainingRoom entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("coursesretrainingroom:update")
    @SystemLog("课程关联实训室更新")
    @Override
    public Result<String> update(@Validated(CoursesReTrainingRoom.CoursesReTrainingRoomUpdateChecks.class) CoursesReTrainingRoom entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("coursesretrainingroom:delete")
    @SystemLog("课程关联实训室删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
