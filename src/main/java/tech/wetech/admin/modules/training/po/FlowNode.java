package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "流程节点")
@Table(name = "t_flow_node")
public class FlowNode {
    /**
     * 流程节点记录
     */
    @Id
    @NotNull(groups = FlowNodeUpdateChecks.class)
    @ApiModelProperty(value = "流程节点记录编号（系统生成）", name = "id", required = false, example = "1")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 流程节点名称
     */
    @ApiModelProperty(value = "流程节点名称", name = "flowNodeName", required = false, example = "填写设备维修单")
    @Column(name = "flow_node_name")
    private String flowNodeName;

    /**
     * 流程节点编号
     */
    @ApiModelProperty(value = "流程节点编号", name = "flowNodeCode", required = false, example = "em_write")
    @Column(name = "flow_node_code")
    private String flowNodeCode;

    /**
     * 流程类型名称
     */
    @ApiModelProperty(value = "流程类型名称", name = "flowTypeName", required = false, example = "设备维修")
    @Column(name = "flow_type_name")
    private String flowTypeName;

    /**
     * 流程类型编号
     */
    @ApiModelProperty(value = "流程类型编号", name = "flowTypeCode", required = false, example = "equipment_maintenance")
    @Column(name = "flow_type_code")
    private String flowTypeCode;

    /**
     * 流程节点顺序
     */
    @ApiModelProperty(value = "流程节点顺序", name = "flowNodeOrder", required = false, example = "1")
    @Column(name = "flow_node_order")
    private Integer flowNodeOrder;

    /**
     * 备注
     */
    @ApiModelProperty(value = "备注", name = "remark", required = false, example = "填写设备维修单")
    private String remark;


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
     * 角色编号
     */
    @ApiModelProperty(value = "角色编号", name = "roleId", required = false, example = "1")
    @Column(name = "role_id")
    private Integer roleId;

    /**
     * 角色名称
     */
    @ApiModelProperty(value = "角色名称", name = "roleName", required = false, example = "admin")
    @Column(name = "role_name")
    private String roleName;

    public interface FlowNodeCreateChecks {}

    public interface FlowNodeUpdateChecks {}
    
    /**
     * 获取流程节点记录
     *
     * @return id - 流程节点记录
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置流程节点记录
     *
     * @param id 流程节点记录
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取流程节点名称
     *
     * @return flow_node_name - 流程节点名称
     */
    public String getFlowNodeName() {
        return flowNodeName;
    }

    /**
     * 设置流程节点名称
     *
     * @param flowNodeName 流程节点名称
     */
    public void setFlowNodeName(String flowNodeName) {
        this.flowNodeName = flowNodeName;
    }

    /**
     * 获取流程节点编号
     *
     * @return flow_node_code - 流程节点编号
     */
    public String getFlowNodeCode() {
        return flowNodeCode;
    }

    /**
     * 设置流程节点编号
     *
     * @param flowNodeCode 流程节点编号
     */
    public void setFlowNodeCode(String flowNodeCode) {
        this.flowNodeCode = flowNodeCode;
    }

    /**
     * 获取流程类型名称
     *
     * @return flow_type_name - 流程类型名称
     */
    public String getFlowTypeName() {
        return flowTypeName;
    }

    /**
     * 设置流程类型名称
     *
     * @param flowTypeName 流程类型名称
     */
    public void setFlowTypeName(String flowTypeName) {
        this.flowTypeName = flowTypeName;
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

    /**
     * 获取流程节点顺序
     *
     * @return flow_node_order - 流程节点顺序
     */
    public Integer getFlowNodeOrder() {
        return flowNodeOrder;
    }

    /**
     * 设置流程节点顺序
     *
     * @param flowNodeOrder 流程节点顺序
     */
    public void setFlowNodeOrder(Integer flowNodeOrder) {
        this.flowNodeOrder = flowNodeOrder;
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
}