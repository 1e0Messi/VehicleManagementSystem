package com.team4.service;

import com.team4.entity.Refuel;
import com.team4.entity.Vehicle;

import java.util.List;

public interface RefuelService {
    List<Refuel> FindAll();
    void save(Refuel refuel);
    boolean update(Refuel refuel);
    boolean delete(String  id);
    Refuel findById(String id);
    String Delete(String[] TempItems);
    List<Refuel> Search(String carid,String oilcardid,String id);
}
