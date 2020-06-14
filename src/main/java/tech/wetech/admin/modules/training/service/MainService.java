package tech.wetech.admin.modules.training.service;


import java.util.List;

import tech.wetech.admin.modules.system.po.User;
import tech.wetech.admin.modules.training.vo.ToDoVo;


public interface MainService {
	
	List<ToDoVo> selectToDoData(User user);

}
