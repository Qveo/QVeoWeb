package com.qveo.qveoweb.service;

import java.util.Collection;
import java.util.List;

import org.springframework.stereotype.Service;

import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Serie;


public interface FiltroService {
	List<Integer> buscarAllYears();
	List<Serie> busquedaCompletaSerie(Collection<Genero> generos,Collection<Plataforma> plataforma,List<Integer> years);
	
}
