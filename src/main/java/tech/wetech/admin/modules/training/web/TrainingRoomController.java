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
import tech.wetech.admin.modules.system.po.Organization;
import tech.wetech.admin.modules.system.service.OrganizationService;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.TrainingRoom;
import tech.wetech.admin.modules.training.service.PositionService;
import tech.wetech.admin.modules.training.service.TrainingRoomService;
import tech.wetech.excel.ExcelWriteUtil;

import org.springframework.ui.Model;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "trainingroom", tags = {"trainingroom"}, description = "实训室")
@Controller
@RequestMapping("/trainingroom")
public class TrainingRoomController extends BaseCrudController<TrainingRoom> {

    @Autowired
    private TrainingRoomService service;
    @Autowired
    private OrganizationService organizationService;
    @Autowired
    private PositionService positionService;
    @Autowired
    private UserService userService;
    @Autowired
    private ConfigProperties configProperties;
    
    @GetMapping
    @RequiresPermissions("trainingroom:view")
    public String userPage(Model model) {
    	Organization org = new Organization();
    	org.setParentId(1L);
    	model.addAttribute("sysList", organizationService.queryList(org));
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
    @RequiresPermissions("trainingroom:create")
    @SystemLog("实训室管理实训室创建")
    @Override
    public Result create(@Validated(TrainingRoom.TrainingRoomCreateChecks.class) TrainingRoom entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("trainingroom:update")
    @SystemLog("实训室管理实训室更新")
    @Override
    public Result update(@Validated(TrainingRoom.TrainingRoomUpdateChecks.class) TrainingRoom entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("trainingroom:delete")
    @SystemLog("实训室管理实训室删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("trainingroom:exportexcel")
	public Result<String> exportExcel(TrainingRoom entity) {
		String fileName="";
		try {
			List<TrainingRoom> list = service.queryList(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, TrainingRoom.class, "实训室信息");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
}
