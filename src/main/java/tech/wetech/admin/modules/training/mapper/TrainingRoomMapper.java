package tech.wetech.admin.modules.training.mapper;

import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.TrainingRoom;

public interface TrainingRoomMapper extends MyMapper<TrainingRoom> {
	void updateCodeById(TrainingRoom record);
}