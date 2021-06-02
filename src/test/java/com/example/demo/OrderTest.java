package com.example.demo;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.model.Order;
import com.example.demo.service.OrderService;

@SpringBootTest
class OrderTest {

	@Autowired
	private OrderService orderService;
	
	@Test
	void test() {
		List<Order> orders = orderService.getAllLists();
		orders.forEach(e -> {
			System.out.println(e.getName());
			System.out.println(e.getSize());
		});
	}

}
