package tech.wetech.admin.modules.training.web;


import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import io.swagger.annotations.Api;
import tech.wetech.admin.core.annotation.SystemLog;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.modules.base.query.PageQuery;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.system.po.User;
import tech.wetech.admin.modules.system.vo.UserVO;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.service.AssetService;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "asset", tags = {"asset"}, description = "资产管理")
@Controller
@RequestMapping("/asset")
public class AssetController extends BaseCrudController<Asset> {

    @Autowired
    private AssetService service;

    @GetMapping
    @RequiresPermissions("asset:view")
    public String userPage(Model model) {
        return "system/asset";
    }
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("asset:view")
    @Override
    public Result<List<Asset>> queryList(Asset entity, PageQuery pageQuery) {
        Page<Asset> page = (Page<Asset>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("asset:create")
    @SystemLog("资产管理资产创建")
    @Override
    public Result create(@Validated(Asset.AssetCreateChecks.class) Asset entity) {
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("asset:update")
    @SystemLog("资产管理资产更新")
    @Override
    public Result update(@Validated(Asset.AssetUpdateChecks.class) Asset entity) {
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("asset:delete")
    @SystemLog("资产管理资产删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
