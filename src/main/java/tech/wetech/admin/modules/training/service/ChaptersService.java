package tech.wetech.admin.modules.training.service;

import java.util.List;

import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.system.dto.TreeDto;
import tech.wetech.admin.modules.training.po.Chapters;

public interface ChaptersService extends IService<Chapters> {
	
	List<TreeDto> queryTree(int pId);
	
	List<TreeDto> queryTreeByCourseId(int id);
}