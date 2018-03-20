package com.team4.service;

import com.team4.dao.OilMapper;
import com.team4.entity.Oilcard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * Created by Administrator on 2018/3/16 0016.
 */

@Service
public class OilServiceImpl implements OilService {

    @Autowired
    private OilMapper oilMapper;

    public List<Oilcard> viewalloilcard (){
        return oilMapper.viewalloilcard();
    }

    public List<Oilcard> findoilcardbycarid(String carid){
        return oilMapper.findoilcardbycarid(carid);
    }

    public Oilcard findoilcardbyoilcardid(String oilcardid){
        return oilMapper.findoilcardbyoilcardid(oilcardid);
    }

    @Transactional
    public boolean delalloilcard(String[] oilcardid) throws RuntimeException{
        int flag=0;
        //System.out.println(oilcardid[3]);
        for (String id:oilcardid){
            flag = oilMapper.delalloilcard(id);
            if (flag!=1)
                throw new RuntimeException();
        }
        return true;
    }

    public void updateoilcardbyoilcardid(Oilcard oilcard){
        oilMapper.updateoilcardbyoilcardid(oilcard);
    }

    public void deloilcard(String oilcardid){
        oilMapper.deloilcard(oilcardid);
    }

    public void addoilcard(Oilcard oilcard){
        oilMapper.addoilcard(oilcard);
    }

    public List<Oilcard> selectoilcardbyoilcardid(String oilcardid){
        return oilMapper.selectoilcardbyoilcardid(oilcardid);
    }

    public List<Oilcard> selectoilcardbyoilcardidandcarid(Oilcard oilcard){
        return oilMapper.selectoilcardbyoilcardidandcarid(oilcard);
    }
}
