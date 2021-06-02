package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

    @GetMapping("/admin-homepage")
    public String getHomepageAdmin() {

        return "admin/home";
    }

    @GetMapping("/admin-manager")
    public String adminManager() {
        return "admin/adminmanager";
    }

    @PostMapping("/admin-login")
    public String adminLogin(Model model,
                             @RequestParam("username") String username,
                             @RequestParam("password") String password) {

        return username.equals("admin") && password.equals("password") ?  "admin/adminmanager" : "admin/home";
    }

}
