package com.example.demo.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Account;
import com.example.demo.service.AccountService;

@Controller
public class AccountController {

    @Autowired
    private AccountService accountService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping("register")
    public String getRegister() {
        return "register";
    }

    @PostMapping("/saveAccount")
    public String saveAccount(@Valid @ModelAttribute("account") Account account,
                              BindingResult rs,
                              @RequestParam("matchingpassword") String matchPass,
                              Model model) {

        if (rs.hasErrors()) {
            return "register";
        }

		Account username = accountService.findByUsername(account.getUsername());
		if(username != null) {
            model.addAttribute("message", "That bai");
            return "register";
        }

		if (account.getPassword().equals(matchPass)) {
            account.setPassword(passwordEncoder.encode(account.getPassword()));
            model.addAttribute("message", accountService.save(account) != null ? "THANH CONG" : "THAT BAI");
        } else {
            model.addAttribute("message", "Password khong trung khop");
        }

        return "register";
    }

}
