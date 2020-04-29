package tech.wetech.admin.modules.training.web;


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
import tech.wetech.admin.modules.base.query.PageQuery;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.service.AssetClassificationService;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "assetclassification", tags = {"assetclassification"}, description = "资产分类")
@Controller
@RequestMapping("/assetclassification")
public class AssetClassificationController extends BaseCrudController<AssetClassification> {

    @Autowired
    private AssetClassificationService service;

    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("assetclassification:view")
    @Override
    public Result<List<AssetClassification>> queryList(AssetClassification entity, PageQuery pageQuery) {
        Page<AssetClassification> page = (Page<AssetClassification>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("assetclassification:create")
    @SystemLog("资产分类管理资产分类创建")
    @Override
    public Result create(@Validated(AssetClassification.AssetClassificationCreateChecks.class) AssetClassification entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("assetclassification:update")
    @SystemLog("资产分类管理资产分类更新")
    @Override
    public Result update(@Validated(AssetClassification.AssetClassificationUpdateChecks.class) AssetClassification entity) {
     	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
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
