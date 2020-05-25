package com.qveo.qveoweb.service;

import java.util.List;
import com.qveo.qveoweb.model.Genero;

public interface GeneroService {
	List<Genero> getAllGenero();
	void save(Genero generoNuevo);
	void deleteGenero(Integer id);
	Genero getGenero(Integer id);
	
}
