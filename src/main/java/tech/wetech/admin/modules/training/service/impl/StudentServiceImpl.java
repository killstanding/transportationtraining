package tech.wetech.admin.modules.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.training.mapper.StudentMapper;
import tech.wetech.admin.modules.training.po.Student;
import tech.wetech.admin.modules.training.service.StudentService;

public class StudentServiceImpl extends BaseService<Student> implements StudentService {
    @Autowired
    private StudentMapper mapper;

	@Override
	public void updateCodeById(Student record) {
		// TODO Auto-generated method stub
		mapper.updateCodeById(record);
	}
}