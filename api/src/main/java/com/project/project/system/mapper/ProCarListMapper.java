package com.project.project.system.mapper;

import java.util.List;
import com.project.project.system.domain.ProCarList;

/**
 * 车位管理Mapper接口
 * 
 * @author adminApi
 * @date 2025-03-29
 */
public interface ProCarListMapper 
{
    /**
     * 查询车位管理
     * 
     * @param id 车位管理主键
     * @return 车位管理
     */
    public ProCarList selectProCarListById(Long id);

    /**
     * 查询车位管理列表
     * 
     * @param proCarList 车位管理
     * @return 车位管理集合
     */
    public List<ProCarList> selectProCarListList(ProCarList proCarList);

    /**
     * 新增车位管理
     * 
     * @param proCarList 车位管理
     * @return 结果
     */
    public int insertProCarList(ProCarList proCarList);

    /**
     * 修改车位管理
     * 
     * @param proCarList 车位管理
     * @return 结果
     */
    public int updateProCarList(ProCarList proCarList);

    /**
     * 删除车位管理
     * 
     * @param id 车位管理主键
     * @return 结果
     */
    public int deleteProCarListById(Long id);

    /**
     * 批量删除车位管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteProCarListByIds(Long[] ids);
}
