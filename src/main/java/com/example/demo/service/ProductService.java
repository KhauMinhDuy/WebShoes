package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.Product;

@Service
public interface ProductService {

	Product save(Product product);

	List<Product> findAllProducts();

	Product getProduct(Long id);

	List<Product> sortAscByName();

	List<Product> sortDescByName();

	List<Product> sortAscByPrice();

	List<Product> sortDescByPrice();
	
	void deleteProductById(Long id);

}