package com.qveo.qveoweb.service;

import java.util.List;
import java.util.Optional;
import com.qveo.qveoweb.model.Serie;

public interface SerieService {
	List<Serie> findAllSerie();
	Optional<Serie> getSerie(Integer id);
	void save(Serie serieNew);
	void deleteSerie(Integer id);
	
}
