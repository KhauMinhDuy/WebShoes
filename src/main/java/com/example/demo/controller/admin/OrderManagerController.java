package com.example.demo.controller.admin;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Order;
import com.example.demo.service.OrderService;
import com.example.demo.service.ProductService;

@Controller
public class OrderManagerController {

	@Autowired
	private OrderService orderService;
	
	@Autowired
	private ProductService productService;
	
    @GetMapping("/order-manager")
    public String getOrderManager(Model model) {
    	List<Order> orders = orderService.getAllLists();
    	model.addAttribute("orders", orders);
    
    	
        return "admin/ordermanager";
    }
    
    @GetMapping("/edit-order")
    public String editOrder(@RequestParam("id") String id, Model model) {
    	Order order = orderService.getOrder(Long.parseLong(id));
    	model.addAttribute("order", order);
    	return "admin/editorder";
    }
    
    @GetMapping("/delete-order")
    public String deleteOrder(@RequestParam("id") String id) {
    	orderService.deleteOrder(Long.parseLong(id));
    	return "redirect:/order-manager";
    }
    
    @PostMapping("/save-order")
    public String saveOrder(@ModelAttribute("order") Order order) {
    	order.setOrderDate(LocalDateTime.now());
    	orderService.save(order);
    	return "redirect:/order-manager";
    }
    
    
}
