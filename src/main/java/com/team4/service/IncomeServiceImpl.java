package com.team4.service;

import com.team4.dao.IncomeMapper;
import com.team4.entity.Income;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 吴文欢 on 2018/3/14.
 */

@Service
public class IncomeServiceImpl implements IncomeService{
    @Autowired
    private IncomeMapper IncomeMapper;

    public List<Income> getAllIncomeItem(){
        return IncomeMapper.getAllIncomeItem();
    }


    public void saveIncomeItem(Income income) {
        IncomeMapper.saveIncomeItem(income);
    }

    public Integer delIncomeItemById(String id) {
        return IncomeMapper.delIncomeItemById(id);
    }

    public void submitEditIncomeForm(Income income){
        IncomeMapper.submitEditIncomeForm(income);
    }

    public List<Income> searchIncomeItemById(String id){
        return IncomeMapper.searchIncomeItemById(id);
    }


}
