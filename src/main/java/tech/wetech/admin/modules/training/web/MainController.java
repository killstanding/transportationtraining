package tech.wetech.admin.modules.training.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.training.po.Sys;


@Api(value = "main", tags = {"main"}, description = "主页")
@Controller
@RequestMapping("/main")
public class MainController extends BaseCrudController<Sys> {

    @GetMapping
    @RequiresPermissions("main:view")
    public String userPage(Model model) {
        return "system/main";
    }
   

}
