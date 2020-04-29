package tech.wetech.admin.modules.training.mapper;

import java.util.Map;

import tech.wetech.admin.core.utils.MyMapper;
import tech.wetech.admin.modules.training.po.Asset;

public interface AssetMapper extends MyMapper<Asset> {
	
	Map<String, String> selectCountNumGourpByStatus();
	
	void updateCodeById(Asset record);
}