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
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.po.CourseArrangementReAsset;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.CourseArrangementReAssetService;
import tech.wetech.admin.modules.training.service.PubCodeService;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "coursearrangementreasset", tags = {"coursearrangementreasset"}, description = "排课管理和设备关联")
@Controller
@RequestMapping("/coursearrangementreasset")
public class CourseArrangementReAssetController extends BaseCrudController<CourseArrangementReAsset> {

	@Autowired
    private CourseArrangementReAssetService service;
	@Autowired
    private AssetService assetService;
	@Autowired
    private AssetClassificationService assetClassificationService;
	@Autowired
    private PubCodeService pubCodeService;
	
    @GetMapping
    @RequiresPermissions("coursearrangementreasset:view")
    public String page(Model model) {
    	AssetClassification assetClassification = new AssetClassification();
    	assetClassification.setAssetTypeCode("asset_type_device");//设备
    	model.addAttribute("assetClassificationList", assetClassificationService.queryList(assetClassification));
    	PubCode pubCode = new PubCode();
    	pubCode.setPubType("asset_status");
    	model.addAttribute("assetStatusList", pubCodeService.queryList(pubCode));
    	Asset asset = new Asset();
    	asset.setAssetStatusCode("asset_status_normal");
    	asset.setRoomIsEnabled(1);
    	model.addAttribute("assetList", assetService.queryList(asset));
        return "system/coursearrangementreasset";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("coursearrangementreasset:view")
    @Override
    public Result<List<CourseArrangementReAsset>> queryList(CourseArrangementReAsset entity, PageQuery pageQuery) {
        Page<CourseArrangementReAsset> page = (Page<CourseArrangementReAsset>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("coursearrangementreasset:create")
    @SystemLog("排课管理和设备关联创建")
    @Override
    public Result<String> create(@Validated(CourseArrangementReAsset.CourseArrangementReAssetCreateChecks.class) CourseArrangementReAsset entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("coursearrangementreasset:update")
    @SystemLog("排课管理和设备关联更新")
    @Override
    public Result<String> update(@Validated(CourseArrangementReAsset.CourseArrangementReAssetUpdateChecks.class) CourseArrangementReAsset entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("coursearrangementreasset:delete")
    @SystemLog("排课管理和设备关联删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }
}
