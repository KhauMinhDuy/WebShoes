package com.example.demo.controller.admin;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.Product;
import com.example.demo.model.Thumbnail;
import com.example.demo.service.ProductService;
import com.example.demo.service.ThumbnailService;

@Controller
public class ProductManagerController {

    @Autowired
    private ProductService productService;

    @Autowired
    private ThumbnailService thumbnailService;
    
    
    private String uploadDirectory = System.getProperty("user.dir") + "src/main/webapp/WEB-INF/commons/images/";

    @GetMapping("/product-manager")
    public String getProductManager(Model model) {
        List<Product> products = productService.findAllProducts();
        model.addAttribute("products", products);
        return "admin/productmanager";
    }

    @GetMapping("/new-product")
    public String newProduct() {
        return "admin/newproduct";
    }

    @PostMapping("/product-manager/update1")
    private String update(@ModelAttribute("product") Product product, 
    		@RequestParam("url1") MultipartFile url1, 
    		@RequestParam("url2") MultipartFile url2 ) {
        Thumbnail thumbnails = new Thumbnail(url1.getOriginalFilename(),url2.getOriginalFilename());
        product.setThumbnail(thumbnails);
        productService.save(product);
        return "redirect:/product-manager";
    }

    @PostMapping("/save-product")
    public String saveProduct(@ModelAttribute("product") Product product,
                              @RequestParam("url1") MultipartFile url1,
                              @RequestParam("url2") MultipartFile url2,
                              Model model) throws IOException {

        Thumbnail thumbnail = new Thumbnail(url1.getOriginalFilename(), url2.getOriginalFilename());
        product.setThumbnail(thumbnail);
        System.out.println(uploadDirectory);
        Path file1 = Files.write(Paths.get("D:\\Development\\Java\\SourceCode\\WebShoes\\src\\main\\webapp\\WEB-INF\\commons\\images/"+url1.getOriginalFilename()), url1.getBytes(), StandardOpenOption.CREATE);
        Path file2 = Files.write(Paths.get("D:\\Development\\Java\\SourceCode\\WebShoes\\src\\main\\webapp\\WEB-INF\\commons\\images/"+url2.getOriginalFilename()), url2.getBytes(), StandardOpenOption.CREATE);
        if(Files.exists(file1) && Files.exists(file2)) {
            thumbnailService.save(thumbnail);
            productService.save(product);
        }
        return "redirect:/product-manager";
    }
}
