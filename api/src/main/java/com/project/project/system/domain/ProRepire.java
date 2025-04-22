package com.project.project.system.domain;

import com.project.framework.aspectj.lang.annotation.Excel;
import com.project.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;


/**
 * 报修对象 pro_repire
 * 
 * @author adminApi
 * @date 2025-03-30
 */
public class ProRepire extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 问题类型 */
    @Excel(name = "问题类型")
    private String type;

    /** 门牌号 */
    @Excel(name = "门牌号")
    private String address;

    /** 业主 */
    @Excel(name = "业主")
    private Long userId;


    private String userName;

    /** 修复人 */
    @Excel(name = "修复人")
    private Long repireId;

    private String repireName;

    /** 状态 */
    @Excel(name = "状态")
    private String status;

    /** 修复日志 */
    @Excel(name = "修复日志")
    private String repireContent;


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getRepireName() {
        return repireName;
    }

    public void setRepireName(String repireName) {
        this.repireName = repireName;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setRepireId(Long repireId) 
    {
        this.repireId = repireId;
    }

    public Long getRepireId() 
    {
        return repireId;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setRepireContent(String repireContent) 
    {
        this.repireContent = repireContent;
    }

    public String getRepireContent() 
    {
        return repireContent;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("type", getType())
            .append("address", getAddress())
            .append("remark", getRemark())
            .append("userId", getUserId())
            .append("repireId", getRepireId())
            .append("createTime", getCreateTime())
            .append("status", getStatus())
            .append("repireContent", getRepireContent())
            .toString();
    }
}
