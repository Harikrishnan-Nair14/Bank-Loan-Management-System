package com.bankloan.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String rootRedirect() {
        return "redirect:/admin/login";
    }

    @GetMapping("/home")
    public String home(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/login";
        }
        return "home";
    }
}
