package com.team4.service;

import com.team4.entity.Income;

import java.util.List;

/**
 * Created by 吴文欢 on 2018/3/14.
 */
public interface IncomeService {
    List<Income> getAllIncomeItem();
    Integer delIncomeItemById(String id);
    void saveIncomeItem(Income income);
    void submitEditIncomeForm(Income income);
    List<Income> searchIncomeItems(String applicantID,String carID,String beginTime,String endTime );
    boolean batchDelIncomeItem(String[] incomeItems) throws RuntimeException;
}
