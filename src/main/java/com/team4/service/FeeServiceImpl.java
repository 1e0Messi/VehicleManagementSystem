package com.team4.service;

import com.team4.dao.FeeMapper;
import com.team4.entity.Fee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class FeeServiceImpl implements FeeService {

    @Autowired
    private FeeMapper feeMapper;

    public void saveFee(Fee fee) {
        feeMapper.saveFee(fee);
    }

    public Integer deleteFee(String feeid){
        return feeMapper.deleteFee(feeid);
    }
    public boolean updateFee(Fee fee) {
        return feeMapper.updateFee(fee);
    }
    public Fee findFeeById(String feeid)
    {
        Fee fee = feeMapper.findFeeById(feeid);
        return fee;
    }

    public List<Fee> findAllFee()
    {
        return feeMapper.findAllFee();
    }

    @Transactional
    public boolean batchDelFee(String[] feeItems) throws RuntimeException{
        int flag = 0;
        System.out.println(feeItems[0]);
        for (String feeItemId:feeItems) {
            flag = feeMapper.deleteFee(feeItemId);
            if(flag != 1){
                throw new RuntimeException();
            }
        }
        return true;
    }
}