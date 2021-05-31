package com.example.demo.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Account;
import com.example.demo.service.AccountService;

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
		Account username = accountService.findByUsername(user);
		model.addAttribute("username", username);
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
		Account save = null;
		if (accountService.findByUsername(account.getUsername()) != null) {
			save = accountService.save(account);
		} else {
			account.setPassword(passwordEncoder.encode(account.getPassword()));
			save = accountService.save(account);
		}
		return "redirect:/account-manager";
	}

}
