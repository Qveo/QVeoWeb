package com.qveo.qveoweb.service.Imp;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qveo.qveoweb.dao.PeliculaDao;
import com.qveo.qveoweb.dao.SerieDao;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.FiltroService;
import com.qveo.qveoweb.service.GeneroService;
import com.qveo.qveoweb.service.PlataformaService;

@Service
public class FiltroServiceImp implements FiltroService{

	@Autowired
	SerieDao serieDao;
	
	@Autowired
	PeliculaDao peliculaDao;
	
	@Autowired
	PlataformaService plataformaSerice;
	
	@Autowired
	GeneroService generoService;
		
	
	@Override
	public List<Integer> buscarAllYears() {
		List<Serie> serieAll = serieDao.findAll();
		
		List<Pelicula> peliculasAll = peliculaDao.findAll();
		
		List<Integer> fecha = new ArrayList<Integer>();

		serieAll.forEach(serieR -> fecha.add(getYear(serieR.getFechaInicio())));
		
		peliculasAll.forEach(peli->fecha.add(getYear(peli.getAnio())));
		
		fecha.stream().distinct().collect(Collectors.toList());
		
		List<Integer> fechaLimpia= new ArrayList<Integer>(new HashSet<>(fecha));
		
		Collections.sort(fechaLimpia);
		
		return fechaLimpia;
	}
	
	public int getYear(Date date2) {	
		
		Calendar cal= Calendar.getInstance();
		
		cal.setTime(date2);
		
		int year=cal.get(Calendar.YEAR);

		return year;
	}

	
	@Override
	public List<Serie> busquedaCompletaSerie(Collection<Genero> generoBuscar, Collection<Plataforma> plataformaBuscar,
			List<Integer> years) {
		List<Serie> serieFiltra = new ArrayList<Serie>(new HashSet<Serie>());
		
		Collection<Genero> genero=null;
		if(generoBuscar.isEmpty()) {
			genero=generoService.getAllGeneros();
		}else {
			genero=generoBuscar;
		}
		
		Collection<Plataforma> plataforma=null;
		
		if(plataformaBuscar.isEmpty()) {
			plataforma=plataformaSerice.getAllPlataformas();
		}else {
			plataforma=plataformaBuscar;
		}
		
		List<Integer> fechas = null;
		if(years == null) {
			fechas=buscarAllYears();
		}else {
			fechas=years;
		}		

		Date fechaInicio = null;
		Date fechafinal = null;

		for (Integer year : fechas) {
			fechaInicio =  Date.valueOf(year + "-1-1");
			fechafinal = Date.valueOf(year + "-12-31");
			serieFiltra.addAll(serieDao.findByPlataformasInAndGenerosInAndFechaInicioBetween(plataforma, genero,
					fechaInicio, fechafinal));
		}
		return serieFiltra.stream().distinct().collect(Collectors.toList());
	}




	
}
