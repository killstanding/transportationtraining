package tech.wetech.admin.modules.training.service.impl;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.modules.base.service.impl.BaseService;
import tech.wetech.admin.modules.system.common.CommonVariable;
import tech.wetech.admin.modules.training.mapper.AssetMapper;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.StatusCountResult;
import tech.wetech.admin.modules.training.service.AssetService;

@Service
public class AssetServiceImpl extends BaseService<Asset> implements AssetService {

    @Autowired
    private AssetMapper mapper;

	@Override
	public List<StatusCountResult>  selectCountNumGourpByStatus() {
		// TODO Auto-generated method stub
		return mapper.selectCountNumGourpByStatus();
	}

	@Override
	public void updateCodeById(Asset record) {
		// TODO Auto-generated method stub
		mapper.updateCodeById(record);
	}

	@Override
	public int create(Asset entity) {
		// TODO Auto-generated method stub
		int k = super.create(entity);
//		if(entity.getAssetCode()==null||entity.getAssetCode().equals("")){
//			//更新编号
//	    	Asset record = new Asset();
//	    	record.setId(entity.getId());
//	    	String dateStr = DateUtil.dateToStr(new Date(), DateUtil.DATE_FORMATE_SIMPLE);
//	    	String code = CommonVariable.getNumberPrefix(CommonVariable.NUMBER_PREFIX_DEVICE, dateStr, record.getId());
//	    	record.setAssetCode(code);
//	    	super.updateNotNull(record);
//		}
		return k;
	}

	@Override
	public void updateRoomIsEnabledByRoomId(Asset record) {
		// TODO Auto-generated method stub
		mapper.updateRoomIsEnabledByRoomId(record);
	}
	
	
}