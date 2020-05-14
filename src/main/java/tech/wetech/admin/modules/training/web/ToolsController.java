package tech.wetech.admin.modules.training.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import tech.wetech.admin.modules.base.web.BaseCrudController;


@Api(value = "tools", tags = {"tools"}, description = "工具管理")
@Controller
@RequestMapping("/tools")
public class ToolsController extends BaseCrudController<Object> {

    @GetMapping
    @RequiresPermissions("tools:view")
    public String userPage(Model model) {
        return "system/tools";
    }
}
