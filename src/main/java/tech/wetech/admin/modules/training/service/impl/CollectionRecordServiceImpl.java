package tech.wetech.admin.modules.training.service.impl;


import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.system.common.CommonVariable;
import tech.wetech.admin.modules.training.mapper.CollectionRecordMapper;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.CollectionRecord;
import tech.wetech.admin.modules.training.service.CollectionRecordService;

@Service
public class CollectionRecordServiceImpl extends BaseService<CollectionRecord> implements CollectionRecordService {
	
	@Autowired
	private CollectionRecordMapper mapper;
	
	@Override
	public int create(CollectionRecord entity) {
		// TODO Auto-generated method stub
		int k = super.create(entity);
		if(entity.getRecordId().equals("")){
			//更新编号
			CollectionRecord record = new CollectionRecord();
	    	record.setId(entity.getId());
	    	String dateStr = DateUtil.dateToStr(new Date(), DateUtil.DATE_FORMATE_SIMPLE);
	    	String code = CommonVariable.getNumberPrefix(CommonVariable.NUMBER_PREFIX_DEVICE, dateStr, record.getId());
	    	record.setRecordId(code);
	    	super.updateNotNull(record);
		}
		return k;
	}
	
}