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
    List<Income> searchIncomeItemById(String id);
    boolean batchDelIncomeItem(String[] incomeItems) throws RuntimeException;
}
