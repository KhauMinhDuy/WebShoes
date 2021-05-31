package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Order;
import com.example.demo.repository.OrderRepository;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderRepository orderRepository;
	
	@Override
	public List<Order> getAllLists() {
		return orderRepository.findAll();
	}

	@Override
	public Order getOrder(Long id) {
		Optional<Order> order = orderRepository.findById(id);
		if(order.isPresent()) {
			return order.get();
		}
		return new Order();
	}

	@Override
	public void save(Order order) {
		orderRepository.save(order);
		
	}

}
