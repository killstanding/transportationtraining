package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_maintenance_record")
@ApiModel(description = "设备维修记录(申请)")
public class MaintenanceRecord extends BaseRowModel{
    /**
     * 设备维修记录编号（系统生成）
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = MaintenanceRecordUpdateChecks.class)
    @ApiModelProperty(value = "设备维修记录编号（系统生成）", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 记录编号（自编）
     */
    @ApiModelProperty(value = "记录编号（自编）", name = "recordId", required = false, example = "MR001")
    @ExcelProperty(value = {"记录编号","记录编号"},index = 0)
    @Column(name = "record_id")
    private String recordId;

    /**
     * 维修记录名称
     */
    @ApiModelProperty(value = "维修记录名称", name = "recordName", required = false, example = "丰田皇冠教具车维修单")
    @ExcelProperty(value = {"维修记录名称","维修记录名称"},index = 1)
    @Column(name = "record_name")
    private String recordName;

    /**
     * 资产id
     */
    @ApiModelProperty(value = "资产编号(系统生成)", name = "assetId", required = false, example = "1")
    @Column(name = "asset_id")
    private Integer assetId;

    /**
     * 资产编号
     */
    @Column(name = "asset_code")
    @ApiModelProperty(value = "资产编号(自编)", name = "assetCode", required = false, example = "1702060002007000104")
    @ExcelProperty(value = {"资产编号","资产编号"},index = 2)
    private String assetCode;


    /**
     * 资产名称
     */
    @ApiModelProperty(value = "资产名称", name = "assetName", required = false, example = "丰田皇冠教具车")
    @ExcelProperty(value = {"资产名称","资产名称"},index = 3)
    @Column(name = "asset_name")
    private String assetName;

    /**
     * 资产分类编号
     */
    @ApiModelProperty(value = "资产分类编号", name = "assetClassificationCode", required = false, example = "1")
    @Column(name = "asset_classification_code")
    private String assetClassificationCode;

    /**
     * 资产分类名称
     */
    @ApiModelProperty(value = "资产分类", name = "assetClassification", required = false, example = "教学用机电实验仪器")
    @ExcelProperty(value = {"资产分类","资产分类"},index = 4)
    @Column(name = "asset_classification")
    private String assetClassification;
    
    /**
     * 流程状态编码
     */
    @ApiModelProperty(value = "流程状态编", name = "flowStatusCode", required = false, example = "em_confirmed")
    @Column(name = "flow_status_code")
    private String flowStatusCode;

    /**
     * 流程状态
     */
    @ApiModelProperty(value = "流程状态", name = "flowStatus", required = false, example = "待确认")
    @ExcelProperty(value = {"流程状态","流程状态"},index = 5)
    @Column(name = "flow_status")
    private String flowStatus;

    /**
     * 维修费用
     */
    @ApiModelProperty(value = "维修费用", name = "maintenanceCosts", required = false, example = "2000")
    @ExcelProperty(value = {"维修费用","维修费用"},index = 6)
    @Column(name = "maintenance_costs")
    private String maintenanceCosts;

    /**
     * 申请人
     */
    @ApiModelProperty(value = "申请人", name = "applicant", required = false, example = "张三")
    @ExcelProperty(value = {"申请人","申请人"},index = 7)
    private String applicant;

    /**
     * 申请人编号
     */
    @ApiModelProperty(value = "申请人编号", name = "applicant", required = false, example = "1")
    @Column(name = "applicant_id")
    private Integer applicantId;

    /**
     * 申请人部门
     */
    @ApiModelProperty(value = "申请人部门", name = "applicantDepartment", required = false, example = "汽车工程系")
    @ExcelProperty(value = {"申请人部门","申请人部门"},index = 8)
    @Column(name = "applicant_department")
    private String applicantDepartment;

    /**
     * 申请人部门编号
     */
    @ApiModelProperty(value = "申请人部门编号", name = "applicantDepartmentId", required = false, example = "1")
    @Column(name = "applicant_department_id")
    private Integer applicantDepartmentId;

    /**
     * 位置编号
     */
    @ApiModelProperty(value = "位置编号", name = "positionCode", required = false, example = "1")
    @Column(name = "position_code")
    private String positionCode;

    /**
     * 位置名称
     */
    @ApiModelProperty(value = "位置名称", name = "positionName", required = false, example = "田T-TEP整车实训区")
    @ExcelProperty(value = {"位置名称","位置名称"},index = 9)
    @Column(name = "position_name")
    private String positionName;

    /**
     * 故障发生时间
     */
    @ApiModelProperty(value = "故障发生时间", name = "failureTime", required = false, example = "2020-05-11 00:00:00")
    @ExcelProperty(value = {"故障发生时间","故障发生时间"},index = 10)
    @Column(name = "failure_time")
    private String failureTime;

    /**
     * 故障描述
     */
    @ApiModelProperty(value = "故障描述", name = "faultDescription", required = false, example = "无法开机")
    @ExcelProperty(value = {"故障描述","故障描述"},index = 11)
    @Column(name = "fault_description")
    private String faultDescription;

    /**
     * 附件名称
     */
    @ApiModelProperty(value = "附件名称", name = "attachmentName", required = false, example = "问题截图")
    @ExcelProperty(value = {"附件名称","附件名称"},index = 12)
    @Column(name = "attachment_name")
    private String attachmentName;

    /**
     * 附件下载地址
     */
    @ApiModelProperty(value = "附件下载地址", name = "attachmentPath", required = false, example = "/img/1.png")
    @ExcelProperty(value = {"附件下载地址","附件下载地址"},index = 13)
    @Column(name = "attachment_path")
    private String attachmentPath;


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
     * 创建年份
     */
    @ApiModelProperty(value = "创建年份", name = "createYear", required = false, example = "2020")
    @Column(name = "create_year")
    private String createYear;
    
    /**
     * 待处理人
     */
    @ApiModelProperty(value = "待处理人", name = "pendingPerson", required = false, example = "admin")
    @ExcelProperty(value = {"待处理人","待处理人"},index = 9)
    @Column(name = "pending_person")
    private String pendingPerson;

    /**
     * 待处理人编号
     */
    @ApiModelProperty(value = "待处理人编号", name = "pendingPersonId", required = false, example = "1")
    @Column(name = "pending_person_id")
    private Integer pendingPersonId;
    
    
    
    public interface MaintenanceRecordCreateChecks {}

    public interface MaintenanceRecordUpdateChecks {}
    
    
    /**
     * 获取设备维修记录编号（系统生成）
     *
     * @return id - 设备维修记录编号（系统生成）
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置设备维修记录编号（系统生成）
     *
     * @param id 设备维修记录编号（系统生成）
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取记录编号（自编）
     *
     * @return record_id - 记录编号（自编）
     */
    public String getRecordId() {
        return recordId;
    }

    /**
     * 设置记录编号（自编）
     *
     * @param recordId 记录编号（自编）
     */
    public void setRecordId(String recordId) {
        this.recordId = recordId;
    }

    /**
     * 获取维修记录名称
     *
     * @return record_name - 维修记录名称
     */
    public String getRecordName() {
        return recordName;
    }

    /**
     * 设置维修记录名称
     *
     * @param recordName 维修记录名称
     */
    public void setRecordName(String recordName) {
        this.recordName = recordName;
    }

    /**
     * 获取资产id
     *
     * @return asset_id - 资产id
     */
    public Integer getAssetId() {
        return assetId;
    }

    /**
     * 设置资产id
     *
     * @param assetId 资产id
     */
    public void setAssetId(Integer assetId) {
        this.assetId = assetId;
    }

    /**
     * 获取资产编号
     *
     * @return asset_code - 资产编号
     */
    public String getAssetCode() {
        return assetCode;
    }

    /**
     * 设置资产编号
     *
     * @param assetCode 资产编号
     */
    public void setAssetCode(String assetCode) {
        this.assetCode = assetCode;
    }

    /**
     * 获取资产名称
     *
     * @return asset_name - 资产名称
     */
    public String getAssetName() {
        return assetName;
    }

    /**
     * 设置资产名称
     *
     * @param assetName 资产名称
     */
    public void setAssetName(String assetName) {
        this.assetName = assetName;
    }

    /**
     * 获取资产分类编号
     *
     * @return asset_classification_code - 资产分类编号
     */
    public String getAssetClassificationCode() {
        return assetClassificationCode;
    }

    /**
     * 设置资产分类编号
     *
     * @param assetClassificationCode 资产分类编号
     */
    public void setAssetClassificationCode(String assetClassificationCode) {
        this.assetClassificationCode = assetClassificationCode;
    }

    /**
     * 获取资产分类名称
     *
     * @return asset_classification - 资产分类名称
     */
    public String getAssetClassification() {
        return assetClassification;
    }

    /**
     * 设置资产分类名称
     *
     * @param assetClassification 资产分类名称
     */
    public void setAssetClassification(String assetClassification) {
        this.assetClassification = assetClassification;
    }

    /**
     * 获取流程状态编码
     *
     * @return flow_status_code - 流程状态编码
     */
    public String getFlowStatusCode() {
        return flowStatusCode;
    }

    /**
     * 设置流程状态编码
     *
     * @param flowStatusCode 流程状态编码
     */
    public void setFlowStatusCode(String flowStatusCode) {
        this.flowStatusCode = flowStatusCode;
    }

    /**
     * 获取流程状态
     *
     * @return flow_status - 流程状态
     */
    public String getFlowStatus() {
        return flowStatus;
    }

    /**
     * 设置流程状态
     *
     * @param flowStatus 流程状态
     */
    public void setFlowStatus(String flowStatus) {
        this.flowStatus = flowStatus;
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
     * 获取申请人
     *
     * @return applicant - 申请人
     */
    public String getApplicant() {
        return applicant;
    }

    /**
     * 设置申请人
     *
     * @param applicant 申请人
     */
    public void setApplicant(String applicant) {
        this.applicant = applicant;
    }

    /**
     * 获取申请人编号
     *
     * @return applicant_id - 申请人编号
     */
    public Integer getApplicantId() {
        return applicantId;
    }

    /**
     * 设置申请人编号
     *
     * @param applicantId 申请人编号
     */
    public void setApplicantId(Integer applicantId) {
        this.applicantId = applicantId;
    }

    /**
     * 获取申请人部门
     *
     * @return applicant_department - 申请人部门
     */
    public String getApplicantDepartment() {
        return applicantDepartment;
    }

    /**
     * 设置申请人部门
     *
     * @param applicantDepartment 申请人部门
     */
    public void setApplicantDepartment(String applicantDepartment) {
        this.applicantDepartment = applicantDepartment;
    }

    /**
     * 获取申请人部门编号
     *
     * @return applicant_department_id - 申请人部门编号
     */
    public Integer getApplicantDepartmentId() {
        return applicantDepartmentId;
    }

    /**
     * 设置申请人部门编号
     *
     * @param applicantDepartmentId 申请人部门编号
     */
    public void setApplicantDepartmentId(Integer applicantDepartmentId) {
        this.applicantDepartmentId = applicantDepartmentId;
    }

    /**
     * 获取位置编号
     *
     * @return position_code - 位置编号
     */
    public String getPositionCode() {
        return positionCode;
    }

    /**
     * 设置位置编号
     *
     * @param positionCode 位置编号
     */
    public void setPositionCode(String positionCode) {
        this.positionCode = positionCode;
    }

    /**
     * 获取位置名称
     *
     * @return position_name - 位置名称
     */
    public String getPositionName() {
        return positionName;
    }

    /**
     * 设置位置名称
     *
     * @param positionName 位置名称
     */
    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }

    /**
     * 获取故障发生时间
     *
     * @return failure_time - 故障发生时间
     */
    public String getFailureTime() {
        return failureTime;
    }

    /**
     * 设置故障发生时间
     *
     * @param failureTime 故障发生时间
     */
    public void setFailureTime(String failureTime) {
        this.failureTime = failureTime;
    }

    /**
     * 获取故障描述
     *
     * @return fault_description - 故障描述
     */
    public String getFaultDescription() {
        return faultDescription;
    }

    /**
     * 设置故障描述
     *
     * @param faultDescription 故障描述
     */
    public void setFaultDescription(String faultDescription) {
        this.faultDescription = faultDescription;
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
     * @param createYear 创建年份
     */
    public void setCreateYear(String createYear) {
        this.createYear = createYear;
    }
    

    /**
     * 获取待处理人
     *
     * @return pending_person - 待处理人
     */
    public String getPendingPerson() {
        return pendingPerson;
    }

    /**
     * 设置待处理人
     *
     * @param pendingPerson 待处理人
     */
    public void setPendingPerson(String pendingPerson) {
        this.pendingPerson = pendingPerson;
    }

    /**
     * 获取待处理人编号
     *
     * @return pending_person_id - 待处理人编号
     */
    public Integer getPendingPersonId() {
        return pendingPersonId;
    }

    /**
     * 设置待处理人编号
     *
     * @param pendingPersonId 待处理人编号
     */
    public void setPendingPersonId(Integer pendingPersonId) {
        this.pendingPersonId = pendingPersonId;
    }
}