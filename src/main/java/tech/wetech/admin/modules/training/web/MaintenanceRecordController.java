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
import tech.wetech.admin.modules.system.po.User;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.FlowDetail;
import tech.wetech.admin.modules.training.po.FlowNode;
import tech.wetech.admin.modules.training.po.MaintenanceRecord;
import tech.wetech.admin.modules.training.po.StatusCountResult;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.FlowDetailService;
import tech.wetech.admin.modules.training.service.FlowNodeService;
import tech.wetech.admin.modules.training.service.MaintenanceRecordService;
import tech.wetech.admin.modules.training.service.ToolsService;
import tech.wetech.excel.ExcelWriteUtil;
import tk.mybatis.mapper.entity.Example;

import org.springframework.ui.Model;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.constraints.NotNull;

@Api(value = "maintenancerecord", tags = {"maintenancerecord"}, description = "设备维修记录（申请）")
@Controller
@RequestMapping("/maintenancerecord")
public class MaintenanceRecordController extends BaseCrudController<MaintenanceRecord> {

    @Autowired
    private MaintenanceRecordService service;
    @Autowired
    private ConfigProperties configProperties;
    @Autowired
    private FlowNodeService flowNodeService;
    @Autowired
    private FlowDetailService flowDetailservice;
	@Autowired
    private AssetService assetService;
	@Autowired
    private ToolsService toolService;
    @Autowired
    private UserService userService;
	
    @GetMapping
    @RequiresPermissions("maintenancerecord:view")
    public String page(Model model) {
    	FlowNode flowNode = new FlowNode();
    	flowNode.setFlowTypeCode("equipment_maintenance");
    	List<FlowNode> flowNodeList = flowNodeService.queryList(flowNode);
    	model.addAttribute("flowNodeList", flowNodeList);
    	model.addAttribute("assetList", assetService.queryAll());
        return "system/maintenancerecord";
    }
    
    @GetMapping("/toolmaintenancerecord")
    @RequiresPermissions("maintenancerecord:view")
    public String toolPage(Model model) {
    	FlowNode flowNode = new FlowNode();
    	flowNode.setFlowTypeCode("equipment_maintenance");
    	List<FlowNode> flowNodeList = flowNodeService.queryList(flowNode);
    	model.addAttribute("flowNodeList", flowNodeList);
    	model.addAttribute("toolsList", toolService.queryAll());
        return "system/toolmaintenancerecord";
    }
    
    
    @GetMapping("/edit")
    @RequiresPermissions("maintenancerecord:view")
    public String editpage(Model model) {
    	model.addAttribute("assetList", assetService.queryAll());
        return "system/maintenancerecordedit";
    }
    
    @GetMapping("/tooledit")
    @RequiresPermissions("maintenancerecord:view")
    public String toolEditpage(Model model) {
    	model.addAttribute("toolsList", toolService.queryAll());
        return "system/toolmaintenancerecordedit";
    }
    
    @ApiOperation(value = "查询当前用户待办", notes = "查询当前用户待办")
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("maintenancerecord:view")
    @Override
    public Result<List<MaintenanceRecord>> queryList(MaintenanceRecord entity, PageQuery pageQuery) {
        // 当前用户
        String username = (String) SecurityUtils.getSubject().getPrincipal();
        User user = userService.queryOne(new User().setUsername(username));
        entity.setPendingPersonId(user.getId().intValue());
        Page<MaintenanceRecord> page = (Page<MaintenanceRecord>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    
    @ApiOperation(value = "查询当前用户所有待办不分页(createMonth,flowTypeCode必填)", notes = "查询当前用户所有待办不分页 (createMonth,flowTypeCode必填)")
    @ResponseBody
    @GetMapping("/alltodolist")
    @RequiresPermissions("maintenancerecord:view")
    public Result<List<MaintenanceRecord>> queryAllToDoList(MaintenanceRecord entity) {
    	String createMonth = entity.getCreateMonth();
    	if(createMonth==null||createMonth.equals("")){
    		return Result.failure(ResultCodeEnum.BAD_REQUEST);
    	}
    	String flowTypeCode = entity.getFlowTypeCode();
    	if(flowTypeCode==null||flowTypeCode.equals("")){
    		return Result.failure(ResultCodeEnum.BAD_REQUEST);
    	}
        // 当前用户
        String username = (String) SecurityUtils.getSubject().getPrincipal();
        User user = userService.queryOne(new User().setUsername(username));
        Example example = new Example(MaintenanceRecord.class);
		Example.Criteria criteria = example.createCriteria();
		criteria.andEqualTo("pendingPersonId", user.getId());
        criteria.andEqualTo("createMonth", createMonth);
        criteria.andNotEqualTo("flowStatusCode", "em_end");//流程不能结束
        criteria.andEqualTo("flowTypeCode", flowTypeCode);
        List<MaintenanceRecord> list =  service.queryByExample(example);
        return Result.success(list);
    }
    
    @ApiOperation(value = "查询当前用户所有维修单不分页(createMonth,flowTypeCode必填)", notes = "查询当前用户所有维修单不分页 (createMonth,flowTypeCode必填)")
    @ResponseBody
    @GetMapping("/alldonelist")
    @RequiresPermissions("maintenancerecord:view")
    public Result<List<MaintenanceRecord>> queryAllDoneList(MaintenanceRecord entity) {
    	String createMonth = entity.getCreateMonth();
    	if(createMonth==null||createMonth.equals("")){
    		return Result.failure(ResultCodeEnum.BAD_REQUEST);
    	}
    	String flowTypeCode = entity.getFlowTypeCode();
    	if(flowTypeCode==null||flowTypeCode.equals("")){
    		return Result.failure(ResultCodeEnum.BAD_REQUEST);
    	}
    	 // 当前用户
        String username = (String) SecurityUtils.getSubject().getPrincipal();
        User user = userService.queryOne(new User().setUsername(username));
        entity.setPendingPersonId(user.getId().intValue());
        List<MaintenanceRecord> list =  service.selectAllDone(entity);
        return Result.success(list);
    }
    
    
    @ApiOperation(value = "根据设备维修记录统计数量", notes = "根据设备维修记录统计数量")
    @ResponseBody
    @GetMapping("/getcountnumgourpbystatus")
    @RequiresPermissions("asset:view")
    public Result<List<StatusCountResult>> selectCountNumGourpByStatus() {
    	FlowNode flowNode = new FlowNode();
    	flowNode.setFlowTypeCode("equipment_maintenance");
    	List<FlowNode> flowNodeList = flowNodeService.queryList(flowNode);
    	List<StatusCountResult> result =  service.selectCountNumGourpByStatus();
    	Map<String,String> isHaveMap = new HashMap<>();
    	 int total = 0;
    	if(result!=null){
    		for (int i = 0; i < result.size(); i++) {
        		StatusCountResult sc = result.get(i);
        		if(isHaveMap.get(sc.getSTATUS_CODE())==null){
        			isHaveMap.put(sc.getSTATUS_CODE(), sc.getSTATUS_NAME());
        		}else{
        			String numStr = sc.getCOUNT_NUM();
        			total = total + Integer.parseInt(numStr);
        		}
    		}//for result
    	}//if(result!=null)
    	
        for (int i = 0; i < flowNodeList.size(); i++) {
        	FlowNode record = flowNodeList.get(i);
			String code = record.getFlowNodeCode();
			String name = record.getFlowNodeName();
			if(isHaveMap.get(code)==null){
				StatusCountResult sc = new StatusCountResult();
				sc.setSTATUS_CODE(code);
				sc.setSTATUS_NAME(name);
				sc.setCOUNT_NUM("0");
				result.add(sc);
			}
		}//for pubCodeList
        StatusCountResult sc = new StatusCountResult();
		sc.setSTATUS_CODE("total");
		sc.setSTATUS_NAME("总数");
		sc.setCOUNT_NUM(total+"");
		result.add(sc);
        
        return Result.success(result);
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("maintenancerecord:create")
    @SystemLog("设备维修设备维修记录创建")
    @Override
    public Result create(@Validated(MaintenanceRecord.MaintenanceRecordCreateChecks.class) MaintenanceRecord entity) {
    	Date d = new Date();
    	String curTime  = DateUtil.dateToStr(d, DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	entity.setCreateYear(DateUtil.dateToStr(d, DateUtil.YEAR_FORMATE));
    	entity.setCreateMonth(DateUtil.dateToStr(d, DateUtil.MONTH_FORMATE));
    	service.create(entity);
    	
    	//添加流程记录信息
    	FlowDetail fd = new FlowDetail();
    	fd.setPersonId(entity.getApplicantId());
    	fd.setPersonName(entity.getApplicant());
    	fd.setRoleId(CommonVariable.DEVICE_ADMIN_ROLE_ID);
    	fd.setRoleName("设备管理员");
    	fd.setProcessingContent("填写位置在"+entity.getPositionName()+"的"+entity.getAssetName()+"设备维修单");
    	fd.setProcessingDate(DateUtil.dateToStr(d, DateUtil.DATE_FORMATE));
    	fd.setCreateTime(curTime);
    	fd.setUpdateTime(curTime);
    	fd.setFlowType("设备维修");
    	fd.setFlowTypeCode("equipment_maintenance");
    	fd.setFlowId(entity.getId());
    	flowDetailservice.create(fd);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("maintenancerecord:update")
    @SystemLog("设备维修设备维修记录更新")
    @Override
    public Result update(@Validated(MaintenanceRecord.MaintenanceRecordUpdateChecks.class) MaintenanceRecord entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("maintenancerecord:delete")
    @SystemLog("设备维修设备维修记录删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

    @ResponseBody
	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("maintenancerecord:exportexcel")
	public Result<String> exportExcel(MaintenanceRecord entity) {
		String fileName="";
		try {
			List<MaintenanceRecord> list = service.queryList(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, MaintenanceRecord.class, "设备维修记录");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
}
