package tech.wetech.admin.modules.training.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.system.common.CommonVariable;
import tech.wetech.admin.modules.training.mapper.ToolsMapper;
import tech.wetech.admin.modules.training.po.Tools;
import tech.wetech.admin.modules.training.service.ToolsService;

@Service
public class ToolsServiceImpl extends BaseService<Tools> implements ToolsService{
	
	@Autowired
	private ToolsMapper mapper;
	
	@Override
	public void updateCodeById(Tools record) {
		// TODO Auto-generated method stub
		mapper.updateCodeById(record);
	}
	
	@Override
	public int create(Tools entity) {
		// TODO Auto-generated method stub
		int k = super.create(entity);
		if(entity.getAssetCode().equals("")){
			//更新编号
			Tools record = new Tools();
	    	record.setId(entity.getId());
	    	String dateStr = DateUtil.dateToStr(new Date(), DateUtil.DATE_FORMATE_SIMPLE);
	    	String code = CommonVariable.getNumberPrefix(CommonVariable.NUMBER_PREFIX_TOOLS, dateStr, record.getId());
	    	record.setAssetCode(code);
	    	super.updateNotNull(record);
		}
		return k;
	}
}