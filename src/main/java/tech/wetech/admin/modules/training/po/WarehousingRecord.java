package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_warehousing_record")
@ApiModel(description = "入库记录")
public class WarehousingRecord extends BaseRowModel{
    /**
     *  入库编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = WarehousingRecordUpdateChecks.class)
    //@ExcelProperty(value = {"入库编号","入库编号"},index = 0)
    @ApiModelProperty(value = "入库编号", name = "id", required = false, example = "1")
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
     *  入库时间
     */
    @ExcelProperty(value = {"入库时间","入库时间"},index = 1)
    @ApiModelProperty(value = "入库时间", name = "warehousingTime", required = false, example = "2020-03-23 00:00:00")
    @Column(name = "warehousing_time")
    private String warehousingTime;

    /**
     * 单价(元) 
     */
    @ExcelProperty(value = {"单价(元)","单价(元)"},index = 2)
    @ApiModelProperty(value = "单价(元)", name = "unitPrice", required = false, example = "100")
    @Column(name = "unit_price")
    private String unitPrice;

    /**
     *  入库数量
     */
    @ApiModelProperty(value = "领用数量", name = "warehousingQuantity", required = false, example = "10")
    @ExcelProperty(value = {"领用数量","领用数量"},index = 3)
    @Column(name = "warehousing_quantity")
    private String warehousingQuantity;

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
    @ExcelProperty(value = {"位置名称","位置名称"},index = 4)
    @Column(name = "position_name")
    private String positionName;

    /**
     * 管理人
     */
    @ApiModelProperty(value = "管理人", name = "manager", required = false, example = "李旭")
    @ExcelProperty(value = {"管理人","管理人"},index = 5)
    private String manager;

    /**
     * 管理人编号
     */
    @ApiModelProperty(value = "管理人编号", name = "managerId", required = false, example = "1")
    @Column(name = "manager_id")
    private Integer managerId;

    /**
     * 备注
     */
    @ApiModelProperty(value = "备注", name = "remark", required = false, example = "无")
    @ExcelProperty(value = {"备注","备注"},index = 6)
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
    
    public interface WarehousingRecordCreateChecks {}

    public interface WarehousingRecordUpdateChecks {}

    /**
     * 获取 入库编号
     *
     * @return id -  入库编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置 入库编号
     *
     * @param id  入库编号
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
     * 获取 入库时间
     *
     * @return warehousing_time -  入库时间
     */
    public String getWarehousingTime() {
        return warehousingTime;
    }

    /**
     * 设置 入库时间
     *
     * @param warehousingTime  入库时间
     */
    public void setWarehousingTime(String warehousingTime) {
        this.warehousingTime = warehousingTime;
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
     * 获取 入库数量
     *
     * @return warehousing_quantity -  入库数量
     */
    public String getWarehousingQuantity() {
        return warehousingQuantity;
    }

    /**
     * 设置 入库数量
     *
     * @param warehousingQuantity  入库数量
     */
    public void setWarehousingQuantity(String warehousingQuantity) {
        this.warehousingQuantity = warehousingQuantity;
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
     * 获取管理人
     *
     * @return manager - 管理人
     */
    public String getManager() {
        return manager;
    }

    /**
     * 设置管理人
     *
     * @param manager 管理人
     */
    public void setManager(String manager) {
        this.manager = manager;
    }

    /**
     * 获取管理人编号
     *
     * @return manager_id - 管理人编号
     */
    public Integer getManagerId() {
        return managerId;
    }

    /**
     * 设置管理人编号
     *
     * @param managerId 管理人编号
     */
    public void setManagerId(Integer managerId) {
        this.managerId = managerId;
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
}