package com.project.project.system.service.impl;

import java.util.List;
import com.project.common.utils.DateUtils;
import com.project.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.project.system.mapper.ProBiaozhunMapper;
import com.project.project.system.domain.ProBiaozhun;
import com.project.project.system.service.IProBiaozhunService;

/**
 * 收费标准Service业务层处理
 * 
 * @author adminApi
 * @date 2025-03-30
 */
@Service
public class ProBiaozhunServiceImpl implements IProBiaozhunService 
{
    @Autowired
    private ProBiaozhunMapper proBiaozhunMapper;

    /**
     * 查询收费标准
     * 
     * @param id 收费标准主键
     * @return 收费标准
     */
    @Override
    public ProBiaozhun selectProBiaozhunById(Long id)
    {
        return proBiaozhunMapper.selectProBiaozhunById(id);
    }

    /**
     * 查询收费标准列表
     * 
     * @param proBiaozhun 收费标准
     * @return 收费标准
     */
    @Override
    public List<ProBiaozhun> selectProBiaozhunList(ProBiaozhun proBiaozhun)
    {
        return proBiaozhunMapper.selectProBiaozhunList(proBiaozhun);
    }

    /**
     * 新增收费标准
     * 
     * @param proBiaozhun 收费标准
     * @return 结果
     */
    @Override
    public int insertProBiaozhun(ProBiaozhun proBiaozhun)
    {
        proBiaozhun.setCreateTime(DateUtils.getNowDate());
        proBiaozhun.setCreateBy(SecurityUtils.getUserId() + "");
        return proBiaozhunMapper.insertProBiaozhun(proBiaozhun);
    }

    /**
     * 修改收费标准
     * 
     * @param proBiaozhun 收费标准
     * @return 结果
     */
    @Override
    public int updateProBiaozhun(ProBiaozhun proBiaozhun)
    {
        proBiaozhun.setUpdateTime(DateUtils.getNowDate());
        proBiaozhun.setUpdateBy(SecurityUtils.getUserId() + "");
        return proBiaozhunMapper.updateProBiaozhun(proBiaozhun);
    }

    /**
     * 批量删除收费标准
     * 
     * @param ids 需要删除的收费标准主键
     * @return 结果
     */
    @Override
    public int deleteProBiaozhunByIds(Long[] ids)
    {
        return proBiaozhunMapper.deleteProBiaozhunByIds(ids);
    }

    /**
     * 删除收费标准信息
     * 
     * @param id 收费标准主键
     * @return 结果
     */
    @Override
    public int deleteProBiaozhunById(Long id)
    {
        return proBiaozhunMapper.deleteProBiaozhunById(id);
    }
}
