package tech.wetech.admin.modules.training.service;

import java.util.List;
import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.Asset;
import tech.wetech.admin.modules.training.po.StatusCountResult;

public interface AssetService extends IService<Asset> {
	
	List<StatusCountResult> selectCountNumGourpByStatus();
	
	void updateCodeById(Asset record);
   
	void updateRoomIsEnabledByRoomId(Asset record);
}