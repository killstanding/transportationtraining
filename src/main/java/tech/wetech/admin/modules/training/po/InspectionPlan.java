package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;

import io.swagger.annotations.ApiModelProperty;


@Table(name = "t_inspection_plan")
public class InspectionPlan extends BaseRowModel{
    /**
     * 巡检计划编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = InspectionPlanUpdateChecks.class)
    @ApiModelProperty(value = "巡检计划编码(系统生成)", name = "id", required = true, example = "1")
    private Integer id;

    /**
     * 实训室编号
     */
    @ExcelProperty(value = {"实训室编号","实训室编号"},index = 0)
    @ApiModelProperty(value = "实训室编号", name = "roomId", required = true, example = "1")
    @Column(name = "room_id")
    private Integer roomId;

    /**
     * 实训室名称
     */
    @ExcelProperty(value = {"实训室名称","实训室名称"},index = 1)
    @ApiModelProperty(value = "实训室名称", name = "roomName", required = true, example = "丰田T-TEP整车实训区")
    @NotNull(message = "实训室名称不能为空",groups = InspectionPlanCreateChecks.class)
    @Column(name = "room_name")
    private String roomName;

    /**
     * 巡检负责人
     */
    @ExcelProperty(value = {"巡检负责人","巡检负责人"},index = 2)
    @ApiModelProperty(value = "巡检负责人", name = "personInCharge", required = true, example = "admin")
    @Column(name = "person_in_charge")
    private String personInCharge;

    /**
     * 巡检负责人编号
     */
    @ApiModelProperty(value = "巡检负责人编号", name = "personInChargeId", required = true, example = "1")
    @Column(name = "person_in_charge_id")
    private Integer personInChargeId;

    /**
     * 巡检周期
     */
    @ExcelProperty(value = {"巡检周期","巡检周期"},index = 3)
    @ApiModelProperty(value = "巡检周期", name = "inspectionCycle", required = true, example = "周")
    @Column(name = "inspection_cycle")
    private String inspectionCycle;

    /**
     * 巡检周期编号
     */
    @ApiModelProperty(value = "巡检周期编号", name = "inspectionCycleCode", required = true, example = "inspectionCycleCode")
    @Column(name = "inspection_cycle_code")
    private String inspectionCycleCode;

    /**
     * 本年度应巡检次数
     */
    @ExcelProperty(value = {"本年度应巡检次数","本年度应巡检次数"},index = 4)
    @ApiModelProperty(value = "本年度应巡检次数", name = "inspectionTimesYear", required = true, example = "12")
    @Column(name = "inspection_times_year")
    private Integer inspectionTimesYear;

    /**
     * 本年度已巡检次数
     */
    @ExcelProperty(value = {"本年度已巡检次数","本年度已巡检次数"},index = 5)
    @ApiModelProperty(value = "本年度已巡检次数", name = "inspectionedTimesYear", required = true, example = "10")
    @Column(name = "inspectioned_times_year")
    private Integer inspectionedTimesYear;

    /**
     * 异常设备数量
     */
    @ExcelProperty(value = {"异常设备数量","异常设备数量"},index = 6)
    @ApiModelProperty(value = "异常设备数量", name = "numberAbnormalDevices", required = true, example = "2")
    @Column(name = "number_abnormal_devices")
    private Integer numberAbnormalDevices;

    /**
     * 已报修设备数量
     */
    @ExcelProperty(value = {"已报修设备数量","已报修设备数量"},index = 7)
    @ApiModelProperty(value = "已报修设备数量", name = "numberReportedRepairEquipment", required = true, example = "2")
    @Column(name = "number_reported_repair_equipment")
    private Integer numberReportedRepairEquipment;

    /**
     * 已维修设备数量
     */
    @ExcelProperty(value = {"已维修设备数量","已维修设备数量"},index = 8)
    @ApiModelProperty(value = "已维修设备数量", name = "numberRepairedEquipmen", required = true, example = "2")
    @Column(name = "number_repaired_equipmen")
    private Integer numberRepairedEquipmen;

    /**
     * 创建时间
     */
    @ApiModelProperty(value = "创建时间", name = "createTime", required = true, example = "2020-04-24 18:00:00")
    @Column(name = "create_time")
    private String createTime;

    /**
     * 更新时间
     */
    @ApiModelProperty(value = "更新时间", name = "updateTime", required = true, example = "2020-04-24 18:00:00")
    @Column(name = "update_Time")
    private String updateTime;

    
    /**
     * 创建年份
     */
    @ApiModelProperty(value = "创建年份", name = "createYear", required = true, example = "2020")
    @Column(name = "create_year")
    private String createYear;
    
    public interface InspectionPlanCreateChecks {

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
     * 获取巡检负责人
     *
     * @return person_in_charge - 巡检负责人
     */
    public String getPersonInCharge() {
        return personInCharge;
    }

    /**
     * 设置巡检负责人
     *
     * @param personInCharge 巡检负责人
     */
    public void setPersonInCharge(String personInCharge) {
        this.personInCharge = personInCharge;
    }

    /**
     * 获取巡检负责人编号
     *
     * @return person_in_charge_id - 巡检负责人编号
     */
    public Integer getPersonInChargeId() {
        return personInChargeId;
    }

    /**
     * 设置巡检负责人编号
     *
     * @param personInChargeId 巡检负责人编号
     */
    public void setPersonInChargeId(Integer personInChargeId) {
        this.personInChargeId = personInChargeId;
    }

    /**
     * 获取巡检周期
     *
     * @return inspection_cycle - 巡检周期
     */
    public String getInspectionCycle() {
        return inspectionCycle;
    }

    /**
     * 设置巡检周期
     *
     * @param inspectionCycle 巡检周期
     */
    public void setInspectionCycle(String inspectionCycle) {
        this.inspectionCycle = inspectionCycle;
    }

    /**
     * 获取巡检周期编号
     *
     * @return inspection_cycle_code - 巡检周期编号
     */
    public String getInspectionCycleCode() {
        return inspectionCycleCode;
    }

    /**
     * 设置巡检周期编号
     *
     * @param inspectionCycleCode 巡检周期编号
     */
    public void setInspectionCycleCode(String inspectionCycleCode) {
        this.inspectionCycleCode = inspectionCycleCode;
    }

    /**
     * 获取本年度应巡检次数
     *
     * @return inspection_times_year - 本年度应巡检次数
     */
    public Integer getInspectionTimesYear() {
        return inspectionTimesYear;
    }

    /**
     * 设置本年度应巡检次数
     *
     * @param inspectionTimesYear 本年度应巡检次数
     */
    public void setInspectionTimesYear(Integer inspectionTimesYear) {
        this.inspectionTimesYear = inspectionTimesYear;
    }

    /**
     * 获取本年度已巡检次数
     *
     * @return inspectioned_times_year - 本年度已巡检次数
     */
    public Integer getInspectionedTimesYear() {
        return inspectionedTimesYear;
    }

    /**
     * 设置本年度已巡检次数
     *
     * @param inspectionedTimesYear 本年度已巡检次数
     */
    public void setInspectionedTimesYear(Integer inspectionedTimesYear) {
        this.inspectionedTimesYear = inspectionedTimesYear;
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
     * 获取已维修设备数量
     *
     * @return number_repaired_equipmen - 已维修设备数量
     */
    public Integer getNumberRepairedEquipmen() {
        return numberRepairedEquipmen;
    }

    /**
     * 设置已维修设备数量
     *
     * @param numberRepairedEquipmen 已维修设备数量
     */
    public void setNumberRepairedEquipmen(Integer numberRepairedEquipmen) {
        this.numberRepairedEquipmen = numberRepairedEquipmen;
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
    
    /**
     * 获取创建年份
     *
     * @return create_year - 创建年份
     */
    public String getCreateYear() {
        return createYear;
    }

    /**
     * 设置创建年份
     *
     * @param updateTime 创建年份
     */
    public void setCreateYear(String createYear) {
        this.createYear = createYear;
    }
}