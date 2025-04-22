package com.project.project.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.project.common.utils.StringUtils;
import com.project.framework.security.RegisterBody;
import com.project.framework.security.service.SysRegisterService;
import com.project.framework.web.controller.BaseController;
import com.project.framework.web.domain.AjaxResult;
import com.project.project.system.service.ISysConfigService;

/**
 * 注册验证
 * 
 * @author  adminApiUser
 */
@RestController
public class SysRegisterController extends BaseController
{
    @Autowired
    private SysRegisterService registerService;

    @Autowired
    private ISysConfigService configService;

    @PostMapping("/register")
    public AjaxResult register(@RequestBody RegisterBody user)
    {
//        if (!("true".equals(configService.selectConfigByKey("sys.account.registerUser"))))
//        {
//            return error("当前系统没有开启注册功能！");
//        }
        String msg = registerService.register(user);
        return StringUtils.isEmpty(msg) ? success() : error(msg);
    }
}
