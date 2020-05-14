package com.qveo.qveoweb.service;

import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.PeliculaPlataforma;
import com.qveo.qveoweb.model.Plataforma;
import java.util.Collection;
import java.util.List;
import java.util.Set;


public interface PeliculaService {
	
    //Map<Plataforma, List<Pelicula>> getPeliculaForCarousel();
	
	List<Pelicula> findAll();

}
