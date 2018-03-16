package com.team4.controller;

import com.team4.entity.Admin;
import com.team4.service.AdminService;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    /**
     * 验证用户登陆，并添加用户登录状态记录
     * @param id
     * @param password
     * @param modelMap
     * @param request
     * @return
     */
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

    /**
     * 退出系统并清除登录状态
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response){
        request.getSession().removeAttribute("id");
        request.getSession().removeAttribute("password");
        return "redirect:/";
    }

    /**
     * 显示所有的前台管理员数据
     * @return  返回用户列表页面
     */
    @RequestMapping("/allFrontAdmin")
    public String getAllAdmin(ModelMap modelMap){
        List<Admin> admins = adminService.getAllFrontAdmin();
        modelMap.addAttribute("admins",admins);
        return "adminList";
    }

    /**
     *依据admin的id来删除admin
     * @param id
     * @return  删除结果
     */
    @RequestMapping("/delAdmin")
    @ResponseBody
    public String delAdmin(String id){
        return adminService.delAdminById(id).toString();
    }

    /**
     * 依据admin的id来删除admin的批处理方式
     * @param adminItems
     * @return
     */
    @RequestMapping("/batchDelAdmin")
    @ResponseBody
    public String batchDelAdmin( String adminItems) {
        JSONArray jsonArray = new JSONArray(adminItems);
        String[] adminItemsId = new String[jsonArray.length()];
        for(int i = 0; i < jsonArray.length();i++)
            adminItemsId[i] = (String)jsonArray.get(i);
        try{
            adminService.batchDelAdmin(adminItemsId);
        }catch (RuntimeException e){
            return "fail";
        }
        return "success";
    }

    @RequestMapping("/adminAdd")
    @ResponseBody
    public String adminAdd(Admin admin){
        System.out.println(admin.toString());
        return "ok!";
    }
}
