package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Account;

public interface AccountService {

	Account save(Account account);

	List<Account> findAll();

	Account findByUsername(String username);

	void delete(Account account);
}
