package com.project.project.system.domain;

import java.math.BigDecimal;
import com.project.framework.aspectj.lang.annotation.Excel;
import com.project.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;


/**
 * 租房发布对象 pro_house
 * 
 * @author adminApi
 * @date 2025-03-29
 */
public class ProHouse extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 照片 */
    @Excel(name = "照片")
    private String pic;

    /** 户型 */
    @Excel(name = "户型")
    private String huxing;

    /** 价格 */
    @Excel(name = "价格")
    private BigDecimal price;

    /** 特色 */
    @Excel(name = "特色")
    private String characteristic;

    /** 状态 */
    @Excel(name = "状态")
    private String status;

    private String userName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setPic(String pic) 
    {
        this.pic = pic;
    }

    public String getPic() 
    {
        return pic;
    }
    public void setHuxing(String huxing) 
    {
        this.huxing = huxing;
    }

    public String getHuxing() 
    {
        return huxing;
    }
    public void setPrice(BigDecimal price) 
    {
        this.price = price;
    }

    public BigDecimal getPrice() 
    {
        return price;
    }
    public void setCharacteristic(String characteristic) 
    {
        this.characteristic = characteristic;
    }

    public String getCharacteristic() 
    {
        return characteristic;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("pic", getPic())
            .append("huxing", getHuxing())
            .append("price", getPrice())
            .append("characteristic", getCharacteristic())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("status", getStatus())
            .toString();
    }
}
