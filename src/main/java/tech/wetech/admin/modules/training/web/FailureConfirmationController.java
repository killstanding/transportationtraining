package tech.wetech.admin.modules.training.web;

import org.apache.shiro.SecurityUtils;
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
import tech.wetech.admin.core.utils.StringUtil;
import tech.wetech.admin.modules.base.query.PageQuery;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.system.po.User;
import tech.wetech.admin.modules.system.service.OrganizationService;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.po.FailureConfirmation;
import tech.wetech.admin.modules.training.po.MaintenanceRecord;
import tech.wetech.admin.modules.training.po.Tools;
import tech.wetech.admin.modules.training.po.TrainingRoom;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.FailureConfirmationService;
import tech.wetech.admin.modules.training.service.MaintenanceRecordService;
import tech.wetech.admin.modules.training.service.PositionService;
import tech.wetech.admin.modules.training.service.ToolsService;
import tech.wetech.admin.modules.training.service.TrainingRoomService;

import org.springframework.ui.Model;
import java.util.Date;
import java.util.List;
import javax.validation.constraints.NotNull;

@Api(value = "failureconfirmation", tags = {"failureconfirmation"}, description = "故障确认")
@Controller
@RequestMapping("/failureconfirmation")
public class FailureConfirmationController extends BaseCrudController<FailureConfirmation> {

	@Autowired
	private FailureConfirmationService service;
	@Autowired
	private AssetClassificationService assetClassificationService;
	@Autowired
	private PositionService positionService;
	@Autowired
	private OrganizationService organizationService;
	@Autowired
	private UserService userService;
	@Autowired
	private AssetService assetService;
	@Autowired
	private MaintenanceRecordService maintenanceRecordService;
	@Autowired
	private ToolsService toolService;
	@Autowired
	private ToolsService toolsService;
	@Autowired
	private TrainingRoomService trainingRoomService;
	
	@GetMapping
	@RequiresPermissions("failureconfirmation:view")
	public String page(Model model) {
		AssetClassification assetClassification = new AssetClassification();
		assetClassification.setAssetTypeCode("asset_type_device");//设备
		model.addAttribute("assetClassificationList", assetClassificationService.queryList(assetClassification));
		//model.addAttribute("positionList", positionService.queryAll());
		//model.addAttribute("organizationList", organizationService.queryAll());
		//model.addAttribute("userList", userService.queryAll());
		// 当前用户
		String username = (String) SecurityUtils.getSubject().getPrincipal();
		User user = userService.queryOne(new User().setUsername(username));
		TrainingRoom trainingRoom = new TrainingRoom();
		trainingRoom.setRoomAdminId(user.getId().intValue());
		model.addAttribute("trainingRoomList", trainingRoomService.queryList(trainingRoom));
		model.addAttribute("assetList", assetService.queryAll());
		return "system/failureconfirmation";
	}

	@GetMapping("/toolfailureconfirmation")
	@RequiresPermissions("toolfailureconfirmation:view")
	public String toolPage(Model model) {
		AssetClassification assetClassification = new AssetClassification();
		assetClassification.setAssetTypeCode("asset_type_device");//设备
		model.addAttribute("assetClassificationList", assetClassificationService.queryList(assetClassification));
		//model.addAttribute("positionList", positionService.queryAll());
		//model.addAttribute("organizationList", organizationService.queryAll());
		//model.addAttribute("userList", userService.queryAll());
		model.addAttribute("toolsList", toolService.queryAll());
		return "system/toolfailureconfirmation";
	}

	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("failureconfirmation:view")
	@Override
	public Result<List<FailureConfirmation>> queryList(FailureConfirmation entity, PageQuery pageQuery) {
		Page<FailureConfirmation> page = (Page<FailureConfirmation>) service.queryList(entity, pageQuery);
		return Result.success(page.getResult()).addExtra("total", page.getTotal());
	}

	@ResponseBody
	@PostMapping("/create")
	@RequiresPermissions("failureconfirmation:create")
	@SystemLog("设备维修故障确认创建")
	@Override
	public Result create(@Validated(FailureConfirmation.FailureConfirmationCreateChecks.class) FailureConfirmation entity) {
		String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
		entity.setCreateTime(curTime);
		entity.setUpdateTime(curTime);
		service.create(entity);
		int recordId = entity.getRecordId();
		MaintenanceRecord record = maintenanceRecordService.queryById(recordId);
		if(record!=null){
			int assetId = record.getAssetId();
			String flowTypeCode = record.getFlowTypeCode();
			switch (flowTypeCode) {
			case "equipment_maintenance":
				//故障确认更新设备状态为维修
				updateAssetStatus(entity);
				break;
			case "tools_maintenance":
				Tools tools = toolsService.queryById(assetId);
				int repairingQuantity  = StringUtil.strToInt(tools.getRepairingQuantity()) + 1;
				tools.setRepairingQuantity(repairingQuantity+"");//正在维修数量
				int remainingQuantity  = StringUtil.strToInt(tools.getRemainingQuantity()) -1;
				tools.setRemainingQuantity(remainingQuantity+"");//剩余数量
				toolsService.updateNotNull(tools);
				break;
			default:
				break;
			}
		}
		return Result.success();
	}

	@ResponseBody
	@PostMapping("/update")
	@RequiresPermissions("failureconfirmation:update")
	@SystemLog("设备维修故障确认更新")
	@Override
	public Result update(@Validated(FailureConfirmation.FailureConfirmationUpdateChecks.class) FailureConfirmation entity) {
		String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
		entity.setUpdateTime(curTime);
		service.updateNotNull(entity);
		//故障确认更新设备状态为维修
		updateAssetStatus(entity);
		return Result.success();
	}

	/**
	 * 故障确认更新设备状态为维修
	 * @param entity
	 */
	private void updateAssetStatus(FailureConfirmation entity){
		//故障确认，那么设备状态变为维修
		int isRepair = entity.getRepairRequired();//是否需要维修 1 是 0 否
		if(isRepair==1){
			int recordId = entity.getRecordId();
			MaintenanceRecord record = maintenanceRecordService.queryById(recordId);
			int assetId = record.getAssetId();
			Asset asset = new Asset();
			asset.setId(assetId);
			asset.setAssetStatus("维修");
			asset.setAssetStatusCode("asset_status_repair");
			assetService.updateNotNull(asset);
		}
	} 

	@ResponseBody
	@PostMapping("/delete-batch")
	@RequiresPermissions("failureconfirmation:delete")
	@SystemLog("设备维修故障确认删除")
	@Override
	public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
		super.deleteBatchByIds(ids);
		return Result.success();
	}

}
