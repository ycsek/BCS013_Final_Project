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
import com.project.project.system.domain.ProNews;
import com.project.project.system.service.IProNewsService;
import com.project.framework.web.controller.BaseController;
import com.project.framework.web.domain.AjaxResult;
import com.project.common.utils.poi.ExcelUtil;
import com.project.framework.web.page.TableDataInfo;

/**
 * 新闻管理Controller
 * 
 * @author adminApi
 * @date 2025-03-29
 */
@RestController
@RequestMapping("/system/news")
public class ProNewsController extends BaseController
{
    @Autowired
    private IProNewsService proNewsService;

    /**
     * 查询新闻管理列表
     */
    // @PreAuthorize("@ss.hasPermi('system:news:list')")
    @GetMapping("/list")
    public TableDataInfo list(ProNews proNews)
    {
        startPage();
        List<ProNews> list = proNewsService.selectProNewsList(proNews);
        return getDataTable(list);
    }

    /**
     * 导出新闻管理列表
     */
    // @PreAuthorize("@ss.hasPermi('system:news:export')")
    @Log(title = "新闻管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ProNews proNews)
    {
        List<ProNews> list = proNewsService.selectProNewsList(proNews);
        ExcelUtil<ProNews> util = new ExcelUtil<ProNews>(ProNews.class);
        util.exportExcel(response, list, "新闻管理数据");
    }

    /**
     * 获取新闻管理详细信息
     */
    // @PreAuthorize("@ss.hasPermi('system:news:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(proNewsService.selectProNewsById(id));
    }

    /**
     * 新增新闻管理
     */
    // @PreAuthorize("@ss.hasPermi('system:news:add')")
    @Log(title = "新闻管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ProNews proNews)
    {
        return toAjax(proNewsService.insertProNews(proNews));
    }

    /**
     * 修改新闻管理
     */
    // @PreAuthorize("@ss.hasPermi('system:news:edit')")
    @Log(title = "新闻管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ProNews proNews)
    {
        return toAjax(proNewsService.updateProNews(proNews));
    }

    /**
     * 删除新闻管理
     */
    // @PreAuthorize("@ss.hasPermi('system:news:remove')")
    @Log(title = "新闻管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(proNewsService.deleteProNewsByIds(ids));
    }
}
