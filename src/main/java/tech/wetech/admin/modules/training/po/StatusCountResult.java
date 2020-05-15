package tech.wetech.admin.modules.training.po;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@ApiModel(description = "根据状态计算结果模型")
public class StatusCountResult {
	
	@ApiModelProperty(value = "状态编码", name = "STATUS_CODE", required = false, example = "asset_status_normal")
	private String STATUS_CODE;
	
	@ApiModelProperty(value = "状态名称", name = "STATUS_NAME", required = false, example = "正常")
	private String STATUS_NAME;
	
	@ApiModelProperty(value = "数量", name = "COUNT_NUM", required = false, example = "1")
	private String COUNT_NUM;
	

}
