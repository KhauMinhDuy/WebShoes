package com.example.demo.model;

import javax.persistence.*;

@Entity
public class Thumbnail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String thumbnail1;

    private String thumbnail2;

    @OneToOne(mappedBy = "thumbnail")
    private Product product;

    public Thumbnail() {
    }

    public Thumbnail(String thumbnail1, String thumbnail2) {
        this.thumbnail1 = thumbnail1;
        this.thumbnail2 = thumbnail2;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getThumbnail1() {
        return thumbnail1;
    }

    public void setThumbnail1(String thumbnail1) {
        this.thumbnail1 = thumbnail1;
    }

    public String getThumbnail2() {
        return thumbnail2;
    }

    public void setThumbnail2(String thumbnail2) {
        this.thumbnail2 = thumbnail2;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
