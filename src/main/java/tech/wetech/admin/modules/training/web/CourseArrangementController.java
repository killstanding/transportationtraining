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
import io.swagger.annotations.ApiOperation;
import tech.wetech.admin.core.annotation.SystemLog;
import tech.wetech.admin.core.common.ConfigProperties;
import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.core.utils.Logger;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.core.utils.ResultCodeEnum;
import tech.wetech.admin.modules.base.query.PageQuery;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.system.common.CommonVariable;
import tech.wetech.admin.modules.system.po.Organization;
import tech.wetech.admin.modules.system.po.User;
import tech.wetech.admin.modules.system.service.OrganizationService;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.CourseArrangement;
import tech.wetech.admin.modules.training.po.StatisticsPo;
import tech.wetech.admin.modules.training.po.TrainingRoom;
import tech.wetech.admin.modules.training.service.CourseArrangementService;
import tech.wetech.admin.modules.training.service.CoursesService;
import tech.wetech.admin.modules.training.service.StatisticsPoService;
import tech.wetech.admin.modules.training.service.TeachingPlanService;
import tech.wetech.admin.modules.training.service.TrainingRoomService;
import tech.wetech.admin.modules.training.service.WeekYearService;
import tech.wetech.admin.modules.training.vo.CurriculumDataVo;
import tech.wetech.excel.ExcelWriteUtil;

import java.util.ArrayList;
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
	@Autowired
	private StatisticsPoService statisticsPoService;
	@Autowired
	private ConfigProperties configProperties;

	@GetMapping
	@RequiresPermissions("coursearrangement:view")
	public String page(Model model) {
		model.addAttribute("weekYearServiceList", weekYearService.queryAll());
		model.addAttribute("userList", userService.queryListByRoleId(CommonVariable.TEACHER_ROLE_ID));//获取教师用户
		model.addAttribute("coursesList", coursesService.queryAll());
		Organization org  = new Organization();
		org.setLeaf(true);
		model.addAttribute("organizationList", organizationService.queryList(org));
		TrainingRoom tr = new TrainingRoom();
		tr.setIsEnabled(1);
		model.addAttribute("trainingRoomList", trainingRoomService.queryList(tr));
		model.addAttribute("teachingPlanList", teachingPlanService.queryAll());
		return "system/coursearrangement";
	}

	///课程表页面路由
	@GetMapping("/curriculumpage")
	@RequiresPermissions("coursearrangement:view")
	public String curriculumPage(Model model) {
		model.addAttribute("weekYearServiceList", weekYearService.queryAll());
		TrainingRoom tr = new TrainingRoom();
		tr.setIsEnabled(1);
		model.addAttribute("trainingRoomList", trainingRoomService.queryList(tr));
		model.addAttribute("teachingPlanList", teachingPlanService.queryAll());
		return "system/curriculum";
	}

	//课程表list数据 入参为实训室和周
	@ResponseBody
	@GetMapping("/curriculumlist")
	@RequiresPermissions("coursearrangement:view")
	public Result<List<CurriculumDataVo>> queryCurriculumList(CourseArrangement entity) {
		List<CourseArrangement> courseArrangements = service.queryList(entity);
		//int[] weekArr= {1,2,3,4,5,6,7};
		int[] sectionArr= {1,2,3,4,5,6,7,8};
		List<CurriculumDataVo> curriculumDataVos = new ArrayList<CurriculumDataVo>();
		for (int i = 0; i < sectionArr.length; i++) {
			int sectionNum = sectionArr[i];//节次
			CurriculumDataVo vo  = new CurriculumDataVo();
			vo.setSectionNum(sectionNum+"");
			for (int j = 0; j < courseArrangements.size(); j++) {
				CourseArrangement mid = courseArrangements.get(j);
				String sectionName = mid.getSectionName();
				String[] strArr = sectionName.split("-");
				int start = 0;
				int end = 0;
				try {
					if(strArr.length==2){
						start = Integer.parseInt(strArr[0]);
						end = Integer.parseInt(strArr[1]);

					}else{//strArr.length==2
						start = Integer.parseInt(strArr[0]);
						end  = Integer.parseInt(strArr[0]);
					}
				} catch (NumberFormatException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					start = 0 ;
					end = 0;
				}
				if(start!=0){
					if(sectionNum>=start&&sectionNum<=end){
						String weekNumStr = mid.getWeekNum();
						if(weekNumStr!=null&&!weekNumStr.equals("")){
							int weekNum = Integer.parseInt(weekNumStr);
							String strValue = mid.getCourseName()+"/n"
									+ mid.getLecturerlTeacher()+"/n"
									+ mid.getClassName()+"/"+mid.getNumberOfPeople()+"人";
							switch (weekNum) {
							case 1:
								vo.setWeek1(strValue);
								break;
							case 2:
								vo.setWeek2(strValue);
								break;
							case 3:
								vo.setWeek3(strValue);
								break;
							case 4:
								vo.setWeek4(strValue);
								break;
							case 5:
								vo.setWeek5(strValue);
								break;
							case 6:
								vo.setWeek6(strValue);
								break;
							case 7:
								vo.setWeek7(strValue);
								break;
							}
						}//if(weekNumStr!=null&&!weekNumStr.equals(""))


					}//if(sectionNum>=start&&sectionNum<=end)
				}//if(start!=0)
			}
			curriculumDataVos.add(vo);
		}
		return Result.success(curriculumDataVos);
	}

	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("coursearrangement:view")
	@Override
	public Result<List<CourseArrangement>> queryList(CourseArrangement entity, PageQuery pageQuery) {
		String username = (String) SecurityUtils.getSubject().getPrincipal();
		User user = userService.queryOne(new User().setUsername(username));
		entity.setLecturerlTeacherId(user.getId().intValue());

		Page<CourseArrangement> page = (Page<CourseArrangement>) service.queryListByLike(entity, pageQuery);
		List<StatisticsPo> assetCountlist =  statisticsPoService.selectAssetCountNumGroupByCourseArrangementId();
		List<StatisticsPo> consumablesCountlist =  statisticsPoService.selectConsumablesCountNumGroupByCourseArrangementId();
		List<StatisticsPo> toolCountList =  statisticsPoService.selectToolCountNumGroupByCourseArrangementId();

		page.forEach(u -> {
			assetCountlist.forEach(st ->{
				u.setNumberOfDevices(0);
				if(st.getStatisticsCode().equals(u.getId()+"")){
					u.setNumberOfDevices(st.getStatisticsTotal());
				}
			});
			consumablesCountlist.forEach(st ->{
				u.setNumberOfConsumables(0);
				if(st.getStatisticsCode().equals(u.getId()+"")){
					u.setNumberOfConsumables(st.getStatisticsTotal());
				}
			});
			toolCountList.forEach(st ->{
				u.setNumberOfTools(0);
				if(st.getStatisticsCode().equals(u.getId()+"")){
					u.setNumberOfTools(st.getStatisticsTotal());
				}
			});
		});
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
		//计算课时
		String sectionName = entity.getSectionName();
		String[] strArr = sectionName.split("-");
		int classHour = 0;
		if(strArr.length==2){
			int start = 0;
			int end = 0;
			try {
				start = Integer.parseInt(strArr[0]);
				end = Integer.parseInt(strArr[1]);
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				start = 0 ;
				end = 0;
			}
			classHour = end - start + 1;
		}
		entity.setClassHour(classHour+"");
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
		CourseArrangement record = service.queryById(entity.getId());
		//计算课时
		String sectionName = record.getSectionName();
		String[] strArr = sectionName.split("-");
		int classHour = 0;
		if(strArr.length==2){
			int start = 0;
			int end = 0;
			try {
				start = Integer.parseInt(strArr[0]);
				end = Integer.parseInt(strArr[1]);
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				start = 0 ;
				end = 0;
			}
			classHour = end - start + 1;
		}
		entity.setClassHour(classHour+"");
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
	@ResponseBody
	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("coursearrangement:exportexcel")
	public Result<String> exportExcel(CourseArrangement entity) {
		String fileName="";
		try {
			List<CourseArrangement> list = service.keyValueByExample(entity);
			List<StatisticsPo> assetCountlist =  statisticsPoService.selectAssetCountNumGroupByCourseArrangementId();
			List<StatisticsPo> consumablesCountlist =  statisticsPoService.selectConsumablesCountNumGroupByCourseArrangementId();
			List<StatisticsPo> toolCountList =  statisticsPoService.selectToolCountNumGroupByCourseArrangementId();

			list.forEach(u -> {
				assetCountlist.forEach(st ->{
					u.setNumberOfDevices(0);
					if(st.getStatisticsCode().equals(u.getId()+"")){
						u.setNumberOfDevices(st.getStatisticsTotal());
					}
				});
				consumablesCountlist.forEach(st ->{
					u.setNumberOfConsumables(0);
					if(st.getStatisticsCode().equals(u.getId()+"")){
						u.setNumberOfConsumables(st.getStatisticsTotal());
					}
				});
				toolCountList.forEach(st ->{
					u.setNumberOfTools(0);
					if(st.getStatisticsCode().equals(u.getId()+"")){
						u.setNumberOfTools(st.getStatisticsTotal());
					}
				});
			});
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, CourseArrangement.class, "资产信息");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}

		return Result.success(fileName);
	}
}
