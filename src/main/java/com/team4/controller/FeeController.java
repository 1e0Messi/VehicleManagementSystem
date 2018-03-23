package com.team4.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.team4.entity.Fee;
import com.team4.service.FeeService;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by cjy on 2018/3/14.
 */

@Controller
public class FeeController {

    @Autowired
    private FeeService feeService;

    @RequestMapping("/AllFee")
    public String getAllFee(ModelMap modelMap) throws Exception{
        List<Fee> fee = feeService.findAllFee();
        modelMap.addAttribute("jsonArray",new ObjectMapper().writeValueAsString(fee));
        modelMap.addAttribute("length",fee.size());
        return "FeeList";
    }

    @RequestMapping("/AddFee")
    public String AddFee(Model m) {
        List<Fee> fees = feeService.findAllFee();
        int maxfee=0;
        if (fees.size()==0)
            maxfee=1;
        else{
            for (int i=0;i<fees.size();i++)
                if (maxfee<Integer.parseInt(fees.get(i).getfeeid()))
                    maxfee=Integer.parseInt(fees.get(i).getfeeid());
        }
        maxfee++;
        m.addAttribute("feeid",String.valueOf(maxfee));
        return "addFee";
    }

    @RequestMapping("/insertFee")
    public String insertFee(Model m,Fee fee) {
        feeService.saveFee(fee);
        List<Fee> fees = feeService.findAllFee();
        int maxfee=0;
        if (fees.size()==0)
            maxfee=1;
        else{
            for (int i=0;i<fees.size();i++)
                if (maxfee<Integer.parseInt(fees.get(i).getfeeid()))
                    maxfee=Integer.parseInt(fees.get(i).getfeeid());
        }
        maxfee++;
        m.addAttribute("feeid",String.valueOf(maxfee));
        return "/addFeeOK";
    }


    @RequestMapping("/DeleteFee")
    @ResponseBody
    public String deleteTheFee(String feeid) {
        return feeService.deleteFee(feeid).toString();
    }

    @RequestMapping("/batchDelFee")
    @ResponseBody
    public String batchDelFee(String feeItems) {
        JSONArray jsonArray = new JSONArray(feeItems);
        String[] feeItemsId = new String[jsonArray.length()];
        for(int i = 0; i < jsonArray.length();i++)
            feeItemsId[i] = (String)jsonArray.get(i);
        try{
            feeService.batchDelFee(feeItemsId);
        }catch (RuntimeException e){
            return "fail";
        }
        return "success";
    }

    @RequestMapping("/UpdateFeeInput")
    public String UpdateFee(){
        return "updateFee";
    }

    @RequestMapping("/updateFee")
    public String updateTheFee(Fee fee) {
        feeService.updateFee(fee);
        return "updateFeeOK";
    }


    @RequestMapping("/findFee")
    public ModelAndView findFee(String feeid,String carid,String type,String cost,String applicantid,String approverid,String beginTime,String endTime) throws JsonProcessingException {
        ModelAndView mav = new ModelAndView();
        List<Fee> ffbid = feeService.findFee(feeid,carid,type,cost,applicantid,approverid,beginTime,endTime);
        mav.addObject("ffbid",new ObjectMapper().writeValueAsString(ffbid));
        mav.addObject("length",ffbid.size());
        mav.setViewName("findFee");
        return mav;
    }
    @RequestMapping("feeCount")
    public String feeCount(Model model){
        JSONArray jsonArray=new JSONArray();
        JSONArray jsonArray1=new JSONArray();
        JSONArray jsonArray2=new JSONArray();
        JSONArray jsonArray3=new JSONArray();
        String fee;
        String date;
        String[] date1;
        String date2;
        String type;
        Integer[] a={0,0,0,0,0,0,0,0,0,0,0,0};
        Integer[] b={0,0,0,0,0,0,0,0,0,0,0,0};
        Integer[] c={0,0,0,0,0,0,0,0,0,0,0,0};
        Integer[] d={0,0,0,0,0,0,0,0,0,0,0,0};
        List<Fee> fees=feeService.findAllFee();
        for(int i=0;i<fees.size();i++){
            date=fees.get(i).gettime();
            date1=date.split("-");
            date2=date1[1];
            type=fees.get(i).gettype();
           /* System.out.println(date2);
            System.out.println(type);*/
            if(date2.compareTo("01")==0){
                if(type.equals("加油")){
                    a[0]=a[0]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("修车")){
                    b[0]=b[0]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("保养")){
                    c[0]=c[0]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("洗车")){
                    d[0]=d[0]+Integer.parseInt(fees.get(i).getcost());
                }

            }
            if(date2.compareTo("02")==0){
                if(type.equals("加油")){
                    a[1]=a[1]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("修车")){
                    b[1]=b[1]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("保养")){
                    c[1]=c[1]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("洗车")){
                    d[1]=d[1]+Integer.parseInt(fees.get(i).getcost());
                }
            }
            if(date2.compareTo("03")==0){
                if(type.equals("加油")){
                    a[2]=a[2]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("修车")){
                    b[2]=b[2]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("保养")){
                    c[2]=c[2]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("洗车")){
                    d[2]=d[2]+Integer.parseInt(fees.get(i).getcost());
                }
            }
            if(date2.compareTo("04")==0){
                if(type.equals("加油")){
                    a[3]=a[3]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("修车")){
                    b[3]=b[3]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("保养")){
                    c[3]=c[3]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("洗车")){
                    d[3]=d[3]+Integer.parseInt(fees.get(i).getcost());
                }
            }
            if(date2.compareTo("05")==0){
                if(type.equals("加油")){
                    a[4]=a[4]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("修车")){
                    b[4]=b[4]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("保养")){
                    c[4]=c[4]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("洗车")){
                    d[4]=d[4]+Integer.parseInt(fees.get(i).getcost());
                }
            }
            if(date2.compareTo("06")==0){
                if(type.equals("加油")){
                    a[5]=a[5]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("修车")){
                    b[5]=b[5]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("保养")){
                    c[5]=c[5]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("洗车")){
                    d[5]=d[5]+Integer.parseInt(fees.get(i).getcost());
                }
            }
            if(date2.compareTo("07")==0){
                if(type.equals("加油")){
                    a[6]=a[6]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("修车")){
                    b[6]=b[6]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("保养")){
                    c[6]=c[6]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("洗车")){
                    d[6]=d[6]+Integer.parseInt(fees.get(i).getcost());
                }
            }
            if(date2.compareTo("08")==0){
                if(type.equals("加油")){
                    a[7]=a[7]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("修车")){
                    b[7]=b[7]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("保养")){
                    c[7]=c[7]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("洗车")){
                    d[7]=d[7]+Integer.parseInt(fees.get(i).getcost());
                }
            }
            if(date2.compareTo("09")==0){
                if(type.equals("加油")){
                    a[8]=a[8]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("修车")){
                    b[8]=b[8]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("保养")){
                    c[8]=c[8]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("洗车")){
                    d[8]=d[8]+Integer.parseInt(fees.get(i).getcost());
                }
            }
            if(date2.compareTo("10")==0){
                if(type.equals("加油")){
                    a[9]=a[9]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("修车")){
                    b[9]=b[9]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("保养")){
                    c[9]=c[9]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("洗车")){
                    d[9]=d[9]+Integer.parseInt(fees.get(i).getcost());
                }
            }
            if(date2.compareTo("11")==0){
                if(type.equals("加油")){
                    a[10]=a[10]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("修车")){
                    b[10]=b[10]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("保养")){
                    c[10]=c[10]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("洗车")){
                    d[10]=d[10]+Integer.parseInt(fees.get(i).getcost());
                }
            }
            if(date2.compareTo("12")==0){
                if(type.equals("加油")){
                    a[11]=a[11]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("修车")){
                    b[11]=b[11]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("保养")){
                    c[11]=c[11]+Integer.parseInt(fees.get(i).getcost());
                }
                if(type.equals("洗车")){
                    d[11]=d[11]+Integer.parseInt(fees.get(i).getcost());
                }
            }

        }
        for(int m=0;m<12;m++){
            jsonArray.put(a[m]);
            jsonArray1.put(b[m]);
            jsonArray2.put(c[m]);
            jsonArray3.put(d[m]);
        }
        model.addAttribute("jsonArray",jsonArray);
        model.addAttribute("jsonArray1",jsonArray1);
        model.addAttribute("jsonArray2",jsonArray2);
        model.addAttribute("jsonArray3",jsonArray3);
        /*System.out.println(jsonArray);
        System.out.println(jsonArray1);
        System.out.println(jsonArray2);
        System.out.println(jsonArray3);*/
        return "feeCount";
    }

    /*@RequestMapping("/findAllFee")
    public ModelAndView findAllFee() {

        ModelAndView mav = new ModelAndView();
        List<Fee> ff = feeService.findAllFee();
        mav.addObject("ff", ff);
        mav.setViewName("findAllFee");
        return mav;
    }*/
}
