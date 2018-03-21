package com.team4.controller;

import com.team4.entity.Fee;
import com.team4.service.FeeService;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
    public String getAllFee(ModelMap modelMap){
        List<Fee> fee = feeService.findAllFee();
        modelMap.addAttribute("fee",fee);
        return "FeeList";
    }



    @RequestMapping("/AddFee")
    public String AddFee() {
        return "addFee";
    }

    @RequestMapping("/insertFee")
    public String insertFee(Fee fee) {
        feeService.saveFee(fee);
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
    public ModelAndView findFee(String feeid,String carid,String type,String cost,String applicantid,String approverid,String beginTime,String endTime) {

        ModelAndView mav = new ModelAndView();
        List<Fee> ffbid = feeService.findFee(feeid,carid,type,cost,applicantid,approverid,beginTime,endTime);
        mav.addObject("ffbid",ffbid);
        mav.setViewName("findFee");
        return mav;
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
