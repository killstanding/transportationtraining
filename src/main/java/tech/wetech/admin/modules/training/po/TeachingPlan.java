package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_teaching_plan")
@ApiModel(description = "教案")
public class TeachingPlan {
    /**
     * 教案编号（系统自动生成）
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = TeachingPlanUpdateChecks.class)
    @ApiModelProperty(value = "教案编号（系统自动生成）", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 教案名称
     */
    @ApiModelProperty(value = "教案名称", name = "teachingPlanName", required = false, example = "构件静力分析讲义-1")
    @Column(name = "teaching_plan_name")
    private String teachingPlanName;

    /**
     * 预计时长
     */
    @ApiModelProperty(value = "预计时长", name = "estimatedTimeDuration", required = false, example = "35分钟")
    @Column(name = "estimated_time_duration")
    private String estimatedTimeDuration;

    /**
     * 教案描述
     */
    @ApiModelProperty(value = "教案描述", name = "teachingPlanDescription", required = false, example = "理解静力学的基本概念，掌握工程中常见的约束和约束反力的画法，理解平面力系的合成和平和条件，能利用平衡的条件求解平面汇交力系的平衡问题。")
    @Column(name = "teaching_plan_description")
    private String teachingPlanDescription;

    /**
     * 文档附件名称
     */
    @ApiModelProperty(value = "文档附件名称", name = "documentName", required = false, example = "构件静力分析讲义-PPT")
    @Column(name = "document_name")
    private String documentName;

    /**
     * 文档附件路径
     */
    @ApiModelProperty(value = "文档附件路径", name = "documentPath", required = false, example = "./file/1.doc")
    @Column(name = "document_path")
    private String documentPath;

    /**
     * 视频名称
     */
    @ApiModelProperty(value = "视频名称", name = "videoName", required = false, example = " 构件静力分析讲义-视频 ")
    @Column(name = "video_name")
    private String videoName;

    /**
     * 视频路径
     */
    @ApiModelProperty(value = "视频路径", name = "videoPath", required = false, example = "./file/1.mp4")
    @Column(name = "video_path")
    private String videoPath;

    /**
     * 章节编号
     */
    @ApiModelProperty(value = "章节编号", name = "chapterId", required = false, example = "1")
    @Column(name = "chapter_id")
    private Integer chapterId;

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
    
    
    public interface TeachingPlanCreateChecks {}

    public interface TeachingPlanUpdateChecks {}

    /**
     * 获取教案编号（系统自动生成）
     *
     * @return id - 教案编号（系统自动生成）
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置教案编号（系统自动生成）
     *
     * @param id 教案编号（系统自动生成）
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取教案名称
     *
     * @return teaching_plan_name - 教案名称
     */
    public String getTeachingPlanName() {
        return teachingPlanName;
    }

    /**
     * 设置教案名称
     *
     * @param teachingPlanName 教案名称
     */
    public void setTeachingPlanName(String teachingPlanName) {
        this.teachingPlanName = teachingPlanName;
    }

    /**
     * 获取预计时长
     *
     * @return estimated_time_duration - 预计时长
     */
    public String getEstimatedTimeDuration() {
        return estimatedTimeDuration;
    }

    /**
     * 设置预计时长
     *
     * @param estimatedTimeDuration 预计时长
     */
    public void setEstimatedTimeDuration(String estimatedTimeDuration) {
        this.estimatedTimeDuration = estimatedTimeDuration;
    }

    /**
     * 获取教案描述
     *
     * @return teaching_plan_description - 教案描述
     */
    public String getTeachingPlanDescription() {
        return teachingPlanDescription;
    }

    /**
     * 设置教案描述
     *
     * @param teachingPlanDescription 教案描述
     */
    public void setTeachingPlanDescription(String teachingPlanDescription) {
        this.teachingPlanDescription = teachingPlanDescription;
    }

    /**
     * 获取文档附件名称
     *
     * @return document_name - 文档附件名称
     */
    public String getDocumentName() {
        return documentName;
    }

    /**
     * 设置文档附件名称
     *
     * @param documentName 文档附件名称
     */
    public void setDocumentName(String documentName) {
        this.documentName = documentName;
    }

    /**
     * 获取文档附件路径
     *
     * @return document_path - 文档附件路径
     */
    public String getDocumentPath() {
        return documentPath;
    }

    /**
     * 设置文档附件路径
     *
     * @param documentPath 文档附件路径
     */
    public void setDocumentPath(String documentPath) {
        this.documentPath = documentPath;
    }

    /**
     * 获取视频名称
     *
     * @return video_name - 视频名称
     */
    public String getVideoName() {
        return videoName;
    }

    /**
     * 设置视频名称
     *
     * @param videoName 视频名称
     */
    public void setVideoName(String videoName) {
        this.videoName = videoName;
    }

    /**
     * 获取视频路径
     *
     * @return video_path - 视频路径
     */
    public String getVideoPath() {
        return videoPath;
    }

    /**
     * 设置视频路径
     *
     * @param videoPath 视频路径
     */
    public void setVideoPath(String videoPath) {
        this.videoPath = videoPath;
    }

    /**
     * 获取章节编号
     *
     * @return chapter_id - 章节编号
     */
    public Integer getChapterId() {
        return chapterId;
    }

    /**
     * 设置章节编号
     *
     * @param chapterId 章节编号
     */
    public void setChapterId(Integer chapterId) {
        this.chapterId = chapterId;
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