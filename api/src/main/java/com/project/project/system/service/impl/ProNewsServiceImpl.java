package com.project.project.system.service.impl;

import java.util.List;
import com.project.common.utils.DateUtils;
import com.project.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.project.system.mapper.ProNewsMapper;
import com.project.project.system.domain.ProNews;
import com.project.project.system.service.IProNewsService;

/**
 * 新闻管理Service业务层处理
 * 
 * @author adminApi
 * @date 2025-03-29
 */
@Service
public class ProNewsServiceImpl implements IProNewsService 
{
    @Autowired
    private ProNewsMapper proNewsMapper;

    /**
     * 查询新闻管理
     * 
     * @param id 新闻管理主键
     * @return 新闻管理
     */
    @Override
    public ProNews selectProNewsById(Long id)
    {
        return proNewsMapper.selectProNewsById(id);
    }

    /**
     * 查询新闻管理列表
     * 
     * @param proNews 新闻管理
     * @return 新闻管理
     */
    @Override
    public List<ProNews> selectProNewsList(ProNews proNews)
    {
        return proNewsMapper.selectProNewsList(proNews);
    }

    /**
     * 新增新闻管理
     * 
     * @param proNews 新闻管理
     * @return 结果
     */
    @Override
    public int insertProNews(ProNews proNews)
    {
        proNews.setCreateBy(SecurityUtils.getUserId() + "");
        proNews.setCreateTime(DateUtils.getNowDate());
        return proNewsMapper.insertProNews(proNews);
    }

    /**
     * 修改新闻管理
     * 
     * @param proNews 新闻管理
     * @return 结果
     */
    @Override
    public int updateProNews(ProNews proNews)
    {
        return proNewsMapper.updateProNews(proNews);
    }

    /**
     * 批量删除新闻管理
     * 
     * @param ids 需要删除的新闻管理主键
     * @return 结果
     */
    @Override
    public int deleteProNewsByIds(Long[] ids)
    {
        return proNewsMapper.deleteProNewsByIds(ids);
    }

    /**
     * 删除新闻管理信息
     * 
     * @param id 新闻管理主键
     * @return 结果
     */
    @Override
    public int deleteProNewsById(Long id)
    {
        return proNewsMapper.deleteProNewsById(id);
    }
}
