package tech.wetech.admin.modules.training.service.impl;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.system.common.CommonVariable;
import tech.wetech.admin.modules.training.mapper.MaintenanceRecordMapper;
import tech.wetech.admin.modules.training.po.MaintenanceRecord;
import tech.wetech.admin.modules.training.po.StatusCountResult;
import tech.wetech.admin.modules.training.service.MaintenanceRecordService;

@Service
public class MaintenanceRecordServiceImpl extends BaseService<MaintenanceRecord> implements MaintenanceRecordService{
	@Autowired
	private MaintenanceRecordMapper mapper;

	@Override
	public List<StatusCountResult>  selectCountNumGourpByStatus() {
		// TODO Auto-generated method stub
		return mapper.selectCountNumGourpByStatus();
	}
	
	@Override
	public int create(MaintenanceRecord entity) {
		// TODO Auto-generated method stub
		int k = super.create(entity);
		if(entity.getRecordId()==null||entity.getRecordId().equals("")){
			//更新编号
			MaintenanceRecord record = new MaintenanceRecord();
	    	record.setId(entity.getId());
	    	String dateStr = DateUtil.dateToStr(new Date(), DateUtil.DATE_FORMATE_SIMPLE);
	    	String code = CommonVariable.getNumberPrefix(CommonVariable.NUMBER_PREFIX_MAINTENANCE_RECORD, dateStr, record.getId());
	    	record.setRecordId(code);
	    	super.updateNotNull(record);
		}
		return k;
	}

	@Override
	public List<MaintenanceRecord> selectAllDone(MaintenanceRecord entity) {
		// TODO Auto-generated method stub
		return mapper.selectAllDone(entity);
	}
}