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
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.po.CourseArrangementReTool;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.CourseArrangementReToolService;
import tech.wetech.admin.modules.training.service.PubCodeService;
import java.util.Date;
import java.util.List;
import javax.validation.constraints.NotNull;

@Api(value = "coursearrangementretool", tags = {"coursearrangementretool"}, description = "排课管理和工具关联")
@Controller
@RequestMapping("/coursearrangementretool")
public class CourseArrangementReToolController extends BaseCrudController<CourseArrangementReTool> {

	@Autowired
    private CourseArrangementReToolService service;
	@Autowired
    private AssetService assetService;
	@Autowired
    private AssetClassificationService assetClassificationService;
	@Autowired
    private PubCodeService pubCodeService;
	
    @GetMapping
    @RequiresPermissions("coursearrangementretool:view")
    public String page(Model model) {
    	AssetClassification assetClassification = new AssetClassification();
    	assetClassification.setAssetTypeCode("asset_type_device");//设备
    	model.addAttribute("assetClassificationList", assetClassificationService.queryList(assetClassification));
    	PubCode pubCode = new PubCode();
    	pubCode.setPubType("asset_status");
    	model.addAttribute("assetStatusList", pubCodeService.queryList(pubCode));
    	model.addAttribute("assetList", assetService.queryAll());
        return "system/coursearrangementretool";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("coursearrangementretool:view")
    @Override
    public Result<List<CourseArrangementReTool>> queryList(CourseArrangementReTool entity, PageQuery pageQuery) {
        Page<CourseArrangementReTool> page = (Page<CourseArrangementReTool>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("coursearrangementretool:create")
    @SystemLog("排课管理和工具关联创建")
    @Override
    public Result<String> create(@Validated(CourseArrangementReTool.CourseArrangementReToolCreateChecks.class) CourseArrangementReTool entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("coursearrangementretool:update")
    @SystemLog("排课管理和工具关联更新")
    @Override
    public Result<String> update(@Validated(CourseArrangementReTool.CourseArrangementReToolUpdateChecks.class) CourseArrangementReTool entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("coursearrangementretool:delete")
    @SystemLog("排课管理和工具关联删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }
}
