package com.team4.controller;

import com.team4.entity.Oilcard;
import com.team4.service.OilService;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;


/**
 * Created by Administrator on 2018/3/16 0016.
 */

@Controller
public class OilController {

    @Autowired
    private OilService oilService;

    @RequestMapping ("/viewalloilcard")
    public ModelAndView viewalloilcard(ModelAndView mv){
        //ModelMap alloilcard = new ModelMap();
        List<Oilcard> oilcard = oilService.viewalloilcard();
        //alloilcard.addAttribute("oilcard",oilcard);
        mv.addObject("alloilcard",oilcard);
        mv.setViewName("alloilcard");
        //System.out.println(mv);
        return mv;
    }


//    @RequestMapping("/searchoilcardbycarid")
//    public String searchoilcardbycarid(){
//        return "selectoilcardbyoilcardid";
//    }
//
//    @RequestMapping("/selectoilcardbycarid")
//    public String selectoilcardbycarid(ModelMap mm,String carid){
//        List<Oilcard> oilcards=oilService.findoilcardbycarid(carid);
//        mm.addAttribute("oilcards",oilcards);
//        //System.out.println(mm);
//        return "viewoilcardbycarid";
//    }

//    @RequestMapping("/searchoilcardbyoilcardid")
//    public String searchoilcardbyhierarchy(){
//        return "selectoilcardbyoilcardid";
//    }
//    @RequestMapping("/selectoilcardbyoilcardid")
//    public String selectoilcardbyoilcardid(ModelMap mm ,String oilcardid){
//        List<Oilcard> oilcards=oilService.findoilcardbyoilcardid(oilcardid);
//        mm.addAttribute("oilcards",oilcards);
//        System.out.println(mm);
//        return "viewoilcardbyoilcardid";
//    }

    @RequestMapping("/deloilcard")
    public String deloilcard(String oilcardid){
        System.out.println(oilcardid);
        oilService.deloilcard(oilcardid);
        return "redirect:/viewalloilcard";
    }

    @RequestMapping("/delalloilcard")
    @ResponseBody
    public String delalloilcard(String simplebuttons){
        JSONArray jsonArray = new JSONArray(simplebuttons);
        String[] oilcardid = new String[jsonArray.length()];
        for (int i=0;i<jsonArray.length();i++)
            oilcardid[i] = (String)jsonArray.get(i);
        try{
            oilService.delalloilcard(oilcardid);
        }catch(RuntimeException e){
            return "fail";
        }
        return "success";
    }


    @RequestMapping("/updateoilcard")
    public String updateoilcard(Model model,String oilcardid){
        Oilcard oilcard = oilService.findoilcardbyoilcardid(oilcardid);
        model.addAttribute("oilcard",oilcard);
        //System.out.println(model);
        return "updateoilcard";
    }

    @RequestMapping("/addoilcardjsp")
    public  String addoilcardjsp(){
        return "addoilcard";
    }

    @RequestMapping("/addoilcard")
    @ResponseBody
    public String addoilcard(Oilcard oilcard){
        oilService.addoilcard(oilcard);
        return "";
    }

    @RequestMapping("/updateoilcardbyoilcardid")
    @ResponseBody
    public String updateoilcardbyoilcardid(Oilcard oilcard){
        //System.out.println(oilcard.getOilcardid());
        //System.out.println(oilcard);
        oilService.updateoilcardbyoilcardid(oilcard);
        return "";
    }
//    @RequestMapping("/test")
//    public void test(){
//        Oilcard oilcard = new Oilcard();
//        oilcard.setOilcardid("0001");
//        oilcard.setBalance("500");
//        oilcard.setCarid("0001");
//        oilcard.setHierarchy(1);
//        oilService.updateoilcardbyoilcardid(oilcard);
//    }

    @RequestMapping("/searchoilcard")
    public String searchoilcard(){
        return "searchoilcard";
    }

    @RequestMapping("/selectoilcard")
    public String selectoilcard(ModelMap mm,Oilcard oilcard){
        String oilcardid = oilcard.getOilcardid();
        String carid = oilcard.getCarid();
        List<Oilcard> oilcards;
        if (oilcardid=="" && carid == "") {
            oilcards = oilService.viewalloilcard();
        }
        else if (oilcardid =="")
        {
            oilcards = oilService.findoilcardbycarid(carid);
        }
        else if (carid == ""){
            oilcards = oilService.selectoilcardbyoilcardid(oilcardid);
        }
        else {
            oilcards = oilService.selectoilcardbyoilcardidandcarid(oilcard);
        }
        mm.addAttribute("oilcard",oilcards);
        return "searchoilcard";
    }

    @RequestMapping("/deloilcardsearch")
    @ResponseBody
    public String deloilcardsearch(String oilcardid){
        oilService.deloilcard(oilcardid);
        return "";
    }
}
