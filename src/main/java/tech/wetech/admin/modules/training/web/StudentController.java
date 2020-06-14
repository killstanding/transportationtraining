package tech.wetech.admin.modules.training.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import com.github.pagehelper.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tech.wetech.admin.core.annotation.SystemLog;
import tech.wetech.admin.core.common.ConfigProperties;
import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.core.utils.Logger;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.core.utils.ResultCodeEnum;
import tech.wetech.admin.modules.base.query.PageQuery;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.system.service.OrganizationService;
import tech.wetech.admin.modules.training.po.Student;
import tech.wetech.admin.modules.training.service.StudentService;
import tech.wetech.admin.modules.training.vo.FileVo;
import tech.wetech.excel.ExcelReadUtil;
import tech.wetech.excel.ExcelWriteUtil;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "student", tags = {"student"}, description = "学生管理")
@Controller
@RequestMapping("/student")
public class StudentController extends BaseCrudController<Student> {

	@Autowired
    private StudentService service;
	@Autowired
    private OrganizationService organizationService;
    @Autowired
    private ConfigProperties configProperties;
    
    @GetMapping
    @RequiresPermissions("student:view")
    public String page(Model model) {
    	model.addAttribute("organizationList", organizationService.queryAll());
        return "system/student";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("student:view")
    @Override
    public Result<List<Student>> queryList(Student entity, PageQuery pageQuery) {
        Page<Student> page = (Page<Student>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("student:create")
    @SystemLog("学生管理学生创建")
    @Override
    public Result<String> create(@Validated(Student.StudentCreateChecks.class) Student entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("student:update")
    @SystemLog("学生管理学生更新")
    @Override
    public Result<String> update(@Validated(Student.StudentUpdateChecks.class) Student entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("student:delete")
    @SystemLog("学生管理学生删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

    @ResponseBody
	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("student:exportexcel")
	public Result<String> exportExcel(Student entity) {
		String fileName="";
		try {
			List<Student> list = service.keyValueByExample(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, Student.class, "学生信息");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
	
    @ResponseBody
	@PostMapping("/importexcel/")
	@ApiOperation(value = "导入")
	@RequiresPermissions("student:importexcel")
	public Result<String> importExcel(FileVo file) {
		try {
			String syncTime = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
			List<Object> list = ExcelReadUtil.readExcelData(file.getPath(), Student.class);
			if(list!=null){
				for (int i = 0; i < list.size(); i++) {
					Student record = (Student)list.get(i);
					record.setUpdateTime(syncTime);
					//制定唯一编号 j根据id进行唯一性识别
					Student mid = service.queryById(record);
					if(mid!=null){
						service.updateNotNull(record);
					}else{
						record.setCreateTime(syncTime);
						service.create(record);
					}//else
					//更新编号
					service.updateCodeById(record);
					
				}//for+
			}//if(list!=null)
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		return Result.success();
	}
}
