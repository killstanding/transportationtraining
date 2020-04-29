package tech.wetech.admin.modules.training.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@ApiModel(description = "文件")
public class FileVo {
	 @ApiModelProperty(value = "文件路径", name = "path", required = true, example = "D:/result_dir/1579086286595.xls")
	 private String path;
}
