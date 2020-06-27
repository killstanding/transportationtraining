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
import tech.wetech.admin.core.utils.ResultCodeEnum;
import tech.wetech.admin.core.utils.StringUtil;
import tech.wetech.admin.modules.base.query.PageQuery;
import tech.wetech.admin.modules.base.web.BaseCrudController;
import tech.wetech.admin.modules.system.po.Organization;
import tech.wetech.admin.modules.system.service.OrganizationService;
import tech.wetech.admin.modules.training.po.CollectionRecord;
import tech.wetech.admin.modules.training.po.Consumables;
import tech.wetech.admin.modules.training.po.CourseArrangement;
import tech.wetech.admin.modules.training.po.CourseArrangementReConsumables;
import tech.wetech.admin.modules.training.po.SpecificationType;
import tech.wetech.admin.modules.training.service.CollectionRecordService;
import tech.wetech.admin.modules.training.service.ConsumablesService;
import tech.wetech.admin.modules.training.service.CourseArrangementReConsumablesService;
import tech.wetech.admin.modules.training.service.CourseArrangementService;
import tech.wetech.admin.modules.training.service.PositionService;
import tech.wetech.admin.modules.training.service.SpecificationTypeService;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

@Api(value = "coursearrangementreconsumables", tags = {"coursearrangementreconsumables"}, description = "排课管理和耗材关联")
@Controller
@RequestMapping("/coursearrangementreconsumables")
public class CourseArrangementReConsumablesController extends BaseCrudController<CourseArrangementReConsumables> {

	@Autowired
    private CourseArrangementReConsumablesService service;
	@Autowired
	private PositionService positionService;
	@Autowired
	private SpecificationTypeService specificationTypeService;
	@Autowired
    private ConsumablesService consumablesService;
	@Autowired
    private CollectionRecordService collectionRecordService;
	@Autowired
	private CourseArrangementService courseArrangementService;
	@Autowired
    private OrganizationService organizationService;
	
    @GetMapping
    @RequiresPermissions("coursearrangementreconsumables:view")
    public String page(Model model) {
    	model.addAttribute("positionList", positionService.queryAll());
    	model.addAttribute("consumablesList", consumablesService.queryAll());
    	SpecificationType specificationType = new SpecificationType();
    	specificationType.setAssetTypeCode("asset_type_consumables");//耗材
    	model.addAttribute("assetTypeList", specificationTypeService.queryList(specificationType));//规格型号
        return "system/coursearrangementreconsumables";
    }
    
    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("coursearrangementreconsumables:view")
    @Override
    public Result<List<CourseArrangementReConsumables>> queryList(CourseArrangementReConsumables entity, PageQuery pageQuery) {
        Page<CourseArrangementReConsumables> page = (Page<CourseArrangementReConsumables>) service.queryListByLike(entity, pageQuery);
        return Result.success(page.getResult()).addExtra("total", page.getTotal());
    }
    
    @ResponseBody
    @PostMapping("/create")
    //@RequiresPermissions("coursearrangementreconsumables:create")
    @SystemLog("排课管理和耗材关联创建")
    @Override
    public Result<String> create(@Validated(CourseArrangementReConsumables.CourseArrangementReConsumablesCreateChecks.class) CourseArrangementReConsumables entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setCreateTime(curTime);
    	entity.setUpdateTime(curTime);
    	//计算数量
    	Consumables consumables =  consumablesService.queryById(entity.getConsumablesId());			
		int cumulativeCollectedQuantity  = StringUtil.strToInt(consumables.getCumulativeReceiptQuantity())+entity.getNumberOfApplications();
		consumables.setCumulativeReceiptQuantity(cumulativeCollectedQuantity + "");//累计领用数量
	
		int totalExisting  = StringUtil.strToInt(consumables.getTotalExisting()) - entity.getNumberOfApplications();
		consumables.setTotalExisting(totalExisting+"");//现存总数
		
		int remainingQuantity  = StringUtil.strToInt(consumables.getRemainingQuantity()) - entity.getNumberOfApplications();
		consumables.setRemainingQuantity(remainingQuantity+"");//剩余数量
		
		if(remainingQuantity<0){
			return Result.failure(ResultCodeEnum.CONSUMABLES_INSUFFICIENT);
		}
		consumablesService.updateNotNull(consumables);
		
		
    	//生成领用单
    	CourseArrangement courseArrangement = courseArrangementService.queryById(entity.getCourseArrangementId());
    	
    	Organization org = organizationService.queryById(courseArrangement.getClassId());
    	Organization sys = organizationService.queryById(org.getParentId());
    	CollectionRecord record = new CollectionRecord();
    	record.setRecordName(consumables.getConsumablesName()+"领用申请");
    	record.setAssetId(consumables.getId());
    	record.setAssetName(consumables.getConsumablesName());
    	record.setAssetType("耗材");
    	record.setAssetTypeCode("asset_type_consumables");
    	record.setCollectionMajor(sys.getName());//领用的专业(系)
    	record.setCollectionMajorId(sys.getId().intValue());//领用的专业(系)编号
    	record.setCollectionCourse(courseArrangement.getCourseName());//领用的课程
    	record.setCollectionCourseId(courseArrangement.getCourseId());//领用的课程编号
    	record.setApplicant(courseArrangement.getLecturerlTeacher());//申请人
    	record.setApplicantId(courseArrangement.getLecturerlTeacherId());//申请人编号
    	record.setCollectedQuantity(entity.getNumberOfApplications()+"");//申请数量
    	//record.setRemark();//备注
    	record.setCreateYear(DateUtil.dateToStr(new Date(), DateUtil.YEAR_FORMATE));
    	record.setPendingPerson(consumables.getManager());//待处理人
    	record.setPendingPersonId(consumables.getManagerId());//待处理人编号
    	record.setCreateTime(curTime);
    	record.setUpdateTime(curTime);
    	record.setReId(entity.getId());
    	record.setIsCollected("0");
    	record.setIsReturned("0");
    	collectionRecordService.create(record);
    	  
    	//创建排课管理和耗材关联
    	service.create(entity);
        return Result.success();
    }
  
    @ResponseBody
    @PostMapping("/update")
    @RequiresPermissions("coursearrangementreconsumables:update")
    @SystemLog("排课管理和耗材关联更新")
    @Override
    public Result<String> update(@Validated(CourseArrangementReConsumables.CourseArrangementReConsumablesUpdateChecks.class) CourseArrangementReConsumables entity) {
    	String curTime  = DateUtil.dateToStr(new Date(), DateUtil.TIME_FORMATE);
    	entity.setUpdateTime(curTime);
    	service.updateNotNull(entity);
        return Result.success();
    }

    @ResponseBody
    @PostMapping("/delete-batch")
    @RequiresPermissions("coursearrangementreconsumables:delete")
    @SystemLog("排课管理和耗材关联删除")
    @Override
    public Result<String> deleteBatchByIds(@NotNull @RequestParam("id") Object[] ids) {
    	
        for (int i = 0; i < ids.length; i++) {
        	int reId = (int)ids[i];
        	CourseArrangementReConsumables entity = service.queryById(reId);
        	//计算数量
        	Consumables consumables =  consumablesService.queryById(entity.getConsumablesId());			
    		int cumulativeCollectedQuantity  = StringUtil.strToInt(consumables.getCumulativeReceiptQuantity())-entity.getNumberOfApplications();
    		consumables.setCumulativeReceiptQuantity(cumulativeCollectedQuantity + "");//累计领用数量
    	
    		int totalExisting  = StringUtil.strToInt(consumables.getTotalExisting()) + entity.getNumberOfApplications();
    		consumables.setTotalExisting(totalExisting+"");//现存总数
    		
    		int remainingQuantity  = StringUtil.strToInt(consumables.getRemainingQuantity()) + entity.getNumberOfApplications();
    		consumables.setRemainingQuantity(remainingQuantity+"");//剩余数量
    		
    		consumablesService.updateNotNull(consumables);
        	
    		//删除领用单
			CollectionRecord record = new CollectionRecord();
			record.setAssetTypeCode("asset_type_consumables");
			record.setReId(reId);
			collectionRecordService.delete(record);
		}
        super.deleteBatchByIds(ids);
        return Result.success();
    }
}
