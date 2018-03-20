package com.team4.controller;

import com.team4.entity.Accident;
import com.team4.service.AccidentService;
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
public class AccidentController {

    @Autowired
    private AccidentService accidentService;

    @RequestMapping("/testSpringMVC")
    public String testSpringMVC(){
        return "testSpringMVC";
    }


    @RequestMapping("/AllAccident")
    public String getAllAccident(ModelMap modelMap){
        List<Accident> accident = accidentService.findAllAccident();
        modelMap.addAttribute("accident",accident);
        return "AccidentList";
    }

    @RequestMapping("/AddAccident")
    public String AddAccident() {
        return "addAccident";
    }

    @RequestMapping("/insertAccident")
    public String insertAccident(Accident accident) {
        accidentService.saveAccident(accident);
        return "/addAccidentOK";
    }


    @RequestMapping("/DeleteAccident")
    @ResponseBody
    public String deleteTheAccident(String accid) {
        return accidentService.deleteAccident(accid).toString();
    }

    @RequestMapping("/batchDelAccident")
    @ResponseBody
    public String batchDelAccident(String accidentItems) {
        JSONArray jsonArray = new JSONArray(accidentItems);
        String[] accidentItemsId = new String[jsonArray.length()];
        for(int i = 0; i < jsonArray.length();i++)
            accidentItemsId[i] = (String)jsonArray.get(i);
        try{
            accidentService.batchDelAccident(accidentItemsId);
        }catch (RuntimeException e){
            return "fail";
        }
        return "success";
    }

    @RequestMapping("/UpdateAccidentInput")
    public String UpdateAccident(){
        return "updateAccident";
    }

    @RequestMapping("/updateAccident")
    public String updateTheAccident(Accident accident) {
        accidentService.updateAccident(accident);
        return "updateAccidentOK";
    }


    @RequestMapping("/findAccident")
    public ModelAndView findAccident(String accid,String carid,String type,String listid,String personid,String addr,String beginTime,String endTime) {
        /*System.out.println(accid);
        System.out.println(carid);
        System.out.println(type);
        System.out.println(listid);
        System.out.println(personid);
        System.out.println(addr);
        System.out.println(beginTime);
        System.out.println(endTime);
        System.out.println("----------");
*/
        ModelAndView mav = new ModelAndView();
        List<Accident> fabid = accidentService.findAccident(accid,carid,type,listid,personid,addr,beginTime,endTime);

        //System.out.println(fabid.size());

        mav.addObject("fabid",fabid);
        mav.setViewName("findAccident");
        return mav;
    }

/*
此处代码的用途
 */
    @RequestMapping("/findAllAccident")
    public ModelAndView findAllAccident() {

        ModelAndView mav = new ModelAndView();
        List<Accident> fa = accidentService.findAllAccident();
        mav.addObject("fa", fa);
        mav.setViewName("findAllAccident");
        return mav;
    }


}
