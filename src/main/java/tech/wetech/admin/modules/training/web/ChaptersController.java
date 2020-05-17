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
import tech.wetech.admin.modules.training.po.Chapters;
import tech.wetech.admin.modules.training.service.ChaptersService;
import tech.wetech.admin.modules.training.vo.FileVo;
import tech.wetech.excel.ExcelReadUtil;
import tech.wetech.excel.ExcelWriteUtil;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "chapters", tags = {"chapters"}, description = "章节管理")
@Controller
@RequestMapping("/chapters")
public class ChaptersController extends BaseCrudController<Chapters> {

	@Autowired
    private ChaptersService service;
    @Autowired
    private ConfigProperties configProperties;
    
    
    @GetMapping
    @RequiresPermissions("chapters:view")
    public String userPage(Model model) {
        return "system/chapters";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("chapters:view")
    @Override
    public Result<List<Chapters>> queryList(Chapters entity, PageQuery pageQuery) {
        Page<Chapters> page = (Page<Chapters>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("chapters:create")
    @SystemLog("章节管理章节创建")
    @Override
    public Result<String> create(@Validated(Chapters.ChaptersCreateChecks.class) Chapters entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("chapters:update")
    @SystemLog("章节管理章节更新")
    @Override
    public Result<String> update(@Validated(Chapters.ChaptersUpdateChecks.class) Chapters entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("chapters:delete")
    @SystemLog("章节管理章节删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        return Result.success();
    }

	@PostMapping("/exportexcel")
	@ApiOperation(value = "导出")
	@RequiresPermissions("chapters:exportexcel")
	public Result<String> exportExcel(Chapters entity) {
		String fileName="";
		try {
			List<Chapters> list = service.keyValueByExample(entity);
			fileName = ExcelWriteUtil.writeData(configProperties.getExcelPath(), list, Chapters.class, "章节信息");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.error(getClass(), e.getMessage());
			return Result.failure(ResultCodeEnum.NOT_IMPLEMENTED);
		}
		
		return Result.success(fileName);
	}
	
	
	@PostMapping("/importexcel/")
	@ApiOperation(value = "导入")
	@RequiresPermissions("chapters:importexcel")
	public Result<String> importExcel(FileVo file) {
		try {
			String syncTime = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
			List<Object> list = ExcelReadUtil.readExcelData(file.getPath(), Chapters.class);
			if(list!=null){
				for (int i = 0; i < list.size(); i++) {
					Chapters record = (Chapters)list.get(i);
					record.setUpdateTime(syncTime);
					//制定唯一编号 j根据id进行唯一性识别
					Chapters mid = service.queryById(record);
					if(mid!=null){
						service.updateNotNull(record);
					}else{
						record.setCreateTime(syncTime);
						service.create(record);
					}//else
					
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
