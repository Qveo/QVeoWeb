package com.qveo.qveoweb.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Plataforma;

public interface PeliculaService {
	
	public List<Pelicula> findAll();
	public Pelicula getPelicula(Integer id);
	public void save(Pelicula pelicula) throws IOException;
	public void delete(Integer id);
	

	
}