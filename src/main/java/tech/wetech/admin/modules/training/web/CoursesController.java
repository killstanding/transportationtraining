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
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.Chapters;
import tech.wetech.admin.modules.training.po.Courses;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.service.ChaptersService;
import tech.wetech.admin.modules.training.service.CoursesService;
import tech.wetech.admin.modules.training.service.PubCodeService;

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
	@GetMapping
	@RequiresPermissions("courses:view")
	public String page(Model model) {
		PubCode pubCode = new PubCode();
    	pubCode.setPubType("course_type");
    	model.addAttribute("courseTypeList", pubCodeService.queryList(pubCode));
    	model.addAttribute("userList", userService.queryAll());
		return "system/courses";
	}

	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("courses:view")
	@Override
	public Result<List<Courses>> queryList(Courses entity, PageQuery pageQuery) {
		Page<Courses> page = (Page<Courses>) service.queryListByLike(entity, pageQuery);
		return Result.success(page.getResult()).addExtra("total", page.getTotal());
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
		int  courseId = service.create(entity);
		
		//新建章节根节点
		Chapters chapter = new Chapters();
		chapter.setChapterName("课程大纲");
		chapter.setChapterSort("0");
		chapter.setChapterLevel("0");
		chapter.setCourseId(courseId);
		chapter.setCreateTime(curTime);
		chapter.setUpdateTime(curTime);
		chaptersService.count(chapter);
		
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
