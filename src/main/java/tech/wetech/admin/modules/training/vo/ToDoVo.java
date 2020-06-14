package tech.wetech.admin.modules.training.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(description = "待办事项")
@Data
public class ToDoVo {
	@ApiModelProperty(value = "事项编号(系统自动生成)", name = "matterId", required = false, example = "1")
	private String matterId;
	@ApiModelProperty(value = "事项编号(自编)", name = "matterCode", required = false, example = "MR001")
	private String matterCode;
    @ApiModelProperty(value = "事项类型", name = "matterType", required = false, example = "设备维修")
	private String matterType;
    @ApiModelProperty(value = "事项类型编号", name = "matterTypeCode", required = false, example = "devices_maintenance")
	private String matterTypeCode;
    @ApiModelProperty(value = "事项名称", name = "matterName", required = false, example = "丰田皇冠教具车维修")
	private String matterName;
    @ApiModelProperty(value = "提交人", name = "submitter", required = false, example = "admin")
	private String submitter;
    @ApiModelProperty(value = "提交时间", name = "submitTime", required = false, example = "2020-05-31 16:32:07")
	private String submitTime;
}
