package com.example.demo.controller;

import java.time.LocalDateTime;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Account;
import com.example.demo.model.Order;
import com.example.demo.model.Product;
import com.example.demo.service.AccountService;
import com.example.demo.service.OrderService;
import com.example.demo.service.ProductService;

@Controller
public class OrderController {
	
	@Autowired
	private AccountService accountService;

	@Autowired
	private ProductService productService;
	
	@Autowired
	private OrderService orderService;
	
	@GetMapping("/order-success")
	public String orderSuccess(
			@RequestParam("id") String id,
			@RequestParam("name") String name,
			@RequestParam("phone") String phone,
			@RequestParam("email") String email,
			@RequestParam("address") String address, HttpSession session) {
		
		Order order = new Order(name, phone, email, address, LocalDateTime.now());
		Account username = accountService.findByUsername((String)session.getAttribute("username"));
		Product product = productService.getProduct(Long.parseLong(id));
		order.setAccount(username);
		order.addProduct(product);
		product.addOrder(order);
		username.addOrder(order);
		
		accountService.save(username);
		orderService.save(order);
		productService.save(product);
		
		return "order-success";
	}
	
}
