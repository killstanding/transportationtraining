package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_asset_classification")
@ApiModel(description = "产品分类")
public class AssetClassification {
    /**
     * 分类编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = AssetClassificationUpdateChecks.class)
    @ApiModelProperty(value = "分类编号(系统生成)", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 分类编码
     */
    @ApiModelProperty(value = "分类编码(自编)", name = "classificationCode", required = false, example = "AC1001")
    @NotNull(message = "分类编码不能为空",groups = AssetClassificationCreateChecks.class)
    @Column(name = "classification_code")
    private String classificationCode;

    /**
     * 分类名称
     */
    @ApiModelProperty(value = "分类名称", name = "classificationName", required = false, example = "教学用机电实验仪器")
    @NotNull(message = "分类名称不能为空",groups = AssetClassificationCreateChecks.class)
    @Column(name = "classification_name")
    private String classificationName;

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

    

    public interface AssetClassificationCreateChecks {

    }

    public interface AssetClassificationUpdateChecks {

    }
    
    /**
     * 获取分类编号
     *
     * @return id - 分类编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置分类编号
     *
     * @param id 分类编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取分类编码
     *
     * @return classification_code - 分类编码
     */
    public String getClassificationCode() {
        return classificationCode;
    }

    /**
     * 设置分类编码
     *
     * @param classificationCode 分类编码
     */
    public void setClassificationCode(String classificationCode) {
        this.classificationCode = classificationCode;
    }

    /**
     * 获取分类名称
     *
     * @return classification_name - 分类名称
     */
    public String getClassificationName() {
        return classificationName;
    }

    /**
     * 设置分类名称
     *
     * @param classificationName 分类名称
     */
    public void setClassificationName(String classificationName) {
        this.classificationName = classificationName;
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