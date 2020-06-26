package tech.wetech.admin.modules.training.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.system.common.CommonVariable;
import tech.wetech.admin.modules.training.mapper.ConsumablesMapper;
import tech.wetech.admin.modules.training.po.Consumables;
import tech.wetech.admin.modules.training.service.ConsumablesService;

@Service
public class ConsumablesServiceImpl extends BaseService<Consumables> implements ConsumablesService{
	
	@Autowired
	private ConsumablesMapper mapper;

	@Override
	public void updateCodeById(Consumables record) {
		mapper.updateCodeById(record);
	}
	
	@Override
	public int create(Consumables entity) {
		// TODO Auto-generated method stub
		int k = super.create(entity);
//		if(entity.getConsumablesCode()==null||entity.getConsumablesCode().equals("")){
//			//更新编号
//			Consumables record = new Consumables();
//	    	record.setId(entity.getId());
//	    	String dateStr = DateUtil.dateToStr(new Date(), DateUtil.DATE_FORMATE_SIMPLE);
//	    	String code = CommonVariable.getNumberPrefix(CommonVariable.NUMBER_PREFIX_CONSUMABLES, dateStr, record.getId());
//	    	record.setConsumablesCode(code);
//	    	super.updateNotNull(record);
//		}
		return k;
	}
}