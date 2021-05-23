package com.example.demo.service;

import com.example.demo.model.Thumbnail;
import com.example.demo.repository.ThumbnailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ThumbnailServiceImpl implements ThumbnailService{

    @Autowired
    private ThumbnailRepository thumbnailRepository;

    @Override
    public Thumbnail save(Thumbnail thumbnail) {
        return thumbnailRepository.save(thumbnail);
    }
}
