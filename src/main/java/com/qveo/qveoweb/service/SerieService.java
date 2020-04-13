package com.qveo.qveoweb.service;

import java.util.Optional;

import com.qveo.qveoweb.model.Serie;

public interface SerieService {
	Optional<Serie> getSerie(Integer id);
}
