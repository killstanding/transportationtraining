package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_chapters")
@ApiModel(description = "章节")
public class Chapters extends BaseRowModel{
    /**
     * 章节编号（系统自动生成）
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = ChaptersUpdateChecks.class)
    @ExcelProperty(value = {"章节编号（系统自动生成）","章节编号（系统自动生成）"},index = 0)
    @ApiModelProperty(value = "章节编号（系统自动生成）", name = "id", required = false, example = "1")
    private Integer id;

    /**
     * 章节名称
     */
    @ExcelProperty(value = {"章节名称","章节名称"},index = 1)
    @ApiModelProperty(value = "章节名称", name = "chapterName", required = false, example = "第1章 汽车常用构件力学分析")
    @Column(name = "chapter_name")
    private String chapterName;

    /**
     * 章节排序
     */
    @ExcelProperty(value = {"章节排序","章节排序"},index = 2)
    @ApiModelProperty(value = "章节排序", name = "chapterSort", required = false, example = "1")
    @Column(name = "chapter_sort")
    private String chapterSort;

    /**
     * 章节层级
     */
    @ExcelProperty(value = {"章节层级","章节层级"},index = 3)
    @ApiModelProperty(value = "章节层级", name = "chapterLevel", required = false, example = "1")
    @Column(name = "chapter_level")
    private String chapterLevel;

    /**
     * 实训室名称（可以多个用;号分隔）
     */
    @ApiModelProperty(value = "实训室名称（可以多个用;号分隔）", name = "trainingRooms", required = false, example = "丰田T-TEP整车实训区")
    @Column(name = "training_rooms")
    private String trainingRooms;

    /**
     * 实训室编号（可以多个用;号分隔）
     */
    @ApiModelProperty(value = "实训室编号（可以多个用;号分隔）", name = "trainingRoomIds", required = false, example = "1;2")
    @Column(name = "training_room_ids")
    private String trainingRoomIds;

    /**
     * 教案名称
     */
    @ApiModelProperty(value = "教案名称", name = "teachingPlan", required = false, example = "01 构件静力分析讲义-1")
    @Column(name = "teaching_plan")
    private String teachingPlan;

    /**
     * 教案编号
     */
    @ApiModelProperty(value = "教案名称编号", name = "teachingPlanId", required = false, example = "1")
    @Column(name = "teaching_plan_id")
    private Integer teachingPlanId;

    /**
     * 所需设备（可以多个用;号分隔）
     */
    @ApiModelProperty(value = "所需设备（可以多个用;号分隔）", name = "devicesRequired", required = false, example = "丰田皇冠教具车;一汽大众教具车")
    @Column(name = "devices_required")
    private String devicesRequired;

    /**
     * 所需设备编号（可以多个用;号分隔）
     */
    @ApiModelProperty(value = "所需设备（可以多个用;号分隔）", name = "deviceIdsRequired", required = false, example = "1;2")
    @Column(name = "device_ids_required")
    private String deviceIdsRequired;

    /**
     * 所需耗材（可以多个用;号分隔）
     */
    @ApiModelProperty(value = "所需耗材（可以多个用;号分隔）", name = "consumablesRequired", required = false, example = "汽车防护三件套")
    @Column(name = "consumables_required")
    private String consumablesRequired;

    /**
     * 所需耗材编号（可以多个用;号分隔）
     */
    @ApiModelProperty(value = "所需耗材编号（可以多个用;号分隔）", name = "consumablesIdsRequired", required = false, example = "1")
    @Column(name = "consumables_ids_required")
    private String consumablesIdsRequired;

    /**
     * 课程编号
     */
    @ExcelProperty(value = {"课程编号","课程编号"},index = 4)
    @ApiModelProperty(value = "课程编号", name = "courseId", required = false, example = "1")
    @Column(name = "course_id")
    private Integer courseId;

    /**
     * 父节点
     */
    @ExcelProperty(value = {"父节点","父节点"},index = 5)
    @ApiModelProperty(value = "父节点", name = "parentId", required = false, example = "1")
    @Column(name = "parent_id")
    private Integer parentId;

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
    
    
    public interface ChaptersCreateChecks {}

    public interface ChaptersUpdateChecks {}

    /**
     * 获取章节编号（系统自动生成）
     *
     * @return id - 章节编号（系统自动生成）
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置章节编号（系统自动生成）
     *
     * @param id 章节编号（系统自动生成）
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取章节名称
     *
     * @return chapter_name - 章节名称
     */
    public String getChapterName() {
        return chapterName;
    }

    /**
     * 设置章节名称
     *
     * @param chapterName 章节名称
     */
    public void setChapterName(String chapterName) {
        this.chapterName = chapterName;
    }

    /**
     * 获取章节排序
     *
     * @return chapter_sort - 章节排序
     */
    public String getChapterSort() {
        return chapterSort;
    }

    /**
     * 设置章节排序
     *
     * @param chapterSort 章节排序
     */
    public void setChapterSort(String chapterSort) {
        this.chapterSort = chapterSort;
    }

    /**
     * 获取章节层级
     *
     * @return chapter_level - 章节层级
     */
    public String getChapterLevel() {
        return chapterLevel;
    }

    /**
     * 设置章节层级
     *
     * @param chapterLevel 章节层级
     */
    public void setChapterLevel(String chapterLevel) {
        this.chapterLevel = chapterLevel;
    }

    /**
     * 获取实训室名称（可以多个用;号分隔）
     *
     * @return training_rooms - 实训室名称（可以多个用;号分隔）
     */
    public String getTrainingRooms() {
        return trainingRooms;
    }

    /**
     * 设置实训室名称（可以多个用;号分隔）
     *
     * @param trainingRooms 实训室名称（可以多个用;号分隔）
     */
    public void setTrainingRooms(String trainingRooms) {
        this.trainingRooms = trainingRooms;
    }

    /**
     * 获取实训室编号（可以多个用;号分隔）
     *
     * @return training_room_ids - 实训室编号（可以多个用;号分隔）
     */
    public String getTrainingRoomIds() {
        return trainingRoomIds;
    }

    /**
     * 设置实训室编号（可以多个用;号分隔）
     *
     * @param trainingRoomIds 实训室编号（可以多个用;号分隔）
     */
    public void setTrainingRoomIds(String trainingRoomIds) {
        this.trainingRoomIds = trainingRoomIds;
    }

    /**
     * 获取教案名称
     *
     * @return teaching_plan - 教案名称
     */
    public String getTeachingPlan() {
        return teachingPlan;
    }

    /**
     * 设置教案名称
     *
     * @param teachingPlan 教案名称
     */
    public void setTeachingPlan(String teachingPlan) {
        this.teachingPlan = teachingPlan;
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
     * 获取所需设备（可以多个用;号分隔）
     *
     * @return devices_required - 所需设备（可以多个用;号分隔）
     */
    public String getDevicesRequired() {
        return devicesRequired;
    }

    /**
     * 设置所需设备（可以多个用;号分隔）
     *
     * @param devicesRequired 所需设备（可以多个用;号分隔）
     */
    public void setDevicesRequired(String devicesRequired) {
        this.devicesRequired = devicesRequired;
    }

    /**
     * 获取所需设备编号（可以多个用;号分隔）
     *
     * @return device_ids_required - 所需设备编号（可以多个用;号分隔）
     */
    public String getDeviceIdsRequired() {
        return deviceIdsRequired;
    }

    /**
     * 设置所需设备编号（可以多个用;号分隔）
     *
     * @param deviceIdsRequired 所需设备编号（可以多个用;号分隔）
     */
    public void setDeviceIdsRequired(String deviceIdsRequired) {
        this.deviceIdsRequired = deviceIdsRequired;
    }

    /**
     * 获取所需耗材（可以多个用;号分隔）
     *
     * @return consumables_required - 所需耗材（可以多个用;号分隔）
     */
    public String getConsumablesRequired() {
        return consumablesRequired;
    }

    /**
     * 设置所需耗材（可以多个用;号分隔）
     *
     * @param consumablesRequired 所需耗材（可以多个用;号分隔）
     */
    public void setConsumablesRequired(String consumablesRequired) {
        this.consumablesRequired = consumablesRequired;
    }

    /**
     * 获取所需耗材编号（可以多个用;号分隔）
     *
     * @return consumables_ids_required - 所需耗材编号（可以多个用;号分隔）
     */
    public String getConsumablesIdsRequired() {
        return consumablesIdsRequired;
    }

    /**
     * 设置所需耗材编号（可以多个用;号分隔）
     *
     * @param consumablesIdsRequired 所需耗材编号（可以多个用;号分隔）
     */
    public void setConsumablesIdsRequired(String consumablesIdsRequired) {
        this.consumablesIdsRequired = consumablesIdsRequired;
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
     * 获取父节点
     *
     * @return parent_id - 父节点
     */
    public Integer getParentId() {
        return parentId;
    }

    /**
     * 设置父节点
     *
     * @param parentId 父节点
     */
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
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