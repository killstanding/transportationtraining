package tech.wetech.admin.modules.training.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.modules.system.po.User;
import tech.wetech.admin.modules.training.mapper.MainMapper;
import tech.wetech.admin.modules.training.vo.ToDoVo;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	private MainMapper mapper;

	@Override
	public List<ToDoVo> selectToDoData(User user) {
		// TODO Auto-generated method stub
		return mapper.selectToDoData(user);
	}
	

}
