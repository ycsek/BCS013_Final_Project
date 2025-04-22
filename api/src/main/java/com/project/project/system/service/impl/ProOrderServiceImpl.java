package com.project.project.system.service.impl;

import java.util.List;
import com.project.common.utils.DateUtils;
import com.project.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.project.system.mapper.ProOrderMapper;
import com.project.project.system.domain.ProOrder;
import com.project.project.system.service.IProOrderService;

/**
 * 水电费缴纳Service业务层处理
 * 
 * @author adminApi
 * @date 2025-03-30
 */
@Service
public class ProOrderServiceImpl implements IProOrderService 
{
    @Autowired
    private ProOrderMapper proOrderMapper;

    /**
     * 查询水电费缴纳
     * 
     * @param id 水电费缴纳主键
     * @return 水电费缴纳
     */
    @Override
    public ProOrder selectProOrderById(Long id)
    {
        return proOrderMapper.selectProOrderById(id);
    }

    /**
     * 查询水电费缴纳列表
     * 
     * @param proOrder 水电费缴纳
     * @return 水电费缴纳
     */
    @Override
    public List<ProOrder> selectProOrderList(ProOrder proOrder)
    {
        return proOrderMapper.selectProOrderList(proOrder);
    }

    /**
     * 新增水电费缴纳
     * 
     * @param proOrder 水电费缴纳
     * @return 结果
     */
    @Override
    public int insertProOrder(ProOrder proOrder)
    {
        proOrder.setUserId(SecurityUtils.getUserId());
        proOrder.setCreateBy(SecurityUtils.getUserId() + "");
        proOrder.setCreateTime(DateUtils.getNowDate());
        return proOrderMapper.insertProOrder(proOrder);
    }

    /**
     * 修改水电费缴纳
     * 
     * @param proOrder 水电费缴纳
     * @return 结果
     */
    @Override
    public int updateProOrder(ProOrder proOrder)
    {
        return proOrderMapper.updateProOrder(proOrder);
    }

    /**
     * 批量删除水电费缴纳
     * 
     * @param ids 需要删除的水电费缴纳主键
     * @return 结果
     */
    @Override
    public int deleteProOrderByIds(Long[] ids)
    {
        return proOrderMapper.deleteProOrderByIds(ids);
    }

    /**
     * 删除水电费缴纳信息
     * 
     * @param id 水电费缴纳主键
     * @return 结果
     */
    @Override
    public int deleteProOrderById(Long id)
    {
        return proOrderMapper.deleteProOrderById(id);
    }
}
