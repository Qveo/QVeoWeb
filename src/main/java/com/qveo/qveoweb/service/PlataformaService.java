package com.qveo.qveoweb.service;

import com.qveo.qveoweb.model.Plataforma;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface PlataformaService {
	public List<Plataforma> findAll();

	public Plataforma getPlataforma(Integer id);

	public void save(Plataforma Plataforma, MultipartFile foto) throws IOException;

	public void delete(Integer id);

	List<Plataforma> getAllPlataformas();
	
	//public Integer last (Plataforma Plataforma);
}
