package tech.wetech.admin.modules.training.mapper;

import java.util.List;

import tech.wetech.admin.modules.system.po.User;
import tech.wetech.admin.modules.training.vo.ToDoVo;


public interface MainMapper {
	
	List<ToDoVo> selectToDoData(User user);

}
