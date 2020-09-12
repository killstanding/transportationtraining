package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.TrainingRoomMapper;
import tech.wetech.admin.modules.training.po.TrainingRoom;
import tech.wetech.admin.modules.training.service.TrainingRoomService;

@Service
public class TrainingRoomServiceImpl extends BaseService<TrainingRoom> implements TrainingRoomService {

    @Autowired
    private TrainingRoomMapper mapper;

	@Override
	public void updateCodeById(TrainingRoom record) {
		// TODO Auto-generated method stub
		mapper.updateCodeById(record);
	}
    
}