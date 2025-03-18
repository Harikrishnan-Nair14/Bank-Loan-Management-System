package com.bankloan.service;

import com.bankloan.model.Admin;
import com.bankloan.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

    @Autowired
    private AdminRepository adminRepository;

    public boolean authenticate(String username, String password) {
        Admin admin = adminRepository.findByUsername(username);
        System.out.println("Admin from DB: " + admin); // Debug statement
        return admin != null && admin.getPassword().equals(password);
    }
}
