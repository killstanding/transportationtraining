package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.CoursesReTrainingRoomMapper;
import tech.wetech.admin.modules.training.po.CoursesReTrainingRoom;
import tech.wetech.admin.modules.training.service.CoursesReTrainingRoomService;
@Service
public class CoursesReTrainingRoomServiceImpl extends BaseService<CoursesReTrainingRoom> implements CoursesReTrainingRoomService {
    @Autowired
    private CoursesReTrainingRoomMapper mapper;
}