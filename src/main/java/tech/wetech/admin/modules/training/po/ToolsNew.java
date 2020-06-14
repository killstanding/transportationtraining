package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "工具新")
@Table(name = "t_tools_new")
public class ToolsNew extends BaseRowModel{
	 /**
     * 工具编号(系统生成)
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = ToolsNewUpdateChecks.class)
    @ExcelProperty(value = {"工具编号(系统生成)","工具编号(系统生成)"},index = 0)
    @ApiModelProperty(value = "工具编号(系统生成)", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 工具编号（自编）
     */
    @ExcelProperty(value = {"工具编号（自编）","工具编号（自编）"},index = 1)
    @ApiModelProperty(value = "工具编号（自编）", name = "toolsCode", required = false, example = "CC001")
    @Column(name = "tools_code")
    private String toolsCode;

    /**
     * 工具名称
     */
    @ExcelProperty(value = {"工具名称","工具名称"},index = 2)
    @ApiModelProperty(value = "工具名称", name = "toolsName", required = false, example = "发动机机油滤清器")
    @Column(name = "tools_name")
    private String toolsName;

    /**
     * 记账日期
     */
    @ApiModelProperty(value = "记账日期", name = "bookkeepingDate", required = false, example = "2015-11-20")
    @ExcelProperty(value = {"记账日期","记账日期"},index = 3)
    @Column(name = "bookkeeping_date")
    private String bookkeepingDate;
    
    /**
     * 资产分类编号
     */
    @ApiModelProperty(value = "资产分类编号", name = "assetClassificationCode", required = false, example = "AC1010")
    @Column(name = "asset_classification_code")
    private String assetClassificationCode;

    /**
     * 资产分类名称
     */
    @ExcelProperty(value = {"资产分类名称","资产分类名称"},index = 4)
    @ApiModelProperty(value = "资产分类名称", name = "assetClassification", required = false, example = "发动机机油滤清器")
    @Column(name = "asset_classification")
    private String assetClassification;
    /**
     * 工具规格型号
     */
    @ExcelProperty(value = {"工具规格型号","工具规格型号"},index = 5)
    @ApiModelProperty(value = "工具规格型号", name = "specificationType", required = false, example = "嘉实多5W-30")
    @Column(name = "specification_type")
    private String specificationType;

    /**
     * 规格型号编号
     */
    @ApiModelProperty(value = "工具规格型号编号", name = "specificationTypeCode", required = false, example = "1")
    @Column(name = "specification_type_code")
    private String specificationTypeCode;

    /**
     * 单价(元) 
     */
    @ExcelProperty(value = {"单价(元)","单价(元)"},index = 6)
    @ApiModelProperty(value = "单价(元)", name = "unitPrice", required = false, example = "100")
    @Column(name = "unit_price")
    private String unitPrice;

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
     * 工具管理人
     */
    @ApiModelProperty(value = "管理人", name = "manager", required = false, example = "李旭")
    @ExcelProperty(value = {"管理人","管理人"},index = 8)
    private String manager;

    /**
     * 工具管理人编号
     */
    @ApiModelProperty(value = "管理人编号", name = "managerId", required = false, example = "1")
    @Column(name = "manager_id")
    private Integer managerId;

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


    
    public interface ToolsNewCreateChecks {}

    public interface ToolsNewUpdateChecks {}
    
    /**
     * 获取工具编号(系统生成)
     *
     * @return id - 工具编号(系统生成)
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置工具编号(系统生成)
     *
     * @param id 工具编号(系统生成)
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取工具编号（自编）
     *
     * @return tools_code - 工具编号（自编）
     */
    public String getToolsCode() {
        return toolsCode;
    }

    /**
     * 设置工具编号（自编）
     *
     * @param toolsCode 工具编号（自编）
     */
    public void setToolsCode(String toolsCode) {
        this.toolsCode = toolsCode;
    }

    /**
     * 获取工具名称
     *
     * @return tools_name - 工具名称
     */
    public String getToolsName() {
        return toolsName;
    }

    /**
     * 设置工具名称
     *
     * @param toolsName 工具名称
     */
    public void setToolsName(String toolsName) {
        this.toolsName = toolsName;
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
     * 获取工具规格型号
     *
     * @return specification_type - 工具规格型号
     */
    public String getSpecificationType() {
        return specificationType;
    }

    /**
     * 设置工具规格型号
     *
     * @param specificationType 工具规格型号
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
     * 获取单价(元) 
     *
     * @return unit_price - 单价(元) 
     */
    public String getUnitPrice() {
        return unitPrice;
    }

    /**
     * 设置单价(元) 
     *
     * @param unitPrice 单价(元) 
     */
    public void setUnitPrice(String unitPrice) {
        this.unitPrice = unitPrice;
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
     * 获取工具管理人
     *
     * @return manager - 工具管理人
     */
    public String getManager() {
        return manager;
    }

    /**
     * 设置工具管理人
     *
     * @param manager 工具管理人
     */
    public void setManager(String manager) {
        this.manager = manager;
    }

    /**
     * 获取工具管理人编号
     *
     * @return manager_id - 工具管理人编号
     */
    public Integer getManagerId() {
        return managerId;
    }

    /**
     * 设置工具管理人编号
     *
     * @param managerId 工具管理人编号
     */
    public void setManagerId(Integer managerId) {
        this.managerId = managerId;
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