package com.team4.service;

import com.team4.entity.Oilcard;

import java.util.List;

/**
 * Created by Administrator on 2018/3/16 0016.
 */
public interface OilService {
    List<Oilcard> viewalloilcard();

    List<Oilcard> findoilcardbycarid(String carid);

    Oilcard findoilcardbyoilcardid(String oilcardid);

    boolean delalloilcard(String[] oilcardid)throws RuntimeException;

    void updateoilcardbyoilcardid(Oilcard oilcard);

    void deloilcard(String oilcardid);

    void addoilcard(Oilcard oilcard);

    List<Oilcard> selectoilcardbyoilcardid(String oilcardid);

    List<Oilcard> selectoilcardbyoilcardidandcarid(Oilcard oilcard);
}
