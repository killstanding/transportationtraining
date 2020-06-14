package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_tools")
@ApiModel(description = "工具")
public class Tools extends BaseRowModel{
	/**
     * 资产id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = ToolsUpdateChecks.class)
    @ExcelProperty(value = {"资产编号","资产编号"},index = 0)
    @ApiModelProperty(value = "资产编号(系统生成)", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 资产编号
     */
    //@NotNull(message = "资产编号不能为空",groups = ToolsCreateChecks.class)
    @Column(name = "asset_code")
    @ApiModelProperty(value = "资产编号(自编)", name = "assetCode", required = false, example = "ZY2015000663")
    private String assetCode;

    /**
     * 资产分类编号
     */
    @ApiModelProperty(value = "资产分类编号", name = "assetClassificationCode", required = false, example = "1")
    //@NotNull(message = "资产分类编号不能为空",groups = ToolsCreateChecks.class)
    @Column(name = "asset_classification_code")
    private String assetClassificationCode;

    /**
     * 资产分类名称
     */
    @ApiModelProperty(value = "资产分类", name = "assetClassification", required = false, example = "教学用机电实验仪器")
    @ExcelProperty(value = {"资产分类","资产分类"},index = 1)
    // @NotNull(message = "资产分类名称不能为空",groups = ToolsCreateChecks.class)
    @Column(name = "asset_classification")
    private String assetClassification;

    /**
     * 资产名称
     */
    @ApiModelProperty(value = "资产名称", name = "assetName", required = false, example = "拆装工具")
    @ExcelProperty(value = {"资产名称","资产名称"},index = 2)
    // @NotNull(message = "资产名称不能为空",groups = ToolsCreateChecks.class)
    @Column(name = "asset_name")
    private String assetName;

    /**
     * 资产价值
     */
    @ApiModelProperty(value = "资产价值", name = "assetValue", required = false, example = "7,700.00")
    @ExcelProperty(value = {"资产价值","资产价值"},index = 3)
    //@NotNull(message = "资产价值不能为空",groups = ToolsCreateChecks.class)
    @Column(name = "asset_value")
    private Integer assetValue;

    /**
     * 记账日期
     */
    @ApiModelProperty(value = "记账日期", name = "bookkeepingDate", required = false, example = "2015-11-20")
    @ExcelProperty(value = {"记账日期","记账日期"},index = 4)
    //@NotNull(message = "记账日期不能为空",groups = ToolsCreateChecks.class)
    @Column(name = "bookkeeping_date")
    private String bookkeepingDate;

    /**
     * 规格型号编号
     */
    @ApiModelProperty(value = "规格型号编号", name = "specificationTypeCode", required = false, example = "1")
    @Column(name = "specification_type_code")
    private String specificationTypeCode;

    /**
     * 规格型号
     */
    @ApiModelProperty(value = "规格型号", name = "assetType", required = false, example = "YT-5530-YT-5542.YT-55442.YT55444.YT55452")
    @ExcelProperty(value = {"规格型号","规格型号"},index = 5)
    @Column(name = "specification_type")
    private String specificationType;

    /**
     * 资产使用人
     */
    @ApiModelProperty(value = "资产使用人", name = "assetUser", required = false, example = "李旭")
    @ExcelProperty(value = {"资产使用人","资产使用人"},index = 6)
    @Column(name = "asset_user")
    private String assetUser;

    /**
     * 资产使用人编号
     */
    @ApiModelProperty(value = "资产使用人编号", name = "assetUserId", required = false, example = "1")
    @NotNull(message = "资产使用人编号不能为空",groups = ToolsCreateChecks.class)
    @Column(name = "asset_user_id")
    private String assetUserId;

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
    @ExcelProperty(value = {"位置名称","位置名称"},index = 7)
    @Column(name = "position_name")
    private String positionName;

    /**
     * 使用部门
     */
    @ApiModelProperty(value = "使用部门", name = "useDepartment", required = false, example = "南校区汽车系")
    @ExcelProperty(value = {"使用部门","使用部门"},index = 8)
    @Column(name = "use_department")
    private String useDepartment;

    /**
     * 使用部门编号
     */
    @ApiModelProperty(value = "使用部门编号", name = "useDepartmentId", required = false, example = "1")
    @Column(name = "use_department_id")
    private Integer useDepartmentId;

    /**
     * 累计入库数量
     */
    @ApiModelProperty(value = "累计入库数量", name = "cumulativeReceiptQuantity", required = false, example = "100")
    @ExcelProperty(value = {"累计入库数量","累计入库数量"},index = 9)
    @Column(name = "cumulative_receipt_quantity")
    private String cumulativeReceiptQuantity;

    /**
     * 现存总数
     */
    @ApiModelProperty(value = "现存总数", name = "totalExisting", required = false, example = "50")
    @ExcelProperty(value = {"现存总数","现存总数"},index = 10)
    @Column(name = "total_existing")
    private String totalExisting;

    /**
     * 累计领用数量
     */
    @ApiModelProperty(value = "累计领用数量", name = "cumulativeCollectedQuantity", required = false, example = "40")
    @ExcelProperty(value = {"累计领用数量","累计领用数量"},index = 11)
    @Column(name = "cumulative_collected_quantity")
    private String cumulativeCollectedQuantity;

    /**
     * 剩余数量
     */
    @ApiModelProperty(value = "剩余数量", name = "remainingQuantity", required = false, example = "10")
    @ExcelProperty(value = {"剩余数量","剩余数量"},index = 12)
    @Column(name = "remaining_quantity")
    private String remainingQuantity;
    
    
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
    
    public interface ToolsCreateChecks {}

    public interface ToolsUpdateChecks {}

    /**
     * 获取资产编号（系统自动生成）
     *
     * @return id - 资产编号（系统自动生成）
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置资产编号（系统自动生成）
     *
     * @param id 资产编号（系统自动生成）
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取资产编号（自编）
     *
     * @return asset_code - 资产编号（自编）
     */
    public String getAssetCode() {
        return assetCode;
    }

    /**
     * 设置资产编号（自编）
     *
     * @param assetCode 资产编号（自编）
     */
    public void setAssetCode(String assetCode) {
        this.assetCode = assetCode;
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
     * 获取资产价值
     *
     * @return asset_value - 资产价值
     */
    public Integer getAssetValue() {
        return assetValue;
    }

    /**
     * 设置资产价值
     *
     * @param assetValue 资产价值
     */
    public void setAssetValue(Integer assetValue) {
        this.assetValue = assetValue;
    }

    /**
     * 获取记账日期
     *
     * @return bookkeeping_date - 记账日期
     */
    public String getBookkeepingDate() {
        return bookkeepingDate;
    }

    /**
     * 设置记账日期
     *
     * @param bookkeepingDate 记账日期
     */
    public void setBookkeepingDate(String bookkeepingDate) {
        this.bookkeepingDate = bookkeepingDate;
    }

    /**
     * 获取规格型号
     *
     * @return specification_type - 规格型号
     */
    public String getSpecificationType() {
        return specificationType;
    }

    /**
     * 设置规格型号
     *
     * @param specificationType 规格型号
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
     * 获取资产使用人
     *
     * @return asset_user - 资产使用人
     */
    public String getAssetUser() {
        return assetUser;
    }

    /**
     * 设置资产使用人
     *
     * @param assetUser 资产使用人
     */
    public void setAssetUser(String assetUser) {
        this.assetUser = assetUser;
    }

    /**
     * 获取资产使用人编号
     *
     * @return asset_user_id - 资产使用人编号
     */
    public String getAssetUserId() {
        return assetUserId;
    }

    /**
     * 设置资产使用人编号
     *
     * @param assetUserId 资产使用人编号
     */
    public void setAssetUserId(String assetUserId) {
        this.assetUserId = assetUserId;
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
     * 获取使用部门
     *
     * @return use_department - 使用部门
     */
    public String getUseDepartment() {
        return useDepartment;
    }

    /**
     * 设置使用部门
     *
     * @param useDepartment 使用部门
     */
    public void setUseDepartment(String useDepartment) {
        this.useDepartment = useDepartment;
    }

    /**
     * 获取使用部门编号
     *
     * @return use_department_id - 使用部门编号
     */
    public Integer getUseDepartmentId() {
        return useDepartmentId;
    }

    /**
     * 设置使用部门编号
     *
     * @param useDepartmentId 使用部门编号
     */
    public void setUseDepartmentId(Integer useDepartmentId) {
        this.useDepartmentId = useDepartmentId;
    }

    /**
     * 获取累计入库数量
     *
     * @return cumulative_receipt_quantity - 累计入库数量
     */
    public String getCumulativeReceiptQuantity() {
        return cumulativeReceiptQuantity;
    }

    /**
     * 设置累计入库数量
     *
     * @param cumulativeReceiptQuantity 累计入库数量
     */
    public void setCumulativeReceiptQuantity(String cumulativeReceiptQuantity) {
        this.cumulativeReceiptQuantity = cumulativeReceiptQuantity;
    }

    /**
     * 获取现存总数
     *
     * @return total_existing - 现存总数
     */
    public String getTotalExisting() {
        return totalExisting;
    }

    /**
     * 设置现存总数
     *
     * @param totalExisting 现存总数
     */
    public void setTotalExisting(String totalExisting) {
        this.totalExisting = totalExisting;
    }

    /**
     * 获取累计领用数量
     *
     * @return cumulative_collected_quantity - 累计领用数量
     */
    public String getCumulativeCollectedQuantity() {
        return cumulativeCollectedQuantity;
    }

    /**
     * 设置累计领用数量
     *
     * @param cumulativeCollectedQuantity 累计领用数量
     */
    public void setCumulativeCollectedQuantity(String cumulativeCollectedQuantity) {
        this.cumulativeCollectedQuantity = cumulativeCollectedQuantity;
    }

    /**
     * 获取剩余数量
     *
     * @return remaining_quantity - 剩余数量
     */
    public String getRemainingQuantity() {
        return remainingQuantity;
    }

    /**
     * 设置剩余数量
     *
     * @param remainingQuantity 剩余数量
     */
    public void setRemainingQuantity(String remainingQuantity) {
        this.remainingQuantity = remainingQuantity;
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