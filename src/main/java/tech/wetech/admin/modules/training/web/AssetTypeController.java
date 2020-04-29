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
import tech.wetech.admin.modules.training.po.AssetType;
import tech.wetech.admin.modules.training.service.AssetTypeService;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "assettype", tags = {"assettype"}, description = "资产类型")
@Controller
@RequestMapping("/assettype")
public class AssetTypeController extends BaseCrudController<AssetType> {

    @Autowired
    private AssetTypeService service;

    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("assettype:view")
    @Override
    public Result<List<AssetType>> queryList(AssetType entity, PageQuery pageQuery) {
        Page<AssetType> page = (Page<AssetType>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("assettype:create")
    @SystemLog("资产类型管理资产类型创建")
    @Override
    public Result create(@Validated(AssetType.AssetTypeCreateChecks.class) AssetType entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("assettype:update")
    @SystemLog("资产类型管理资产类型更新")
    @Override
    public Result update(@Validated(AssetType.AssetTypeUpdateChecks.class) AssetType entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("assettype:delete")
    @SystemLog("资产类型管理资产类型删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
