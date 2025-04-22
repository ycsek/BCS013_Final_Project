package com.project.project.system.controller;

import java.math.BigDecimal;
import java.util.*;
import javax.servlet.http.HttpServletResponse;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.date.DateUtil;
import com.project.common.utils.DateUtils;
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
import com.project.project.system.domain.ProOrder;
import com.project.project.system.service.IProOrderService;
import com.project.framework.web.controller.BaseController;
import com.project.framework.web.domain.AjaxResult;
import com.project.common.utils.poi.ExcelUtil;
import com.project.framework.web.page.TableDataInfo;

/**
 * 水电费缴纳Controller
 * 
 * @author adminApi
 * @date 2025-03-30
 */
@RestController
@RequestMapping("/system/order")
public class ProOrderController extends BaseController
{
    @Autowired
    private IProOrderService proOrderService;


    @GetMapping("/getLine")
    public AjaxResult getLine(){
//        ProOrder query = new ProOrder();
//        query.setType("水费");
//        List<ProOrder> proCarLogs = proOrderService.selectProOrderList(query);
        Map<String, List> result = new HashMap();
        Date nowDate = DateUtils.getNowDate();

        List xData = new ArrayList(7);
        List shuiData = new ArrayList(7);
        List dianData = new ArrayList(7);
        for (int i = 0; i < 7; i++) {
            DateTime dateTime = DateUtil.offsetDay(nowDate, -i);
            xData.add(DateUtil.format(dateTime, "yyyy-MM-dd"));
        }
        for (Object xDatum : xData) {
            ProOrder query = new ProOrder();
            query.setType("水费");
            List<ProOrder> proCarLogs = proOrderService.selectProOrderList(query);
            BigDecimal totalPrice = BigDecimal.ZERO;
            BigDecimal dianPrice = BigDecimal.ZERO;
            for (ProOrder proCarLog : proCarLogs) {
                String format = DateUtil.format(proCarLog.getCreateTime(), "yyyy-MM-dd");
                System.out.println(format);
                System.out.println(xDatum);
                if(format.equals(xDatum.toString())) {
                    totalPrice = totalPrice.add(proCarLog.getPrice());
                }
            }
            shuiData.add(totalPrice);


            query.setType("电费");
            List<ProOrder> dian = proOrderService.selectProOrderList(query);
            for (ProOrder proCarLog : dian) {
                String format = DateUtil.format(proCarLog.getCreateTime(), "yyyy-MM-dd");
                System.out.println(format);
                System.out.println(xDatum);
                if(format.equals(xDatum.toString())) {
                    dianPrice = dianPrice.add(proCarLog.getPrice());
                }
            };
            dianData.add(dianPrice);
        }

        result.put("xData", xData);
        result.put("shuiData", shuiData);
        result.put("dianData", dianData);
        return AjaxResult.success(result);
    }


    /**
     * 查询水电费缴纳列表
     */
  // @PreAuthorize("@ss.hasPermi('system:order:list')")
    @GetMapping("/list")
    public TableDataInfo list(ProOrder proOrder)
    {
        startPage();
        List<SysRole> roles = SecurityUtils.getLoginUser().getUser().getRoles();
        for (SysRole role : roles) {
            if(role.getRoleKey().equals("common")) {
                proOrder.setUserId(SecurityUtils.getUserId());
            }
        }

        List<ProOrder> list = proOrderService.selectProOrderList(proOrder);
        return getDataTable(list);
    }

    /**
     * 导出水电费缴纳列表
     */
  // @PreAuthorize("@ss.hasPermi('system:order:export')")
    @Log(title = "水电费缴纳", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ProOrder proOrder)
    {
        List<ProOrder> list = proOrderService.selectProOrderList(proOrder);
        ExcelUtil<ProOrder> util = new ExcelUtil<ProOrder>(ProOrder.class);
        util.exportExcel(response, list, "水电费缴纳数据");
    }

    /**
     * 获取水电费缴纳详细信息
     */
  // @PreAuthorize("@ss.hasPermi('system:order:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(proOrderService.selectProOrderById(id));
    }

    /**
     * 新增水电费缴纳
     */
  // @PreAuthorize("@ss.hasPermi('system:order:add')")
    @Log(title = "水电费缴纳", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ProOrder proOrder)
    {
        return toAjax(proOrderService.insertProOrder(proOrder));
    }

    /**
     * 修改水电费缴纳
     */
  // @PreAuthorize("@ss.hasPermi('system:order:edit')")
    @Log(title = "水电费缴纳", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ProOrder proOrder)
    {
        return toAjax(proOrderService.updateProOrder(proOrder));
    }

    /**
     * 删除水电费缴纳
     */
  // @PreAuthorize("@ss.hasPermi('system:order:remove')")
    @Log(title = "水电费缴纳", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(proOrderService.deleteProOrderByIds(ids));
    }
}
