package com.team4.controller;


import com.team4.service.DriverService;
import com.team4.entity.Driver;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


/**
 * Created by Administrator on 2018/3/14 0014.
 */

@Controller
public class DriverController {

    @Autowired
    private DriverService driverService;

//    @RequestMapping("/insertdriverfile")
//    public String testQuery(){
//        return "insertdriverfile";
//    }
//
//
//    @RequestMapping("/insert")
//    public String insert(Driver driver){
//        //System.out.println(uName);
////        User user = null;
////        user = userService.findByName(uName);
////        System.out.println(user == null);
////        return user.toString();
//        //if (driver.getStaff_ID().length()!=6)
//        //    return "driverfile";
//        driverService.insertDriverInfo(driver);
//        int thestaff_ID = driver.getStaff_ID();
//        List<Driver> thedriver = driverService.selectdriverbystaffid(thestaff_ID);
//        if (thedriver!=null) {
//
//            return "insertdriversuccess";
//        }
//        else {
//
//            return "insertdriverfail";
//        }
//    }
//
//    @RequestMapping("/searchalldriverinfo")
//    public ModelAndView searchAllDriverInfo(){
//        ModelAndView mv = new ModelAndView();
//        List<Driver> alldriverinfo=driverService.searchalldriverinfo();
//
//        mv.addObject("alldriverinfo",alldriverinfo);
//        mv.setViewName("viewalldriverinfo");
//        //ModelMap modelMap=new ModelMap();
//        //modelMap.addAttribute("alldriverinfo",alldriverinfo);
//        return mv;
//    }
//
//    @RequestMapping("/searchdriverbystaffid")
//    public String searchDriverByStaffid(){
//        return "searchdriverbystaffid";
//    }
//
//    @RequestMapping("/selectdriverbystaffid")
//    public ModelAndView searchDriver_Staffid(int staff_ID){
//        //ModelMap modelMap = new ModelMap();
//        List<Driver> drivers = driverService.selectdriverbystaffid(staff_ID);
//
//        //modelMap.addAttribute("thedriver",drivers);
//
//        //System.out.println();
//        ModelAndView mv =new ModelAndView();
//
//            mv.addObject("thedriver", drivers);
//            mv.setViewName("viewdriverbystaffid");
//
//        return mv;
//    }

//    @RequestMapping(value = "/findByName",produces = "text/plain; charset=utf-8")
//    @ResponseBody
//    public String findByName(String uName){
//        //System.out.println(uName);
//        Driver driver = null;
//        driver = driverService.findByName(uName);
//        System.out.println(driver == null);
//        return driver.toString();
//    }

//    @RequestMapping("/checkDuplicate")
//    public boolean checkDuplicate(String staff_ID){
//        Driver driver = userService.findAllDriver(staff_ID);
//        if (driver!=null) return true;
//        else return false;
//
//    }

    @RequestMapping("/viewalldriver")
    public ModelAndView viewalldriver(ModelAndView mv){
        List<Driver> drivers = driverService.searchalldriverinfo();
        mv.addObject("driver",drivers);
        mv.setViewName("alldriver");
        return mv;
    }

    @RequestMapping("/updatedriver")
    public String updatedriver(Model model, String staff_ID){
        Driver driver = driverService.selectdriverbystaffid(staff_ID);

        model.addAttribute("driver",driver);
        return "updatedriver";
    }

    @RequestMapping("/updatedriverbystaff_ID")
    @ResponseBody
    public String updatedriverbystaff_ID(Driver driver){
        driverService.updatedriverbystaff_ID(driver);
        return "";
    }

    @RequestMapping("/deldriver")
    public String deldriver(String staff_ID){
        driverService.deldriver(staff_ID);
        return "redirect:/viewalldriver";
    }

    @RequestMapping("/insertdriverbystaff_ID")
    @ResponseBody
    public String insertdriverbystaff_ID(Driver driver){
        //System.out.println(driver);
        String staff_id = driver.getStaff_ID();
        //System.out.println(staff_id);
        driverService.insertDriverInfo(driver);
        return "";
    }

    @RequestMapping("/delalldriver")
    @ResponseBody
    public String delalldriver(String simplebuttons){
        JSONArray jsonArray = new JSONArray(simplebuttons);
        String[] staff_ID = new String[jsonArray.length()];
        for (int i=0;i<jsonArray.length();i++) {
            staff_ID[i] = (String) jsonArray.get(i);
            //System.out.println(staff_ID[i]);
        }
        try{
            System.out.println(staff_ID);
            driverService.delalldriver(staff_ID);
        }catch(RuntimeException e){
            return "fail";
        }
        return "success";
    }

    @RequestMapping("/searchdriver")
    public String searchdriver(){
        return "searchdriver";
    }

    @RequestMapping("/selectdriver")
    public String selectdriver(ModelMap mm,Driver driver){
        //System.out.println(driver);
        String staff_ID = driver.getStaff_ID();
        String staff_name = driver.getStaff_name();
        String ID_card = driver.getID_card();
        List<Driver> drivers;
        //System.out.println(staff_ID);
        if (staff_ID=="" && staff_name == "" && ID_card=="")
        {
            drivers=driverService.searchalldriverinfo();
        }
        else if (staff_ID=="" && staff_name=="")
        {
            drivers=driverService.selectdriverbyIDcard(driver);
        }
        else if (staff_ID=="" && ID_card=="")
        {
            drivers = driverService.selectdriverbyname(driver);
        }
        else if (ID_card=="" && staff_name=="") drivers = driverService.selectdriverbyID(driver);
        else if (staff_ID =="") drivers=driverService.selectdriverbyIDcardandname(driver);
        else if (staff_name=="") drivers=driverService.selectdriverbyIDandIDcard(driver);
        else if (ID_card=="") drivers=driverService.selectdriverbyIDandname(driver);
        else drivers=driverService.selectdriverbyIDcardandnameandID(driver);
        mm.addAttribute("driver",drivers);
        //System.out.println(mm);
        return "searchdriver";
    }

    @RequestMapping("/deldriversearch")
    @ResponseBody
    public String deldriversearch(String staff_ID){
        driverService.deldriver(staff_ID);
        return "";
    }

    @RequestMapping("/adddriverjsp")
    public String adddriverjsp(){
        return "adddriver";
    }
    @RequestMapping("/DriverAge")
    public String Driver(Model model,String year){
        Integer temp;
        String temp2;
        String[] temp1;
        Integer f=2018;
        Integer b=0;
        Integer c=0;
        Integer d=0;
        Integer e=0;
        JSONArray jsonArray=new JSONArray();
        List<Driver> drivers=driverService.searchalldriverinfo();
        for(int i=0;i<drivers.size();i++)
        {
            year=drivers.get(i).getBirth();
            temp1=year.split("-");
            temp2=temp1[0];
            temp=f-Integer.parseInt(temp2);
            if(temp>=20&&temp<30){
                b++;
            }
            if(temp>=30&&temp<40){
                c++;
            }
            if(temp>=40&&temp<50){
                d++;
            }
            if(temp>=50&&temp<60){
                e++;
            }
        }
//        System.out.println(c);
        jsonArray.put(b);
        jsonArray.put(c);
        jsonArray.put(d);
        jsonArray.put(e);
        model.addAttribute("jsonArray",jsonArray);
//        System.out.println(jsonArray);
        return "DriverAgePie";
    }
}
