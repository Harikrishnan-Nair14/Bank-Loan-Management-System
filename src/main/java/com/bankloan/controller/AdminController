package com.bankloan.controller;

import com.bankloan.model.Admin;
import com.bankloan.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @GetMapping("/login")
    public String showLoginForm(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Integer loginAttempts = (Integer) session.getAttribute("loginAttempts");
        if (loginAttempts == null) {
            session.setAttribute("loginAttempts", 0);
        }
        model.addAttribute("admin", new Admin());
        return "admin_login";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute("admin") Admin admin, HttpServletRequest request, Model model) {
        System.out.println("Attempted Username: " + admin.getUsername());
        System.out.println("Attempted Password: " + admin.getPassword());

        HttpSession session = request.getSession();
        Integer loginAttempts = (Integer) session.getAttribute("loginAttempts");

        if (adminService.authenticate(admin.getUsername(), admin.getPassword())) {
            session.setAttribute("admin", admin);
            session.setAttribute("loginAttempts", 0); // Reset login attempts on successful login
            return "redirect:/home";
        } else {
            loginAttempts = (loginAttempts == null) ? 0 : loginAttempts;
            loginAttempts++;
            session.setAttribute("loginAttempts", loginAttempts);
            if (loginAttempts >= 3) {
                return "redirect:/error";
            } else {
                model.addAttribute("error", "Invalid credentials. Please try again.");
                return "admin_login";
            }
        }
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/admin/login";
    }
}
