package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_collection_record")
@ApiModel(description = "领用记录")
public class CollectionRecord extends BaseRowModel{
    /**
     * 领用编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = CollectionRecordUpdateChecks.class)
    //@ExcelProperty(value = {"领用编号","领用编号"},index = 0)
    @ApiModelProperty(value = "领用编号", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 资产编号（系统自动生成）
     */
    @ApiModelProperty(value = "资产编号（系统自动生成）", name = "assetId", required = false, example = "1")
    @Column(name = "asset_id")
    private Integer assetId;

    /**
     * 资产名称
     */
    @ExcelProperty(value = {"资产名称","资产名称"},index = 0)
    @ApiModelProperty(value = "资产名称", name = "assetName", required = false, example = "发动机机油")
    @Column(name = "asset_name")
    private String assetName;

    /**
     * 资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具
     */
    @ApiModelProperty(value = "资产类型", name = "assetType", required = false, example = "耗材")
    @Column(name = "asset_type")
    private String assetType;

    /**
     * 资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具
     */
    @ApiModelProperty(value = "资产类型编号", name = "assetTypeCode", required = false, example = "asset_type_consumables")
    @Column(name = "asset_type_code")
    private String assetTypeCode;

    /**
     * 领用时间
     */
    @ExcelProperty(value = {"领用时间","领用时间"},index = 1)
    @ApiModelProperty(value = "领用时间", name = "collectionTime", required = false, example = "2020-03-23 00:00:00")
    @Column(name = "`collection time`")
    private String collectionTime;

    /**
     * 领用的专业(系)
     */
    @ExcelProperty(value = {"领用专业","领用专业"},index = 2)
    @ApiModelProperty(value = "领用的专业(系)", name = "collectionMajor", required = false, example = "汽修系")
    @Column(name = "collection_major")
    private String collectionMajor;

    /**
     * 领用的专业(系)编号
     */

    @ApiModelProperty(value = "领用的专业(系)编号", name = "collectionMajorId", required = false, example = "1")
    @Column(name = "collection_major_id")
    private Integer collectionMajorId;

    /**
     * 领用的课程
     */
    @ExcelProperty(value = {"领用课程","领用课程"},index = 3)
    @ApiModelProperty(value = "领用课程", name = "collectionCourse", required = false, example = "车身电气系统课程")
    @Column(name = "collection_course")
    private String collectionCourse;

    /**
     * 领用的课程编号
     */
    @ApiModelProperty(value = "领用课程编号", name = "collectionCourseId", required = false, example = "1")
    @Column(name = "collection_course_id")
    private Integer collectionCourseId;

    /**
     * 申请人
     */
    @ApiModelProperty(value = "申请人", name = "applicant", required = false, example = "张三")
    @ExcelProperty(value = {"申请人","申请人"},index = 4)
    private String applicant;

    /**
     * 申请人编号
     */
    @ApiModelProperty(value = "申请人编号", name = "applicant", required = false, example = "1")
    @Column(name = "applicant_id")
    private Integer applicantId;

    /**
     * 领用数量
     */
    @ApiModelProperty(value = "领用数量", name = "collectedQuantity", required = false, example = "10")
    @ExcelProperty(value = {"领用数量","领用数量"},index = 5)
    @Column(name = "collected_quantity")
    private String collectedQuantity;

    /**
     * 归还时间
     */
    @ApiModelProperty(value = "归还时间", name = "returnTime", required = false, example = "2020-03-24 00:00:00")
    @ExcelProperty(value = {"归还时间","归还时间"},index = 6)
    @Column(name = "return_time")
    private String returnTime;

    /**
     * 备注
     */
    @ApiModelProperty(value = "备注", name = "remark", required = false, example = "无")
    @ExcelProperty(value = {"备注","备注"},index = 7)
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
     * 流程状态编码
     */
    @ApiModelProperty(value = "流程状态编码", name = "flowStatusCode", required = false, example = "ccr_write")
    @Column(name = "flow_status_code")
    private String flowStatusCode;

    /**
     * 流程状态
     */
    @ApiModelProperty(value = "流程状态", name = "flowStatus", required = false, example = "填写耗材申请单")
    @ExcelProperty(value = {"流程状态","流程状态"},index = 8)
    @Column(name = "flow_status")
    private String flowStatus;

    /**
     * 创建年份
     */
    @ApiModelProperty(value = "创建年份", name = "create_year", required = false, example = "2020")
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

    
    
    public interface CollectionRecordCreateChecks {}

    public interface CollectionRecordUpdateChecks {}
    
    /**
     * 获取领用编号
     *
     * @return id - 领用编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置领用编号
     *
     * @param id 领用编号
     */
    public void setId(Integer id) {
        this.id = id;
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
     * 获取资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具
     *
     * @return asset_type - 资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具
     */
    public String getAssetType() {
        return assetType;
    }

    /**
     * 设置资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具
     *
     * @param assetType 资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具
     */
    public void setAssetType(String assetType) {
        this.assetType = assetType;
    }

    /**
     * 获取资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具
     *
     * @return asset_type_code - 资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具
     */
    public String getAssetTypeCode() {
        return assetTypeCode;
    }

    /**
     * 设置资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具
     *
     * @param assetTypeCode 资产类型 asset_type_device 设备 asset_type_consumables 耗材 asset_type_tool 工具
     */
    public void setAssetTypeCode(String assetTypeCode) {
        this.assetTypeCode = assetTypeCode;
    }

    /**
     * 获取领用时间
     *
     * @return collection time - 领用时间
     */
    public String getCollectionTime() {
        return collectionTime;
    }

    /**
     * 设置领用时间
     *
     * @param collectionTime 领用时间
     */
    public void setCollectionTime(String collectionTime) {
        this.collectionTime = collectionTime;
    }

    /**
     * 获取领用的专业(系)
     *
     * @return collection_major - 领用的专业(系)
     */
    public String getCollectionMajor() {
        return collectionMajor;
    }

    /**
     * 设置领用的专业(系)
     *
     * @param collectionMajor 领用的专业(系)
     */
    public void setCollectionMajor(String collectionMajor) {
        this.collectionMajor = collectionMajor;
    }

    /**
     * 获取领用的专业(系)编号
     *
     * @return collection_major_id - 领用的专业(系)编号
     */
    public Integer getCollectionMajorId() {
        return collectionMajorId;
    }

    /**
     * 设置领用的专业(系)编号
     *
     * @param collectionMajorId 领用的专业(系)编号
     */
    public void setCollectionMajorId(Integer collectionMajorId) {
        this.collectionMajorId = collectionMajorId;
    }

    /**
     * 获取领用的课程
     *
     * @return collection_course - 领用的课程
     */
    public String getCollectionCourse() {
        return collectionCourse;
    }

    /**
     * 设置领用的课程
     *
     * @param collectionCourse 领用的课程
     */
    public void setCollectionCourse(String collectionCourse) {
        this.collectionCourse = collectionCourse;
    }

    /**
     * 获取领用的课程编号
     *
     * @return collection_course_id - 领用的课程编号
     */
    public Integer getCollectionCourseId() {
        return collectionCourseId;
    }

    /**
     * 设置领用的课程编号
     *
     * @param collectionCourseId 领用的课程编号
     */
    public void setCollectionCourseId(Integer collectionCourseId) {
        this.collectionCourseId = collectionCourseId;
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
     * 获取领用数量
     *
     * @return collected_quantity - 领用数量
     */
    public String getCollectedQuantity() {
        return collectedQuantity;
    }

    /**
     * 设置领用数量
     *
     * @param collectedQuantity 领用数量
     */
    public void setCollectedQuantity(String collectedQuantity) {
        this.collectedQuantity = collectedQuantity;
    }

    /**
     * 获取归还时间
     *
     * @return return_time - 归还时间
     */
    public String getReturnTime() {
        return returnTime;
    }

    /**
     * 设置归还时间
     *
     * @param returnTime 归还时间
     */
    public void setReturnTime(String returnTime) {
        this.returnTime = returnTime;
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