package tech.wetech.admin.modules.training.web;


import org.apache.shiro.SecurityUtils;
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
import tech.wetech.admin.modules.system.common.CommonVariable;
import tech.wetech.admin.modules.system.po.User;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.Chapters;
import tech.wetech.admin.modules.training.po.Courses;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.po.TeachingPlan;
import tech.wetech.admin.modules.training.service.ChaptersService;
import tech.wetech.admin.modules.training.service.CoursesService;
import tech.wetech.admin.modules.training.service.PubCodeService;
import tech.wetech.admin.modules.training.service.TrainingRoomService;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "courses", tags = {"courses"}, description = "课程管理")
@Controller
@RequestMapping("/courses")
public class CoursesController extends BaseCrudController<Courses> {

	@Autowired
	private CoursesService service;
	@Autowired
	private UserService userService;
	@Autowired
    private PubCodeService pubCodeService;
	@Autowired
    private ChaptersService chaptersService;
    @Autowired
    private TrainingRoomService trainingRoomService;
    
	@GetMapping
	@RequiresPermissions("courses:view")
	public String page(Model model) {
		PubCode pubCode = new PubCode();
    	pubCode.setPubType("course_type");
    	model.addAttribute("courseTypeList", pubCodeService.queryList(pubCode));
    	model.addAttribute("userList", userService.queryListByRoleId(CommonVariable.COURSES_ADMIN_ROLE_ID));//获取课程管理员用户
		return "system/courses";
	}
	
	@GetMapping("/coursesretrainingroompage")
	@RequiresPermissions("courses:view")
	public String coursesReTrainingRoomPage(Model model) {
		model.addAttribute("trainingRoomList", trainingRoomService.queryAll());
		return "system/coursesretrainingroompage";
	}
	
	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("courses:view")
	@Override
	public Result<List<Courses>> queryList(Courses entity, PageQuery pageQuery) {
        // 当前用户
        String username = (String) SecurityUtils.getSubject().getPrincipal();
        User user = userService.queryOne(new User().setUsername(username));
        entity.setCourseDirectorId(user.getId().intValue());
		Page<Courses> page = (Page<Courses>) service.queryListByLike(entity, pageQuery);
		return Result.success(page.getResult()).addExtra("total", page.getTotal());
	}

	@ResponseBody
	@GetMapping("/teachingplanlist")
	@RequiresPermissions("courses:view")
	public Result<List<TeachingPlan>> queryTeachingPlanList(Courses entity) {
        List<TeachingPlan>  list = service.selectTeachingPlanByCourseId(entity);
		return Result.success(list);
	}
	
	@ResponseBody
	@PostMapping("/create")
	//@RequiresPermissions("courses:create")
	@SystemLog("课程管理课程创建")
	@Override
	public Result<String> create(@Validated(Courses.CoursesCreateChecks.class) Courses entity) {
		String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
		entity.setCreateTime(curTime);
		entity.setUpdateTime(curTime);
		service.create(entity);
		
		//新建章节根节点
		Chapters chapter = new Chapters();
		chapter.setChapterName("课程大纲");
		chapter.setChapterSort("1");
		chapter.setChapterLevel("1");
		chapter.setCourseId(entity.getId());
		chapter.setCreateTime(curTime);
		chapter.setUpdateTime(curTime);
		chapter.setParentId(0);
		chaptersService.create(chapter);
		
		return Result.success();
	}

	@ResponseBody
	@PostMapping("/update")
	@RequiresPermissions("courses:update")
	@SystemLog("课程管理课程更新")
	@Override
	public Result<String> update(@Validated(Courses.CoursesUpdateChecks.class) Courses entity) {
		String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
		entity.setUpdateTime(curTime);
		service.updateNotNull(entity);
		return Result.success();
	}

	@ResponseBody
	@PostMapping("/delete-batch")
	@RequiresPermissions("courses:delete")
	@SystemLog("课程管理课程删除")
	@Override
	public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
		super.deleteBatchByIds(ids);
		return Result.success();
	}

}
