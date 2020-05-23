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
import tech.wetech.admin.modules.system.service.OrganizationService;
import tech.wetech.admin.modules.system.service.UserService;
import tech.wetech.admin.modules.training.po.FailureConfirmation;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import tech.wetech.admin.modules.training.service.AssetService;
import tech.wetech.admin.modules.training.service.FailureConfirmationService;
import tech.wetech.admin.modules.training.service.PositionService;

import org.springframework.ui.Model;
import java.util.Date;
import java.util.List;
import javax.validation.constraints.NotNull;

@Api(value = "failureconfirmation", tags = {"failureconfirmation"}, description = "故障确认")
@Controller
@RequestMapping("/failureconfirmation")
public class FailureConfirmationController extends BaseCrudController<FailureConfirmation> {

    @Autowired
    private FailureConfirmationService service;
	@Autowired
    private AssetClassificationService assetClassificationService;
	@Autowired
	private PositionService positionService;
	@Autowired
    private OrganizationService organizationService;
    @Autowired
    private UserService userService;
	@Autowired
    private AssetService assetService;
	
    @GetMapping
    @RequiresPermissions("failureconfirmation:view")
    public String page(Model model) {
    	model.addAttribute("assetClassificationList", assetClassificationService.queryAll());
    	model.addAttribute("positionList", positionService.queryAll());
    	model.addAttribute("organizationList", organizationService.queryAll());
    	model.addAttribute("userList", userService.queryAll());
    	model.addAttribute("assetList", assetService.queryAll());
        return "system/failureconfirmation";
    }
    
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("failureconfirmation:view")
    @Override
    public Result<List<FailureConfirmation>> queryList(FailureConfirmation entity, PageQuery pageQuery) {
        Page<FailureConfirmation> page = (Page<FailureConfirmation>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("failureconfirmation:create")
    @SystemLog("设备维修故障确认创建")
    @Override
    public Result create(@Validated(FailureConfirmation.FailureConfirmationCreateChecks.class) FailureConfirmation entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("failureconfirmation:update")
    @SystemLog("设备维修故障确认更新")
    @Override
    public Result update(@Validated(FailureConfirmation.FailureConfirmationUpdateChecks.class) FailureConfirmation entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("failureconfirmation:delete")
    @SystemLog("设备维修故障确认删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
