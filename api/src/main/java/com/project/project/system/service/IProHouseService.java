package com.project.project.system.service;

import java.util.List;
import com.project.project.system.domain.ProHouse;

/**
 * 租房发布Service接口
 * 
 * @author adminApi
 * @date 2025-03-29
 */
public interface IProHouseService 
{
    /**
     * 查询租房发布
     * 
     * @param id 租房发布主键
     * @return 租房发布
     */
    public ProHouse selectProHouseById(Long id);

    /**
     * 查询租房发布列表
     * 
     * @param proHouse 租房发布
     * @return 租房发布集合
     */
    public List<ProHouse> selectProHouseList(ProHouse proHouse);

    /**
     * 新增租房发布
     * 
     * @param proHouse 租房发布
     * @return 结果
     */
    public int insertProHouse(ProHouse proHouse);

    /**
     * 修改租房发布
     * 
     * @param proHouse 租房发布
     * @return 结果
     */
    public int updateProHouse(ProHouse proHouse);

    /**
     * 批量删除租房发布
     * 
     * @param ids 需要删除的租房发布主键集合
     * @return 结果
     */
    public int deleteProHouseByIds(Long[] ids);

    /**
     * 删除租房发布信息
     * 
     * @param id 租房发布主键
     * @return 结果
     */
    public int deleteProHouseById(Long id);
}
