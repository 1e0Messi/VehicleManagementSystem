package com.team4.service;

import com.team4.entity.Admin;

public interface AdminService {
    Admin loginVerification(String id, String password);
}
