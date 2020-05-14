package com.qveo.qveoweb.service.Imp;

import com.qveo.qveoweb.dao.PeliculaDao;
import com.qveo.qveoweb.dao.PlataformaDao;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.PeliculaPlataforma;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.service.PeliculaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PeliculaServiceImpl implements PeliculaService {

	@Autowired
	PeliculaDao peliculaDao;

	@Autowired
	PlataformaDao plataformaDao;

	@Override
	@Transactional(readOnly = true)
	public List<Pelicula> findAll() {
		// TODO Auto-generated method stub
		return (List<Pelicula>) peliculaDao.findAll();
	}

	/*
	 * @Override public Map<Plataforma, List<Pelicula>> getPeliculaForCarousel() {
	 * List<Plataforma> plataformas = plataformaDao.findAll();
	 * 
	 * List<Pelicula> peliculas = peliculaDao.findByPlataformasIn(plataformas);
	 * 
	 * Map<Plataforma, List<Pelicula>> plataformaListMap = new HashMap<>();
	 * 
	 * plataformas.forEach(plataforma ->{ plataformaListMap.put(plataforma,
	 * peliculas.stream() .filter(pelicula ->
	 * pelicula.getPlataformas().contains(plataforma))
	 * .collect(Collectors.toList())); });
	 * 
	 * return plataformaListMap; }
	 */

}
