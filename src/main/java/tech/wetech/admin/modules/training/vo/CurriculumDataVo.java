package tech.wetech.admin.modules.training.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(description = "课程表数据")
@Data
public class CurriculumDataVo {
	
	@ApiModelProperty(value = "第几节", name = "sectionNum", required = false, example = "1")
	private String sectionNum = "";
	
	@ApiModelProperty(value = "星期1的数据", name = "week1", required = false, example = "1")
	private String week1 = "";
	
	@ApiModelProperty(value = "星期2的数据", name = "week2", required = false, example = "1")
	private String week2 = "";
	
	@ApiModelProperty(value = "星期3的数据", name = "week3", required = false, example = "1")
	private String week3 = "";
	
	@ApiModelProperty(value = "星期4的数据", name = "week4", required = false, example = "1")
	private String week4 = "";
	
	@ApiModelProperty(value = "星期5的数据", name = "week5", required = false, example = "1")
	private String week5 = "";
	
	@ApiModelProperty(value = "星期6的数据", name = "week6", required = false, example = "1")
	private String week6 = "";
	
	@ApiModelProperty(value = "星期7的数据", name = "week7", required = false, example = "1")
	private String week7 = "";
}
