package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


@ApiModel(description = "维修记录结果")
@Table(name = "t_maintenance_record_results")
public class MaintenanceRecordResults {
    /**
     * 维修记录结果编号
     */
    @Id
    @NotNull(groups = MaintenanceRecordResultsUpdateChecks.class)
    @ApiModelProperty(value = "维修记录结果编号", name = "id", required = false, example = "1")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 记录人
     */
    @ApiModelProperty(value = "记录人", name = "recordPerson", required = false, example = "李四")
    @Column(name = "record_person")
    private String recordPerson;

    /**
     * 记录人编号
     */
    @ApiModelProperty(value = "记录人编号", name = "recordPersonId", required = false, example = "1")
    @Column(name = "record_person_id")
    private Integer recordPersonId;

    /**
     * 记录部门
     */
    @ApiModelProperty(value = "记录部门", name = "recordDepartment", required = false, example = "实训管理部")
    @Column(name = "record_department")
    private String recordDepartment;

    /**
     * 记录部门编号
     */
    @ApiModelProperty(value = "记录部门编号", name = "recordDepartmentId", required = false, example = "1")
    @Column(name = "record_department_id")
    private Integer recordDepartmentId;

    /**
     * 是否修好 0 否 1 是
     */
    @ApiModelProperty(value = "是否修好 0 否 1 是", name = "isRepaired", required = false, example = "1")
    @Column(name = "is_repaired")
    private Integer isRepaired;

    /**
     * 维修费用
     */
    @ApiModelProperty(value = "维修费用", name = "maintenanceCosts", required = false, example = "2000")
    @Column(name = "maintenance_costs")
    private String maintenanceCosts;

    /**
     * 备注
     */
    @ApiModelProperty(value = "remark", name = "remark", required = false, example = "无")
    private String remark;

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
    
    /**
     * 设备状态
     */
    @ApiModelProperty(value = "设备状态", name = "assetStatus", required = false, example = "正常")
    @Column(name = "asset_status")
    private String assetStatus;

    /**
     * 设备状态编号
     */
    @ApiModelProperty(value = "设备状态编号", name = "assetStatusCode", required = false, example = "asset_status_normal")
    @Column(name = "asset_status_code")
    private String assetStatusCode;
    
    public interface MaintenanceRecordResultsCreateChecks {}

    public interface MaintenanceRecordResultsUpdateChecks {}
    
    /**
     * 获取维修记录结果编号
     *
     * @return id - 维修记录结果编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置维修记录结果编号
     *
     * @param id 维修记录结果编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取记录人
     *
     * @return record_person - 记录人
     */
    public String getRecordPerson() {
        return recordPerson;
    }

    /**
     * 设置记录人
     *
     * @param recordPerson 记录人
     */
    public void setRecordPerson(String recordPerson) {
        this.recordPerson = recordPerson;
    }

    /**
     * 获取记录人编号
     *
     * @return record_person_id - 记录人编号
     */
    public Integer getRecordPersonId() {
        return recordPersonId;
    }

    /**
     * 设置记录人编号
     *
     * @param recordPersonId 记录人编号
     */
    public void setRecordPersonId(Integer recordPersonId) {
        this.recordPersonId = recordPersonId;
    }

    /**
     * 获取记录部门
     *
     * @return record_department - 记录部门
     */
    public String getRecordDepartment() {
        return recordDepartment;
    }

    /**
     * 设置记录部门
     *
     * @param recordDepartment 记录部门
     */
    public void setRecordDepartment(String recordDepartment) {
        this.recordDepartment = recordDepartment;
    }

    /**
     * 获取记录部门编号
     *
     * @return record_department_id - 记录部门编号
     */
    public Integer getRecordDepartmentId() {
        return recordDepartmentId;
    }

    /**
     * 设置记录部门编号
     *
     * @param recordDepartmentId 记录部门编号
     */
    public void setRecordDepartmentId(Integer recordDepartmentId) {
        this.recordDepartmentId = recordDepartmentId;
    }

    /**
     * 获取是否修好 0 否 1 是
     *
     * @return is_repaired - 是否修好 0 否 1 是
     */
    public Integer getIsRepaired() {
        return isRepaired;
    }

    /**
     * 设置是否修好 0 否 1 是
     *
     * @param isRepaired 是否修好 0 否 1 是
     */
    public void setIsRepaired(Integer isRepaired) {
        this.isRepaired = isRepaired;
    }

    /**
     * 获取维修费用
     *
     * @return maintenance_costs - 维修费用
     */
    public String getMaintenanceCosts() {
        return maintenanceCosts;
    }

    /**
     * 设置维修费用
     *
     * @param maintenanceCosts 维修费用
     */
    public void setMaintenanceCosts(String maintenanceCosts) {
        this.maintenanceCosts = maintenanceCosts;
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
    
    /**
     * 获取设备状态
     *
     * @return asset_status - 设备状态
     */
    public String getAssetStatus() {
        return assetStatus;
    }

    /**
     * 设置设备状态
     *
     * @param assetStatus 设备状态
     */
    public void setAssetStatus(String assetStatus) {
        this.assetStatus = assetStatus;
    }

    /**
     * 获取设备状态编码
     *
     * @return asset_status_code - 设备状态编码
     */
    public String getAssetStatusCode() {
        return assetStatusCode;
    }

    /**
     * 设置设备状态编码
     *
     * @param assetStatusCode 设备状态编码
     */
    public void setAssetStatusCode(String assetStatusCode) {
        this.assetStatusCode = assetStatusCode;
    }
}