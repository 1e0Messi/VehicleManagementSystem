package com.team4.service;

import com.team4.dao.AdminMapper;
import com.team4.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    public Admin loginVerification(String id,String password){
        Admin admin = adminMapper.getAdmin(id,password);
        return admin;
    }

    public List<Admin> getAllFrontAdmin() {
        return adminMapper.getAllFrontAdmin();
    }

    public Integer delAdminById(String id) {
        return adminMapper.delAdminById(id);
    }

    @Transactional
    public boolean batchDelAdmin(String[] adminItems) throws RuntimeException{
        int flag = 0;
        System.out.println(adminItems[0]);
        for (String adminItemId:adminItems) {
            flag = adminMapper.delAdminById(adminItemId);
            if(flag != 1){
                throw new RuntimeException();
            }
        }
        return true;
    }

    public void adminAdd(Admin admin) {
        adminMapper.adminAdd(admin);
    }

    public void passwordModify(String id,String oldpass,String newpass){
        adminMapper.passwordModify(id,oldpass,newpass);
    }

    public void adminModify(String id, String name, String tel, String email, String address) {
        adminMapper.adminModify(id,name,tel,email,address);
    }

    public Admin getAdminById(String id) {
        return adminMapper.getAdminById(id);
    }

    public List<Admin> getAdminByDate(String startTime, String endTime) {
        return adminMapper.getAdminByDate(startTime,endTime);
    }

    public int getAdminCount() {
        return adminMapper.getAdminCount();
    }

    public int getDriverCount() {
        return adminMapper.getDriverCount();
    }

    public int getVehicleCount() {
        return adminMapper.getVehicleCount();
    }

    public int getIncomeCount() {
        return adminMapper.getIncomeCount();
    }

    public int getFeeCount() {
        return adminMapper.getFeeCount();
    }


    public int getMonthIncome() {
        return adminMapper.getMonthIncome();
    }

    public int getMonthFee() {
        return adminMapper.getMonthFee();
    }

    public int getYearIncome() {
        return adminMapper.getYearIncome();
    }

    public int getYearFee() {
        return adminMapper.getYearFee();
    }

    public int getThreeYearIncome() {
        return adminMapper.getThreeYearIncome();
    }

    public int getThreeYearFee() {
        return adminMapper.getThreeYearFee();
    }
}
