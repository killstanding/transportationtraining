package tech.wetech.admin.modules.training.po;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@ApiModel(description = "统计信息")
public class StatisticsPo {
	
	@ApiModelProperty(value = "统计信息编码", name = "statisticsCode", required = false, example = "1")
	private String statisticsCode;

	@ApiModelProperty(value = "统计信息名称", name = "statisticsName", required = false, example = "丰田T-TEP整车实训区")
	private String statisticsName;
	
	@ApiModelProperty(value = "统计信息计数", name = "statisticsTotal", required = false, example = "2")
	private int statisticsTotal;
}
