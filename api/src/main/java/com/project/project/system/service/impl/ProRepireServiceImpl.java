package com.project.project.system.service.impl;

import java.util.List;
import com.project.common.utils.DateUtils;
import com.project.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.project.system.mapper.ProRepireMapper;
import com.project.project.system.domain.ProRepire;
import com.project.project.system.service.IProRepireService;

/**
 * 报修Service业务层处理
 * 
 * @author adminApi
 * @date 2025-03-30
 */
@Service
public class ProRepireServiceImpl implements IProRepireService 
{
    @Autowired
    private ProRepireMapper proRepireMapper;

    /**
     * 查询报修
     * 
     * @param id 报修主键
     * @return 报修
     */
    @Override
    public ProRepire selectProRepireById(Long id)
    {
        return proRepireMapper.selectProRepireById(id);
    }

    /**
     * 查询报修列表
     * 
     * @param proRepire 报修
     * @return 报修
     */
    @Override
    public List<ProRepire> selectProRepireList(ProRepire proRepire)
    {
        return proRepireMapper.selectProRepireList(proRepire);
    }

    /**
     * 新增报修
     * 
     * @param proRepire 报修
     * @return 结果
     */
    @Override
    public int insertProRepire(ProRepire proRepire)
    {
        proRepire.setUserId(SecurityUtils.getUserId());
        proRepire.setCreateBy(SecurityUtils.getUserId() + "");
        proRepire.setCreateTime(DateUtils.getNowDate());
        proRepire.setStatus("未修复");
        return proRepireMapper.insertProRepire(proRepire);
    }

    /**
     * 修改报修
     * 
     * @param proRepire 报修
     * @return 结果
     */
    @Override
    public int updateProRepire(ProRepire proRepire)
    {
//        if(proRepire.getStatus().equals("已修复")) {
//            proRepire.setUpdateTime(DateUtils.getNowDate());
//        }
        return proRepireMapper.updateProRepire(proRepire);
    }

    /**
     * 批量删除报修
     * 
     * @param ids 需要删除的报修主键
     * @return 结果
     */
    @Override
    public int deleteProRepireByIds(Long[] ids)
    {
        return proRepireMapper.deleteProRepireByIds(ids);
    }

    /**
     * 删除报修信息
     * 
     * @param id 报修主键
     * @return 结果
     */
    @Override
    public int deleteProRepireById(Long id)
    {
        return proRepireMapper.deleteProRepireById(id);
    }
}
