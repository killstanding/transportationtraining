package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import tech.wetech.admin.modules.training.po.AssetClassification.AssetClassificationCreateChecks;


@Table(name = "t_asset_type")
@ApiModel(description = "产品规格")
public class AssetType {
    /**
     * 类型编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = AssetTypeUpdateChecks.class)
    @ApiModelProperty(value = "规格编号(系统生成)", name = "id", required = true, example = "1")
    private Integer id;

    /**
     * 类型编码
     */
    @NotNull(message = "类型编码不能为空",groups = AssetTypeCreateChecks.class)
    @Column(name = "type_code")
    @ApiModelProperty(value = "规格编号(自编)", name = "typeCode", required = true, example = "AT1001")
    private String typeCode;

    /**
     * 类型名称
     */
    @NotNull(message = "类型名称不能为空",groups = AssetTypeCreateChecks.class)
    @Column(name = "type_name")
    @ApiModelProperty(value = "规格名称", name = "typeName", required = true, example = "教学用机电实验仪器")
    private String typeName;

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
    
    public interface AssetTypeCreateChecks {

    }

    public interface AssetTypeUpdateChecks {

    }
    /**
     * 获取类型编号
     *
     * @return id - 类型编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置类型编号
     *
     * @param id 类型编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取类型编码
     *
     * @return type_code - 类型编码
     */
    public String getTypeCode() {
        return typeCode;
    }

    /**
     * 设置类型编码
     *
     * @param typeCode 类型编码
     */
    public void setTypeCode(String typeCode) {
        this.typeCode = typeCode;
    }

    /**
     * 获取类型名称
     *
     * @return type_name - 类型名称
     */
    public String getTypeName() {
        return typeName;
    }

    /**
     * 设置类型名称
     *
     * @param typeName 类型名称
     */
    public void setTypeName(String typeName) {
        this.typeName = typeName;
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