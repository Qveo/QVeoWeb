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
	
	List<Integer> buscarAllYears();
	
	List<Pelicula> buscarPeliGenero(Collection<Genero> generos);
	
	List<Pelicula> buscarPeliYears(String[] years);
	
	List<Pelicula> buscarPeliGeneroYears(Collection<Genero> generos, String[] years);

	List<Pelicula> buscarPeliPlataforma(Collection<PeliculaPlataforma> peliculaPlataformas);

}
