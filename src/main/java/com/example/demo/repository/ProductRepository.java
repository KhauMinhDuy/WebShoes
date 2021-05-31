package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long>{

    @Query(value = "SELECT * FROM Product ORDER BY name DESC", nativeQuery = true)
    List<Product> findAllOrderByNameDesc();

    @Query(value = "SELECT * FROM Product ORDER BY name ASC", nativeQuery = true)
    List<Product> findAllOrderByNameAsc();

    @Query(value = "SELECT * FROM Product ORDER BY price DESC", nativeQuery = true)
    List<Product> findAllOrderByPriceAsc();

    @Query(value = "SELECT * FROM Product ORDER BY price ASC", nativeQuery = true)
    List<Product> findAllOrderByPriceDesc();
    

}
