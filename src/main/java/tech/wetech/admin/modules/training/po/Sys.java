package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "t_sys")
public class Sys {
    /**
     * 系编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = SysUpdateChecks.class)
    private Integer id;

    /**
     * 系编码
     */
    @NotNull(message = "系编码不能为空",groups = SysCreateChecks.class)
    @Column(name = "sys_code")
    private String sysCode;

    /**
     * 系名称
     */
    @NotNull(message = "系名称不能为空",groups = SysCreateChecks.class)
    @Column(name = "sys_name")
    private String sysName;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private String createTime;

    /**
     * 更新时间
     */
    @Column(name = "update_time")
    private String updateTime;

    
    public interface SysCreateChecks {

    }

    public interface SysUpdateChecks {

    }
    
    /**
     * 获取系编号
     *
     * @return id - 系编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置系编号
     *
     * @param id 系编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取系编码
     *
     * @return sys_code - 系编码
     */
    public String getSysCode() {
        return sysCode;
    }

    /**
     * 设置系编码
     *
     * @param sysCode 系编码
     */
    public void setSysCode(String sysCode) {
        this.sysCode = sysCode;
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