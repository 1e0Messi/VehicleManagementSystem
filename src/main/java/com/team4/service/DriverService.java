package com.team4.service;

import com.team4.entity.Driver;

import java.util.List;

/**
 * Created by Administrator on 2018/3/14 0014.
 */
public interface DriverService {

    List<Driver> searchalldriverinfo();

    Driver selectdriverbystaffid(String staff_ID);

    void insertDriverInfo(Driver driver);

    void updatedriverbystaff_ID(Driver driver);

    void deldriver(String staff_ID);

    boolean delalldriver(String[] staff_ID)throws RuntimeException;

    List<Driver> selectdriverbyIDcard(Driver driver);

    List<Driver> selectdriverbyIDcardandname(Driver driver);

    List<Driver> selectdriverbyIDcardandnameandID(Driver driver);

    List<Driver> selectdriverbyname(Driver driver);

    List<Driver> selectdriverbyID(Driver driver);

    List<Driver> selectdriverbyIDandIDcard(Driver driver);

    List<Driver> selectdriverbyIDandname(Driver driver);
}
