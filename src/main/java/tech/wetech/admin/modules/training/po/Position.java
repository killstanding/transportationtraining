package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import tech.wetech.admin.modules.training.po.AssetType.AssetTypeCreateChecks;

@Table(name = "t_position")
@ApiModel(description = "位置信息")
public class Position {
    /**
     * 位置编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = PositionUpdateChecks.class)
    @ApiModelProperty(value = "位置编号(系统生成)", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 位置编码
     */
    @ApiModelProperty(value = "位置编号(自编)", name = "positionCode", required = false, example = "P1001")
    @Column(name = "position_code")
    @NotNull(message = "位置编码不能为空",groups = PositionCreateChecks.class)
    private String positionCode;

    /**
     * 位置名称
     */
    @ApiModelProperty(value = "位置名称", name = "positionName", required = false, example = "丰田T-TEP整车实训区")
    @NotNull(message = "位置名称不能为空",groups = PositionCreateChecks.class)
    @Column(name = "position_name")
    private String positionName;

    /**
     * 类型名称
     */
    @NotNull(message = "类型名称不能为空",groups = AssetTypeCreateChecks.class)
    @Column(name = "type_name")
    @ApiModelProperty(value = "规格名称", name = "typeName", required = false, example = "教学用机电实验仪器")
    private String typeName;

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

    public interface PositionCreateChecks {

    }

    public interface PositionUpdateChecks {

    }
    
    /**
     * 获取位置编号
     *
     * @return id - 位置编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置位置编号
     *
     * @param id 位置编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取位置编码
     *
     * @return position_code - 位置编码
     */
    public String getPositionCode() {
        return positionCode;
    }

    /**
     * 设置位置编码
     *
     * @param positionCode 位置编码
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