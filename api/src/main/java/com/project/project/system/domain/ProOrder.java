package com.project.project.system.domain;

import java.math.BigDecimal;
import com.project.framework.aspectj.lang.annotation.Excel;
import com.project.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;


/**
 * 水电费缴纳对象 pro_order
 * 
 * @author adminApi
 * @date 2025-03-30
 */
public class ProOrder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 类型 */
    @Excel(name = "类型")
    private String type;

    /** 户号 */
    @Excel(name = "户号")
    private String huhao;

    /** 住址 */
    @Excel(name = "住址")
    private String number;

    /** 充值金额 */
    @Excel(name = "充值金额")
    private BigDecimal price;

    /** 状态 */
    @Excel(name = "状态")
    private String status;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    private String userName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    /** 充值单位 */
    @Excel(name = "充值单位")
    private String unit;

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
    public void setHuhao(String huhao) 
    {
        this.huhao = huhao;
    }

    public String getHuhao() 
    {
        return huhao;
    }
    public void setNumber(String number) 
    {
        this.number = number;
    }

    public String getNumber() 
    {
        return number;
    }
    public void setPrice(BigDecimal price) 
    {
        this.price = price;
    }

    public BigDecimal getPrice() 
    {
        return price;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setUnit(String unit) 
    {
        this.unit = unit;
    }

    public String getUnit() 
    {
        return unit;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("type", getType())
            .append("huhao", getHuhao())
            .append("number", getNumber())
            .append("price", getPrice())
            .append("status", getStatus())
            .append("userId", getUserId())
            .append("createTime", getCreateTime())
            .append("unit", getUnit())
            .toString();
    }
}
