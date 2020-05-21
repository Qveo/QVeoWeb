package com.qveo.qveoweb.service;

import java.util.List;

import com.qveo.qveoweb.model.Pelicula;

public interface PeliculaService {
	
	public Pelicula getPelicula(Integer id);
	List<Pelicula> findAll();
}
