package tech.wetech.admin.modules.training.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.InspectionPlanYear;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.service.InspectionPlanYearService;
import tech.wetech.admin.modules.training.service.PubCodeService;
import tech.wetech.admin.modules.training.service.TrainingRoomService;
import tech.wetech.excel.ExcelWriteUtil;

import org.springframework.ui.Model;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "年度巡检计划统计", tags = {"inspectionplanyear"}, description = "年度巡检计划统计")
@Controller
@RequestMapping("/inspectionplanyear")
public class InspectionPlanYearController extends BaseCrudController<InspectionPlanYear> {

    @Autowired
    private InspectionPlanYearService service;
	@Autowired
    private PubCodeService pubCodeService;
    @Autowired
    private ConfigProperties configProperties;
    @Autowired
    private UserService userService;
    @Autowired
    private TrainingRoomService trainingRoomService;
    @GetMapping
    @RequiresPermissions("inspectionplanyear:view")
    public String page(Model model) {
    	PubCode pubCode = new PubCode();
		pubCode.setPubType("inspection_cycle");
		model.addAttribute("inspectionCycleList", pubCodeService.queryList(pubCode));
		model.addAttribute("userList", userService.queryAll());
		model.addAttribute("trainingRoomList", trainingRoomService.queryAll());
        return "system/inspectionplanyear";
    }
    
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("inspectionplanyear:view")
    @Override
    public Result<List<InspectionPlanYear>> queryList(InspectionPlanYear entity, PageQuery pageQuery) {
    	
        Page<InspectionPlanYear> page = (Page<InspectionPlanYear>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("inspectionplanyear:create")
    @SystemLog("设备管理年度巡检计划统计创建")
    @Override
    public Result<String> create(@Validated(InspectionPlanYear.InspectionPlanYearCreateChecks.class) InspectionPlanYear entity) {
    	Date cur = new Date();
    	String curTime  = DateUtil.dateToStr(cur, DateUtil.TIME_FORMATE);
    	String curYear = DateUtil.dateToStr(cur, DateUtil.YEAR_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	//entity.setCreateYear(curYear);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("inspectionplanyear:update")
    @SystemLog("设备管理年度巡检计划统计更新")
    @Override
    public Result<String> update(@Validated(InspectionPlanYear.InspectionPlanYearUpdateChecks.class) InspectionPlanYear entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("inspectionplanyear:delete")
    @SystemLog("设备管理年度巡检计划统计删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

    @ResponseBody
	@PostMapping("/exportexcel")
	@ApiOperation(value = "年度巡检计划统计导出")
	@RequiresPermissions("inspectionplan:exportexcel")
	public Result<String> exportExcel(InspectionPlanYear entity) {
		String fileName="";
		try {
			List<InspectionPlanYear> list = service.queryList(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, InspectionPlanYear.class, "年度巡检计划统计");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
}
