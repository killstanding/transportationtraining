package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "巡检计划")
@Table(name = "t_inspection_plan")
public class InspectionPlan  extends BaseRowModel{
    /**
     * 巡检计划编号
     */
    @Id
    @NotNull(groups = InspectionPlanUpdateChecks.class)
    @ApiModelProperty(value = "巡检计划编号(系统生成)", name = "id", required = false, example = "1")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 实训室编号
     */
    @ExcelProperty(value = {"实训室编号","实训室编号"},index = 0)
    @ApiModelProperty(value = "实训室编号", name = "roomId", required = false, example = "1")
    @NotNull(message = "实训室名称不能为空",groups = InspectionPlanCreateChecks .class)
    @Column(name = "room_id")
    private Integer roomId;

    /**
     * 实训室名称
     */
    @ExcelProperty(value = {"实训室名称","实训室名称"},index = 1)
    @ApiModelProperty(value = "实训室名称", name = "roomName", required = false, example = "丰田T-TEP整车实训区")
    @NotNull(message = "实训室名称不能为空",groups = InspectionPlanCreateChecks .class)
    @Column(name = "room_name")
    private String roomName;

    /**
     * 巡检人
     */
    @ExcelProperty(value = {"巡检人","巡检人"},index = 2)
    @ApiModelProperty(value = "巡检人", name = "inspector", required = false, example = "admin")
    @Column(name = "inspector")
    private String inspector;

    /**
     * 巡检人编号
     */
    @ApiModelProperty(value = "巡检人编号", name = "inspector_id", required = false, example = "1")
    @Column(name = "inspector_id")
    private Integer inspectorId;

    /**
     * 本次巡检设备数
     */
    @ExcelProperty(value = {"本次巡检设备数","本次巡检设备数"},index = 3)
    @ApiModelProperty(value = "本次巡检设备数", name = "normalDevicesInInspection", required = false, example = "12")
    @Column(name = "normal_devices_in_inspection")
    private Integer normalDevicesInInspection;

    /**
     * 正常设备数量
     */
    @ExcelProperty(value = {"正常设备数量","正常设备数量"},index = 4)
    @ApiModelProperty(value = "正常设备数量", name = "numberNormalDevices", required = false, example = "10")
    @Column(name = "number_normal_devices")
    private Integer numberNormalDevices;

    /**
     * 异常设备数量
     */
    @ExcelProperty(value = {"异常设备数量","异常设备数量"},index = 5)
    @ApiModelProperty(value = "异常设备数量", name = "numberAbnormalDevices", required = false, example = "2")
    @Column(name = "number_abnormal_devices")
    private Integer numberAbnormalDevices;

    /**
     * 已报修设备数量
     */
    @ExcelProperty(value = {"已报修设备数量","已报修设备数量"},index = 6)
    @ApiModelProperty(value = "已报修设备数量", name = "numberReportedRepairEquipment", required = false, example = "2")
    @Column(name = "number_reported_repair_equipment")
    private Integer numberReportedRepairEquipment;

    /**
     * 巡检时间
     */
    @ExcelProperty(value = {"巡检时间","巡检时间"},index = 7)
    @ApiModelProperty(value = "巡检时间", name = "inspectionTime", required = false, example = "2020-04-24")
    @Column(name = "inspection_time")
    private String inspectionTime;

    /**
     * 创建时间
     */
    @ApiModelProperty(value = "创建时间", name = "createTime", required = false, example = "2020-04-24 18:00:00")
    @Column(name = "create_time")
    private String createTime;

    /**
     * 更新时间
     */
    @ApiModelProperty(value = "更新时间", name = "updateTime", required = false, example = "2020-04-24 18:00:00")
    @Column(name = "update_Time")
    private String updateTime;

    
    public interface InspectionPlanCreateChecks  {

    }

    public interface InspectionPlanUpdateChecks {

    }
    
    /**
     * 获取巡检计划编号
     *
     * @return id - 巡检计划编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置巡检计划编号
     *
     * @param id 巡检计划编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取实训室编号
     *
     * @return room_id - 实训室编号
     */
    public Integer getRoomId() {
        return roomId;
    }

    /**
     * 设置实训室编号
     *
     * @param roomId 实训室编号
     */
    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
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
     * 获取巡检人
     *
     * @return inspector - 巡检人
     */
    public String getInspector() {
        return inspector;
    }

    /**
     * 设置巡检人
     *
     * @param inspector 巡检人
     */
    public void setInspector(String inspector) {
        this.inspector = inspector;
    }

    /**
     * 获取巡检编号
     *
     * @return inspector_id - 巡检编号
     */
    public Integer getInspectorId() {
        return inspectorId;
    }

    /**
     * 设置巡检编号
     *
     * @param inspectorId 巡检编号
     */
    public void setInspectorId(Integer inspectorId) {
        this.inspectorId = inspectorId;
    }

    /**
     * 获取本次巡检设备数
     *
     * @return normal_devices_in_inspection - 本次巡检设备数
     */
    public Integer getNormalDevicesInInspection() {
        return normalDevicesInInspection;
    }

    /**
     * 设置本次巡检设备数
     *
     * @param normalDevicesInInspection 本次巡检设备数
     */
    public void setNormalDevicesInInspection(Integer normalDevicesInInspection) {
        this.normalDevicesInInspection = normalDevicesInInspection;
    }

    /**
     * 获取正常设备数量
     *
     * @return number_normal_devices - 正常设备数量
     */
    public Integer getNumberNormalDevices() {
        return numberNormalDevices;
    }

    /**
     * 设置正常设备数量
     *
     * @param numberNormalDevices 正常设备数量
     */
    public void setNumberNormalDevices(Integer numberNormalDevices) {
        this.numberNormalDevices = numberNormalDevices;
    }

    /**
     * 获取异常设备数量
     *
     * @return number_abnormal_devices - 异常设备数量
     */
    public Integer getNumberAbnormalDevices() {
        return numberAbnormalDevices;
    }

    /**
     * 设置异常设备数量
     *
     * @param numberAbnormalDevices 异常设备数量
     */
    public void setNumberAbnormalDevices(Integer numberAbnormalDevices) {
        this.numberAbnormalDevices = numberAbnormalDevices;
    }

    /**
     * 获取已报修设备数量
     *
     * @return number_reported_repair_equipment - 已报修设备数量
     */
    public Integer getNumberReportedRepairEquipment() {
        return numberReportedRepairEquipment;
    }

    /**
     * 设置已报修设备数量
     *
     * @param numberReportedRepairEquipment 已报修设备数量
     */
    public void setNumberReportedRepairEquipment(Integer numberReportedRepairEquipment) {
        this.numberReportedRepairEquipment = numberReportedRepairEquipment;
    }

    /**
     * 获取巡检时间
     *
     * @return inspection_time - 巡检时间
     */
    public String getInspectionTime() {
        return inspectionTime;
    }

    /**
     * 设置巡检时间
     *
     * @param inspectionTime 巡检时间
     */
    public void setInspectionTime(String inspectionTime) {
        this.inspectionTime = inspectionTime;
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
}