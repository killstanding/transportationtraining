package tech.wetech.admin.modules.training.service;

import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.Student;

public interface StudentService extends IService<Student> {
	
	void updateCodeById(Student record);
	
}