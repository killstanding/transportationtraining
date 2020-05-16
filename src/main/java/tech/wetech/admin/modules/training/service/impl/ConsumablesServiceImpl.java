package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.base.service.impl.BaseService;
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
}