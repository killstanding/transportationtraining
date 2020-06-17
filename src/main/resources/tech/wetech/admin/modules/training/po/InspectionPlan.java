package tech.wetech.admin.modules.training.po;

import javax.persistence.*;

@Table(name = "t_inspection_plan")
public class InspectionPlan {
    /**
     * 巡检计划编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 实训室编号
     */
    @Column(name = "room_id")
    private Integer roomId;

    /**
     * 实训室名称
     */
    @Column(name = "room_name")
    private String roomName;

    /**
     * 巡检人
     */
    private String inspector;

    /**
     * 巡检人编号
     */
    @Column(name = "inspector_id")
    private Integer inspectorId;

    /**
     * 本次巡检设备数
     */
    @Column(name = "normal_devices_in_inspection")
    private Integer normalDevicesInInspection;

    /**
     * 正常设备数量
     */
    @Column(name = "number_normal_devices")
    private Integer numberNormalDevices;

    /**
     * 异常设备数量
     */
    @Column(name = "number_abnormal_devices")
    private Integer numberAbnormalDevices;

    /**
     * 已报修设备数量
     */
    @Column(name = "number_reported_repair_equipment")
    private Integer numberReportedRepairEquipment;

    /**
     * 巡检时间
     */
    @Column(name = "inspection_time")
    private String inspectionTime;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private String createTime;

    /**
     * 更新时间
     */
    @Column(name = "update_time")
    private String updateTime;

    /**
     * 巡检状态 0 正常 1 异常
     */
    @Column(name = "inspection_status")
    private String inspectionStatus;

    /**
     * 年度巡检计划编号
     */
    @Column(name = "plan_year_id")
    private Integer planYearId;

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
     * 获取巡检人编号
     *
     * @return inspector_id - 巡检人编号
     */
    public Integer getInspectorId() {
        return inspectorId;
    }

    /**
     * 设置巡检人编号
     *
     * @param inspectorId 巡检人编号
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

    /**
     * 获取巡检状态 0 正常 1 异常
     *
     * @return inspection_status - 巡检状态 0 正常 1 异常
     */
    public String getInspectionStatus() {
        return inspectionStatus;
    }

    /**
     * 设置巡检状态 0 正常 1 异常
     *
     * @param inspectionStatus 巡检状态 0 正常 1 异常
     */
    public void setInspectionStatus(String inspectionStatus) {
        this.inspectionStatus = inspectionStatus;
    }

    /**
     * 获取年度巡检计划编号
     *
     * @return plan_year_id - 年度巡检计划编号
     */
    public Integer getPlanYearId() {
        return planYearId;
    }

    /**
     * 设置年度巡检计划编号
     *
     * @param planYearId 年度巡检计划编号
     */
    public void setPlanYearId(Integer planYearId) {
        this.planYearId = planYearId;
    }
}