package com.example.demo.service;

import org.springframework.stereotype.Service;

import com.example.demo.model.Product;

import java.util.List;

@Service
public interface ProductService {

	Product save(Product product);

	List<Product> findAllProducts();

	List<Product> sortAscByName();

	List<Product> sortDescByName();

	List<Product> sortAscByPrice();

	List<Product> sortDescByPrice();
	
	

}