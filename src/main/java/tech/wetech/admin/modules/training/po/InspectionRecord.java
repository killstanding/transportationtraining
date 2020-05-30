package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "巡检记录")
@Table(name = "t_inspection_record")
public class InspectionRecord  extends BaseRowModel{
	
    @ApiModelProperty(value = "实训室编号", name = "roomId", required = false, example = "1")
	private int roomId;
	
    /**
     * 巡检记录编号
     */
    @Id
    @NotNull(groups = InspectionRecordUpdateChecks.class)
    @ApiModelProperty(value = "巡检计划编号(系统生成)", name = "id", required = false, example = "1")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 资产编号
     */
    @ExcelProperty(value = {"资产编号","资产编号"},index = 0)
    @ApiModelProperty(value = "资产编号(系统生成)", name = "assetCode", required = false, example = "1")
    @NotNull(message = "资产编号不能为空",groups = InspectionRecordCreateChecks.class)
    @Column(name = "asset_code")
    private String assetCode;


    /**
     * 资产分类编号
     */
    @ApiModelProperty(value = "资产分类编号", name = "assetClassificationCode", required = false, example = "1")
    @NotNull(message = "资产分类编号不能为空",groups = InspectionRecordCreateChecks.class)
    @Column(name = "asset_classification_code")
    private String assetClassificationCode;

    /**
     * 资产分类名称
     */
    @ApiModelProperty(value = "资产分类", name = "assetClassification", required = false, example = "教学用机电实验仪器")
    @ExcelProperty(value = {"资产分类","资产分类"},index = 1)
    @NotNull(message = "资产分类名称不能为空",groups = InspectionRecordCreateChecks.class)
    @Column(name = "asset_classification")
    private String assetClassification;

    
    /**
     * 资产名称
     */
    @ApiModelProperty(value = "资产名称", name = "assetName", required = false, example = "丰田皇冠教具车")
    @ExcelProperty(value = {"资产名称","资产名称"},index = 2)
    @Column(name = "asset_name")
    private String assetName;
    
    
    /**
     * 资产状态
     */
    @ApiModelProperty(value = "资产状态", name = "assetStatus", required = false, example = "正常")
    @ExcelProperty(value = {"资产状态","资产状态"},index = 3)
    @NotNull(message = " 资产状态不能为空",groups = InspectionRecordCreateChecks.class)
    @Column(name = "asset_status")
    private String assetStatus;

    /**
     * 资产状态编号
     */
    @ApiModelProperty(value = "资产状态编号", name = "assetStatusCode", required = false, example = "asset_status_normal")
    @NotNull(message = "资产状态编号不能为空",groups = InspectionRecordCreateChecks.class)
    @Column(name = "asset_status_code")
    private String assetStatusCode;

    /**
     * 是否维修 是 1 否 0 
     */
    @ApiModelProperty(value = "是否维修 是 1 否 0 ", name = "isRepair", required = false, example = "0")
    @ExcelProperty(value = {"是否维修 是 1 否 0 ","是否维修 是 1 否 0 "},index = 4)
    @NotNull(message = " 是否维修不能为空",groups = InspectionRecordCreateChecks.class)
    @Column(name = "is_repair")
    private Integer isRepair;

    /**
     * 状态描述
     */
    @ApiModelProperty(value = "状态描述", name = "isRepair", required = false, example = "设备正常")
    @ExcelProperty(value = {"状态描述","状态描述"},index = 5)
    @Column(name = "status_description")
    private String statusDescription;

    /**
     * 检修计划编号
     */
    @ApiModelProperty(value = "检修计划编号", name = "planId", required = false, example = "1")
    @Column(name = "plan_id")
    private Integer planId;

    /**
     * 维修单号
     */
    @ApiModelProperty(value = "维修单号", name = "repairOrderNo", required = false, example = "IR001")
    @ExcelProperty(value = {"维修单号","维修单号"},index = 6)
    @Column(name = "repair_order_no")
    private String repairOrderNo;
    
    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private String createTime;

    /**
     * 更新时间
     */
    @Column(name = "update_time")
    private String updateTime;

    
    public interface InspectionRecordCreateChecks {

    }

    public interface InspectionRecordUpdateChecks {

    }
    /**
     * 获取巡检记录编号
     *
     * @return id - 巡检记录编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置巡检记录编号
     *
     * @param id 巡检记录编号
     */
    public void setId(Integer id) {
        this.id = id;
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
     * 获取是否维修 是 1 否 0 
     *
     * @return is_repair - 是否维修 是 1 否 0 
     */
    public Integer getIsRepair() {
        return isRepair;
    }

    /**
     * 设置是否维修 是 1 否 0 
     *
     * @param isRepair 是否维修 是 1 否 0 
     */
    public void setIsRepair(Integer isRepair) {
        this.isRepair = isRepair;
    }

    /**
     * 获取状态描述
     *
     * @return status_description - 状态描述
     */
    public String getStatusDescription() {
        return statusDescription;
    }

    /**
     * 设置状态描述
     *
     * @param statusDescription 状态描述
     */
    public void setStatusDescription(String statusDescription) {
        this.statusDescription = statusDescription;
    }

    /**
     * 获取检修计划编号
     *
     * @return plan_id - 检修计划编号
     */
    public Integer getPlanId() {
        return planId;
    }

    /**
     * 设置检修计划编号
     *
     * @param planId 检修计划编号
     */
    public void setPlanId(Integer planId) {
        this.planId = planId;
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
     * 设置维修单号
     *
     * @param repairOrderNo 维修单号
     */
	public String getRepairOrderNo() {
		return repairOrderNo;
	}

	  /**
     * 设置维修单号
     *
     * @param repairOrderNo 维修单号
     */
	public void setRepairOrderNo(String repairOrderNo) {
		this.repairOrderNo = repairOrderNo;
	}

	public String getAssetName() {
		return assetName;
	}

	public void setAssetName(String assetName) {
		this.assetName = assetName;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	
	
}