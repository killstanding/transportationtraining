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
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.po.InspectionPlan;
import tech.wetech.admin.modules.training.po.InspectionRecord;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.po.Tools;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.InspectionPlanService;
import tech.wetech.admin.modules.training.service.InspectionRecordService;
import tech.wetech.admin.modules.training.service.PubCodeService;
import tech.wetech.admin.modules.training.vo.FileVo;
import tech.wetech.admin.modules.training.vo.ListVo;
import tech.wetech.excel.ExcelReadUtil;
import tech.wetech.excel.ExcelWriteUtil;
import tk.mybatis.mapper.entity.Example;

import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "巡检记录", tags = {"inspectionrecord"}, description = "巡检记录")
@Controller
@RequestMapping("/inspectionrecord")
@SuppressWarnings("unchecked") 
public class InspectionRecordController extends BaseCrudController<InspectionRecord> {

	@Autowired
	private InspectionRecordService service;
	@Autowired
	private ConfigProperties configProperties;
	@Autowired
	private InspectionPlanService inspectionPlanService;
	@Autowired
	private UserService userService;
	@Autowired
	private AssetService assetService;
	@Autowired
	private AssetClassificationService assetClassificationService;
	@Autowired
	private PubCodeService pubCodeService;

	@GetMapping
	@RequiresPermissions("inspectionrecord:view")
	public String page(Model model) {
		model.addAttribute("userList", userService.queryAll());
		model.addAttribute("assetList", assetService.queryAll());
		AssetClassification assetClassification = new AssetClassification();
		assetClassification.setAssetTypeCode("asset_type_device");//设备
		model.addAttribute("assetClassificationList", assetClassificationService.queryList(assetClassification));
		PubCode pubCode = new PubCode();
		pubCode.setPubType("asset_status");
		model.addAttribute("assetStatusList", pubCodeService.queryList(pubCode));
		return "system/inspectionrecord";
	}

	@GetMapping("/show")
	@RequiresPermissions("inspectionrecord:view")
	public String show(Model model) {
		return "system/inspectionrecordshow";
	}

	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("inspectionrecord:view")
	@Override
	public Result<List<InspectionRecord>> queryList(InspectionRecord entity, PageQuery pageQuery) {    	
		Page<InspectionRecord> page = (Page<InspectionRecord>) service.queryListByLike(entity, pageQuery);
		return Result.success(page.getResult()).addExtra("total", page.getTotal());
	}

	@ResponseBody
	@GetMapping("/listbyplanidforshow")
	@RequiresPermissions("inspectionrecord:view")
	public Result<List<InspectionRecord>> queryListByPlanIdForShow(InspectionRecord entity) {    	
		List<InspectionRecord>  list =  service.keyValueByExample(entity);
		return Result.success(list);
	}

	@ResponseBody
	@PostMapping("/listbyplanidforedit")
	@RequiresPermissions("inspectionrecord:view")
	public Result<List<InspectionRecord>> queryListByPlanIdForEdit(InspectionRecord entity) {    	
		List<InspectionRecord> list =  service.keyValueByExample(entity);
		if(list==null||list.size()==0){
			int planId = 0;
			if(entity.getPlanId()!=null)planId=entity.getPlanId();
			if(planId!=0){
				InspectionPlan plan = inspectionPlanService.queryById(planId);
				list = new ArrayList<>();
				//获取实训室下面的设备
				//assetPara.setAssetStatusCode("asset_status_normal");
				Example example = new Example(Asset.class);
				Example.Criteria criteria = example.createCriteria();
		        criteria.andEqualTo("roomId", plan.getRoomId());
		        criteria.andNotEqualTo("assetStatusCode", "asset_status_scrapped");//不等于待报废
				List<Asset> assets = assetService.queryByExample(example);
				if(assets!=null){
					//设备的巡检记录基础信息
					for (int i = 0; i < assets.size(); i++) {
						Asset asset = assets.get(i);
						InspectionRecord record = new InspectionRecord();
						record.setAssetId(asset.getId());
						record.setAssetCode(asset.getAssetCode());
						record.setAssetClassification(asset.getAssetClassification());
						record.setAssetClassificationCode(asset.getAssetClassificationCode());
						record.setAssetStatus(asset.getAssetStatus());
						record.setAssetStatusCode(asset.getAssetStatusCode());
						record.setIsRepair(0);
						record.setPlanId(entity.getPlanId());
						record.setAssetName(asset.getAssetName());
						list.add(record);
					}
				}//if(assets!=null)
			}//if(planId!=0)
		}//if(list==null)
		return Result.success(list);
	}

	@ResponseBody
	@PostMapping("/createbylist")
	@RequiresPermissions("inspectionrecord:create")
	@SystemLog("设备管理巡检记录创建")
	public Result<String> createByList(@RequestBody ListVo<InspectionRecord> vo) {
		Date cur = new Date();
		String curTime  = DateUtil.dateToStr(cur, DateUtil.TIME_FORMATE);
		List<InspectionRecord> list = vo.getObjList();

		//计算巡检计划统计数据
		int abnormalNum = 0;
		int normalNum = 0;
		int repairNum = 0;
		int scrappedNum = 0;
		int totalNum = 0;
		int planId = 0;
		if(list!=null){
			totalNum = list.size();
			for (int i = 0; i < list.size(); i++) {
				InspectionRecord entity = list.get(i);
				entity.setUpdateTime(curTime);
				if(entity.getId()!=null&&entity.getId()!=0){
					service.updateAll(entity);
				}else{
					entity.setCreateTime(curTime);
					service.create(entity);
				}

				//获取计划编号
				if(planId==0)planId=entity.getPlanId();
				switch (entity.getAssetStatusCode()) {
				case "asset_status_abnormal":
					abnormalNum++;
					break;
				case "asset_status_normal":
					normalNum++;
					break;
				case "asset_status_repair":
					repairNum++;
					break;
				case "asset_status_scrapped":
					scrappedNum++;
					break;
				default:
					break;
				}
			}//list for 
		}
		InspectionPlan plan = inspectionPlanService.queryById(planId);
		plan.setUpdateTime(curTime);
		plan.setNormalDevicesInInspection(totalNum);
		plan.setNumberNormalDevices(normalNum);
		plan.setNumberAbnormalDevices(abnormalNum);
		plan.setNumberReportedRepairEquipment(repairNum);
		if(abnormalNum>0){
			plan.setInspectionStatus(1+"");
		}else{
			plan.setInspectionStatus(0+"");
		}
		inspectionPlanService.updateAll(plan);
		return Result.success();
	}

	@ResponseBody
	@PostMapping("/create")
	@RequiresPermissions("inspectionrecord:create")
	@SystemLog("设备管理巡检记录创建")
	@Override
	public Result<String> create(@Validated(InspectionRecord.InspectionRecordCreateChecks.class) InspectionRecord entity) {
		Date cur = new Date();
		String curTime  = DateUtil.dateToStr(cur, DateUtil.TIME_FORMATE);
		entity.setCreateTime(curTime);
		entity.setUpdateTime(curTime);
		service.create(entity);
		return Result.success();
	}

	@ResponseBody
	@PostMapping("/update")
	@RequiresPermissions("inspectionrecord:update")
	@SystemLog("设备管理巡检记录更新")
	@Override
	public Result<String> update(@Validated(InspectionRecord.InspectionRecordUpdateChecks.class) InspectionRecord entity) {
		String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
		entity.setUpdateTime(curTime);
		service.updateNotNull(entity);
		return Result.success();
	}

	@ResponseBody
	@PostMapping("/delete-batch")
	@RequiresPermissions("inspectionrecord:delete")
	@SystemLog("设备管理巡检记录删除")
	@Override
	public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
		super.deleteBatchByIds(ids);
		return Result.success();
	}

	
	@ResponseBody
	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("inspectionrecord:exportexcel")
	public Result<String> exportExcel(InspectionRecord entity) {
		String fileName="";
		try {
			List<InspectionRecord> list = service.keyValueByExample(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, InspectionRecord.class, "巡检记录");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}

		return Result.success(fileName);
	}
	
	
	@ResponseBody
	@PostMapping("/importexcel/")
	@ApiOperation(value = "导入")
	@RequiresPermissions("inspectionrecord:importexcel")
	public Result<String> importExcel(FileVo file) {
		try {
			String syncTime = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
			List<Object> list = ExcelReadUtil.readExcelData(file.getPath(), Tools.class);
			if(list!=null){
				for (int i = 0; i < list.size(); i++) {
					InspectionRecord record = (InspectionRecord)list.get(i);
					record.setUpdateTime(syncTime);
					record.setPlanId(file.getParentId());
					//制定唯一编号 j根据id进行唯一性识别
					InspectionRecord mid = null;
					List<InspectionRecord> midList = 	service.selectByMajordata(record);
					if(midList!=null&&midList.size()>0) mid = midList.get(0);
					if(mid!=null){
						service.updateNotNull(record);
					}else{
						record.setCreateTime(syncTime);
						service.create(record);
					}//else
					//更新编号
					service.updateCodeById(record);

				}//for+
			}//if(list!=null)
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		return Result.success();
	}
}
