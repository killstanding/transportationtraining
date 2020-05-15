package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "流程记录")
@Table(name = "t_flow_detail")
public class FlowDetail extends BaseRowModel{
    /**
     * 流程记录编号
     */
    @Id
    @NotNull(groups = FlowDetailUpdateChecks.class)
    @ApiModelProperty(value = "流程记录编号（系统生成）", name = "id", required = false, example = "1")
    @ExcelProperty(value = {"记录编号","记录编号"},index = 0)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 人员名称
     */
    @ApiModelProperty(value = "人员名称", name = "personName", required = false, example = "张三")
    @ExcelProperty(value = {"人员名称","人员名称"},index = 1)
    @Column(name = "person_name")
    private String personName;

    /**
     * 人员编号
     */
    @ApiModelProperty(value = "人员编号", name = "personId", required = false, example = "1")
    @Column(name = "person_id")
    private Integer personId;

    /**
     * 角色名称
     */
    @ApiModelProperty(value = "角色名称", name = "roleName", required = false, example = "汽车系教师")
    @ExcelProperty(value = {"角色名称","角色名称"},index = 2)
    @Column(name = "role_name")
    private String roleName;

    /**
     * 角色编号
     */
    @ApiModelProperty(value = "角色编号", name = "roleId", required = false, example = "1")
    @Column(name = "role_id")
    private Integer roleId;

    /**
     * 处理内容
     */
    @ApiModelProperty(value = "处理内容", name = "processingContent", required = false, example = "填写设备维修单")
    @ExcelProperty(value = {"处理内容","处理内容"},index = 3)
    @Column(name = "processing_content")
    private String processingContent;

    /**
     * 处理日期
     */
    @ApiModelProperty(value = "处理日期", name = "processingDate", required = false, example = "2019-03-30")
    @ExcelProperty(value = {"处理日期","处理日期"},index = 4)
    @Column(name = "processing_date")
    private String processingDate;

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
     * 流程编号
     */
    @ApiModelProperty(value = "流程编号", name = "flowId", required = false, example = "1")
    @Column(name = "flow_id")
    private Integer flowId;

    /**
     * 流程类型 维修记录 领用记录
     */
    @ApiModelProperty(value = "流程类型 维修记录 领用记录", name = "flowType", required = false, example = "设备维修")
    @Column(name = "flow_type")
    private String flowType;

    /**
     * 流程类型编号
     */
    @ApiModelProperty(value = "流程类型编号", name = "flowTypeCode", required = false, example = "equipment_maintenance")
    @Column(name = "flow_type_code")
    private String flowTypeCode;

    public interface FlowDetailCreateChecks {}

    public interface FlowDetailUpdateChecks {}
    
    /**
     * 获取流程记录编号
     *
     * @return id - 流程记录编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置流程记录编号
     *
     * @param id 流程记录编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取人员名称
     *
     * @return person_name - 人员名称
     */
    public String getPersonName() {
        return personName;
    }

    /**
     * 设置人员名称
     *
     * @param personName 人员名称
     */
    public void setPersonName(String personName) {
        this.personName = personName;
    }

    /**
     * 获取人员编号
     *
     * @return person_id - 人员编号
     */
    public Integer getPersonId() {
        return personId;
    }

    /**
     * 设置人员编号
     *
     * @param personId 人员编号
     */
    public void setPersonId(Integer personId) {
        this.personId = personId;
    }

    /**
     * 获取角色名称
     *
     * @return role_name - 角色名称
     */
    public String getRoleName() {
        return roleName;
    }

    /**
     * 设置角色名称
     *
     * @param roleName 角色名称
     */
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    /**
     * 获取角色编号
     *
     * @return role_id - 角色编号
     */
    public Integer getRoleId() {
        return roleId;
    }

    /**
     * 设置角色编号
     *
     * @param roleId 角色编号
     */
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    /**
     * 获取处理内容
     *
     * @return processing_content - 处理内容
     */
    public String getProcessingContent() {
        return processingContent;
    }

    /**
     * 设置处理内容
     *
     * @param processingContent 处理内容
     */
    public void setProcessingContent(String processingContent) {
        this.processingContent = processingContent;
    }

    /**
     * 获取处理日期
     *
     * @return processing_date - 处理日期
     */
    public String getProcessingDate() {
        return processingDate;
    }

    /**
     * 设置处理日期
     *
     * @param processingDate 处理日期
     */
    public void setProcessingDate(String processingDate) {
        this.processingDate = processingDate;
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
     * 获取流程编号
     *
     * @return flow_id - 流程编号
     */
    public Integer getFlowId() {
        return flowId;
    }

    /**
     * 设置流程编号
     *
     * @param flowId 流程编号
     */
    public void setFlowId(Integer flowId) {
        this.flowId = flowId;
    }

    /**
     * 获取流程类型 维修记录 领用记录
     *
     * @return flow_type - 流程类型 维修记录 领用记录
     */
    public String getFlowType() {
        return flowType;
    }

    /**
     * 设置流程类型 维修记录 领用记录
     *
     * @param flowType 流程类型 维修记录 领用记录
     */
    public void setFlowType(String flowType) {
        this.flowType = flowType;
    }

    /**
     * 获取流程类型编号
     *
     * @return flow_type_code - 流程类型编号
     */
    public String getFlowTypeCode() {
        return flowTypeCode;
    }

    /**
     * 设置流程类型编号
     *
     * @param flowTypeCode 流程类型编号
     */
    public void setFlowTypeCode(String flowTypeCode) {
        this.flowTypeCode = flowTypeCode;
    }
}