package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "t_asset")
public class Asset {
    /**
     * 资产id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = AssetUpdateChecks.class)
    private Integer id;

    /**
     * 资产编号
     */
    @NotNull(message = "资产编号不能为空",groups = AssetCreateChecks.class)
    @Column(name = "asset_code")
    private String assetCode;

    /**
     * 资产分类编号
     */
    @NotNull(message = "资产分类编号不能为空",groups = AssetCreateChecks.class)
    @Column(name = "asset_classification_code")
    private String assetClassificationCode;

    /**
     * 资产分类名称
     */
    @NotNull(message = "资产分类名称不能为空",groups = AssetCreateChecks.class)
    @Column(name = "asset_classification")
    private String assetClassification;

    /**
     * 资产名称
     */
    @NotNull(message = "资产名称不能为空",groups = AssetCreateChecks.class)
    @Column(name = "asset_name")
    private String assetName;

    /**
     * 资产价值
     */
    @NotNull(message = "资产价值不能为空",groups = AssetCreateChecks.class)
    @Column(name = "asset_value")
    private Integer assetValue;

    /**
     * 记账日期
     */
    @NotNull(message = "记账日期不能为空",groups = AssetCreateChecks.class)
    @Column(name = "bookkeeping_date")
    private String bookkeepingDate;

    /**
     * 资产类型编号
     */
    @NotNull(message = "资产类型编号不能为空",groups = AssetCreateChecks.class)
    @Column(name = "asset_type_code")
    private String assetTypeCode;

    /**
     * 资产类型
     */
    @NotNull(message = "资产类型不能为空",groups = AssetCreateChecks.class)
    @Column(name = "asset_type")
    private String assetType;

    /**
     * 资产使用人
     */
    @NotNull(message = "资产使用人不能为空",groups = AssetCreateChecks.class)
    @Column(name = "asset_user")
    private String assetUser;

    /**
     * 资产使用人编号
     */
    @NotNull(message = "资产使用人编号不能为空",groups = AssetCreateChecks.class)
    @Column(name = "asset_user_id")
    private String assetUserId;

    /**
     * 位置编号
     */
    @NotNull(message = "位置编号不能为空",groups = AssetCreateChecks.class)
    @Column(name = "postion_code")
    private String postionCode;

    /**
     * 位置名称
     */
    @NotNull(message = "位置名称不能为空",groups = AssetCreateChecks.class)
    @Column(name = "positon_name")
    private String positonName;

    /**
     * 使用部门
     */
    @NotNull(message = "使用部门不能为空",groups = AssetCreateChecks.class)
    @Column(name = "use_department")
    private String useDepartment;

    /**
     * 使用部门编号
     */
    @NotNull(message = "使用部门编号不能为空",groups = AssetCreateChecks.class)
    @Column(name = "use_department_id")
    private Integer useDepartmentId;

    /**
     * 巡检周期
     */
    @NotNull(message = "巡检周期不能为空",groups = AssetCreateChecks.class)
    @Column(name = "inspection_cycle")
    private String inspectionCycle;

    /**
     * 巡检周期编号
     */
    @NotNull(message = "巡检周期编号不能为空",groups = AssetCreateChecks.class)
    @Column(name = "inspection_cycle_code")
    private String inspectionCycleCode;

    /**
     * 资产状态
     */
    @NotNull(message = " 资产状态不能为空",groups = AssetCreateChecks.class)
    @Column(name = "asset_status")
    private String assetStatus;

    /**
     * 资产状态编号
     */
    @NotNull(message = " 资产状态编号不能为空",groups = AssetCreateChecks.class)
    @Column(name = "asset_status_code")
    private String assetStatusCode;

    /**
     * 创建日期
     */
    @Column(name = "create_date")
    private String createDate;

    /**
     * 更新日期
     */
    @Column(name = "update_date")
    private String updateDate;

    public interface AssetCreateChecks {

    }

    public interface AssetUpdateChecks {

    }
    
    
    /**
     * 获取资产id
     *
     * @return id - 资产id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置资产id
     *
     * @param id 资产id
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
     * 获取资产类型编号
     *
     * @return asset_type_code - 资产类型编号
     */
    public String getAssetTypeCode() {
        return assetTypeCode;
    }

    /**
     * 设置资产类型编号
     *
     * @param assetTypeCode 资产类型编号
     */
    public void setAssetTypeCode(String assetTypeCode) {
        this.assetTypeCode = assetTypeCode;
    }

    /**
     * 获取资产类型
     *
     * @return asset_type - 资产类型
     */
    public String getAssetType() {
        return assetType;
    }

    /**
     * 设置资产类型
     *
     * @param assetType 资产类型
     */
    public void setAssetType(String assetType) {
        this.assetType = assetType;
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
     * @return postion_code - 位置编号
     */
    public String getPostionCode() {
        return postionCode;
    }

    /**
     * 设置位置编号
     *
     * @param postionCode 位置编号
     */
    public void setPostionCode(String postionCode) {
        this.postionCode = postionCode;
    }

    /**
     * 获取位置名称
     *
     * @return positon_name - 位置名称
     */
    public String getPositonName() {
        return positonName;
    }

    /**
     * 设置位置名称
     *
     * @param positonName 位置名称
     */
    public void setPositonName(String positonName) {
        this.positonName = positonName;
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
     * 获取巡检周期
     *
     * @return inspection_cycle - 巡检周期
     */
    public String getInspectionCycle() {
        return inspectionCycle;
    }

    /**
     * 设置巡检周期
     *
     * @param inspectionCycle 巡检周期
     */
    public void setInspectionCycle(String inspectionCycle) {
        this.inspectionCycle = inspectionCycle;
    }

    /**
     * 获取巡检周期编号
     *
     * @return inspection_cycle_code - 巡检周期编号
     */
    public String getInspectionCycleCode() {
        return inspectionCycleCode;
    }

    /**
     * 设置巡检周期编号
     *
     * @param inspectionCycleCode 巡检周期编号
     */
    public void setInspectionCycleCode(String inspectionCycleCode) {
        this.inspectionCycleCode = inspectionCycleCode;
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
     * 获取创建日期
     *
     * @return create_date - 创建日期
     */
    public String getCreateDate() {
        return createDate;
    }

    /**
     * 设置创建日期
     *
     * @param createDate 创建日期
     */
    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    /**
     * 获取更新日期
     *
     * @return update_date - 更新日期
     */
    public String getUpdateDate() {
        return updateDate;
    }

    /**
     * 设置更新日期
     *
     * @param updateDate 更新日期
     */
    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }
}