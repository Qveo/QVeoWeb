package com.qveo.qveoweb.service;

import com.qveo.qveoweb.model.Director;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface DirectorService {
    List<Director> getAllDirector();

    List<Director> findAll();

    Director getDirector(Integer id);

    void save(Director director, MultipartFile foto) throws IOException;

    void delete(Integer id);

}
