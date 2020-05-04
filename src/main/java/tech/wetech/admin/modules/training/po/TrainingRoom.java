package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_training_room")
@ApiModel(description = "实训室信息")
public class TrainingRoom  extends BaseRowModel{
	 /**
     * 实训室编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = TrainingRoomUpdateChecks.class)
    @ApiModelProperty(value = "实训室编号(系统生成)", name = "id", required = true, example = "1")
    private Integer id;

    /**
     * 实训室编码（自编）
     */
    @ApiModelProperty(value = "实训室编码（自编）", name = "roomCode", required = true, example = "RC1001")
    @Column(name = "room_code")
    @ExcelProperty(value = {"实训室编号","实训室编号"},index = 0)
    private String roomCode;
    
    /**
     * 实训室名称
     */
    @NotNull(message = "实训室名称不能为空",groups = TrainingRoomCreateChecks.class)
    @Column(name = "room_name")
    @ApiModelProperty(value = "实训室名称", name = "roomName", required = true, example = "丰田T-TEP整车实训区")
    @ExcelProperty(value = {"实训室名称","实训室名称"},index = 1)
    private String roomName;

    /**
     * 所属系
     */
    @ApiModelProperty(value = "所属系", name = "belongSys", required = true, example = "南校区汽车工程系")
    @NotNull(message = "所属系不能为空",groups = TrainingRoomCreateChecks.class)
    @Column(name = "belong_sys")
    @ExcelProperty(value = {"所属系","所属系"},index = 2)
    private String belongSys;

    /**
     * 位置
     */
    @ApiModelProperty(value = "位置名称", name = "roomPosition", required = true, example = "田T-TEP整车实训区")
    @NotNull(message = "位置不能为空",groups = TrainingRoomCreateChecks.class)
    @Column(name = "room_position")
    @ExcelProperty(value = {"位置","位置"},index = 3)
    private String roomPosition;

    /**
     * 管理员
     */
    @ApiModelProperty(value = "管理员", name = "roomAdmin", required = true, example = "admin")
    @NotNull(message = "管理员不能为空",groups = TrainingRoomCreateChecks.class)
    @Column(name = "room_admin")
    @ExcelProperty(value = {"管理员","管理员"},index = 4)
    private String roomAdmin;

    /**
     * 创建日期
     */
    @ApiModelProperty(value = "创建日期", name = "createDate", required = true, example = "2020-04-24")
    @Column(name = "create_date")
    @ExcelProperty(value = {"创建日期","创建日期"},index = 5)
    private String createDate;

    /**
     * 设备数量
     */
    @ApiModelProperty(value = "设备数量", name = "equipNum", required = true, example = "12")
    @NotNull(message = "设备数量不能为空",groups = TrainingRoomCreateChecks.class)
    @Column(name = "equip_num")
    @ExcelProperty(value = {"设备数量","设备数量"},index = 6)
    private Integer equipNum;

    /**
     * 是否可用  0不可用 1可用
     */
    @ApiModelProperty(value = "是否可用    0不可用 1可用", name = "isEnabled", required = true, example = "1")
    @NotNull(message = "是否可用不能为空",groups = TrainingRoomCreateChecks.class)
    @Column(name = "is_enabled")
    @ExcelProperty(value = {"是否可用","是否可用"},index = 7)
    private Integer isEnabled;

    /**
     * 更新时间
     */
    @ApiModelProperty(value = "更新时间", name = "updateTime", required = true, example = "2020-04-24 18:00:00")
    @Column(name = "update_Time")
    private String updateTime;

    /**
     * 所属系统编号
     */
    @Column(name = "belong_sys_id")
    private Integer belongSysId;

    public interface TrainingRoomCreateChecks {

    }

    public interface TrainingRoomUpdateChecks {

    }
    /**
     * 位置信息编号
     */
    @ApiModelProperty(value = "位置编号", name = "postionCode", required = true, example = "1")
    @NotNull(message = "位置信息编号不能为空",groups = TrainingRoomCreateChecks.class)
    @Column(name = "room_position_code")
    private Integer roomPositionCode;

    /**
     * 管理员编号
     */
    @ApiModelProperty(value = "管理员编号", name = "roomAdminId", required = true, example = "1")
    @NotNull(message = "管理员编号不能为空",groups = TrainingRoomCreateChecks.class)
    @Column(name = "room_admin_id")
    private Integer roomAdminId;
    
    
 

    /**
     * 创建时间
     */
    @ApiModelProperty(value = "创建时间", name = "createTime", required = true, example = "2020-04-24 18:00:00")
    @Column(name = "create_time")
    private String createTime;

 
    

    /**
     * 获取实训室编号
     *
     * @return id - 实训室编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置实训室编号
     *
     * @param id 实训室编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取实训室名称
     *
     * @return room_name - 实训室名称
     */
    public String getRoomName() {
        return roomName;
    }

    /**
     * 设置实训室名称
     *
     * @param roomName 实训室名称
     */
    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    /**
     * 获取所属系
     *
     * @return belong_sys - 所属系
     */
    public String getBelongSys() {
        return belongSys;
    }

    /**
     * 设置所属系
     *
     * @param belongSys 所属系
     */
    public void setBelongSys(String belongSys) {
        this.belongSys = belongSys;
    }

    /**
     * 获取位置
     *
     * @return room_position - 位置
     */
    public String getRoomPosition() {
        return roomPosition;
    }

    /**
     * 设置位置
     *
     * @param roomPosition 位置
     */
    public void setRoomPosition(String roomPosition) {
        this.roomPosition = roomPosition;
    }

    /**
     * 获取管理员
     *
     * @return room_admin - 管理员
     */
    public String getRoomAdmin() {
        return roomAdmin;
    }

    /**
     * 设置管理员
     *
     * @param roomAdmin 管理员
     */
    public void setRoomAdmin(String roomAdmin) {
        this.roomAdmin = roomAdmin;
    }

    /**
     * 获取创建时间
     *
     * @return create_time - 创建时间
     */
    public String getCreateTime() {
        return createTime;
    }

    /**
     * 设置创建时间
     *
     * @param createTime 创建时间
     */
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取设备数量
     *
     * @return equip_num - 设备数量
     */
    public Integer getEquipNum() {
        return equipNum;
    }

    /**
     * 设置设备数量
     *
     * @param equipNum 设备数量
     */
    public void setEquipNum(Integer equipNum) {
        this.equipNum = equipNum;
    }

    /**
     * 获取是否可用 0  不可用 1可用
     *
     * @return is_enabled - 是否可用 0  不可用 1可用
     */
    public Integer getIsEnabled() {
        return isEnabled;
    }

    /**
     * 设置是否可用 0  不可用 1可用
     *
     * @param isEnabled 是否可用 0  不可用 1可用
     */
    public void setIsEnabled(Integer isEnabled) {
        this.isEnabled = isEnabled;
    }

    /**
     * 获取更新时间
     *
     * @return update_time - 更新时间
     */
    public String getUpdateTime() {
        return updateTime;
    }

    /**
     * 设置更新时间
     *
     * @param updateTime 更新时间
     */
    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 获取所属系统编号
     *
     * @return belong_sys_id - 所属系统编号
     */
    public Integer getBelongSysId() {
        return belongSysId;
    }

    /**
     * 设置所属系统编号
     *
     * @param belongSysId 所属系统编号
     */
    public void setBelongSysId(Integer belongSysId) {
        this.belongSysId = belongSysId;
    }

    /**
     * 获取位置信息编号
     *
     * @return room_position_code - 位置信息编号
     */
    public Integer getRoomPositionCode() {
        return roomPositionCode;
    }

    /**
     * 设置位置信息编号
     *
     * @param roomPositionCode 位置信息编号
     */
    public void setRoomPositionCode(Integer roomPositionCode) {
        this.roomPositionCode = roomPositionCode;
    }

    /**
     * 获取管理员编号
     *
     * @return room_admin_id - 管理员编号
     */
    public Integer getRoomAdminId() {
        return roomAdminId;
    }

    /**
     * 设置管理员编号
     *
     * @param roomAdminId 管理员编号
     */
    public void setRoomAdminId(Integer roomAdminId) {
        this.roomAdminId = roomAdminId;
    }
}