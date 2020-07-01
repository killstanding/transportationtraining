package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_course_arrangement")
@ApiModel(description = "排课")
public class CourseArrangement  extends BaseRowModel{
    /**
     * 排课编号（系统自动生成）
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = CourseArrangementUpdateChecks.class)
    @ApiModelProperty(value = "排课编号（系统自动生成）", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 周编号
     */
    @ApiModelProperty(value = "周编号", name = "weekId", required = false, example = "1")
    @Column(name = "week_id")
    private Integer weekId;

    /**
     * 周名称
     */
    @ApiModelProperty(value = "周名称", name = "weekName", required = false, example = "2020年 第19周 (5月4日-5月10日)")
    @Column(name = "week_name")
    @ExcelProperty(value = {"周","周"},index = 0)
    private String weekName;

    /**
     * 节次名称
     */
    @ExcelProperty(value = {"节次","节次"},index = 1)
    @ApiModelProperty(value = "节次名称", name = "sectionName", required = false, example = "1-2")
    @Column(name = "section_name")
    private String sectionName;

    /**
     * 课程名称
     */
    @ExcelProperty(value = {"课程","课程"},index = 2)
    @ApiModelProperty(value = "课程名称", name = "courseName", required = false, example = "车身电气系统")
    @Column(name = "course_name")
    private String courseName;

    /**
     * 课程编号
     */
    @ApiModelProperty(value = "课程编号", name = "courseId", required = false, example = "1")
    @Column(name = "course_id")
    private Integer courseId;

    /**
     * 班级
     */
    @ExcelProperty(value = {"班级","班级"},index = 3)
    @ApiModelProperty(value = "班级", name = "className", required = false, example = "17汽运1501")
    @Column(name = "class_name")
    private String className;

    /**
     * 班级编号
     */
    @ApiModelProperty(value = "班级编号", name = "classId", required = false, example = "1")
    @Column(name = "class_id")
    private String classId;

    /**
     * 人数
     */
    @ExcelProperty(value = {"人数","人数"},index = 4)
    @ApiModelProperty(value = "人数", name = "numberOfPeople", required = false, example = "28")
    @Column(name = "number_of_people")
    private Integer numberOfPeople;

    /**
     * 主讲教师
     */
    @ExcelProperty(value = {"主讲教师","主讲教师"},index = 5)
    @ApiModelProperty(value = "主讲教师", name = "lecturerlTeacher", required = false, example = "张新敏")
    @Column(name = "lecturerl_teacher")
    private String lecturerlTeacher;

    /**
     * 主讲教师编号
     */
    @ApiModelProperty(value = "主讲教师编号", name = "lecturerlTeacherId", required = false, example = "1")
    @Column(name = "lecturerl_teacher_id")
    private Integer lecturerlTeacherId;

    /**
     * 区域教师
     */
    @ExcelProperty(value = {"区域教师","区域教师"},index = 6)
    @ApiModelProperty(value = "区域教师", name = "regionalTeacher", required = false, example = "李旭")
    @Column(name = "regional_teacher")
    private String regionalTeacher;

    /**
     * 区域教师编号
     */
    @ApiModelProperty(value = "区域教师编号", name = "regionalTeacherId", required = false, example = "2")
    @Column(name = "regional_teacher_id")
    private Integer regionalTeacherId;

    /**
     * 辅助教师
     */
    @ExcelProperty(value = {"辅助教师","辅助教师"},index = 7)
    @ApiModelProperty(value = "辅助教师", name = "assistantTeacher", required = false, example = "陈俊杰")
    @Column(name = "assistant_teacher")
    private String assistantTeacher;

    /**
     * 辅助教师编号
     */
    @ApiModelProperty(value = "辅助教师编号", name = "assistantTeacherId", required = false, example = "3")
    @Column(name = "assistant_teacher_id")
    private Integer assistantTeacherId;

    /**
     * 实训室名称
     */
    @ExcelProperty(value = {"实训室","实训室"},index = 8)
    @ApiModelProperty(value = "实训室名称", name = "trainingRoomName", required = false, example = "大众整车实训室")
    @Column(name = "training_room_name")
    private String trainingRoomName;

    /**
     * 实训室编号
     */
    @ApiModelProperty(value = "实训室编号", name = "trainingRoomId", required = false, example = "1")
    @Column(name = "training_room_id")
    private Integer trainingRoomId;

    /**
     * 教案名称
     */
    @ExcelProperty(value = {"教案","教案"},index = 9)
    @ApiModelProperty(value = "教案名称", name = "teachingPlanName", required = false, example = "构件静力分析讲义-1")
    @Column(name = "teaching_plan_name")
    private String teachingPlanName;

    /**
     * 教案编号
     */
    @ApiModelProperty(value = "教案编号", name = "teachingPlanId", required = false, example = "1")
    @Column(name = "teaching_plan_id")
    private Integer teachingPlanId;

    /**
     * 实训内容
     */
    @ExcelProperty(value = {"实训内容","实训内容"},index = 10)
    @ApiModelProperty(value = "实训内容", name = "trainingContent", required = false, example = "实操考核")
    @Column(name = "training_content")
    private String trainingContent;

    /**
     * 设备数量
     */
    @ExcelProperty(value = {"设备数量","设备数量"},index = 11)
    @ApiModelProperty(value = "设备数量", name = "numberOfDevices", required = false, example = "3")
    @Column(name = "number_of_devices")
    private Integer numberOfDevices;

    /**
     * 耗材数量
     */
    @ExcelProperty(value = {"耗材数量","耗材数量"},index = 12)
    @ApiModelProperty(value = "耗材数量", name = "numberOfConsumables", required = false, example = "15")
    @Column(name = "number_of_consumables")
    private Integer numberOfConsumables;

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
     * 工具数量
     */
    @ExcelProperty(value = {"工具数量","工具数量"},index = 13)
    @ApiModelProperty(value = "工具数量", name = "numberOfTools", required = false, example = "15")
    @Column(name = "number_of_tools")
    private Integer numberOfTools;
    
    /**
     * 是否锁定 0 否 1 是
     */
    @ApiModelProperty(value = "是否锁定 0 否 1 是", name = "isLock", required = false, example = "0")
    @Column(name = "is_lock")
    private String isLock;
    
    /**
     * 课程日期2020-06-28
     */
    @Column(name = "course_date")
    private String courseDate;
    
    public interface CourseArrangementCreateChecks {}

    public interface CourseArrangementUpdateChecks {}

    /**
     * 获取排课编号（系统自动生成）
     *
     * @return id - 排课编号（系统自动生成）
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置排课编号（系统自动生成）
     *
     * @param id 排课编号（系统自动生成）
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取周编号
     *
     * @return week_id - 周编号
     */
    public Integer getWeekId() {
        return weekId;
    }

    /**
     * 设置周编号
     *
     * @param weekId 周编号
     */
    public void setWeekId(Integer weekId) {
        this.weekId = weekId;
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
     * 获取节次名称
     *
     * @return section_name - 节次名称
     */
    public String getSectionName() {
        return sectionName;
    }

    /**
     * 设置节次名称
     *
     * @param sectionName 节次名称
     */
    public void setSectionName(String sectionName) {
        this.sectionName = sectionName;
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
     * 获取课程编号
     *
     * @return course_id - 课程编号
     */
    public Integer getCourseId() {
        return courseId;
    }

    /**
     * 设置课程编号
     *
     * @param courseId 课程编号
     */
    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    /**
     * 获取班级
     *
     * @return class_name - 班级
     */
    public String getClassName() {
        return className;
    }

    /**
     * 设置班级
     *
     * @param className 班级
     */
    public void setClassName(String className) {
        this.className = className;
    }

    /**
     * 获取班级编号
     *
     * @return class_id - 班级编号
     */
    public String getClassId() {
        return classId;
    }

    /**
     * 设置班级编号
     *
     * @param classId 班级编号
     */
    public void setClassId(String classId) {
        this.classId = classId;
    }

    /**
     * 获取人数
     *
     * @return number_of_people - 人数
     */
    public Integer getNumberOfPeople() {
        return numberOfPeople;
    }

    /**
     * 设置人数
     *
     * @param numberOfPeople 人数
     */
    public void setNumberOfPeople(Integer numberOfPeople) {
        this.numberOfPeople = numberOfPeople;
    }

    /**
     * 获取主讲教师
     *
     * @return lecturerl_teacher - 主讲教师
     */
    public String getLecturerlTeacher() {
        return lecturerlTeacher;
    }

    /**
     * 设置主讲教师
     *
     * @param lecturerlTeacher 主讲教师
     */
    public void setLecturerlTeacher(String lecturerlTeacher) {
        this.lecturerlTeacher = lecturerlTeacher;
    }

    /**
     * 获取主讲教师编号
     *
     * @return lecturerl_teacher_id - 主讲教师编号
     */
    public Integer getLecturerlTeacherId() {
        return lecturerlTeacherId;
    }

    /**
     * 设置主讲教师编号
     *
     * @param lecturerlTeacherId 主讲教师编号
     */
    public void setLecturerlTeacherId(Integer lecturerlTeacherId) {
        this.lecturerlTeacherId = lecturerlTeacherId;
    }

    /**
     * 获取区域教师
     *
     * @return regional_teacher - 区域教师
     */
    public String getRegionalTeacher() {
        return regionalTeacher;
    }

    /**
     * 设置区域教师
     *
     * @param regionalTeacher 区域教师
     */
    public void setRegionalTeacher(String regionalTeacher) {
        this.regionalTeacher = regionalTeacher;
    }

    /**
     * 获取区域教师编号
     *
     * @return regional_teacher_id - 区域教师编号
     */
    public Integer getRegionalTeacherId() {
        return regionalTeacherId;
    }

    /**
     * 设置区域教师编号
     *
     * @param regionalTeacherId 区域教师编号
     */
    public void setRegionalTeacherId(Integer regionalTeacherId) {
        this.regionalTeacherId = regionalTeacherId;
    }

    /**
     * 获取辅助教师
     *
     * @return assistant_teacher - 辅助教师
     */
    public String getAssistantTeacher() {
        return assistantTeacher;
    }

    /**
     * 设置辅助教师
     *
     * @param assistantTeacher 辅助教师
     */
    public void setAssistantTeacher(String assistantTeacher) {
        this.assistantTeacher = assistantTeacher;
    }

    /**
     * 获取辅助教师编号
     *
     * @return assistant_teacher_id - 辅助教师编号
     */
    public Integer getAssistantTeacherId() {
        return assistantTeacherId;
    }

    /**
     * 设置辅助教师编号
     *
     * @param assistantTeacherId 辅助教师编号
     */
    public void setAssistantTeacherId(Integer assistantTeacherId) {
        this.assistantTeacherId = assistantTeacherId;
    }

    /**
     * 获取实训室名称
     *
     * @return training_room_name - 实训室名称
     */
    public String getTrainingRoomName() {
        return trainingRoomName;
    }

    /**
     * 设置实训室名称
     *
     * @param trainingRoomName 实训室名称
     */
    public void setTrainingRoomName(String trainingRoomName) {
        this.trainingRoomName = trainingRoomName;
    }

    /**
     * 获取实训室编号
     *
     * @return training_room_id - 实训室编号
     */
    public Integer getTrainingRoomId() {
        return trainingRoomId;
    }

    /**
     * 设置实训室编号
     *
     * @param trainingRoomId 实训室编号
     */
    public void setTrainingRoomId(Integer trainingRoomId) {
        this.trainingRoomId = trainingRoomId;
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
     * 获取教案编号
     *
     * @return teaching_plan_id - 教案编号
     */
    public Integer getTeachingPlanId() {
        return teachingPlanId;
    }

    /**
     * 设置教案编号
     *
     * @param teachingPlanId 教案编号
     */
    public void setTeachingPlanId(Integer teachingPlanId) {
        this.teachingPlanId = teachingPlanId;
    }

    /**
     * 获取实训内容
     *
     * @return training_content - 实训内容
     */
    public String getTrainingContent() {
        return trainingContent;
    }

    /**
     * 设置实训内容
     *
     * @param trainingContent 实训内容
     */
    public void setTrainingContent(String trainingContent) {
        this.trainingContent = trainingContent;
    }

    /**
     * 获取设备数量
     *
     * @return number_of_devices - 设备数量
     */
    public Integer getNumberOfDevices() {
        return numberOfDevices;
    }

    /**
     * 设置设备数量
     *
     * @param numberOfDevices 设备数量
     */
    public void setNumberOfDevices(Integer numberOfDevices) {
        this.numberOfDevices = numberOfDevices;
    }

    /**
     * 获取耗材数量
     *
     * @return number_of_consumables - 耗材数量
     */
    public Integer getNumberOfConsumables() {
        return numberOfConsumables;
    }

    /**
     * 设置耗材数量
     *
     * @param numberOfConsumables 耗材数量
     */
    public void setNumberOfConsumables(Integer numberOfConsumables) {
        this.numberOfConsumables = numberOfConsumables;
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
     * 获取工具数量
     *
     * @return number_of_tools - 工具数量
     */
    public Integer getNumberOfTools() {
        return numberOfTools;
    }

    /**
     * 设置工具数量
     *
     * @param numberOfTools 工具数量
     */
    public void setNumberOfTools(Integer numberOfTools) {
        this.numberOfTools = numberOfTools;
    }
    
    /**
     * 获取是否锁定 0 否 1 是
     *
     * @return is_lock - 是否锁定 0 否 1 是
     */
    public String getIsLock() {
        return isLock;
    }

    /**
     * 设置是否锁定 0 否 1 是
     *
     * @param isLock 是否锁定 0 否 1 是
     */
    public void setIsLock(String isLock) {
        this.isLock = isLock;
    }

    /**
     * 获取课程日期2020-06-28
     *
     * @return course_date - 课程日期2020-06-28
     */
    public String getCourseDate() {
        return courseDate;
    }

    /**
     * 设置课程日期2020-06-28
     *
     * @param courseDate 课程日期2020-06-28
     */
    public void setCourseDate(String courseDate) {
        this.courseDate = courseDate;
    }
}