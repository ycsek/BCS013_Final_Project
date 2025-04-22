package com.project.project.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.project.project.system.domain.ProBiaozhun;
import com.project.project.system.service.IProBiaozhunService;
import com.project.framework.web.controller.BaseController;
import com.project.framework.web.domain.AjaxResult;
import com.project.common.utils.poi.ExcelUtil;
import com.project.framework.web.page.TableDataInfo;

/**
 * 收费标准Controller
 * 
 * @author adminApi
 * @date 2025-03-30
 */
@RestController
@RequestMapping("/system/biaozhun")
public class ProBiaozhunController extends BaseController
{
    @Autowired
    private IProBiaozhunService proBiaozhunService;

    /**
     * 查询收费标准列表
     */
    // @PreAuthorize("@ss.hasPermi('system:biaozhun:list')")
    @GetMapping("/list")
    public TableDataInfo list(ProBiaozhun proBiaozhun)
    {
        startPage();
        List<ProBiaozhun> list = proBiaozhunService.selectProBiaozhunList(proBiaozhun);
        return getDataTable(list);
    }

    /**
     * 导出收费标准列表
     */
    // @PreAuthorize("@ss.hasPermi('system:biaozhun:export')")
    @Log(title = "收费标准", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ProBiaozhun proBiaozhun)
    {
        List<ProBiaozhun> list = proBiaozhunService.selectProBiaozhunList(proBiaozhun);
        ExcelUtil<ProBiaozhun> util = new ExcelUtil<ProBiaozhun>(ProBiaozhun.class);
        util.exportExcel(response, list, "收费标准数据");
    }

    /**
     * 获取收费标准详细信息
     */
    // @PreAuthorize("@ss.hasPermi('system:biaozhun:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(proBiaozhunService.selectProBiaozhunById(id));
    }

    /**
     * 新增收费标准
     */
    // @PreAuthorize("@ss.hasPermi('system:biaozhun:add')")
    @Log(title = "收费标准", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ProBiaozhun proBiaozhun)
    {
        return toAjax(proBiaozhunService.insertProBiaozhun(proBiaozhun));
    }

    /**
     * 修改收费标准
     */
    // @PreAuthorize("@ss.hasPermi('system:biaozhun:edit')")
    @Log(title = "收费标准", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ProBiaozhun proBiaozhun)
    {
        return toAjax(proBiaozhunService.updateProBiaozhun(proBiaozhun));
    }

    /**
     * 删除收费标准
     */
    // @PreAuthorize("@ss.hasPermi('system:biaozhun:remove')")
    @Log(title = "收费标准", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(proBiaozhunService.deleteProBiaozhunByIds(ids));
    }
}
