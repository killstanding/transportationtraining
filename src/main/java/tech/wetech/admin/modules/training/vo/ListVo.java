package tech.wetech.admin.modules.training.vo;

import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
@Data
@ApiModel(description = "list模型")
public class ListVo<T> {
	@ApiModelProperty(value = "list", name = "objList", required = true, example = "")
    private List<T> objList;
    
    
    
}
