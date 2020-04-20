package tech.wetech.admin.modules.training.web;


import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import tech.wetech.admin.core.annotation.SystemLog;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import javax.validation.constraints.NotNull;

@Api(value = "assetclassification", tags = {"assetclassification"}, description = "资产分类")
@Controller
@RequestMapping("/assetclassification")
public class AssetClassificationController extends BaseCrudController<AssetClassification> {

    @Autowired
    private AssetClassificationService service;

    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("assetclassification:create")
    @SystemLog("资产分类管理资产分类创建")
    @Override
    public Result create(@Validated(AssetClassification.AssetClassificationCreateChecks.class) AssetClassification entity) {
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("assetclassification:update")
    @SystemLog("资产分类管理资产分类更新")
    @Override
    public Result update(@Validated(AssetClassification.AssetClassificationUpdateChecks.class) AssetClassification entity) {
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("assetclassification:delete")
    @SystemLog("资产分类管理资产分类删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
