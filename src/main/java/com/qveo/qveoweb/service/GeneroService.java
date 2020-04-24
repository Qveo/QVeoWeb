package com.qveo.qveoweb.service;

import java.util.List;
import java.util.Optional;

import com.qveo.qveoweb.model.Genero;

public interface GeneroService {
	List<Genero> findAlGeneros();
	void save(Genero generoNuevo);
	void deleteGenero(Integer id);
	Optional<Genero> getGenero(Integer id);
	void editarGenero(Genero generoAct);
}
