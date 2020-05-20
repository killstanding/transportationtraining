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
import tech.wetech.admin.modules.training.po.FlowNode;
import tech.wetech.admin.modules.training.service.FlowNodeService;
import org.springframework.ui.Model;
import java.util.Date;
import java.util.List;
import javax.validation.constraints.NotNull;

@Api(value = "flownode", tags = {"flownode"}, description = "流程节点")
@Controller
@RequestMapping("/flownode")
public class FlowNodeController extends BaseCrudController<FlowNode> {

    @Autowired
    private FlowNodeService service;
    
    @GetMapping
    @RequiresPermissions("flownode:view")
    public String page(Model model) {
        return "system/flownode";
    }
    
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("flownode:view")
    @Override
    public Result<List<FlowNode>> queryList(FlowNode entity, PageQuery pageQuery) {
        Page<FlowNode> page = (Page<FlowNode>) service.queryList(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    @RequiresPermissions("flownode:create")
    @SystemLog("流程节点创建")
    @Override
    public Result create(@Validated(FlowNode.FlowNodeCreateChecks.class) FlowNode entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("flownode:update")
    @SystemLog("流程节点更新")
    @Override
    public Result update(@Validated(FlowNode.FlowNodeUpdateChecks.class) FlowNode entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("flownode:delete")
    @SystemLog("流程节点删除")
    @Override
    public Result deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

}
