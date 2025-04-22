package com.project.project.system.domain;

import com.project.framework.aspectj.lang.annotation.Excel;
import com.project.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;


/**
 * 新闻管理对象 pro_news
 * 
 * @author adminApi
 * @date 2025-03-29
 */
public class ProNews extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 封面 */
    @Excel(name = "封面")
    private String pic;

    /** 新闻内容 */
    @Excel(name = "新闻内容")
    private String content;

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
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setPic(String pic) 
    {
        this.pic = pic;
    }

    public String getPic() 
    {
        return pic;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("pic", getPic())
            .append("content", getContent())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .toString();
    }
}
