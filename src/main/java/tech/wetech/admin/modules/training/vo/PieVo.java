package tech.wetech.admin.modules.training.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@ApiModel(description = "饼图")
public class PieVo {
	
	@ApiModelProperty(value = "名称", name = "name", required = true, example = "发动机")
	private String name;

	@ApiModelProperty(value = "编码", name = "code", required = true, example = "AC001")
	private String code;

	@ApiModelProperty(value = "值", name = "value", required = true, example = "200")
	private String value;

}
