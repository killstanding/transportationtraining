package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "汇总统计月表")
@Table(name = "t_summary_statistics_month")
public class SummaryStatisticsMonth {
    /**
     * 汇总统计（系统自动生成）
     */
    @Id
    @NotNull(groups = SummaryStatisticsMonthUpdateChecks.class)
    @ApiModelProperty(value = "汇总统计月表编号（系统生成）", name = "id", required = false, example = "1")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 统计名称
     */
    @ApiModelProperty(value = "统计名称", name = "statisticsName", required = false, example = "实训室数")
    @Column(name = "statistics_name")
    private String statisticsName;

    /**
     * 统计类型
     */
    @ApiModelProperty(value = "统计类型", name = "statisticsCode", required = false, example = "training_room_total_num")
    @Column(name = "statistics_code")
    private String statisticsCode;

    /**
     * 统计结果
     */
    @ApiModelProperty(value = "统计结果", name = "statistics_value", required = false, example = "20")
    @Column(name = "statistics_value")
    private String statisticsValue;

    /**
     * 备注
     */
    @ApiModelProperty(value = "备注", name = "remark", required = false, example = "w无")
    private String remark;

    /**
     * 统计月份 2020-05
     */
    @ApiModelProperty(value = "统计月份", name = "statisticsMonth", required = false, example = "2020-05")
    @Column(name = "statistics_month")
    private String statisticsMonth;

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
     * 统计分类
     */
    @ApiModelProperty(value = "统计分类", name = "statisticsType", required = false, example = "汇总统计")
    @Column(name = "statistics_type")
    private String statisticsType;

    /**
     * 统计分类编号
     */
    @ApiModelProperty(value = "统计分类编号", name = "statisticsTypeCode", required = false, example = "statistics_type_summary")
    @Column(name = "statistics_type_code")
    private String statisticsTypeCode;
    
    /**
     * 统计年份2020
     */
    @ApiModelProperty(value = "统计年份", name = "statisticsYear", required = false, example = "2020")
    @Column(name = "statistics_year")
    private String statisticsYear;
    
    public interface SummaryStatisticsMonthChecks {}

    public interface SummaryStatisticsMonthUpdateChecks {}
    
    /**
     * 获取汇总统计（系统自动生成）
     *
     * @return id - 汇总统计（系统自动生成）
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置汇总统计（系统自动生成）
     *
     * @param id 汇总统计（系统自动生成）
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取统计名称
     *
     * @return statistics_name - 统计名称
     */
    public String getStatisticsName() {
        return statisticsName;
    }

    /**
     * 设置统计名称
     *
     * @param statisticsName 统计名称
     */
    public void setStatisticsName(String statisticsName) {
        this.statisticsName = statisticsName;
    }

    /**
     * 获取统计类型
     *
     * @return statistics_code - 统计类型
     */
    public String getStatisticsCode() {
        return statisticsCode;
    }

    /**
     * 设置统计类型
     *
     * @param statisticsCode 统计类型
     */
    public void setStatisticsCode(String statisticsCode) {
        this.statisticsCode = statisticsCode;
    }

    /**
     * 获取统计结果
     *
     * @return statistics_value - 统计结果
     */
    public String getStatisticsValue() {
        return statisticsValue;
    }

    /**
     * 设置统计结果
     *
     * @param statisticsValue 统计结果
     */
    public void setStatisticsValue(String statisticsValue) {
        this.statisticsValue = statisticsValue;
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
     * 获取统计日期 2020-05
     *
     * @return statistics_month - 统计日期 2020-05
     */
    public String getStatisticsMonth() {
        return statisticsMonth;
    }

    /**
     * 设置统计日期 2020-05
     *
     * @param statisticsMonth 统计日期 2020-05
     */
    public void setStatisticsMonth(String statisticsMonth) {
        this.statisticsMonth = statisticsMonth;
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
     * 获取统计分类
     *
     * @return statistics_type - 统计分类
     */
    public String getStatisticsType() {
        return statisticsType;
    }

    /**
     * 设置统计分类
     *
     * @param statisticsType 统计分类
     */
    public void setStatisticsType(String statisticsType) {
        this.statisticsType = statisticsType;
    }

    /**
     * 获取统计分类编号
     *
     * @return statistics_type_code - 统计分类编号
     */
    public String getStatisticsTypeCode() {
        return statisticsTypeCode;
    }

    /**
     * 设置统计分类编号
     *
     * @param statisticsTypeCode 统计分类编号
     */
    public void setStatisticsTypeCode(String statisticsTypeCode) {
        this.statisticsTypeCode = statisticsTypeCode;
    }
    
    /**
     * 获取统计年份2020
     *
     * @return statistics_year - 统计年份2020
     */
    public String getStatisticsYear() {
        return statisticsYear;
    }

    /**
     * 设置统计年份2020
     *
     * @param statisticsYear 统计年份2020
     */
    public void setStatisticsYear(String statisticsYear) {
        this.statisticsYear = statisticsYear;
    }
}