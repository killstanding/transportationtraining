package tech.wetech.admin.modules.training.mapper;

import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.Consumables;

public interface ConsumablesMapper extends MyMapper<Consumables> {
	void updateCodeById(Consumables record);
}