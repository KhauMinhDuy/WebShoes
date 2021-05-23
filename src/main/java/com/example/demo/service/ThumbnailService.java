package com.example.demo.service;

import com.example.demo.model.Thumbnail;
import org.springframework.stereotype.Service;

@Service
public interface ThumbnailService {

    Thumbnail save(Thumbnail thumbnail);
}
