package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_course_arrangement_re_consumables")
@ApiModel(description = "排课管理和耗材关联")
public class CourseArrangementReConsumables {
    /**
     * 排课管理和耗材关联编号（系统自动生成）
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = CourseArrangementReConsumablesUpdateChecks.class)
    @ApiModelProperty(value = "排课管理和耗材关联编号（系统自动生成）", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 排课管理编号
     */
    @ApiModelProperty(value = "排课管理编号", name = "courseArrangementId", required = false, example = "1")
    @Column(name = "course_arrangement_id")
    private Integer courseArrangementId;

    /**
     * 耗材编号(系统生成)
     */
    @ApiModelProperty(value = "耗材编号(系统生成)", name = "consumablesId", required = false, example = "1")
    @Column(name = "consumables_id")
    private Integer consumablesId;

    /**
     * 耗材编号（自编）
     */
    @ApiModelProperty(value = "耗材编号（自编）", name = "consumablesCode", required = false, example = "CC001")
    @Column(name = "consumables_code")
    private String consumablesCode;

    /**
     * 耗材名称
     */
    @ApiModelProperty(value = "耗材名称", name = "consumablesName", required = false, example = "发动机机油")
    @Column(name = "consumables_name")
    private String consumablesName;

    /**
     * 耗材规格型号
     */
    @ApiModelProperty(value = "耗材规格型号", name = "specificationType", required = false, example = "嘉实多5W-30")
    @Column(name = "specification_type")
    private String specificationType;

    /**
     * 规格型号编号
     */
    @ApiModelProperty(value = "耗材规格型号编号", name = "specificationTypeCode", required = false, example = "1")
    @Column(name = "specification_type_code")
    private String specificationTypeCode;

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
    @Column(name = "position_name")
    private String positionName;

    /**
     * 申请数量
     */
    @ApiModelProperty(value = "申请数量", name = "numberOfApplications", required = false, example = "15")
    @Column(name = "number_of_applications")
    private Integer numberOfApplications;

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
    
    
    public interface CourseArrangementReConsumablesCreateChecks {}

    public interface CourseArrangementReConsumablesUpdateChecks {}

    /**
     * 获取排课管理和耗材关联编号（系统自动生成）
     *
     * @return id - 排课管理和耗材关联编号（系统自动生成）
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置排课管理和耗材关联编号（系统自动生成）
     *
     * @param id 排课管理和耗材关联编号（系统自动生成）
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
     * 获取耗材编号(系统生成)
     *
     * @return consumables_id - 耗材编号(系统生成)
     */
    public Integer getConsumablesId() {
        return consumablesId;
    }

    /**
     * 设置耗材编号(系统生成)
     *
     * @param consumablesId 耗材编号(系统生成)
     */
    public void setConsumablesId(Integer consumablesId) {
        this.consumablesId = consumablesId;
    }

    /**
     * 获取耗材编号（自编）
     *
     * @return consumables_code - 耗材编号（自编）
     */
    public String getConsumablesCode() {
        return consumablesCode;
    }

    /**
     * 设置耗材编号（自编）
     *
     * @param consumablesCode 耗材编号（自编）
     */
    public void setConsumablesCode(String consumablesCode) {
        this.consumablesCode = consumablesCode;
    }

    /**
     * 获取耗材名称
     *
     * @return consumables_name - 耗材名称
     */
    public String getConsumablesName() {
        return consumablesName;
    }

    /**
     * 设置耗材名称
     *
     * @param consumablesName 耗材名称
     */
    public void setConsumablesName(String consumablesName) {
        this.consumablesName = consumablesName;
    }

    /**
     * 获取耗材规格型号
     *
     * @return specification_type - 耗材规格型号
     */
    public String getSpecificationType() {
        return specificationType;
    }

    /**
     * 设置耗材规格型号
     *
     * @param specificationType 耗材规格型号
     */
    public void setSpecificationType(String specificationType) {
        this.specificationType = specificationType;
    }

    /**
     * 获取规格型号编号
     *
     * @return specification_type_code - 规格型号编号
     */
    public String getSpecificationTypeCode() {
        return specificationTypeCode;
    }

    /**
     * 设置规格型号编号
     *
     * @param specificationTypeCode 规格型号编号
     */
    public void setSpecificationTypeCode(String specificationTypeCode) {
        this.specificationTypeCode = specificationTypeCode;
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
     * 获取申请数量
     *
     * @return number_of_applications - 申请数量
     */
    public Integer getNumberOfApplications() {
        return numberOfApplications;
    }

    /**
     * 设置申请数量
     *
     * @param numberOfApplications 申请数量
     */
    public void setNumberOfApplications(Integer numberOfApplications) {
        this.numberOfApplications = numberOfApplications;
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