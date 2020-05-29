package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "规格型号")
@Table(name = "t_specification_type")
public class SpecificationType {
	/**
     * 规格型号编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = SpecificationTypeUpdateChecks.class)
    @ApiModelProperty(value = "规格编号(系统生成)", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 规格型号编码
     */
    @NotNull(message = "规格型号编码不能为空",groups = SpecificationTypeCreateChecks.class)
    @Column(name = "type_code")
    @ApiModelProperty(value = "规格编号(自编)", name = "typeCode", required = false, example = "AT1001")
    private String typeCode;

    /**
     * 规格型号名称
     */
    @NotNull(message = "规格型号名称不能为空",groups = SpecificationTypeCreateChecks.class)
    @Column(name = "type_name")
    @ApiModelProperty(value = "规格名称", name = "typeName", required = false, example = "华育天智HYTZ-JB105")
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

    /**
     * 资源类型
     */
    @ApiModelProperty(value = "资源类型", name = "assetType", required = false, example = "设备")
    @Column(name = "asset_type")
    private String assetType;

    /**
     * 资源类型编码
     */
    @ApiModelProperty(value = "资源类型", name = "assetTypeCode", required = false, example = "asset_type_device")
    @Column(name = "asset_type_code")
    private String assetTypeCode;
    
    /**
     * 资产分类编号
     */
    @ApiModelProperty(value = "资产分类编号", name = "assetClassificationCode", required = false, example = "AC1003")
    @Column(name = "asset_classification_code")
    private String assetClassificationCode;

    /**
     * 资产分类名称
     */
    @ApiModelProperty(value = "资产分类名称", name = "assetClassification", required = false, example = "维修扭矩基础实训设备")
    @Column(name = "asset_classification")
    private String assetClassification;
    
    public interface SpecificationTypeCreateChecks {

    }

    public interface SpecificationTypeUpdateChecks {

    }
    
    /**
     * 获取规格型号编号
     *
     * @return id - 规格型号编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置规格型号编号
     *
     * @param id 规格型号编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取规格型号编码
     *
     * @return type_code - 规格型号编码
     */
    public String getTypeCode() {
        return typeCode;
    }

    /**
     * 设置规格型号编码
     *
     * @param typeCode 规格型号编码
     */
    public void setTypeCode(String typeCode) {
        this.typeCode = typeCode;
    }

    /**
     * 获取规格型号名称
     *
     * @return type_name - 规格型号名称
     */
    public String getTypeName() {
        return typeName;
    }

    /**
     * 设置规格型号名称
     *
     * @param typeName 规格型号名称
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

    /**
     * 获取资源类型
     *
     * @return asset_type - 资源类型
     */
    public String getAssetType() {
        return assetType;
    }

    /**
     * 设置资源类型
     *
     * @param assetType 资源类型
     */
    public void setAssetType(String assetType) {
        this.assetType = assetType;
    }

    /**
     * 获取资源类型编码
     *
     * @return asset_type_code - 资源类型编码
     */
    public String getAssetTypeCode() {
        return assetTypeCode;
    }

    /**
     * 设置资源类型编码
     *
     * @param assetTypeCode 资源类型编码
     */
    public void setAssetTypeCode(String assetTypeCode) {
        this.assetTypeCode = assetTypeCode;
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
}