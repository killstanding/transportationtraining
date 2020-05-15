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
import tech.wetech.admin.modules.training.po.DirectorApproval;
import tech.wetech.admin.modules.training.service.DirectorApprovalService;
import org.springframework.ui.Model;
import java.util.Date;
import java.util.List;
import javax.validation.constraints.NotNull;

@Api(value = "directorapproval", tags = {"directorapproval"}, description = "主任审批")
@Controller
@RequestMapping("/directorapproval")
public class DirectorApprovalController extends BaseCrudController<DirectorApproval> {

    @Autowired
    private DirectorApprovalService service;
    
    @GetMapping
    @RequiresPermissions("directorapproval:view")
    public String userPage(Model model) {
        return "system/directorapproval";
    }
    
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("directorapproval:view")
    @Override
    public Result<List<DirectorApproval>> queryList(DirectorApproval entity, PageQuery pageQuery) {
        Page<DirectorApproval> page = (Page<DirectorApproval>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("directorapproval:create")
    @SystemLog("设备维修主任审批创建")
    @Override
    public Result create(@Validated(DirectorApproval.DirectorApprovalCreateChecks.class) DirectorApproval entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("directorapproval:update")
    @SystemLog("设备维修主任审批更新")
    @Override
    public Result update(@Validated(DirectorApproval.DirectorApprovalUpdateChecks.class) DirectorApproval entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("directorapproval:delete")
    @SystemLog("设备维修主任审批删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
