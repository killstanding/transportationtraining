package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Table(name = "t_courses_re_training_room")
@ApiModel(description = "课程关联实训室信息")
public class CoursesReTrainingRoom {
    /**
     * 编号
     */
    @Id
    @NotNull(groups = CoursesReTrainingRoomUpdateChecks.class)
    @ApiModelProperty(value = "编号(系统生成)", name = "id", required = false, example = "1")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 实训室编号（系统自动生成）
     */
    @ApiModelProperty(value = "实训室编码（系统自动生成）", name = "roomId", required = false, example = "1")
    @Column(name = "room_id")
    private Integer roomId;

    /**
     * 实训室编码（自编）
     */
    @ApiModelProperty(value = "实训室编码（自编）", name = "roomCode", required = false, example = "RC1001")
    @Column(name = "room_code")
    private String roomCode;

    /**
     * 实训室名称
     */
    @ApiModelProperty(value = "实训室名称", name = "roomName", required = false, example = "丰田T-TEP整车实训区")
    @Column(name = "room_name")
    private String roomName;

    /**
     * 所属系统编号
     */
    @ApiModelProperty(value = "所属系统编号", name = "belongSysId", required = false, example = "1")
    @Column(name = "belong_sys_id")
    private Integer belongSysId;

    /**
     * 所属系
     */
    @ApiModelProperty(value = "所属系", name = "belongSys", required = false, example = "南校区汽车工程系")
    @Column(name = "belong_sys")
    private String belongSys;

    /**
     * 位置信息编号
     */
    @ApiModelProperty(value = "位置编号", name = "postionCode", required = false, example = "1")
    @Column(name = "room_position_code")
    private Integer roomPositionCode;

    /**
     * 位置
     */
    @ApiModelProperty(value = "位置名称", name = "roomPosition", required = false, example = "田T-TEP整车实训区")
    @Column(name = "room_position")
    private String roomPosition;

    /**
     * 管理员编号
     */
    @ApiModelProperty(value = "管理员编号", name = "roomAdminId", required = false, example = "1")
    @Column(name = "room_admin_id")
    private Integer roomAdminId;

    /**
     * 管理员
     */
    @ApiModelProperty(value = "管理员", name = "roomAdmin", required = false, example = "admin")
    @Column(name = "room_admin")
    private String roomAdmin;

    /**
     * 课程编号
     */
    @ApiModelProperty(value = "课程编号", name = "courseId", required = false, example = "1")    
    @Column(name = "course_id")
    private Integer courseId;

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

    
    public interface CoursesReTrainingRoomCreateChecks {}

    public interface CoursesReTrainingRoomUpdateChecks {}
    
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
     * 获取实训室编号（系统自动生成）
     *
     * @return room_id - 实训室编号（系统自动生成）
     */
    public Integer getRoomId() {
        return roomId;
    }

    /**
     * 设置实训室编号（系统自动生成）
     *
     * @param roomId 实训室编号（系统自动生成）
     */
    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    /**
     * 获取实训室编码（自编）
     *
     * @return room_code - 实训室编码（自编）
     */
    public String getRoomCode() {
        return roomCode;
    }

    /**
     * 设置实训室编码（自编）
     *
     * @param roomCode 实训室编码（自编）
     */
    public void setRoomCode(String roomCode) {
        this.roomCode = roomCode;
    }

    /**
     * 获取实训室名称
     *
     * @return room_name - 实训室名称
     */
    public String getRoomName() {
        return roomName;
    }

    /**
     * 设置实训室名称
     *
     * @param roomName 实训室名称
     */
    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    /**
     * 获取所属系统编号
     *
     * @return belong_sys_id - 所属系统编号
     */
    public Integer getBelongSysId() {
        return belongSysId;
    }

    /**
     * 设置所属系统编号
     *
     * @param belongSysId 所属系统编号
     */
    public void setBelongSysId(Integer belongSysId) {
        this.belongSysId = belongSysId;
    }

    /**
     * 获取所属系
     *
     * @return belong_sys - 所属系
     */
    public String getBelongSys() {
        return belongSys;
    }

    /**
     * 设置所属系
     *
     * @param belongSys 所属系
     */
    public void setBelongSys(String belongSys) {
        this.belongSys = belongSys;
    }

    /**
     * 获取位置信息编号
     *
     * @return room_position_code - 位置信息编号
     */
    public Integer getRoomPositionCode() {
        return roomPositionCode;
    }

    /**
     * 设置位置信息编号
     *
     * @param roomPositionCode 位置信息编号
     */
    public void setRoomPositionCode(Integer roomPositionCode) {
        this.roomPositionCode = roomPositionCode;
    }

    /**
     * 获取位置
     *
     * @return room_position - 位置
     */
    public String getRoomPosition() {
        return roomPosition;
    }

    /**
     * 设置位置
     *
     * @param roomPosition 位置
     */
    public void setRoomPosition(String roomPosition) {
        this.roomPosition = roomPosition;
    }

    /**
     * 获取管理员编号
     *
     * @return room_admin_id - 管理员编号
     */
    public Integer getRoomAdminId() {
        return roomAdminId;
    }

    /**
     * 设置管理员编号
     *
     * @param roomAdminId 管理员编号
     */
    public void setRoomAdminId(Integer roomAdminId) {
        this.roomAdminId = roomAdminId;
    }

    /**
     * 获取管理员
     *
     * @return room_admin - 管理员
     */
    public String getRoomAdmin() {
        return roomAdmin;
    }

    /**
     * 设置管理员
     *
     * @param roomAdmin 管理员
     */
    public void setRoomAdmin(String roomAdmin) {
        this.roomAdmin = roomAdmin;
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