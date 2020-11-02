package tech.wetech.admin.modules.training.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import tech.wetech.admin.modules.training.po.TrainingRoom;
@ApiModel(description = "实训室月度总课时和使用率模型")
@Data
public class TrainingRoomVo extends TrainingRoom{
	
    @ApiModelProperty(value = "总课时", name = "classHours", required = false, example = "9")
	private String classHours;
	
    @ApiModelProperty(value = "使用率", name = "usage", required = false, example = "40%")
	private String usage;
    
    
    
    public static TrainingRoomVo packageTrainingRoomVo(TrainingRoom tr){
    	TrainingRoomVo vo  = new TrainingRoomVo();
    	vo.setId(tr.getId());
    	vo.setRoomName(tr.getRoomName());
    	vo.setBelongSys(tr.getBelongSys());
    	vo.setRoomPosition(tr.getRoomPosition());
    	vo.setRoomAdmin(tr.getRoomAdmin());
    	vo.setCreateDate(tr.getCreateDate());
    	vo.setEquipNum(tr.getEquipNum());
    	vo.setIsEnabled(tr.getIsEnabled());
    	vo.setUpdateTime(tr.getUpdateTime());
    	vo.setBelongSysId(tr.getBelongSysId());
    	vo.setRoomPositionCode(tr.getRoomPositionCode());
    	vo.setRoomAdminId(tr.getRoomAdminId());
    	vo.setRoomCode(tr.getRoomCode());
    	vo.setCreateTime(tr.getCreateTime());
    	return vo;
    }
}
