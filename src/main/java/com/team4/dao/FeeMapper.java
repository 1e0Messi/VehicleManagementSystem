package com.team4.dao;

import com.team4.entity.Accident;
import com.team4.entity.Fee;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FeeMapper {

    public void saveFee(Fee fee);

    public Integer deleteFee(String feeid);

    public boolean updateFee(Fee fee);

    List<Fee> findFee(@Param("feeid") String feeid, @Param("carid")String carid, @Param("type") String type, @Param("cost") String cost, @Param("applicantid")String applicantid, @Param("approverid")String approverid, @Param("beginTime")String beginTime, @Param("endTime")String endTime);

    public List<Fee> findAllFee();

}
