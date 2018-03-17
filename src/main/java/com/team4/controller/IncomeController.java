package com.team4.controller;

import com.team4.entity.Admin;
import com.team4.entity.Income;
import com.team4.service.IncomeService;
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

    /***
     * 根据id删除收入条例
     * @param id 需要删除条例的id
     * @param modelMap
     * @return
     */
    @RequestMapping("/searchIncomeItem")
    public String searchIncomeItem(String id,ModelMap modelMap){
        List<Income> incomes = IncomeService.searchIncomeItemById(id);
        System.out.print(incomes.toString());
        modelMap.addAttribute("incomes",incomes);
        // System.out.println(incomes.toString());
        return "searchIncomeResult";
    }

    @RequestMapping("/jumpTest")
    public String jumpTest(){
        return "/member-list";
    }




}
