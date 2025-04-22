package com.project.project.system.domain;

import java.math.BigDecimal;
import com.project.framework.aspectj.lang.annotation.Excel;
import com.project.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;


/**
 * 车位管理对象 pro_car_list
 * 
 * @author adminApi
 * @date 2025-03-29
 */
public class ProCarList extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 车位编号 */
    @Excel(name = "车位编号")
    private String carNo;

    /** 状态 */
    @Excel(name = "状态")
    private String status;

    /** 管理费 */
    @Excel(name = "管理费")
    private BigDecimal price;

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
    public void setCarNo(String carNo)
    {
        this.carNo = carNo;
    }

    public String getCarNo()
    {
        return carNo;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setPrice(BigDecimal price) 
    {
        this.price = price;
    }

    public BigDecimal getPrice() 
    {
        return price;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("carNo", getCarNo())
            .append("status", getStatus())
            .append("price", getPrice())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .toString();
    }
}
