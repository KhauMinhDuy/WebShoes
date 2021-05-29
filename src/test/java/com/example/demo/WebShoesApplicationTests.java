package com.example.demo;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.service.AccountService;

@SpringBootTest
class WebShoesApplicationTests {

	@Autowired
	private AccountService accountService;

	@Test
	void contextLoads() {
		String property = System.getProperty("user.dir");
		System.out.println(property);
	}

}
