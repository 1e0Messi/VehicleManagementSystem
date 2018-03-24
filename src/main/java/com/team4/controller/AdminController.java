package com.team4.controller;


import com.team4.entity.Admin;
import com.team4.entity.Notice;
import com.team4.service.AdminService;
import com.team4.service.NoticeService;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private NoticeService noticeService;

    /**
     * 验证用户登陆，并添加用户登录状态记录
     * @param id    用户输入的ID
     * @param password  用户输入的密码
     * @param modelMap  页面传参的模型
     * @param request   前端请求参数
     * @return pageReturn   返回的页面名称
     */
    @RequestMapping("/loginVerification")
    public String loginVerification(String id, String password, ModelMap modelMap, HttpServletRequest request){
        Admin admin = adminService.loginVerification(id,password);

        String pageReturn;
        if(admin != null){
            request.getSession().setAttribute("id",admin.getId());
            request.getSession().setAttribute("name",admin.getName());
            if(admin.getAuthority() != 0){
                //普通管理员
                modelMap.addAttribute("notice",noticeService.getAllUsingNotice());
                pageReturn = "Administrator";
            }else {
                //高级管理员
                modelMap.addAttribute("adminCount",adminService.getAdminCount());
                modelMap.addAttribute("driverCount",adminService.getDriverCount());
                modelMap.addAttribute("vehicleCount",adminService.getVehicleCount());
                modelMap.addAttribute("incomeCount",adminService.getIncomeCount());
                modelMap.addAttribute("feeCount",adminService.getFeeCount());

                int monthIncome = adminService.getMonthIncome();
                int monthFee = adminService.getMonthFee();
                int yearIncome = adminService.getYearIncome();
                int yearFee = adminService.getYearFee();
                int threeYearIncome = adminService.getThreeYearIncome();
                int threeYearFee = adminService.getThreeYearFee();

                modelMap.addAttribute("monthIncome",monthIncome);
                modelMap.addAttribute("monthFee",monthFee);
                modelMap.addAttribute("monthProfit",monthIncome - monthFee);
                modelMap.addAttribute("yearIncome",yearIncome);
                modelMap.addAttribute("yearFee",yearFee);
                modelMap.addAttribute("yearProfit",yearIncome - yearFee);
                modelMap.addAttribute("threeYearIncome",threeYearIncome);
                modelMap.addAttribute("threeYearFee",threeYearFee);
                modelMap.addAttribute("threeYearProfit",threeYearIncome - threeYearFee);

                pageReturn = "superAdministrator";
            }
        }else{
            pageReturn = "resInfo";
        }
        return pageReturn;
    }

    /**
     * 退出系统并清除登录状态
     * @param request 前端请求参数
     * @param response  前端响应参数
     * @return  redirect:/ 页面重定位
     */
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response){
        request.getSession().removeAttribute("id");
        request.getSession().removeAttribute("name");
        return "redirect:/";
    }

    @RequestMapping("/superAdministrator")
    public String superAdministrator(ModelMap modelMap){
        modelMap.addAttribute("adminCount",adminService.getAdminCount());
        modelMap.addAttribute("driverCount",adminService.getDriverCount());
        modelMap.addAttribute("vehicleCount",adminService.getVehicleCount());
        modelMap.addAttribute("incomeCount",adminService.getIncomeCount());
        modelMap.addAttribute("feeCount",adminService.getFeeCount());

        int monthIncome = adminService.getMonthIncome();
        int monthFee = adminService.getMonthFee();
        int yearIncome = adminService.getYearIncome();
        int yearFee = adminService.getYearFee();
        int threeYearIncome = adminService.getThreeYearIncome();
        int threeYearFee = adminService.getThreeYearFee();

        modelMap.addAttribute("monthIncome",monthIncome);
        modelMap.addAttribute("monthFee",monthFee);
        modelMap.addAttribute("monthProfit",monthIncome - monthFee);
        modelMap.addAttribute("yearIncome",yearIncome);
        modelMap.addAttribute("yearFee",yearFee);
        modelMap.addAttribute("yearProfit",yearIncome - yearFee);
        modelMap.addAttribute("threeYearIncome",threeYearIncome);
        modelMap.addAttribute("threeYearFee",threeYearFee);
        modelMap.addAttribute("threeYearProfit",threeYearIncome - threeYearFee);
        return "superAdministrator";
    }

    @RequestMapping("/Administrator")
    public String Administrator(){
        return "Administrator";
    }

    /**
     * 显示所有的前台管理员数据
     * @return  返回用户列表页面
     */
    @RequestMapping("/allFrontAdmin")
    public String getAllAdmin(ModelMap modelMap){
        List<Admin> admins = adminService.getAllFrontAdmin();
        JSONArray jsonArray = new JSONArray();
        jsonArray.put(admins);
        modelMap.addAttribute("jsonArray",jsonArray);
        return "adminList";
    }

    /**
     *依据admin的id来删除admin
     * @param id    需删除数据的ID
     * @return  删除结果
     */
    @RequestMapping("/delAdmin")
    @ResponseBody
    public String delAdmin(String id){
        return adminService.delAdminById(id).toString();
    }

    /**
     * 依据admin的id来删除admin的批处理方式
     * @param adminItems    需删除的诸多ID所组成的JSON串
     * @return "success" 通知前端删除成功    "fail" 通知前端删除失败
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

    /**
     * 添加admin成员
     * @param adminData 添加的admin成员对象
     * @return  success
     */
    @RequestMapping("/adminAdd")
    @ResponseBody
    public String adminAdd(Admin adminData){
        adminService.adminAdd(adminData);
        return "success";
    }

    /**
     * 获取修改密码的页面，并传入相关的参数
     * @param id    修改的数据所对应的ID
     * @param password  修改的数据所对应的原始密码
     * @param modelMap  页面传参的模型
     * @return passwordEdit，修改密码的页面
     */
    @RequestMapping("/passwordEdit")
    public String passwordEdit(String id,String password,ModelMap modelMap){
        modelMap.addAttribute("id",id);
        modelMap.addAttribute("password",password);
        return "passwordEdit";
    }

    /**
     *执行修改密码的操作
     * @param id    修改对象的ID
     * @param oldpass   旧的密码
     * @param newpass   新的密码
     * @return ""
     */
    @RequestMapping("/passwordModify")
    @ResponseBody
    public String passwordModify(String id,String oldpass,String newpass) {
        adminService.passwordModify(id,oldpass,newpass);
        return "";
    }

    /**
     *返回编辑信息的页面
     * @param id 修改对象的ID
     * @param modelMap  页面传参的模型
     * @return adminEdit.jsp
     */
    @RequestMapping("/adminEdit")
    public String adminEdit(String id, ModelMap modelMap){
        Admin admin = adminService.getAdminById(id);
        modelMap.addAttribute("admin",admin);
        return "adminEdit";
    }

    @RequestMapping("/subAdminEdit")
    @ResponseBody
    public String subAdminEdit(String id,String name,String tel,String email,String address){
        adminService.adminModify(id,name,tel,email,address);
        return "";
    }

    @RequestMapping("/adminQuery")
    public String adminQuery(){
        return "adminQuery";
    }

    @RequestMapping("/adminQueryById")
    @ResponseBody
    public Admin adminQueryById(String id){
        return adminService.getAdminById(id);
    }
    @RequestMapping("/adminQueryByDate")
    @ResponseBody
    public List<Admin> adminQueryByDate(String startTime,String endTime){
        return adminService.getAdminByDate(startTime,endTime);
    }


}
