package tech.wetech.admin.modules.training.service;

import java.util.Map;

import tech.wetech.admin.modules.base.service.IService;
import tech.wetech.admin.modules.training.po.Asset;

public interface AssetService extends IService<Asset> {
	
	Map<String, String> selectCountNumGourpByStatus();
	
	void updateCodeById(Asset record);
   
}