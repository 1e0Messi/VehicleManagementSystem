package com.team4.service;

import com.team4.entity.Admin;

import java.util.List;

public interface AdminService {
    Admin loginVerification(String id, String password);
    List<Admin> getAllFrontAdmin();
    Integer delAdminById(String id);
    boolean batchDelAdmin(String[] adminItems) throws RuntimeException;
    void adminAdd(Admin admin);
    void passwordModify(String id,String oldpass,String newpass);
    void adminModify(String id,String name,String tel,String email,String address);
    Admin getAdminById(String id);
    List<Admin> getAdminByDate(String startTime,String endTime);
    int getAdminCount();
    int getDriverCount();
    int getVehicleCount();
    int getIncomeCount();
    int getFeeCount();

    int getMonthIncome();
    int getMonthFee();

    int getYearIncome();
    int getYearFee();

    int getThreeYearIncome();
    int getThreeYearFee();
}
