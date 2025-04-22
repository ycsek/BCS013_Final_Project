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
import com.project.project.system.domain.ProCarList;
import com.project.project.system.service.IProCarListService;
import com.project.framework.web.controller.BaseController;
import com.project.framework.web.domain.AjaxResult;
import com.project.common.utils.poi.ExcelUtil;
import com.project.framework.web.page.TableDataInfo;

/**
 * 车位管理Controller
 * 
 * @author adminApi
 * @date 2025-03-29
 */
@RestController
@RequestMapping("/system/carList")
public class ProCarListController extends BaseController
{
    @Autowired
    private IProCarListService proCarListService;

    /**
     * 查询车位管理列表
     */
  // @PreAuthorize("@ss.hasPermi('system:carList:list')")
    @GetMapping("/list")
    public TableDataInfo list(ProCarList proCarList)
    {
        startPage();
        List<ProCarList> list = proCarListService.selectProCarListList(proCarList);
        return getDataTable(list);
    }

    /**
     * 导出车位管理列表
     */
  // @PreAuthorize("@ss.hasPermi('system:carList:export')")
    @Log(title = "车位管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ProCarList proCarList)
    {
        List<ProCarList> list = proCarListService.selectProCarListList(proCarList);
        ExcelUtil<ProCarList> util = new ExcelUtil<ProCarList>(ProCarList.class);
        util.exportExcel(response, list, "车位管理数据");
    }

    /**
     * 获取车位管理详细信息
     */
  // @PreAuthorize("@ss.hasPermi('system:carList:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(proCarListService.selectProCarListById(id));
    }

    /**
     * 新增车位管理
     */
  // @PreAuthorize("@ss.hasPermi('system:carList:add')")
    @Log(title = "车位管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ProCarList proCarList)
    {
        return toAjax(proCarListService.insertProCarList(proCarList));
    }

    /**
     * 修改车位管理
     */
  // @PreAuthorize("@ss.hasPermi('system:carList:edit')")
    @Log(title = "车位管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ProCarList proCarList)
    {
        return toAjax(proCarListService.updateProCarList(proCarList));
    }

    /**
     * 删除车位管理
     */
  // @PreAuthorize("@ss.hasPermi('system:carList:remove')")
    @Log(title = "车位管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(proCarListService.deleteProCarListByIds(ids));
    }
}
