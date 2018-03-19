package com.team4.service;

import com.team4.entity.Vehicle;

import java.util.List;

public interface VehicleService {
    List<Vehicle> FindAll();
    void save(Vehicle vehicle);
    boolean update( Vehicle vehicle);
    boolean delete(String  id);
    Vehicle findById(String id);
    List<Vehicle> findByName(String name);
    String Delete(String[] TempItems);
}

