package com.team4.controller;



import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.team4.entity.Outbound;
import com.team4.entity.Outboundsearch;
import com.team4.service.OutboundService;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.soap.SOAPMessageHandlers;
import java.util.List;


/**
 * Created by Administrator on 2018/3/14 0014.
 */

@Controller
public class OutboundController {

    @Autowired
    private OutboundService outboundService;

//    @RequestMapping("/searchalloutboundinfo")
//    public ModelAndView searchalloutboundinfo(ModelAndView mv){
//        List<Outbound> outbound = outboundService.searchalloutboundinfo();
//        mv.addObject("outbounds",outbound);
//        mv.setViewName("viewalloutboundinfo");
//        return mv;
//    }
//
//    @RequestMapping("/searchoutboundbystaffid")
//    public String searchoutboundbystaffid(){
//        return "searchoutboundbystaffid";
//    }
//
//    @RequestMapping("/selectouboundbystaffid")
//    public String selectouboundbystaffid(ModelMap mm,String staffid){
//        List<Outbound> outbounds = outboundService.selectouboundbystaffid(staffid);
//        mm.addAttribute("outbounds",outbounds);
//        return "viewoutboundbystaffid";
//    }
//
//    @RequestMapping("/searchoutboundbycarid")
//    public String searchoutboundbycarid(){
//        return "searchoutboundbycarid";
//    }
//
//    @RequestMapping("/selectoutboundbycarid")
//    public String selectouboundbycarid(ModelMap mm,String carid){
//        List<Outbound> outbounds = outboundService.selectouboundbycarid(carid);
//        mm.addAttribute("outbounds",outbounds);
//        return "viewoutboundbycarid";
//    }
//
//    @RequestMapping("/insertoutbound")
//    public String insertoutbound(){
//        return "inputoutbound";
//    }
//
//    @RequestMapping("/inputoutbound")
//    public String inputoutbound(Outbound outbound){
////        List<Outbound> alloutbound = outboundService.searchalloutboundinfo();
////        int size=alloutbound.size();
//
//
//        int n= outboundService.inputoutbound(outbound);
//
////        List<Outbound> nowalloutbound = outboundService.searchalloutboundinfo();
////        int nowsize=alloutbound.size();
////        System.out.println(nowsize);
////        System.out.println(size);
////        System.out.println(n);
//       if (n==1)
//            return "insertoutboundsuccess";
//        else return "insertoutboundfail";
//    }

    @RequestMapping("/viewalloutbound")
    public ModelAndView viewalloutbound(ModelAndView mv){

        List<Outbound> outbounds = outboundService.searchalloutboundinfo();
        mv.addObject("alloutbound",outbounds);
        mv.setViewName("alloutbound");
        return mv;
    }

    @RequestMapping("/updateoutbound")
    public String updateoutbound(Model model,String id){
        Outbound outbound = outboundService.findoutboundbyid(id);
        model.addAttribute("outbound",outbound);
        return "updateoutbound";
    }

    @RequestMapping("/updateoutboundbyid")
    @ResponseBody
    public String updateoutboundbyid(Outbound outbound){
        outboundService.updateoutboundbyid(outbound);
        return "";
    }

    @RequestMapping("/deloutbound")
    public String deloutbound(String id){
        outboundService.deloutbound(id);
        return "redirect:/viewalloutbound";
    }

    @RequestMapping("/addoutboundjsp")
    public String addoutboundjsp(){
        return "addoutbound";
    }


    @RequestMapping("/addoutbound")
    @ResponseBody
    public String addoutbound(Outbound outbound){
        List<Outbound> outbounds=outboundService.searchalloutboundinfo();
        int size = outbounds.size();
        String id=String.valueOf(Integer.parseInt(outbounds.get(size-1).getId())+1);
        outbound.setId(id);
        System.out.println(id);
        outboundService.inputoutbound(outbound);
        return "";
    }

    @RequestMapping("/delalloutbound")
    @ResponseBody
    public String delalloutbound(String simplebuttons){
        JSONArray jsonArray = new JSONArray(simplebuttons);
        String[] outboundid = new String[jsonArray.length()];
        for (int i=0;i<jsonArray.length();i++) {
            outboundid[i] = (String) jsonArray.get(i);
            //System.out.println(outboundid[i]);
        }
        try{
            outboundService.delalloutbound(outboundid);
        }catch(RuntimeException e){
            return "fail";
        }
        return "success";
    }

    @RequestMapping("/searchoutbound")
    public String searchoutbound(){
        return "searchoutbound";
    }

    @RequestMapping("/selectoutbound")
    public String selectoutbound(ModelMap mm,Outboundsearch outboundsearch){
        String startdate = outboundsearch.getStartdate();
        String enddate = outboundsearch.getEnddate();
        String staff_ID = outboundsearch.getStaff_ID();
        String carid = outboundsearch.getCarid();
        List<Outbound> outbounds;
        if(startdate==""&&enddate==""&&staff_ID==""&&carid=="")
            outbounds = outboundService.searchalloutboundinfo();
        else outbounds = outboundService.selectoutbound(outboundsearch);
        mm.addAttribute("outbounds",outbounds);
        return "searchoutbound";
    }

    @RequestMapping("/deloutboundsearch")
    @ResponseBody
    public String deloutboundsearch(String id){
        outboundService.deloutbound(id);
        return "";
    }
    @RequestMapping("/outBound")
    public String outBound(Model model,String date){
        String[] date2;
        Integer a=0;
        Integer b=0;
        Integer c=0;
        Integer d=0;
        Integer e=0;
        Integer f=0;
        String time;

        List<Outbound> outbounds=outboundService.searchalloutboundinfo();
        JSONArray jsonArray=new JSONArray();
        for (int i=0;i<outbounds.size();i++) {
            date=outbounds.get(i).getTime();
            date2=date.split(" ");
            time=date2[1];
            if((time.compareTo("00:00:00"))>0&&(time.compareTo("04:00:00"))<0){
                a++;
            }
            if((time.compareTo("04:00:00"))>0&&(time.compareTo("08:00:00"))<0){
                b++;
            }
            if((time.compareTo("08:00:00"))>0&&(time.compareTo("12:00:00"))<0){
                c++;
            }
            if((time.compareTo("12:00:00"))>0&&(time.compareTo("16:00:00"))<0){
                d++;
            }
            if((time.compareTo("16:00:00"))>0&&(time.compareTo("20:00:00"))<0){
                e++;
            }
            if((time.compareTo("20:00:00"))>0&&(time.compareTo("24:00:00"))<0){
                f++;
            }
        }
        jsonArray.put(a);
        jsonArray.put(b);
        jsonArray.put(c);
        jsonArray.put(d);
        jsonArray.put(e);
        jsonArray.put(f);
        model.addAttribute("jsonArray",jsonArray);


//        for(int j=0;j<jsonArray.length();j++){
//            date=(String)jsonArray.get(j);
//            date2=date.split(" ");
//            time=date2[1];
//            switch (time){
//                case()
//            }if(00:00:00< 03:00:00 >04:00:00)
//        System.out.println(jsonArray);
//        model.addAttribute("jsonArray",jsonArray);
        return "outboundPie";
    }

}
