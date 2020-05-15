package com.qveo.qveoweb.service;

import java.util.List;

import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.PeliculaPlataforma;

public interface PeliculaPlataformaService{

	List<PeliculaPlataforma> getAllPeliculasPlataformas();
	List<PeliculaPlataforma> obtenerPelicula(Pelicula pelicula);
	List<PeliculaPlataforma> borrarPelicula(Pelicula pelicula);
	
}
