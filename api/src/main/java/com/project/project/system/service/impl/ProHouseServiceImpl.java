package com.project.project.system.service.impl;

import java.util.List;
import com.project.common.utils.DateUtils;
import com.project.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.project.system.mapper.ProHouseMapper;
import com.project.project.system.domain.ProHouse;
import com.project.project.system.service.IProHouseService;

/**
 * 租房发布Service业务层处理
 * 
 * @author adminApi
 * @date 2025-03-29
 */
@Service
public class ProHouseServiceImpl implements IProHouseService 
{
    @Autowired
    private ProHouseMapper proHouseMapper;

    /**
     * 查询租房发布
     * 
     * @param id 租房发布主键
     * @return 租房发布
     */
    @Override
    public ProHouse selectProHouseById(Long id)
    {
        return proHouseMapper.selectProHouseById(id);
    }

    /**
     * 查询租房发布列表
     * 
     * @param proHouse 租房发布
     * @return 租房发布
     */
    @Override
    public List<ProHouse> selectProHouseList(ProHouse proHouse)
    {
        return proHouseMapper.selectProHouseList(proHouse);
    }

    /**
     * 新增租房发布
     * 
     * @param proHouse 租房发布
     * @return 结果
     */
    @Override
    public int insertProHouse(ProHouse proHouse)
    {
        proHouse.setCreateBy(SecurityUtils.getUserId() + "");
        proHouse.setCreateTime(DateUtils.getNowDate());
        return proHouseMapper.insertProHouse(proHouse);
    }

    /**
     * 修改租房发布
     * 
     * @param proHouse 租房发布
     * @return 结果
     */
    @Override
    public int updateProHouse(ProHouse proHouse)
    {
        return proHouseMapper.updateProHouse(proHouse);
    }

    /**
     * 批量删除租房发布
     * 
     * @param ids 需要删除的租房发布主键
     * @return 结果
     */
    @Override
    public int deleteProHouseByIds(Long[] ids)
    {
        return proHouseMapper.deleteProHouseByIds(ids);
    }

    /**
     * 删除租房发布信息
     * 
     * @param id 租房发布主键
     * @return 结果
     */
    @Override
    public int deleteProHouseById(Long id)
    {
        return proHouseMapper.deleteProHouseById(id);
    }
}
