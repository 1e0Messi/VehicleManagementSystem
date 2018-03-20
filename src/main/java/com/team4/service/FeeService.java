package com.team4.service;

import com.team4.entity.Fee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FeeService {

    public void saveFee(Fee fee);

    public Integer deleteFee(String feeid);

    public boolean updateFee(Fee fee);

    List<Fee> findFee(String feeid,String carid,String type,String cost,String applicantid,String approverid,String beginTime,String endTime);

    public List<Fee> findAllFee();

    boolean batchDelFee(String[] feeItems) throws RuntimeException;

}