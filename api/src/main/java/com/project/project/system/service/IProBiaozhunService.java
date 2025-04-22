package com.project.project.system.service;

import java.util.List;
import com.project.project.system.domain.ProBiaozhun;

/**
 * 收费标准Service接口
 * 
 * @author adminApi
 * @date 2025-03-30
 */
public interface IProBiaozhunService 
{
    /**
     * 查询收费标准
     * 
     * @param id 收费标准主键
     * @return 收费标准
     */
    public ProBiaozhun selectProBiaozhunById(Long id);

    /**
     * 查询收费标准列表
     * 
     * @param proBiaozhun 收费标准
     * @return 收费标准集合
     */
    public List<ProBiaozhun> selectProBiaozhunList(ProBiaozhun proBiaozhun);

    /**
     * 新增收费标准
     * 
     * @param proBiaozhun 收费标准
     * @return 结果
     */
    public int insertProBiaozhun(ProBiaozhun proBiaozhun);

    /**
     * 修改收费标准
     * 
     * @param proBiaozhun 收费标准
     * @return 结果
     */
    public int updateProBiaozhun(ProBiaozhun proBiaozhun);

    /**
     * 批量删除收费标准
     * 
     * @param ids 需要删除的收费标准主键集合
     * @return 结果
     */
    public int deleteProBiaozhunByIds(Long[] ids);

    /**
     * 删除收费标准信息
     * 
     * @param id 收费标准主键
     * @return 结果
     */
    public int deleteProBiaozhunById(Long id);
}
