package com.team4.controller;

import com.team4.entity.Admin;
import com.team4.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/loginVerification")
    public String loginVerification(String id, String password, ModelMap modelMap, HttpServletRequest request){
        Admin admin = adminService.loginVerification(id,password);

        String pageReturn;
        if(admin != null){
            modelMap.addAttribute("admin",admin);
            pageReturn = "superAdministrator";
            request.getSession().setAttribute("id",admin.getId());
            request.getSession().setAttribute("password",admin.getPassword());
        }else{
            modelMap.addAttribute("description","账号或密码错误");
            pageReturn = "resInfo";
        }
        return pageReturn;
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response){
        request.getSession().removeAttribute("id");
        request.getSession().removeAttribute("password");
        return "redirect:/";
    }
}
