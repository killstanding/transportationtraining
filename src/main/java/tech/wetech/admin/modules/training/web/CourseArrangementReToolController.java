package tech.wetech.admin.modules.training.web;


import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import com.github.pagehelper.Page;
import io.swagger.annotations.Api;
import tech.wetech.admin.core.annotation.SystemLog;
import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.modules.base.query.PageQuery;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.system.po.Organization;
import tech.wetech.admin.modules.system.service.OrganizationService;
import tech.wetech.admin.modules.training.po.AssetClassification;
import tech.wetech.admin.modules.training.po.CollectionRecord;
import tech.wetech.admin.modules.training.po.Consumables;
import tech.wetech.admin.modules.training.po.CourseArrangement;
import tech.wetech.admin.modules.training.po.CourseArrangementReTool;
import tech.wetech.admin.modules.training.po.PubCode;
import tech.wetech.admin.modules.training.po.Tools;
import tech.wetech.admin.modules.training.service.AssetClassificationService;
import tech.wetech.admin.modules.training.service.CollectionRecordService;
import tech.wetech.admin.modules.training.service.ToolsService;
import tech.wetech.admin.modules.training.service.CourseArrangementReToolService;
import tech.wetech.admin.modules.training.service.CourseArrangementService;
import tech.wetech.admin.modules.training.service.PubCodeService;
import java.util.Date;
import java.util.List;
import javax.validation.constraints.NotNull;

@Api(value = "coursearrangementretool", tags = {"coursearrangementretool"}, description = "排课管理和工具关联")
@Controller
@RequestMapping("/coursearrangementretool")
public class CourseArrangementReToolController extends BaseCrudController<CourseArrangementReTool> {

	@Autowired
    private CourseArrangementReToolService service;
	@Autowired
    private ToolsService toolsService;
	@Autowired
    private AssetClassificationService assetClassificationService;
	@Autowired
    private PubCodeService pubCodeService;
	@Autowired
    private CollectionRecordService collectionRecordService;
	@Autowired
	private CourseArrangementService courseArrangementService;
	@Autowired
    private OrganizationService organizationService;
	
    @GetMapping
    @RequiresPermissions("coursearrangementretool:view")
    public String page(Model model) {
    	AssetClassification assetClassification = new AssetClassification();
    	assetClassification.setAssetTypeCode("asset_type_device");//设备
    	model.addAttribute("assetClassificationList", assetClassificationService.queryList(assetClassification));
    	PubCode pubCode = new PubCode();
    	pubCode.setPubType("asset_status");
    	model.addAttribute("assetStatusList", pubCodeService.queryList(pubCode));
    	model.addAttribute("toolList", toolsService.queryAll());
        return "system/coursearrangementretool";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("coursearrangementretool:view")
    @Override
    public Result<List<CourseArrangementReTool>> queryList(CourseArrangementReTool entity, PageQuery pageQuery) {
        Page<CourseArrangementReTool> page = (Page<CourseArrangementReTool>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("coursearrangementretool:create")
    @SystemLog("排课管理和工具关联创建")
    @Override
    public Result<String> create(@Validated(CourseArrangementReTool.CourseArrangementReToolCreateChecks.class) CourseArrangementReTool entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	service.create(entity);
    	
    	CourseArrangement courseArrangement = courseArrangementService.queryById(entity.getCourseArrangementId());
    	Tools tools =  toolsService.queryById(entity.getAssetId());
    	Organization org = organizationService.queryById(courseArrangement.getClassId());
    	Organization sys = organizationService.queryById(org.getParentId());
    	CollectionRecord record = new CollectionRecord();
    	record.setRecordName(tools.getAssetName()+"领用申请");
    	record.setAssetId(tools.getId());
    	record.setAssetName(tools.getAssetName());
    	record.setAssetType("工具");
    	record.setAssetTypeCode("asset_type_tool");
    	record.setCollectionMajor(sys.getName());//领用的专业(系)
    	record.setCollectionMajorId(sys.getId().intValue());//领用的专业(系)编号
    	record.setCollectionCourse(courseArrangement.getCourseName());//领用的课程
    	record.setCollectionCourseId(courseArrangement.getCourseId());//领用的课程编号
    	record.setApplicant(courseArrangement.getLecturerlTeacher());//申请人
    	record.setApplicantId(courseArrangement.getLecturerlTeacherId());//申请人编号
    	record.setCollectedQuantity(entity.getNumberOfApplications()+"");//申请数量
    	//record.setRemark();//备注
    	record.setCreateYear(DateUtil.dateToStr(new Date(), DateUtil.YEAR_FORMATE));
    	record.setPendingPerson(tools.getAssetUser());//待处理人
    	record.setPendingPersonId(Integer.parseInt(tools.getAssetUserId()));//待处理人编号
    	record.setCreateTime(curTime);
    	record.setUpdateTime(curTime);
    	record.setReId(entity.getId());
    	collectionRecordService.create(record);
    	
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("coursearrangementretool:update")
    @SystemLog("排课管理和工具关联更新")
    @Override
    public Result<String> update(@Validated(CourseArrangementReTool.CourseArrangementReToolUpdateChecks.class) CourseArrangementReTool entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("coursearrangementretool:delete")
    @SystemLog("排课管理和工具关联删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
        super.deleteBatchByIds(ids);
        for (int i = 0; i < ids.length; i++) {
        	int reId = (int)ids[i];
			CollectionRecord entity = new CollectionRecord();
			entity.setAssetTypeCode("asset_type_tool");
			entity.setReId(reId);
			collectionRecordService.delete(entity);
		}
        return Result.success();
    }
}
