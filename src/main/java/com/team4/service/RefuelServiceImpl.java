package com.team4.service;

import com.team4.entity.Refuel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.team4.dao.RefuelMapper;

import java.util.List;

@Service
public class RefuelServiceImpl implements RefuelService{

    @Autowired
    private RefuelMapper refuelMapper;

    public List<Refuel> FindAll(){
        return refuelMapper.FindAll();
    }

    public void save(Refuel refuel){
        refuelMapper.save(refuel);
    }
    public List<Refuel> Search(String carid,String id,String oilcardid){
        System.out.println("id:"+id);
        return refuelMapper.Search(carid, id, oilcardid);
    }
    public boolean update(Refuel refuel){
        System.out.println(refuel);
        return refuelMapper.update(refuel);
    }
    public boolean delete(String id){
        return refuelMapper.delete(id);
    }

    public Refuel findById(String id) {
        Refuel refuel=refuelMapper.findById(id);
        return refuel;
    }
    public String Delete(String[] TempItems){
        for(String T:TempItems){
            refuelMapper.delete(T);
        }
        return "";
    }
}
