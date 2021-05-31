package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Order;

public interface OrderService {
	
	void save(Order order);

	List<Order> getAllLists();
	
	Order getOrder(Long id);
	
	void deleteOrder(Long id);
}
