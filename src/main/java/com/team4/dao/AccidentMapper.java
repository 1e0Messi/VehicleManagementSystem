package com.team4.dao;

import com.team4.entity.Accident;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AccidentMapper {

    public void saveAccident(Accident accident);

    public Integer deleteAccident(String accid);

    public boolean updateAccident(Accident accident);

    List<Accident> findAccident(@Param("accid") String accid, @Param("carid")String carid,@Param("type") String type,@Param("listid") String listid, @Param("personid")String personid, @Param("addr")String addr, @Param("beginTime")String beginTime, @Param("endTime")String endTime);

    public List<Accident> findAllAccident();

}
