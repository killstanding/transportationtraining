package tech.wetech.admin.modules.training.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import tech.wetech.admin.modules.base.web.BaseCrudController;


@Api(value = "teachingplandesign", tags = {"teachingplandesign"}, description = "教案设计")
@Controller
@RequestMapping("/teachingplandesign")
public class TeachingPlanDesignController extends BaseCrudController<Object> {

    @GetMapping
    @RequiresPermissions("teachingplandesign:view")
    public String userPage(Model model) {
        return "system/teachingplandesign";
    }
   

}
