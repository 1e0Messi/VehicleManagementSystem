package com.team4.service;

import com.team4.dao.AdminMapper;
import com.team4.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    public Admin loginVerification(String id,String password){

        Admin admin = adminMapper.getAdmin(id,password);


        return admin;
    }
}
