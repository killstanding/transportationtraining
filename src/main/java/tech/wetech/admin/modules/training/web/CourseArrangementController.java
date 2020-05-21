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
import tech.wetech.admin.modules.system.service.OrganizationService;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.CourseArrangement;
import tech.wetech.admin.modules.training.service.CourseArrangementService;
import tech.wetech.admin.modules.training.service.CoursesService;
import tech.wetech.admin.modules.training.service.TeachingPlanService;
import tech.wetech.admin.modules.training.service.TrainingRoomService;
import tech.wetech.admin.modules.training.service.WeekYearService;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "coursearrangement", tags = {"coursearrangement"}, description = "排课管理")
@Controller
@RequestMapping("/coursearrangement")
public class CourseArrangementController extends BaseCrudController<CourseArrangement> {

	@Autowired
    private CourseArrangementService service;
    @Autowired
    private WeekYearService weekYearService;
	@Autowired
	private CoursesService coursesService;
	@Autowired
	private UserService userService;
	@Autowired
    private OrganizationService organizationService;
	@Autowired
    private TrainingRoomService trainingRoomService;
	@Autowired
    private TeachingPlanService teachingPlanService;
	
    @GetMapping
    @RequiresPermissions("coursearrangement:view")
    public String page(Model model) {
    	model.addAttribute("weekYearServiceList", weekYearService.queryAll());
    	model.addAttribute("userList", userService.queryAll());
    	model.addAttribute("coursesList", coursesService.queryAll());
    	model.addAttribute("organizationList", organizationService.queryAll());
    	model.addAttribute("trainingRoomList", trainingRoomService.queryAll());
    	model.addAttribute("teachingPlanList", teachingPlanService.queryAll());
        return "system/coursearrangement";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("coursearrangement:view")
    @Override
    public Result<List<CourseArrangement>> queryList(CourseArrangement entity, PageQuery pageQuery) {
        Page<CourseArrangement> page = (Page<CourseArrangement>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("coursearrangement:create")
    @SystemLog("排课管理排课创建")
    @Override
    public Result<String> create(@Validated(CourseArrangement.CourseArrangementCreateChecks.class) CourseArrangement entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("coursearrangement:update")
    @SystemLog("排课管理排课更新")
    @Override
    public Result<String> update(@Validated(CourseArrangement.CourseArrangementUpdateChecks.class) CourseArrangement entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("coursearrangement:delete")
    @SystemLog("排课管理排课删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }
}
