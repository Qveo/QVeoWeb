package com.qveo.qveoweb.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.model.Director;

public interface DirectorService {

	public List<Director> findAll();

	public Director getDirector(Integer id);

	public void save(Director director, MultipartFile foto) throws IOException;

	public void delete(Integer id);
	

}
