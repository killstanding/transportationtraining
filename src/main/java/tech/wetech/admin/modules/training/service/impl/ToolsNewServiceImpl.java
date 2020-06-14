package tech.wetech.admin.modules.training.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.system.common.CommonVariable;
import tech.wetech.admin.modules.training.mapper.ToolsNewMapper;
import tech.wetech.admin.modules.training.po.ToolsNew;
import tech.wetech.admin.modules.training.service.ToolsNewService;

@Service
public class ToolsNewServiceImpl extends BaseService<ToolsNew> implements ToolsNewService{
	
	@Autowired
	private ToolsNewMapper mapper;

	@Override
	public void updateCodeById(ToolsNew record) {
		mapper.updateCodeById(record);
	}
	
	@Override
	public int create(ToolsNew entity) {
		// TODO Auto-generated method stub
		int k = super.create(entity);
		if(entity.getToolsCode()==null||entity.getToolsCode().equals("")){
			//更新编号
			ToolsNew record = new ToolsNew();
	    	record.setId(entity.getId());
	    	String dateStr = DateUtil.dateToStr(new Date(), DateUtil.DATE_FORMATE_SIMPLE);
	    	String code = CommonVariable.getNumberPrefix(CommonVariable.NUMBER_PREFIX_TOOLS, dateStr, record.getId());
	    	record.setToolsCode(code);
	    	super.updateNotNull(record);
		}
		return k;
	}
}