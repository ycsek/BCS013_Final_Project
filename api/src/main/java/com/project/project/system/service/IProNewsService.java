package com.project.project.system.service;

import java.util.List;
import com.project.project.system.domain.ProNews;

/**
 * 新闻管理Service接口
 * 
 * @author adminApi
 * @date 2025-03-29
 */
public interface IProNewsService 
{
    /**
     * 查询新闻管理
     * 
     * @param id 新闻管理主键
     * @return 新闻管理
     */
    public ProNews selectProNewsById(Long id);

    /**
     * 查询新闻管理列表
     * 
     * @param proNews 新闻管理
     * @return 新闻管理集合
     */
    public List<ProNews> selectProNewsList(ProNews proNews);

    /**
     * 新增新闻管理
     * 
     * @param proNews 新闻管理
     * @return 结果
     */
    public int insertProNews(ProNews proNews);

    /**
     * 修改新闻管理
     * 
     * @param proNews 新闻管理
     * @return 结果
     */
    public int updateProNews(ProNews proNews);

    /**
     * 批量删除新闻管理
     * 
     * @param ids 需要删除的新闻管理主键集合
     * @return 结果
     */
    public int deleteProNewsByIds(Long[] ids);

    /**
     * 删除新闻管理信息
     * 
     * @param id 新闻管理主键
     * @return 结果
     */
    public int deleteProNewsById(Long id);
}
