package tech.wetech.admin.modules.training.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import tech.wetech.admin.modules.base.web.BaseCrudController;


@Api(value = "curriculumdesign", tags = {"curriculumdesign"}, description = "课程设计")
@Controller
@RequestMapping("/curriculumdesign")
public class CurriculumDesignController extends BaseCrudController<Object> {

    @GetMapping
    @RequiresPermissions("curriculumdesign:view")
    public String userPage(Model model) {
        return "system/curriculumdesign";
    }
   

}
