package com.project.project.system.service;

import java.util.List;
import com.project.project.system.domain.ProRepire;

/**
 * 报修Service接口
 * 
 * @author adminApi
 * @date 2025-03-30
 */
public interface IProRepireService 
{
    /**
     * 查询报修
     * 
     * @param id 报修主键
     * @return 报修
     */
    public ProRepire selectProRepireById(Long id);

    /**
     * 查询报修列表
     * 
     * @param proRepire 报修
     * @return 报修集合
     */
    public List<ProRepire> selectProRepireList(ProRepire proRepire);

    /**
     * 新增报修
     * 
     * @param proRepire 报修
     * @return 结果
     */
    public int insertProRepire(ProRepire proRepire);

    /**
     * 修改报修
     * 
     * @param proRepire 报修
     * @return 结果
     */
    public int updateProRepire(ProRepire proRepire);

    /**
     * 批量删除报修
     * 
     * @param ids 需要删除的报修主键集合
     * @return 结果
     */
    public int deleteProRepireByIds(Long[] ids);

    /**
     * 删除报修信息
     * 
     * @param id 报修主键
     * @return 结果
     */
    public int deleteProRepireById(Long id);
}
