package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_teaching_plan_re_file")
@ApiModel(description = "教案关联文件")
public class TeachingPlanReFile {
    /**
     * 编号
     */
    @Id
    @NotNull(groups = TeachingPlanReFileUpdateChecks.class)
    @ApiModelProperty(value = "编号", name = "id", required = false, example = "1")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 文件名称
     */
    @ApiModelProperty(value = "文件名称", name = "fileName", required = false, example = "构件静力分析讲义-1.doc")
    @Column(name = "file_name")
    private String fileName;

    /**
     * 文件路径
     */
    @ApiModelProperty(value = "文件路径", name = "filePath", required = false, example = "/file/构件静力分析讲义-1.doc")
    @Column(name = "file_path")
    private String filePath;

    /**
     * 教案编号
     */
    @ApiModelProperty(value = "教案编号", name = "techingPlanId", required = false, example = "1")
    @Column(name = "teching_plan_id")
    private Integer techingPlanId;

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

    
    public interface TeachingPlanReFileCreateChecks {}

    public interface TeachingPlanReFileUpdateChecks {}
    
    /**
     * 获取编号
     *
     * @return id - 编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置编号
     *
     * @param id 编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取文件名称
     *
     * @return file_name - 文件名称
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * 设置文件名称
     *
     * @param fileName 文件名称
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     * 获取文件路径
     *
     * @return file_path - 文件路径
     */
    public String getFilePath() {
        return filePath;
    }

    /**
     * 设置文件路径
     *
     * @param filePath 文件路径
     */
    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    /**
     * 获取教案编号
     *
     * @return teching_plan_id - 教案编号
     */
    public Integer getTechingPlanId() {
        return techingPlanId;
    }

    /**
     * 设置教案编号
     *
     * @param techingPlanId 教案编号
     */
    public void setTechingPlanId(Integer techingPlanId) {
        this.techingPlanId = techingPlanId;
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