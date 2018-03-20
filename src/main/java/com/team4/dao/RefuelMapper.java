package com.team4.dao;

import com.team4.entity.Refuel;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RefuelMapper {
@Select("select * from carrefueling")
List<Refuel> FindAll();

    void save(Refuel refuel);
    boolean update( Refuel refuel);
    boolean delete(String  id);
    Refuel findById(String id);
    String Delete(String[] TempItems);
    List<Refuel> Search(@Param("carid")String carid,@Param("id")String id,@Param("oilcardid")String oilcardid);
}
