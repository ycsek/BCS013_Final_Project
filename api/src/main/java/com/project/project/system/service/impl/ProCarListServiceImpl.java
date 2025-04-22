package com.project.project.system.service.impl;

import java.util.List;
import com.project.common.utils.DateUtils;
import com.project.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.project.system.mapper.ProCarListMapper;
import com.project.project.system.domain.ProCarList;
import com.project.project.system.service.IProCarListService;

/**
 * 车位管理Service业务层处理
 * 
 * @author adminApi
 * @date 2025-03-29
 */
@Service
public class ProCarListServiceImpl implements IProCarListService 
{
    @Autowired
    private ProCarListMapper proCarListMapper;

    /**
     * 查询车位管理
     * 
     * @param id 车位管理主键
     * @return 车位管理
     */
    @Override
    public ProCarList selectProCarListById(Long id)
    {
        return proCarListMapper.selectProCarListById(id);
    }

    /**
     * 查询车位管理列表
     * 
     * @param proCarList 车位管理
     * @return 车位管理
     */
    @Override
    public List<ProCarList> selectProCarListList(ProCarList proCarList)
    {
        return proCarListMapper.selectProCarListList(proCarList);
    }

    /**
     * 新增车位管理
     * 
     * @param proCarList 车位管理
     * @return 结果
     */
    @Override
    public int insertProCarList(ProCarList proCarList)
    {
        proCarList.setCreateTime(DateUtils.getNowDate());
        proCarList.setCreateBy(SecurityUtils.getUserId() + "");
        return proCarListMapper.insertProCarList(proCarList);
    }

    /**
     * 修改车位管理
     * 
     * @param proCarList 车位管理
     * @return 结果
     */
    @Override
    public int updateProCarList(ProCarList proCarList)
    {
        return proCarListMapper.updateProCarList(proCarList);
    }

    /**
     * 批量删除车位管理
     * 
     * @param ids 需要删除的车位管理主键
     * @return 结果
     */
    @Override
    public int deleteProCarListByIds(Long[] ids)
    {
        return proCarListMapper.deleteProCarListByIds(ids);
    }

    /**
     * 删除车位管理信息
     * 
     * @param id 车位管理主键
     * @return 结果
     */
    @Override
    public int deleteProCarListById(Long id)
    {
        return proCarListMapper.deleteProCarListById(id);
    }
}
