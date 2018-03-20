package com.team4.dao;

import org.springframework.stereotype.Repository;
import com.team4.entity.Driver;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2018/3/14 0014.
 */

@Repository
public interface DriverMapper {

    List<Driver> searchalldriverinfo();

    Driver selectdriverbystaffid(String staff_ID);

    void insertDriverInfo(Driver driver);

    List<Driver> selectdriverbyID(Driver driver);

    void updatedriverbystaff_ID(Driver driver);

    void deldriver(String staff_ID);

    int delalldriver(String ID);

    List<Driver> selectdriverbyIDcard(Driver driver);

    List<Driver> selectdriverbyIDcardandname(Driver driver);

    List<Driver> selectdriverbyIDcardandnameandID(Driver driver);

    List<Driver> selectdriverbyname(Driver driver);

    List<Driver> selectdriverbyIDandIDcard(Driver driver);

    List<Driver> selectdriverbyIDandname(Driver driver);

}
