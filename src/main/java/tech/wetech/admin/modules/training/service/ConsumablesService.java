package tech.wetech.admin.modules.training.service;

import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.Consumables;

public interface ConsumablesService extends IService<Consumables> {
	void updateCodeById(Consumables record);
}