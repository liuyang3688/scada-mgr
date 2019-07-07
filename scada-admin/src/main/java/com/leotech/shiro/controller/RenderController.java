/**
 *
 */
package com.leotech.shiro.controller;

/**
 * 页面渲染相关 -- 页面跳转
 *
 */

import com.leotech.shiro.util.ResultUtil;
import com.leotech.shiro.util.ResultUtil;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 页面跳转类
 *
 */
@Controller
public class RenderController {

    @RequiresAuthentication
    @GetMapping(value = {"", "/index"})
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("cur_url", "/index");
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequiresPermissions("users")
    @GetMapping("/users")
    public ModelAndView user() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("cur_url", "/users");
        modelAndView.setViewName("user/list");
        return modelAndView;
    }

    @RequiresPermissions("resources")
    @GetMapping("/resources")
    public ModelAndView resources() {
        return ResultUtil.view("resources/list");
    }

    @RequiresPermissions("roles")
    @GetMapping("/roles")
    public ModelAndView roles() {
        return ResultUtil.view("role/list");
    }

    @RequiresPermissions("toolform")
    @GetMapping("/toolform")
    public ModelAndView formGen() {
        return ResultUtil.view("tool/formGen");
    }

    @RequiresPermissions("customers")
    @GetMapping("/customers")
    public ModelAndView customers() {
        return ResultUtil.view("customer/list");
    }
}
