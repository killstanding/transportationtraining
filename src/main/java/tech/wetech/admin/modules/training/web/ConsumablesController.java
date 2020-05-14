package tech.wetech.admin.modules.training.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import tech.wetech.admin.modules.base.web.BaseCrudController;


@Api(value = "consumables", tags = {"consumables"}, description = "耗材管理")
@Controller
@RequestMapping("/consumables")
public class ConsumablesController extends BaseCrudController<Object> {

    @GetMapping
    @RequiresPermissions("consumables:view")
    public String userPage(Model model) {
        return "system/consumables";
    }
}
