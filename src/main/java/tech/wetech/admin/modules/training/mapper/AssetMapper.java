package tech.wetech.admin.modules.training.mapper;

import java.util.List;
import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.StatusCountResult;

public interface AssetMapper extends MyMapper<Asset> {
	
	List<StatusCountResult> selectCountNumGourpByStatus();
	
	void updateCodeById(Asset record);
	
	void updateRoomIsEnabledByRoomId(Asset record);
}