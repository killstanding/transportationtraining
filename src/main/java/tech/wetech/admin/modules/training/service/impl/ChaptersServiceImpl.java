package tech.wetech.admin.modules.training.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.system.dto.TreeDto;
import tech.wetech.admin.modules.training.mapper.ChaptersMapper;
import tech.wetech.admin.modules.training.po.Chapters;
import tech.wetech.admin.modules.training.service.ChaptersService;
import tk.mybatis.mapper.weekend.Weekend;
import tk.mybatis.mapper.weekend.WeekendCriteria;

@Service
public class ChaptersServiceImpl extends BaseService<Chapters> implements ChaptersService {
	@Autowired
	private ChaptersMapper mapper;

	@Override
	public List<TreeDto> queryTree(int pId) {
		List<TreeDto> tds = new ArrayList<>();
		Weekend example = Weekend.of(Chapters.class);
		WeekendCriteria<Chapters, Object> criteria = example.weekendCriteria();
		criteria.andEqualTo("parentId", pId);
		mapper.selectByExample(example).forEach(o -> tds.add(new TreeDto((long)o.getId(), (long)o.getParentId(), o.getChapterName(), false, o)));
		return tds;
	}

	@Override
	public List<TreeDto> queryTreeByCourseId(int id) {
		List<TreeDto> tds = new ArrayList<>();
		Weekend example = Weekend.of(Chapters.class);
		WeekendCriteria<Chapters, Object> criteria = example.weekendCriteria();
		criteria.andEqualTo("courseId", id);
		criteria.andEqualTo("chapterLevel", 1);
		mapper.selectByExample(example).forEach(o -> tds.add(new TreeDto((long)o.getId(), (long)o.getParentId(), o.getChapterName(), false, o)));
		return tds;
	}


}