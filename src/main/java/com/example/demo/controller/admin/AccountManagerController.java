package com.example.demo.controller.admin;

import com.example.demo.model.Account;
import com.example.demo.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class AccountManagerController {

    @Autowired
    private AccountService accountService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping("/account-manager")
    public String getAccountManager(Model model) {
        model.addAttribute("accounts", accountService.findAll());
        return "admin/accountmanager";
    }

    @GetMapping("/new-account")
    public String newAccount() {
        return "admin/newaccount";
    }

    @GetMapping("/edit-account")
    public String editAccount(@RequestParam(name = "user") String user, Model model) {
        List<Account> username = accountService.findByUsername(user);
        model.addAttribute("username", username.get(0));
        return "admin/editaccount";
    }

    @GetMapping("/delete-account")
    public String deleteAccount(@RequestParam("user") Account account) {
        accountService.delete(account);
        return "redirect:/account-manager";
    }

    @PostMapping("/save-account")
    public String saveAccount(@ModelAttribute("account") Account account, Model model) {
        System.out.println(account);
        account.setPassword(passwordEncoder.encode(account.getPassword()));
        Account save = accountService.save(account);
        String message = save != null ? "Thanh Cong" : "That Bai";
        model.addAttribute("message", message);
        return "redirect:/account-manager";
    }

}
