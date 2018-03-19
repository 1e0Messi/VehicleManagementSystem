package com.team4.service;

import com.team4.dao.IncomeMapper;
import com.team4.entity.Income;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

    public List<Income> searchIncomeItems(String applicantID,String carID,String beginTime,String endTime){
        return IncomeMapper.searchIncomeItems(applicantID,carID, beginTime, endTime);
    }

    @Transactional
    public boolean batchDelIncomeItem(String[] incomeItems) throws RuntimeException{
        int flag = 0;
        System.out.println(incomeItems[0]);
        for (String incomeItemId:incomeItems) {
            flag = IncomeMapper.delIncomeItemById(incomeItemId);
            if(flag != 1){
                throw new RuntimeException();
            }
        }
        return true;
    }


}
