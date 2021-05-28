package com.example.demo.controller;

import com.example.demo.model.Product;
import com.example.demo.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping("product-list")
	public String allProductList(Model model) {
		List<Product> products = productService.findAllProducts();
		model.addAttribute("products", products);
		return "product";
	}

	@GetMapping("/product-detail/{id}")
	public String productDetail(@PathVariable Long id, Model model) {
		System.out.println("Pathvariable "+id);
		Product product = productService.getProduct(id);
		model.addAttribute("product", product);
		return "product-detail";
	}
	
	
}
