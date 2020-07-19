package tech.wetech.admin.modules.training.web;

import org.apache.shiro.SecurityUtils;
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
import tech.wetech.admin.modules.system.common.CommonVariable;
import tech.wetech.admin.modules.system.po.Organization;
import tech.wetech.admin.modules.system.po.User;
import tech.wetech.admin.modules.system.service.OrganizationService;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.system.vo.UserVO;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.StatisticsPo;
import tech.wetech.admin.modules.training.po.TrainingRoom;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.PositionService;
import tech.wetech.admin.modules.training.service.StatisticsPoService;
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
	@Autowired
	private AssetService assetService;
	@Autowired
	private StatisticsPoService statisticsPoService;
	@GetMapping
	@RequiresPermissions("trainingroom:view")
	public String page(Model model) {
		Organization org = new Organization();
		org.setParentId(1L);
		org.setAvailable(true);
		model.addAttribute("sysList", organizationService.queryList(org));
		model.addAttribute("positionList", positionService.queryAll());
		model.addAttribute("userList", userService.queryListByRoleId(CommonVariable.TRAINING_ROOM_ADMIN_ROLE_ID));//获取实训室管理员用户
		return "system/trainingroom";
	}


	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("trainingroom:view")
	@Override
	public Result<List<TrainingRoom>> queryList(TrainingRoom entity, PageQuery pageQuery) {
        // 当前用户
        String username = (String) SecurityUtils.getSubject().getPrincipal();
        User user = userService.queryOne(new User().setUsername(username));
        entity.setRoomAdminId(user.getId().intValue());
		Page<TrainingRoom> page = (Page<TrainingRoom>) service.queryListByLike(entity, pageQuery);
		List<StatisticsPo> stList = statisticsPoService.selectAssetCountNumGroupByRoomId();
		List<TrainingRoom> list = page.getResult();
		listFor:for (int i = 0; i < list.size(); i++) {
			TrainingRoom tr = list.get(i);
			for (int j = 0; j < stList.size(); j++) {
				StatisticsPo st = stList.get(j);
				if(st.getStatisticsCode().equals(tr.getId()+"")){
					tr.setEquipNum(st.getStatisticsTotal());
					continue listFor;
				}	
			}
		}
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

		//更新实训室状态到设备表
		Asset asset = new Asset();
		asset.setRoomId(entity.getId());
		asset.setRoomIsEnabled(1);
		assetService.updateRoomIsEnabledByRoomId(asset);
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

	@ResponseBody
	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("trainingroom:exportexcel")
	public Result<String> exportExcel(TrainingRoom entity) {
		String fileName="";
		try {
			List<TrainingRoom> list = service.keyValueByExample(entity);
			List<StatisticsPo> stList = statisticsPoService.selectAssetCountNumGroupByRoomId();
			list.forEach(u -> {
				stList.forEach(st ->{
					u.setEquipNum(0);
					if(st.getStatisticsCode().equals(u.getId()+"")){
						u.setEquipNum(st.getStatisticsTotal());
					}
				});
			});
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, TrainingRoom.class, "实训室信息");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}

		return Result.success(fileName);
	}
}
