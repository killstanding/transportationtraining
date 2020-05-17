package tech.wetech.admin.modules.training.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.training.po.Sys;


@Api(value = "coursearrangement", tags = {"coursearrangement"}, description = "排课管理")
@Controller
@RequestMapping("/coursearrangement")
public class CourseArrangementController extends BaseCrudController<Sys> {

    @GetMapping
    @RequiresPermissions("coursearrangement:view")
    public String userPage(Model model) {
        return "system/coursearrangement";
    }
   

}
