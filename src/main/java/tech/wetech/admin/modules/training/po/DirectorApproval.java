package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "主任审批")
@Table(name = "t_director_approval")
public class DirectorApproval {
    /**
     * 主任审批编号
     */
    @Id
    @NotNull(groups = DirectorApprovalUpdateChecks.class)
    @ApiModelProperty(value = "流主任审批编号（系统生成）", name = "id", required = false, example = "1")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 审批人
     */
    @ApiModelProperty(value = "审批人", name = "approver", required = false, example = "李四")
    private String approver;

    /**
     * 审批人编号
     */
    @ApiModelProperty(value = "审批人编号", name = "approverId", required = false, example = "1")
    @Column(name = "approver_id")
    private Integer approverId;

    /**
     * 审批部门
     */
    @ApiModelProperty(value = "审批部门", name = "approvalDepartment", required = false, example = "实训管理部")
    @Column(name = "approval_department")
    private String approvalDepartment;

    /**
     * 审批部门编号
     */
    @ApiModelProperty(value = "审批部门编号", name = "approvalDepartmentId", required = false, example = "1")
    @Column(name = "approval_department_id")
    private Integer approvalDepartmentId;

    /**
     * 是否通过  0 不通过 1通过
     */
    @ApiModelProperty(value = "是否通过  0 不通过 1通过", name = "passOrNot", required = false, example = "1")
    @Column(name = "pass_or_not")
    private Integer passOrNot;

    /**
     * 审批意见
     */
    @ApiModelProperty(value = "审批意见", name = "approvalComments", required = false, example = "无")
    @Column(name = "approval_comments")
    private String approvalComments;

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
    

    public interface DirectorApprovalCreateChecks {}

    public interface DirectorApprovalUpdateChecks {}
    
    /**
     * 获取主任审批编号
     *
     * @return id - 主任审批编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置主任审批编号
     *
     * @param id 主任审批编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取审批人
     *
     * @return approver - 审批人
     */
    public String getApprover() {
        return approver;
    }

    /**
     * 设置审批人
     *
     * @param approver 审批人
     */
    public void setApprover(String approver) {
        this.approver = approver;
    }

    /**
     * 获取审批人编号
     *
     * @return approver_id - 审批人编号
     */
    public Integer getApproverId() {
        return approverId;
    }

    /**
     * 设置审批人编号
     *
     * @param approverId 审批人编号
     */
    public void setApproverId(Integer approverId) {
        this.approverId = approverId;
    }

    /**
     * 获取审批部门
     *
     * @return approval_department - 审批部门
     */
    public String getApprovalDepartment() {
        return approvalDepartment;
    }

    /**
     * 设置审批部门
     *
     * @param approvalDepartment 审批部门
     */
    public void setApprovalDepartment(String approvalDepartment) {
        this.approvalDepartment = approvalDepartment;
    }

    /**
     * 获取审批部门编号
     *
     * @return approval_department_id - 审批部门编号
     */
    public Integer getApprovalDepartmentId() {
        return approvalDepartmentId;
    }

    /**
     * 设置审批部门编号
     *
     * @param approvalDepartmentId 审批部门编号
     */
    public void setApprovalDepartmentId(Integer approvalDepartmentId) {
        this.approvalDepartmentId = approvalDepartmentId;
    }

    /**
     * 获取是否通过  0 不通过 1通过
     *
     * @return pass_or_not - 是否通过  0 不通过 1通过
     */
    public Integer getPassOrNot() {
        return passOrNot;
    }

    /**
     * 设置是否通过  0 不通过 1通过
     *
     * @param passOrNot 是否通过  0 不通过 1通过
     */
    public void setPassOrNot(Integer passOrNot) {
        this.passOrNot = passOrNot;
    }

    /**
     * 获取审批意见
     *
     * @return approval_comments - 审批意见
     */
    public String getApprovalComments() {
        return approvalComments;
    }

    /**
     * 设置审批意见
     *
     * @param approvalComments 审批意见
     */
    public void setApprovalComments(String approvalComments) {
        this.approvalComments = approvalComments;
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