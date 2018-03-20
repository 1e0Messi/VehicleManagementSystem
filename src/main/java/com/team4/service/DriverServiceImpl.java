package com.team4.service;

import com.team4.entity.Driver;
import com.team4.dao.DriverMapper;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2018/3/14 0014.
 */

@Service
public class DriverServiceImpl implements DriverService{

    @Autowired
    private DriverMapper driverMapper;

    public Driver selectdriverbystaffid(String staff_ID){
        return driverMapper.selectdriverbystaffid(staff_ID);
    }

    public void updatedriverbystaff_ID(Driver driver){
        driverMapper.updatedriverbystaff_ID(driver);
    }

    public void insertDriverInfo(Driver driver){driverMapper.insertDriverInfo(driver);}

    public List<Driver> searchalldriverinfo(){return driverMapper.searchalldriverinfo();}

    public void deldriver(String staff_ID){
        driverMapper.deldriver(staff_ID);
    }

    public List<Driver> selectdriverbyID(Driver driver){
        return driverMapper.selectdriverbyID(driver);
    }

    @Transactional
    public boolean delalldriver(String[] staff_ID)throws RuntimeException {
        int flag = 0;
        for (String ID : staff_ID){
            flag = driverMapper.delalldriver(ID);
        if (flag != 1)
            throw new RuntimeException();
        }
        return true;
    }

    public List<Driver> selectdriverbyIDcard(Driver driver){
        return driverMapper.selectdriverbyIDcard(driver);
    }

    public List<Driver> selectdriverbyname(Driver driver){
        return driverMapper.selectdriverbyname(driver);
    }

    public List<Driver> selectdriverbyIDcardandname(Driver driver){
        return driverMapper.selectdriverbyIDcardandname(driver);
    }

    public List<Driver> selectdriverbyIDcardandnameandID(Driver driver){
        return driverMapper.selectdriverbyIDcardandnameandID(driver);
    }

    public List<Driver> selectdriverbyIDandIDcard(Driver driver){
        return driverMapper.selectdriverbyIDandIDcard(driver);
    }
    public List<Driver> selectdriverbyIDandname(Driver driver){
        return driverMapper.selectdriverbyIDandname(driver);
    }
}
