package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Product;
import com.example.demo.service.ProductService;

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
		Product product = productService.getProduct(id);
		model.addAttribute("product", product);
		return "product-detail";
	}

	@GetMapping("/shipping-infomation")
	public String getShippingInfomation(@RequestParam("id") String id,@RequestParam("total") String total, @RequestParam("size") String size, Model model) {
		if(total.equals("")) {
			total = "1";
		}
		Product product = productService.getProduct(Long.parseLong(id));
		
		long price = Integer.parseInt(total) * product.getPrice();
		
		model.addAttribute("product", product);
		model.addAttribute("size", size);
		model.addAttribute("total", total);
		model.addAttribute("price", price);
		return "shipping-infomation";
	}



}
