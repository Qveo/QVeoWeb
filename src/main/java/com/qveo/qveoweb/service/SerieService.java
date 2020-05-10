package com.qveo.qveoweb.service;

import java.util.Collection;
import java.util.List;
import java.util.Optional;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Serie;

public interface SerieService {
	List<Serie> findAllSerie();
	Optional<Serie> getSerie(Integer id);
	void save(Serie serieNew);
	void deleteSerie(Integer id);
	List<Serie> buscarSerie(Collection<Genero> generos);
	List<Integer> buscarAllYears();
	List<Serie> buscarPorYear(String[] years);
	List<Serie> busquedaGeneroYears(String[] years,Collection<Genero> generos);
	List<Serie> buscarPlataforma(Collection<Plataforma> plataforma);
	List<Serie> buscarGeneroPlataforma(Collection<Plataforma> plataforma,Collection<Genero> generos);
	List<Serie> buscarPlataformaYears(Collection<Plataforma> plataforma,String[] years);
	List<Serie> busquedaCompletaSerie(Collection<Genero> generos,Collection<Plataforma> plataforma,String[] years);
	
}
