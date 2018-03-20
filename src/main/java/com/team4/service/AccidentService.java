package com.team4.service;

import com.team4.entity.Accident;

import java.util.List;

public interface AccidentService {

    public void saveAccident(Accident accident);

    public Integer deleteAccident(String accid);

    public boolean updateAccident(Accident accident);

    List<Accident> findAccident(String accid,String carid,String type,String listid,String personid,String addr,String beginTime,String endTime);

    public List<Accident> findAllAccident();

    boolean batchDelAccident(String[] accidentItems) throws RuntimeException;

}