package com.team4.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import com.team4.entity.Oilcard;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
/**
 * Created by Administrator on 2018/3/16 0016.
 */

@Repository
public interface OilMapper {
    List<Oilcard> viewalloilcard();

    List<Oilcard> findoilcardbycarid(String carid);

    Oilcard findoilcardbyoilcardid(String oilcardid);

    int delalloilcard(String id);

    void updateoilcardbyoilcardid(Oilcard oilcard);

    void deloilcard(String oilcardid);

    void addoilcard(Oilcard oilcard);

    List<Oilcard> selectoilcardbyoilcardid(String oilcardid);

    List<Oilcard> selectoilcardbyoilcardidandcarid(Oilcard oilcard);


}