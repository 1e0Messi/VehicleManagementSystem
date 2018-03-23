package com.team4.controller;

import com.team4.entity.Income;
import com.team4.service.IncomeService;
import com.team4.entity.Fee;
import com.team4.service.FeeService;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.List;


@Controller
public class CountController{

    @Autowired
    private IncomeService incomeService;
    @Autowired
    private FeeService feeService;

    @RequestMapping("IncomeCount")
    public  String IncomeCount(Model model){
        String[] date1;
        String date2;
        String date;
        Integer date3;
        Integer[][] m=new Integer[2][12];
        for(int i=0;i<2;i++){
            for(int j=0;j<12;j++){
                m[i][j]=0;
            }
        }
        List<Income> incomes=incomeService.getAllIncomeItem();
        List<Fee> fees=feeService.findAllFee();
        JSONArray jsonArray=new JSONArray();
//        System.out.println(incomes);
//        System.out.println(fees);
        for(int i=0;i<incomes.size();i++){
            date=incomes.get(i).getTime();
            date1=date.split("-");
            date2=date1[1];
            date3=Integer.parseInt(date2);
            m[0][date3-1]=m[0][date3-1]+incomes.get(i).getAmount();
        }
        for(int a=0;a<fees.size();a++){
            date=fees.get(a).gettime();
            date1=date.split("-");
            date2=date1[1];
            date3=Integer.parseInt(date2);
            m[1][date3-1]=m[1][date3-1]+Integer.parseInt(fees.get(a).getcost());

        }

        for(int i=0;i<2;i++)
        {
            for (int j=0;j<12;j++)
            {
                jsonArray.put(m[i][j]);
            }
        }
        System.out.println(jsonArray);
        model.addAttribute("jsonArray",jsonArray);
        return "incomeCount";
    }
}