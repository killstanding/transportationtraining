package tech.wetech.admin.modules.training.web;

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
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.Consumables;
import tech.wetech.admin.modules.training.po.Tools;
import tech.wetech.admin.modules.training.po.WarehousingRecord;
import tech.wetech.admin.modules.training.service.WarehousingRecordService;
import tech.wetech.admin.modules.training.service.ConsumablesService;
import tech.wetech.admin.modules.training.service.PositionService;
import tech.wetech.admin.modules.training.service.ToolsService;
import tech.wetech.excel.ExcelWriteUtil;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "warehousingrecord", tags = {"warehousingrecord"}, description = "入库记录")
@Controller
@RequestMapping("/warehousingrecord")
public class WarehousingRecordController extends BaseCrudController<WarehousingRecord> {

	@Autowired
    private WarehousingRecordService service;
	@Autowired
	private PositionService positionService;
    @Autowired
    private ConfigProperties configProperties;
    @Autowired
    private UserService userService;
	@Autowired
    private ConsumablesService consumablesService;
	@Autowired
    private ToolsService toolsService;
    
    @GetMapping
    @RequiresPermissions("warehousingrecord:view")
    public String page(Model model) {
    	model.addAttribute("positionList", positionService.queryAll());
    	model.addAttribute("userList", userService.queryAll());
        return "system/warehousingrecord";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("warehousingrecord:view")
    @Override
    public Result<List<WarehousingRecord>> queryList(WarehousingRecord entity, PageQuery pageQuery) {
        Page<WarehousingRecord> page = (Page<WarehousingRecord>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("warehousingrecord:create")
    @SystemLog("入库记录创建")
    @Override
    public Result<String> create(@Validated(WarehousingRecord.WarehousingRecordCreateChecks.class) WarehousingRecord entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
    	String assetTypeCode = entity.getAssetTypeCode();
    	int assetId =  entity.getAssetId();
    	switch (assetTypeCode) {
		case "asset_type_consumables":
			Consumables consumables =  consumablesService.queryById(assetId);
			consumables.setCumulativeReceiptQuantity(consumables.getCumulativeReceiptQuantity()+entity.getWarehousingQuantity());//累计入库数量
			consumables.setTotalExisting(consumables.getTotalExisting()+entity.getWarehousingQuantity());//现存总数
			consumables.setRemainingQuantity(consumables.getRemainingQuantity()+entity.getWarehousingQuantity());//剩余数量
			consumablesService.updateNotNull(consumables);
			break;
		case "asset_type_tool":
			Tools tools =  toolsService.queryById(assetId);
			tools.setCumulativeReceiptQuantity(tools.getCumulativeReceiptQuantity()+entity.getWarehousingQuantity());//累计入库数量
			tools.setTotalExisting(tools.getTotalExisting()+entity.getWarehousingQuantity());//现存总数
			tools.setRemainingQuantity(tools.getRemainingQuantity()+entity.getWarehousingQuantity());//剩余数量
			toolsService.updateNotNull(tools);
			break;
		default:
			break;
		}
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("warehousingrecord:update")
    @SystemLog("入库记录更新")
    @Override
    public Result<String> update(@Validated(WarehousingRecord.WarehousingRecordUpdateChecks.class) WarehousingRecord entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("warehousingrecord:delete")
    @SystemLog("入库记录删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

    @ResponseBody
	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("warehousingrecord:exportexcel")
	public Result<String> exportExcel(WarehousingRecord entity) {
		String fileName="";
		try {
			List<WarehousingRecord> list = service.keyValueByExample(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, WarehousingRecord.class, "信息");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
}
