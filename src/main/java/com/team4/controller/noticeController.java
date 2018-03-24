package com.team4.controller;

import com.team4.entity.Notice;
import com.team4.service.NoticeService;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

@Controller
public class noticeController {
    @Autowired
    private NoticeService noticeService;

    @RequestMapping("/Notice")
    public String releaseNotice(ModelMap modelMap){
        modelMap.addAttribute("notice",noticeService.getAllNotice());
        return "releaseNotice";
    }

    @RequestMapping("/releaseNotice")
    @ResponseBody
    public String getAllNotice(HttpServletRequest httpServletRequest,Notice notice){
        notice.setAdminID((String)httpServletRequest.getSession().getAttribute("id"));
        noticeService.releaseNotice(notice);
        return "";
    }

    @RequestMapping("/deleteNotice")
    @ResponseBody
    public String deleteNotice(Notice notice){
        noticeService.deleteNotice(notice);
        return "";
    }

    @RequestMapping("/batchDelNotice")
    @ResponseBody
    public String batchDelNotice(String noticeItems){
        JSONArray jsonArray = new JSONArray(noticeItems);
        Integer[] noticeItemsID = new Integer[jsonArray.length()];
        for(int i = 0; i < jsonArray.length();i++) {
            noticeItemsID[i] = Integer.parseInt(jsonArray.get(i).toString());
        }

        try{
            noticeService.batchDelNotice(noticeItemsID);
        }catch (RuntimeException e){
            return "fail";
        }
        return "success";
    }

}
