package com.team4.service;

import com.team4.entity.Fee;

import java.util.List;

public interface FeeService {

    public void saveFee(Fee fee);

    public Integer deleteFee(String feeid);

    public boolean updateFee(Fee fee);

    Fee findFeeById(String feeid);

    public List<Fee> findAllFee();

    boolean batchDelFee(String[] feeItems) throws RuntimeException;

}