package tech.wetech.admin.modules.training.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "t_pub_code")
public class PubCode {
	/**
     * 公共编码编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull(groups = PubCodeUpdateChecks.class)
    private Integer id;

    /**
     * 公共编码编码
     */
    @Column(name = "pub_code")
    @NotNull(message = "公共编码编码不能为空",groups = PubCodeCreateChecks.class)
    private String pubCode;

    /**
     * 公共编码名称
     */
    @NotNull(message = "公共编码名称不能为空",groups = PubCodeCreateChecks.class)
    @Column(name = "pub_name")
    private String pubName;

    /**
     * 公共编码类型
     */
    @NotNull(message = "公共编码类型不能为空",groups = PubCodeCreateChecks.class)
    @Column(name = "pub_type")
    private String pubType;

    /**
     * 公共编码类型编码
     */
    @NotNull(message = "公共编码类型编码不能为空",groups = PubCodeCreateChecks.class)
    @Column(name = "pub_type_code")
    private String pubTypeCode;

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

    public interface PubCodeCreateChecks {

    }

    public interface PubCodeUpdateChecks {

    }
    /**
     * 备注
     */
    private String remark;

    /**
     * 获取公共编码编号
     *
     * @return id - 公共编码编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置公共编码编号
     *
     * @param id 公共编码编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取公共编码编码
     *
     * @return pub_code - 公共编码编码
     */
    public String getPubCode() {
        return pubCode;
    }

    /**
     * 设置公共编码编码
     *
     * @param pubCode 公共编码编码
     */
    public void setPubCode(String pubCode) {
        this.pubCode = pubCode;
    }

    /**
     * 获取公共编码名称
     *
     * @return pub_name - 公共编码名称
     */
    public String getPubName() {
        return pubName;
    }

    /**
     * 设置公共编码名称
     *
     * @param pubName 公共编码名称
     */
    public void setPubName(String pubName) {
        this.pubName = pubName;
    }

    /**
     * 获取公共编码类型
     *
     * @return pub_type - 公共编码类型
     */
    public String getPubType() {
        return pubType;
    }

    /**
     * 设置公共编码类型
     *
     * @param pubType 公共编码类型
     */
    public void setPubType(String pubType) {
        this.pubType = pubType;
    }

    /**
     * 获取公共编码类型编码
     *
     * @return pub_type_code - 公共编码类型编码
     */
    public String getPubTypeCode() {
        return pubTypeCode;
    }

    /**
     * 设置公共编码类型编码
     *
     * @param pubTypeCode 公共编码类型编码
     */
    public void setPubTypeCode(String pubTypeCode) {
        this.pubTypeCode = pubTypeCode;
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
}