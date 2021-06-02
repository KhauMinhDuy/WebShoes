package com.example.demo;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.model.Order;
import com.example.demo.service.OrderService;

@SpringBootTest
class OrderManagerTest {

	@Autowired
	private OrderService orderService;
	
	@Test
	void getAll() {
		List<Order> orders = orderService.getAllLists();
		System.out.println(orders.get(0).getProducts().get(0).getId());
		System.out.println(orders.get(0).getProducts().get(0).getName());
	}
	
	

}
