package com.team4.dao;

import com.team4.entity.Vehicle;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VehicleMapper {
    @Select("select * from vehicleinformation")
    List<Vehicle> FindAll();

    Vehicle findById(String id);
    boolean update(Vehicle vehicle);
    void save(Vehicle vehicle);
    boolean delete(String id);
    List<Vehicle> findByName(String name);
}


