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
import com.project.project.system.domain.ProHouse;
import com.project.project.system.service.IProHouseService;
import com.project.framework.web.controller.BaseController;
import com.project.framework.web.domain.AjaxResult;
import com.project.common.utils.poi.ExcelUtil;
import com.project.framework.web.page.TableDataInfo;

/**
 * 租房发布Controller
 * 
 * @author adminApi
 * @date 2025-03-29
 */
@RestController
@RequestMapping("/system/house")
public class ProHouseController extends BaseController
{
    @Autowired
    private IProHouseService proHouseService;

    /**
     * 查询租房发布列表
     */
    // @PreAuthorize("@ss.hasPermi('system:house:list')")
    @GetMapping("/list")
    public TableDataInfo list(ProHouse proHouse)
    {
        startPage();
        List<ProHouse> list = proHouseService.selectProHouseList(proHouse);
        return getDataTable(list);
    }

    /**
     * 导出租房发布列表
     */
    // @PreAuthorize("@ss.hasPermi('system:house:export')")
    @Log(title = "租房发布", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ProHouse proHouse)
    {
        List<ProHouse> list = proHouseService.selectProHouseList(proHouse);
        ExcelUtil<ProHouse> util = new ExcelUtil<ProHouse>(ProHouse.class);
        util.exportExcel(response, list, "租房发布数据");
    }

    /**
     * 获取租房发布详细信息
     */
    // @PreAuthorize("@ss.hasPermi('system:house:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(proHouseService.selectProHouseById(id));
    }

    /**
     * 新增租房发布
     */
    // @PreAuthorize("@ss.hasPermi('system:house:add')")
    @Log(title = "租房发布", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ProHouse proHouse)
    {
        return toAjax(proHouseService.insertProHouse(proHouse));
    }

    /**
     * 修改租房发布
     */
    // @PreAuthorize("@ss.hasPermi('system:house:edit')")
    @Log(title = "租房发布", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ProHouse proHouse)
    {
        return toAjax(proHouseService.updateProHouse(proHouse));
    }

    /**
     * 删除租房发布
     */
    // @PreAuthorize("@ss.hasPermi('system:house:remove')")
    @Log(title = "租房发布", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(proHouseService.deleteProHouseByIds(ids));
    }
}
