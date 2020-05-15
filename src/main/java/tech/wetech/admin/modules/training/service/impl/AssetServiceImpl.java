package tech.wetech.admin.modules.training.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.wetech.admin.modules.base.service.impl.BaseService;
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
}