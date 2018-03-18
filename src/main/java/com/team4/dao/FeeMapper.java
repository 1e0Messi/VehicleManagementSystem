package com.team4.dao;

import com.team4.entity.Fee;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FeeMapper {

    public void saveFee(Fee fee);

    public Integer deleteFee(String feeid);

    public boolean updateFee(Fee fee);

    Fee findFeeById(String feeid);

    public List<Fee> findAllFee();

}
