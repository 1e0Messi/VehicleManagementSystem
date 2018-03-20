package com.team4.controller;

import com.team4.entity.Admin;
import com.team4.entity.Income;
import com.team4.service.IncomeService;
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
 * Created by 吴文欢 on 2018/3/14.
 *
 * 此类用于控制收入管理的各种操作
 */
@Controller
public class IncomeController {


    @Autowired
    private IncomeService IncomeService;


    /**
     * 显示所有收入条例
     * @return  返回收入条例页面
     */
    @RequestMapping("/GetAllIncomeItem")
    public String getAllIncomeItem(ModelMap modelMap){
        List<Income> incomes = IncomeService.getAllIncomeItem();

        modelMap.addAttribute("incomes",incomes);
       // System.out.println(incomes.toString());
        return "incomeList";
    }

    /**
     *
     * @param id
     * @return  根据id删除收入条例
     */
    @RequestMapping("/delIncome")
    @ResponseBody
    public String delAdmin(String id){
        return IncomeService.delIncomeItemById(id).toString();
    }

    /**
     * 添加收入条例
     * @return 4收入条例网页
     */
    @RequestMapping("/AddIncomeItem")
    public String addIncomeItem(){
        return "addIncomeItem";
    }

    @RequestMapping("/submitIncomeForm")
    public String submitIncomeForm(Income income){

        IncomeService.saveIncomeItem(income);

        return "addIncomeItem";
    }

    /***
     * 实现编辑收入条例
     * @param income 编辑收入条例
     * @return
     */
    @RequestMapping("/submitEditIncomeForm")
    public String summitEditIncomeForm(Income income){
        //System.out.print(income.toString());
        IncomeService.submitEditIncomeForm(income);
        return "editIncomeItem";
    }



    @RequestMapping("/batchDelIncomeItem")
    @ResponseBody
    public String batchDelIncomeItem( String incomeItems) {
        JSONArray jsonArray = new JSONArray(incomeItems);
        String[] incomeItemsId = new String[jsonArray.length()];
        for(int i = 0; i < jsonArray.length();i++)
            incomeItemsId[i] = (String)jsonArray.get(i);
        try{
            IncomeService.batchDelIncomeItem(incomeItemsId);
        }catch (RuntimeException e){
            return "fail";
        }
        return "success";
    }



    @RequestMapping("/searchIncomeItem")
    public String searchIncomeItem(String applicantID,String carID,String beginTime,String endTime,ModelMap modelMap){
//        System.out.println("applicantID:"+applicantID);
//        System.out.println("carID:"+carID);
//        System.out.println("beginTime:"+beginTime);
//        System.out.println("endTime:"+endTime);
        List<Income> incomes = IncomeService.searchIncomeItems(applicantID,carID,beginTime,endTime);
        System.out.print(incomes.toString());
        modelMap.addAttribute("incomes",incomes);
        // System.out.println(incomes.toString());
        return "searchIncomeResult";
    }

    @RequestMapping("/UpdateIncomeItem")
    public String UpdateAccident(){
        return "editIncomeItem";
    }

    @RequestMapping("/jumpTest")
    public String jumpTest(){
        return "/member-list";
    }
}
