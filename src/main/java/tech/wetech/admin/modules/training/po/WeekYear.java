package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_week_year")
public class WeekYear {
    /**
     * 周编号（系统自动生成）
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = WeekYearUpdateChecks.class)
    @ApiModelProperty(value = "周编号(系统生成)", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 周名称
     */
    @ApiModelProperty(value = "周名称", name = "weekName", required = false, example = "2020年 第19周 (5月4日-5月10日)")
    @Column(name = "week_name")
    private String weekName;

    /**
     * 起始日期
     */
    @ApiModelProperty(value = "起始日期", name = "weekName", required = false, example = "05-04")
    @Column(name = "start_date")
    private String startDate;

    /**
     * 结束日期
     */
    @ApiModelProperty(value = "结束日期", name = "endDate", required = false, example = "05-10")
    @Column(name = "end_date")
    private String endDate;

    /**
     * 年份
     */
    @ApiModelProperty(value = "年份", name = "year", required = false, example = "2020")
    private String year;

    /**
     * 备注
     */
    @ApiModelProperty(value = "备注", name = "remark", required = false, example = "无")
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

    public interface WeekYearCreateChecks {}

    public interface WeekYearUpdateChecks {}

    /**
     * 获取周编号（系统自动生成）
     *
     * @return id - 周编号（系统自动生成）
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置周编号（系统自动生成）
     *
     * @param id 周编号（系统自动生成）
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取周名称
     *
     * @return week_name - 周名称
     */
    public String getWeekName() {
        return weekName;
    }

    /**
     * 设置周名称
     *
     * @param weekName 周名称
     */
    public void setWeekName(String weekName) {
        this.weekName = weekName;
    }

    /**
     * 获取起始日期
     *
     * @return start_date - 起始日期
     */
    public String getStartDate() {
        return startDate;
    }

    /**
     * 设置起始日期
     *
     * @param startDate 起始日期
     */
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    /**
     * 获取结束日期
     *
     * @return end_date - 结束日期
     */
    public String getEndDate() {
        return endDate;
    }

    /**
     * 设置结束日期
     *
     * @param endDate 结束日期
     */
    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    /**
     * 获取年份
     *
     * @return year - 年份
     */
    public String getYear() {
        return year;
    }

    /**
     * 设置年份
     *
     * @param year 年份
     */
    public void setYear(String year) {
        this.year = year;
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