package tech.wetech.admin.modules.training.service;

import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.TrainingRoom;

public interface TrainingRoomService extends IService<TrainingRoom> {
	void updateCodeById(TrainingRoom record);
}