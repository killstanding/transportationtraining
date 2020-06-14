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
import tech.wetech.admin.modules.training.po.FlowDetail;
import tech.wetech.admin.modules.training.service.FlowDetailService;
import tech.wetech.excel.ExcelWriteUtil;
import org.springframework.ui.Model;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "flowdetail", tags = {"flowdetail"}, description = "流程记录")
@Controller
@RequestMapping("/flowdetail")
public class FlowDetailController extends BaseCrudController<FlowDetail> {

    @Autowired
    private FlowDetailService service;
    @Autowired
    private ConfigProperties configProperties;
    
    @GetMapping
    @RequiresPermissions("flowdetail:view")
    public String page(Model model) {
        return "system/flowdetail";
    }
    
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("flowdetail:view")
    @Override
    public Result<List<FlowDetail>> queryList(FlowDetail entity, PageQuery pageQuery) {
        Page<FlowDetail> page = (Page<FlowDetail>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("flowdetail:create")
    @SystemLog("设备维修流程记录创建")
    @Override
    public Result create(@Validated(FlowDetail.FlowDetailCreateChecks.class) FlowDetail entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("flowdetail:update")
    @SystemLog("设备维修流程记录更新")
    @Override
    public Result update(@Validated(FlowDetail.FlowDetailUpdateChecks.class) FlowDetail entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("flowdetail:delete")
    @SystemLog("设备维修流程记录删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

    @ResponseBody
	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("flowdetail:exportexcel")
	public Result<String> exportExcel(FlowDetail entity) {
		String fileName="";
		try {
			List<FlowDetail> list = service.queryList(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, FlowDetail.class, "设备维修记录");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
}
