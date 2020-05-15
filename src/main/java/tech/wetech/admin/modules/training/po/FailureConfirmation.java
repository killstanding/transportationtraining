package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


@ApiModel(description = "故障确认")
@Table(name = "t_failure_confirmation")
public class FailureConfirmation {
    /**
     * 故障确认编号
     */
    @Id
    @NotNull(groups = FailureConfirmationUpdateChecks.class)
    @ApiModelProperty(value = "故障确认编号（系统生成）", name = "id", required = false, example = "1")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 故障确认人
     */
    @ApiModelProperty(value = "故障确认人", name = "confirmingPerson", required = false, example = "李四")
    @Column(name = "confirming_person")
    private String confirmingPerson;

    /**
     * 故障确认人编号
     */
    @ApiModelProperty(value = "故障确认人编号", name = "confirmingPersonId", required = false, example = "1")
    @Column(name = "confirming_person_id")
    private Integer confirmingPersonId;

    /**
     * 确认部门
     */
    @ApiModelProperty(value = "确认部门", name = "confirmationDepartment", required = false, example = "实训管理部")
    @Column(name = "confirmation_department")
    private String confirmationDepartment;

    /**
     * 确认部门编号
     */
    @ApiModelProperty(value = "确认部门编号", name = "confirmationDepartmentId", required = false, example = "1")
    @Column(name = "confirmation_department_id")
    private Integer confirmationDepartmentId;

    /**
     * 是否需要维修 1 是 0 否
     */
    @ApiModelProperty(value = "是否需要维修 1 是 0 否", name = "repairRequired", required = false, example = "1")
    @Column(name = "repair_required")
    private Integer repairRequired;

    /**
     * 维修费用预估
     */
    @ApiModelProperty(value = "维修费用预估", name = "maintenanceCostEstimate", required = false, example = "2000")
    @Column(name = "maintenance_cost_estimate")
    private String maintenanceCostEstimate;

    /**
     * 维修类型
     */
    @ApiModelProperty(value = "维修类型", name = "maintenanceType", required = false, example = "上门维修")
    @Column(name = "maintenance_type")
    private String maintenanceType;

    /**
     * 维修类型编号
     */
    @ApiModelProperty(value = "维修类型编号", name = "maintenanceTypeCode", required = false, example = "1")
    @Column(name = "maintenance_type_code")
    private String maintenanceTypeCode;

    /**
     * 维修配合单位
     */
    @ApiModelProperty(value = "维修配合单位", name = "maintenanceCooperationUnit", required = false, example = "xx公司")
    @Column(name = "maintenance_cooperation_unit")
    private String maintenanceCooperationUnit;

    /**
     * 维修配合单位编号
     */
    @ApiModelProperty(value = "维修配合单位编号", name = "maintenanceCooperationUnitId", required = false, example = "111")
    @Column(name = "maintenance_cooperation_unit_id")
    private Integer maintenanceCooperationUnitId;

    /**
     * 备注
     */
    @ApiModelProperty(value = "remark", name = "remark", required = false, example = "无")
    private String remark;

    /**
     * 附件名称
     */
    @ApiModelProperty(value = "附件名称", name = "attachmentName", required = false, example = "问题截图")
    @Column(name = "attachment_name")
    private String attachmentName;

    /**
     * 附件下载地址
     */
    @ApiModelProperty(value = "附件下载地址", name = "attachmentPath", required = false, example = "/img/1.png")
    @Column(name = "attachment_path")
    private String attachmentPath;

    /**
     * 维修申请编号
     */
    @ApiModelProperty(value = "维修申请编号", name = "recordId", required = false, example = "1")
    @Column(name = "record_id")
    private Integer recordId;

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
    

    public interface FailureConfirmationCreateChecks {}

    public interface FailureConfirmationUpdateChecks {}
    
    
    /**
     * 获取故障确认编号
     *
     * @return id - 故障确认编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置故障确认编号
     *
     * @param id 故障确认编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取故障确认人
     *
     * @return confirming_person - 故障确认人
     */
    public String getConfirmingPerson() {
        return confirmingPerson;
    }

    /**
     * 设置故障确认人
     *
     * @param confirmingPerson 故障确认人
     */
    public void setConfirmingPerson(String confirmingPerson) {
        this.confirmingPerson = confirmingPerson;
    }

    /**
     * 获取故障确认人编号
     *
     * @return confirming_person_id - 故障确认人编号
     */
    public Integer getConfirmingPersonId() {
        return confirmingPersonId;
    }

    /**
     * 设置故障确认人编号
     *
     * @param confirmingPersonId 故障确认人编号
     */
    public void setConfirmingPersonId(Integer confirmingPersonId) {
        this.confirmingPersonId = confirmingPersonId;
    }

    /**
     * 获取确认部门
     *
     * @return confirmation_department - 确认部门
     */
    public String getConfirmationDepartment() {
        return confirmationDepartment;
    }

    /**
     * 设置确认部门
     *
     * @param confirmationDepartment 确认部门
     */
    public void setConfirmationDepartment(String confirmationDepartment) {
        this.confirmationDepartment = confirmationDepartment;
    }

    /**
     * 获取确认部门编号
     *
     * @return confirmation_department_id - 确认部门编号
     */
    public Integer getConfirmationDepartmentId() {
        return confirmationDepartmentId;
    }

    /**
     * 设置确认部门编号
     *
     * @param confirmationDepartmentId 确认部门编号
     */
    public void setConfirmationDepartmentId(Integer confirmationDepartmentId) {
        this.confirmationDepartmentId = confirmationDepartmentId;
    }

    /**
     * 获取是否需要维修 1 是 0 否
     *
     * @return repair_required - 是否需要维修 1 是 0 否
     */
    public Integer getRepairRequired() {
        return repairRequired;
    }

    /**
     * 设置是否需要维修 1 是 0 否
     *
     * @param repairRequired 是否需要维修 1 是 0 否
     */
    public void setRepairRequired(Integer repairRequired) {
        this.repairRequired = repairRequired;
    }

    /**
     * 获取维修费用预估
     *
     * @return maintenance_cost_estimate - 维修费用预估
     */
    public String getMaintenanceCostEstimate() {
        return maintenanceCostEstimate;
    }

    /**
     * 设置维修费用预估
     *
     * @param maintenanceCostEstimate 维修费用预估
     */
    public void setMaintenanceCostEstimate(String maintenanceCostEstimate) {
        this.maintenanceCostEstimate = maintenanceCostEstimate;
    }

    /**
     * 获取维修类型
     *
     * @return maintenance_type - 维修类型
     */
    public String getMaintenanceType() {
        return maintenanceType;
    }

    /**
     * 设置维修类型
     *
     * @param maintenanceType 维修类型
     */
    public void setMaintenanceType(String maintenanceType) {
        this.maintenanceType = maintenanceType;
    }

    /**
     * 获取维修类型编号
     *
     * @return maintenance_type_code - 维修类型编号
     */
    public String getMaintenanceTypeCode() {
        return maintenanceTypeCode;
    }

    /**
     * 设置维修类型编号
     *
     * @param maintenanceTypeCode 维修类型编号
     */
    public void setMaintenanceTypeCode(String maintenanceTypeCode) {
        this.maintenanceTypeCode = maintenanceTypeCode;
    }

    /**
     * 获取维修配合单位
     *
     * @return maintenance_cooperation_unit - 维修配合单位
     */
    public String getMaintenanceCooperationUnit() {
        return maintenanceCooperationUnit;
    }

    /**
     * 设置维修配合单位
     *
     * @param maintenanceCooperationUnit 维修配合单位
     */
    public void setMaintenanceCooperationUnit(String maintenanceCooperationUnit) {
        this.maintenanceCooperationUnit = maintenanceCooperationUnit;
    }

    /**
     * 获取维修配合单位编号
     *
     * @return maintenance_cooperation_unit_id - 维修配合单位编号
     */
    public Integer getMaintenanceCooperationUnitId() {
        return maintenanceCooperationUnitId;
    }

    /**
     * 设置维修配合单位编号
     *
     * @param maintenanceCooperationUnitId 维修配合单位编号
     */
    public void setMaintenanceCooperationUnitId(Integer maintenanceCooperationUnitId) {
        this.maintenanceCooperationUnitId = maintenanceCooperationUnitId;
    }

    /**
     * 获取备注
     *
     * @return remark - 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 设置备注
     *
     * @param remark 备注
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    /**
     * 获取附件名称
     *
     * @return attachment_name - 附件名称
     */
    public String getAttachmentName() {
        return attachmentName;
    }

    /**
     * 设置附件名称
     *
     * @param attachmentName 附件名称
     */
    public void setAttachmentName(String attachmentName) {
        this.attachmentName = attachmentName;
    }

    /**
     * 获取附件下载地址
     *
     * @return attachment_path - 附件下载地址
     */
    public String getAttachmentPath() {
        return attachmentPath;
    }

    /**
     * 设置附件下载地址
     *
     * @param attachmentPath 附件下载地址
     */
    public void setAttachmentPath(String attachmentPath) {
        this.attachmentPath = attachmentPath;
    }

    /**
     * 获取维修申请编号
     *
     * @return record_id - 维修申请编号
     */
    public Integer getRecordId() {
        return recordId;
    }

    /**
     * 设置维修申请编号
     *
     * @param recordId 维修申请编号
     */
    public void setRecordId(Integer recordId) {
        this.recordId = recordId;
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