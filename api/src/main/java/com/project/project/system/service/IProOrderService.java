package com.project.project.system.service;

import java.util.List;
import com.project.project.system.domain.ProOrder;

/**
 * 水电费缴纳Service接口
 * 
 * @author adminApi
 * @date 2025-03-30
 */
public interface IProOrderService 
{
    /**
     * 查询水电费缴纳
     * 
     * @param id 水电费缴纳主键
     * @return 水电费缴纳
     */
    public ProOrder selectProOrderById(Long id);

    /**
     * 查询水电费缴纳列表
     * 
     * @param proOrder 水电费缴纳
     * @return 水电费缴纳集合
     */
    public List<ProOrder> selectProOrderList(ProOrder proOrder);

    /**
     * 新增水电费缴纳
     * 
     * @param proOrder 水电费缴纳
     * @return 结果
     */
    public int insertProOrder(ProOrder proOrder);

    /**
     * 修改水电费缴纳
     * 
     * @param proOrder 水电费缴纳
     * @return 结果
     */
    public int updateProOrder(ProOrder proOrder);

    /**
     * 批量删除水电费缴纳
     * 
     * @param ids 需要删除的水电费缴纳主键集合
     * @return 结果
     */
    public int deleteProOrderByIds(Long[] ids);

    /**
     * 删除水电费缴纳信息
     * 
     * @param id 水电费缴纳主键
     * @return 结果
     */
    public int deleteProOrderById(Long id);
}
