package tech.wetech.admin.modules.training.vo;

import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@ApiModel(description = "柱状图")
public class HistogramVo {
	
	@ApiModelProperty(value = "x轴值", name = "xAxisValues", required = true, example = "[1月,2月,3月,4月,5月]")
	private List<String> xAxisValues;
	
	@ApiModelProperty(value = "y轴值A（当年）", name = "yAxisValuesA", required = true, example = "[1,2,3,4,5]")
	private List<String> yAxisValuesA;
	
	@ApiModelProperty(value = "y轴值B（去年）", name = "yAxisValuesB", required = true, example = "[6,7,8,9,10]")
	private List<String> yAxisValuesB;
	

}
