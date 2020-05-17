package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_course_arrangement_re_asset")
@ApiModel(description = "排课管理和设备关联")
public class CourseArrangementReAsset {
    /**
     * 排课管理和设备关联编号（系统自动生成）
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = CourseArrangementReAssetUpdateChecks.class)
    @ApiModelProperty(value = "排课管理和设备关联编号（系统自动生成）", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 排课管理编号
     */
    @ApiModelProperty(value = "排课管理编号", name = "courseArrangementId", required = false, example = "1")
    @Column(name = "course_arrangement_id")
    private Integer courseArrangementId;

    /**
     * 资源编号
     */
    @ApiModelProperty(value = "资源编号（系统自动生成）", name = "assetId", required = false, example = "1")
    @Column(name = "asset_id")
    private Integer assetId;

    /**
     * 资产编号
     */
    @ApiModelProperty(value = "资产编号(自编)", name = "assetCode", required = false, example = "1702060002007000104")
    @Column(name = "asset_code")
    private String assetCode;

    /**
     * 资源名称
     */
    @ApiModelProperty(value = "资产名称", name = "assetName", required = false, example = "丰田皇冠教具车")
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
    @Column(name = "asset_classification")
    private String assetClassification;

    /**
     * 资产状态
     */
    @ApiModelProperty(value = "资产状态", name = "assetStatus", required = false, example = "正常")
    @Column(name = "asset_status")
    private String assetStatus;

    /**
     * 资产状态编号
     */
    @ApiModelProperty(value = "资产状态编号", name = "assetStatusCode", required = false, example = "asset_status_normal")
    @Column(name = "asset_status_code")
    private String assetStatusCode;

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
    
    
    public interface CourseArrangementReAssetCreateChecks {}

    public interface CourseArrangementReAssetUpdateChecks {}

    /**
     * 获取排课管理和设备关联编号（系统自动生成）
     *
     * @return id - 排课管理和设备关联编号（系统自动生成）
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置排课管理和设备关联编号（系统自动生成）
     *
     * @param id 排课管理和设备关联编号（系统自动生成）
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取排课管理编号
     *
     * @return course_arrangement_id - 排课管理编号
     */
    public Integer getCourseArrangementId() {
        return courseArrangementId;
    }

    /**
     * 设置排课管理编号
     *
     * @param courseArrangementId 排课管理编号
     */
    public void setCourseArrangementId(Integer courseArrangementId) {
        this.courseArrangementId = courseArrangementId;
    }

    /**
     * 获取资源编号
     *
     * @return asset_id - 资源编号
     */
    public Integer getAssetId() {
        return assetId;
    }

    /**
     * 设置资源编号
     *
     * @param assetId 资源编号
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
     * 获取资源名称
     *
     * @return asset_name - 资源名称
     */
    public String getAssetName() {
        return assetName;
    }

    /**
     * 设置资源名称
     *
     * @param assetName 资源名称
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
     * 获取资产状态
     *
     * @return asset_status - 资产状态
     */
    public String getAssetStatus() {
        return assetStatus;
    }

    /**
     * 设置资产状态
     *
     * @param assetStatus 资产状态
     */
    public void setAssetStatus(String assetStatus) {
        this.assetStatus = assetStatus;
    }

    /**
     * 获取资产状态编号
     *
     * @return asset_status_code - 资产状态编号
     */
    public String getAssetStatusCode() {
        return assetStatusCode;
    }

    /**
     * 设置资产状态编号
     *
     * @param assetStatusCode 资产状态编号
     */
    public void setAssetStatusCode(String assetStatusCode) {
        this.assetStatusCode = assetStatusCode;
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