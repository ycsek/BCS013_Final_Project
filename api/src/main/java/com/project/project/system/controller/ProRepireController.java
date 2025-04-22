package com.project.project.system.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import com.project.common.utils.SecurityUtils;
import com.project.project.system.domain.SysRole;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.project.framework.aspectj.lang.annotation.Log;
import com.project.framework.aspectj.lang.enums.BusinessType;
import com.project.project.system.domain.ProRepire;
import com.project.project.system.service.IProRepireService;
import com.project.framework.web.controller.BaseController;
import com.project.framework.web.domain.AjaxResult;
import com.project.common.utils.poi.ExcelUtil;
import com.project.framework.web.page.TableDataInfo;

/**
 * 报修Controller
 * 
 * @author adminApi
 * @date 2025-03-30
 */
@RestController
@RequestMapping("/system/repire")
public class ProRepireController extends BaseController
{
    @Autowired
    private IProRepireService proRepireService;

    /**
     * 查询报修列表
     */
    // @PreAuthorize("@ss.hasPermi('system:repire:list')")
    @GetMapping("/list")
    public TableDataInfo list(ProRepire proRepire)
    {
        startPage();

        List<SysRole> roles = SecurityUtils.getLoginUser().getUser().getRoles();
        for (SysRole role : roles) {
            if(role.getRoleKey().equals("repire_common")) {
                proRepire.setRepireId(SecurityUtils.getUserId());
            }

            if(role.getRoleKey().equals("common")) {
                proRepire.setUserId(SecurityUtils.getUserId());
            }
        }

        List<ProRepire> list = proRepireService.selectProRepireList(proRepire);
        return getDataTable(list);
    }

    @GetMapping("/getChart")
    public AjaxResult getLine(){
        Map repireMap = new HashMap();
        ProRepire proRepire = new ProRepire();
        proRepire.setStatus("未修复");
        List<ProRepire> proRepires = proRepireService.selectProRepireList(proRepire);
        repireMap.put("未修复", proRepires.size());

        proRepire.setStatus("已指派");
        List<ProRepire> proRepires1 = proRepireService.selectProRepireList(proRepire);

        repireMap.put("维修中",proRepires1.size());


        proRepire.setStatus("已修复");
        List<ProRepire> proRepires2 = proRepireService.selectProRepireList(proRepire);

        repireMap.put("已修复",proRepires2.size());

        return AjaxResult.success(repireMap);
    }

    /**
     * 导出报修列表
     */
    // @PreAuthorize("@ss.hasPermi('system:repire:export')")
    @Log(title = "报修", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ProRepire proRepire)
    {
        List<ProRepire> list = proRepireService.selectProRepireList(proRepire);
        ExcelUtil<ProRepire> util = new ExcelUtil<ProRepire>(ProRepire.class);
        util.exportExcel(response, list, "报修数据");
    }

    /**
     * 获取报修详细信息
     */
    // @PreAuthorize("@ss.hasPermi('system:repire:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(proRepireService.selectProRepireById(id));
    }

    /**
     * 新增报修
     */
    // @PreAuthorize("@ss.hasPermi('system:repire:add')")
    @Log(title = "报修", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ProRepire proRepire)
    {
        return toAjax(proRepireService.insertProRepire(proRepire));
    }

    /**
     * 修改报修
     */
    // @PreAuthorize("@ss.hasPermi('system:repire:edit')")
    @Log(title = "报修", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ProRepire proRepire)
    {
        return toAjax(proRepireService.updateProRepire(proRepire));
    }

    /**
     * 删除报修
     */
    // @PreAuthorize("@ss.hasPermi('system:repire:remove')")
    @Log(title = "报修", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(proRepireService.deleteProRepireByIds(ids));
    }
}
