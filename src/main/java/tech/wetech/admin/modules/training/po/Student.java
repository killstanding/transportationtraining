package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "学生")
@Table(name = "t_student")
public class Student extends BaseRowModel{
    /**
     * 编号
     */
    @Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = StudentUpdateChecks.class)
    @ExcelProperty(value = {"编号(系统生成)","编号(系统生成)"},index = 0)
    @ApiModelProperty(value = "编号(系统生成)", name = "id", required = false, example = "1")
    private Long id;
    
    /**
     * 学生名称
     */
    @ExcelProperty(value = {"学生名称","学生名称"},index = 1)
    @ApiModelProperty(value = "学生名称", name = "studentName", required = false, example = "张三")
    @Column(name = "student_name")
    private String studentName;

    /**
     * 性别
     */
    @ExcelProperty(value = {"性别","性别"},index = 2)
    @ApiModelProperty(value = "性别", name = "studentSex", required = false, example = "男")
    @Column(name = "student_sex")
    private String studentSex;

    /**
     * 年龄
     */
    @ExcelProperty(value = {"年龄","年龄"},index = 3)
    @ApiModelProperty(value = "年龄", name = "studentAge", required = false, example = "18")
    @Column(name = "student_age")
    private String studentAge;

    /**
     * 电话
     */
    @ExcelProperty(value = {"电话","电话"},index = 4)
    @ApiModelProperty(value = "电话", name = "studentPhone", required = false, example = "18256987979")
    @Column(name = "student_phone")
    private String studentPhone;

    /**
     * 邮箱
     */
    @ExcelProperty(value = {"邮箱","邮箱"},index = 5)
    @ApiModelProperty(value = "邮箱", name = "studentEmail", required = false, example = "w5789486@163.com")
    @Column(name = "student_email")
    private String studentEmail;

    /**
     * 身份证
     */
    @ExcelProperty(value = {"身份证","身份证"},index = 6)
    @ApiModelProperty(value = "身份证", name = "studentIdCard", required = false, example = "238985648931345646")
    @Column(name = "student_id_card")
    private String studentIdCard;

    /**
     * 照片
     */
    @ExcelProperty(value = {"照片","照片"},index = 7)
    @ApiModelProperty(value = "照片", name = "studentImg", required = false, example = "./img/zs.img")
    @Column(name = "student_img")
    private String studentImg;

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
     * 系编号
     */
    @ApiModelProperty(value = "系编号", name = "sysId", required = false, example = "2")
    @Column(name = "sys_id")
    private Integer sysId;

    /**
     * 系名称
     */
    @ExcelProperty(value = {"系名称","系名称"},index = 8)
    @ApiModelProperty(value = "系名称", name = "sysName", required = false, example = "汽车工程系")
    @Column(name = "sys_name")
    private String sysName;

    /**
     * 班级编号
     */
    @ApiModelProperty(value = "班级编号", name = "classId", required = false, example = "5")
    @Column(name = "class_id")
    private Integer classId;

    /**
     * 班级名称
     */
    @ExcelProperty(value = {"班级名称","班级名称"},index = 9)
    @ApiModelProperty(value = "班级名称", name = "className", required = false, example = "15汽运01")
    @Column(name = "class_name")
    private String className;

    public interface StudentCreateChecks {}

    public interface StudentUpdateChecks {}
    
    /**
     * 获取编号
     *
     * @return id - 编号
     */
    public Long getId() {
        return id;
    }

    /**
     * 设置编号
     *
     * @param id 编号
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取学生名称
     *
     * @return student_name - 学生名称
     */
    public String getStudentName() {
        return studentName;
    }

    /**
     * 设置学生名称
     *
     * @param studentName 学生名称
     */
    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    /**
     * 获取性别
     *
     * @return student_sex - 性别
     */
    public String getStudentSex() {
        return studentSex;
    }

    /**
     * 设置性别
     *
     * @param studentSex 性别
     */
    public void setStudentSex(String studentSex) {
        this.studentSex = studentSex;
    }

    /**
     * 获取年龄
     *
     * @return student_age - 年龄
     */
    public String getStudentAge() {
        return studentAge;
    }

    /**
     * 设置年龄
     *
     * @param studentAge 年龄
     */
    public void setStudentAge(String studentAge) {
        this.studentAge = studentAge;
    }

    /**
     * 获取电话
     *
     * @return student_phone - 电话
     */
    public String getStudentPhone() {
        return studentPhone;
    }

    /**
     * 设置电话
     *
     * @param studentPhone 电话
     */
    public void setStudentPhone(String studentPhone) {
        this.studentPhone = studentPhone;
    }

    /**
     * 获取邮箱
     *
     * @return student_email - 邮箱
     */
    public String getStudentEmail() {
        return studentEmail;
    }

    /**
     * 设置邮箱
     *
     * @param studentEmail 邮箱
     */
    public void setStudentEmail(String studentEmail) {
        this.studentEmail = studentEmail;
    }

    /**
     * 获取身份证
     *
     * @return student_id_card - 身份证
     */
    public String getStudentIdCard() {
        return studentIdCard;
    }

    /**
     * 设置身份证
     *
     * @param studentIdCard 身份证
     */
    public void setStudentIdCard(String studentIdCard) {
        this.studentIdCard = studentIdCard;
    }

    /**
     * 获取照片
     *
     * @return student_img - 照片
     */
    public String getStudentImg() {
        return studentImg;
    }

    /**
     * 设置照片
     *
     * @param studentImg 照片
     */
    public void setStudentImg(String studentImg) {
        this.studentImg = studentImg;
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
     * 获取系编号
     *
     * @return sys_id - 系编号
     */
    public Integer getSysId() {
        return sysId;
    }

    /**
     * 设置系编号
     *
     * @param sysId 系编号
     */
    public void setSysId(Integer sysId) {
        this.sysId = sysId;
    }

    /**
     * 获取系名称
     *
     * @return sys_name - 系名称
     */
    public String getSysName() {
        return sysName;
    }

    /**
     * 设置系名称
     *
     * @param sysName 系名称
     */
    public void setSysName(String sysName) {
        this.sysName = sysName;
    }

    /**
     * 获取班级编号
     *
     * @return class_id - 班级编号
     */
    public Integer getClassId() {
        return classId;
    }

    /**
     * 设置班级编号
     *
     * @param classId 班级编号
     */
    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    /**
     * 获取班级名称
     *
     * @return class_name - 班级名称
     */
    public String getClassName() {
        return className;
    }

    /**
     * 设置班级名称
     *
     * @param className 班级名称
     */
    public void setClassName(String className) {
        this.className = className;
    }
}