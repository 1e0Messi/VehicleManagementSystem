package com.team4.service;


import com.team4.dao.VehicleMapper;
import com.team4.entity.Vehicle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VehicleServiceImpl implements VehicleService {

    @Autowired
    private VehicleMapper vehicleMapper;

    public List<Vehicle> FindAll(){
        return vehicleMapper.FindAll();
    }

    public boolean delete(String id){
        return vehicleMapper.delete(id);
    }

    public Vehicle findById(String id) {
        return vehicleMapper.findById(id);
    }
    public List<Vehicle> findByName(String name) {
        List<Vehicle> vehicle=vehicleMapper.findByName(name);
        return vehicle;
    }
    public String Delete(String[] TempItems){
//        for(int i=0;i<TempItems.length;i++){
            for (String T : TempItems){
                vehicleMapper.delete(T);
            }
           return "";
    }
    public void save(Vehicle vehicle) {
        vehicleMapper.save(vehicle);
    }

    public boolean update(Vehicle vehicle) {
        return vehicleMapper.update(vehicle);
    }
}
