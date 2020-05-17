package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "课程")
@Table(name = "t_courses")
public class Courses {
    /**
     * 课程编号（系统自动生成）
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = CoursesUpdateChecks.class)
    @ApiModelProperty(value = "课程编号（系统自动生成）", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 课程编码（自编）
     */
    @ApiModelProperty(value = "课程编码（自编）", name = "courseCode", required = false, example = "10001")
    @Column(name = "course_code")
    private String courseCode;

    /**
     * 课程名称
     */
    @ApiModelProperty(value = "课程名称", name = "courseName", required = false, example = "汽车机械基础")
    @Column(name = "course_name")
    private String courseName;

    /**
     * 课程类型
     */
    @ApiModelProperty(value = "课程类型", name = "courseType", required = false, example = "实训课")
    @Column(name = "course_type")
    private String courseType;

    /**
     * 课程类型编号
     */
    @ApiModelProperty(value = "课程类型编号", name = "courseTypeCode", required = false, example = "1")
    @Column(name = "course_type_code")
    private String courseTypeCode;

    /**
     * 课程负责人
     */
    @ApiModelProperty(value = "课程负责人", name = "courseDirector", required = false, example = "李旭")
    @Column(name = "course_director")
    private String courseDirector;

    /**
     * 课程负责人编号
     */
    @ApiModelProperty(value = "课程负责人编号", name = "courseDirectorId", required = false, example = "1")
    @Column(name = "course_director_id")
    private Integer courseDirectorId;

    /**
     * 创建日期
     */
    @ApiModelProperty(value = "创建日期", name = "createTime", required = false, example = "2020-04-24")
    @Column(name = "create_date")
    private String createDate;

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
    
    
    public interface CoursesCreateChecks {}

    public interface CoursesUpdateChecks {}

    /**
     * 获取课程编号（系统自动生成）
     *
     * @return id - 课程编号（系统自动生成）
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置课程编号（系统自动生成）
     *
     * @param id 课程编号（系统自动生成）
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取课程编码（自编）
     *
     * @return course_code - 课程编码（自编）
     */
    public String getCourseCode() {
        return courseCode;
    }

    /**
     * 设置课程编码（自编）
     *
     * @param courseCode 课程编码（自编）
     */
    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    /**
     * 获取课程名称
     *
     * @return course_name - 课程名称
     */
    public String getCourseName() {
        return courseName;
    }

    /**
     * 设置课程名称
     *
     * @param courseName 课程名称
     */
    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    /**
     * 获取课程类型
     *
     * @return course_type - 课程类型
     */
    public String getCourseType() {
        return courseType;
    }

    /**
     * 设置课程类型
     *
     * @param courseType 课程类型
     */
    public void setCourseType(String courseType) {
        this.courseType = courseType;
    }

    /**
     * 获取课程类型编号
     *
     * @return course_type_code - 课程类型编号
     */
    public String getCourseTypeCode() {
        return courseTypeCode;
    }

    /**
     * 设置课程类型编号
     *
     * @param courseTypeCode 课程类型编号
     */
    public void setCourseTypeCode(String courseTypeCode) {
        this.courseTypeCode = courseTypeCode;
    }

    /**
     * 获取课程负责人
     *
     * @return course_director - 课程负责人
     */
    public String getCourseDirector() {
        return courseDirector;
    }

    /**
     * 设置课程负责人
     *
     * @param courseDirector 课程负责人
     */
    public void setCourseDirector(String courseDirector) {
        this.courseDirector = courseDirector;
    }

    /**
     * 获取课程负责人编号
     *
     * @return course_director_id - 课程负责人编号
     */
    public Integer getCourseDirectorId() {
        return courseDirectorId;
    }

    /**
     * 设置课程负责人编号
     *
     * @param courseDirectorId 课程负责人编号
     */
    public void setCourseDirectorId(Integer courseDirectorId) {
        this.courseDirectorId = courseDirectorId;
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