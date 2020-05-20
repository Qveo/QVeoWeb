package com.qveo.qveoweb.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dto.PeliculaDto;
import com.qveo.qveoweb.model.Pelicula;

public interface PeliculaService {
	
	public List<Pelicula> findAll();
	public Pelicula getPelicula(Integer id);
	public void save(PeliculaDto pelicula, MultipartFile foto) throws IOException;
	public void delete(Pelicula pelicula);
	public Pelicula last ();
	

	
}