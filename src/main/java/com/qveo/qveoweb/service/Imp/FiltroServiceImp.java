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
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qveo.qveoweb.dao.ActorDao;
import com.qveo.qveoweb.dao.DirectorDao;
import com.qveo.qveoweb.dao.PeliculaDao;
import com.qveo.qveoweb.dao.SerieDao;
import com.qveo.qveoweb.dto.FiltroDto;
import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.model.Director;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.PeliculaPlataforma;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.FiltroService;
import com.qveo.qveoweb.service.GeneroService;
import com.qveo.qveoweb.service.PlataformaService;

@Service
public class FiltroServiceImp implements FiltroService {

	@Autowired
	SerieDao serieDao;

	@Autowired
	PeliculaDao peliculaDao;

	@Autowired
	PlataformaService plataformaSerice;

	@Autowired
	GeneroService generoService;

	@Autowired
	DirectorDao directorDao;

	@Autowired
	ActorDao actorDao;

	@Override
	public List<Integer> buscarAllYears() {
		List<Serie> serieAll = serieDao.findAll();

		List<Pelicula> peliculasAll = peliculaDao.findAll();

		List<Integer> fecha = new ArrayList<Integer>();

		serieAll.forEach(serieR -> fecha.add(getYear(serieR.getFechaInicio())));

		peliculasAll.forEach(peli -> fecha.add(getYear(peli.getAnio())));

		fecha.stream().distinct().collect(Collectors.toList());

		List<Integer> fechaLimpia = new ArrayList<Integer>(new HashSet<>(fecha));

		Collections.sort(fechaLimpia);

		return fechaLimpia;
	}

	public int getYear(Date date2) {

		Calendar cal = Calendar.getInstance();

		cal.setTime(date2);

		int year = cal.get(Calendar.YEAR);

		return year;
	}

	@Override
	public List<Serie> busquedaCompletaSerie(Collection<Genero> generos, Collection<Plataforma> plataforma,
			Collection<Integer> years) {
		List<Serie> serieFiltra = new ArrayList<Serie>();

		Collection<Genero> genero = null;
		if (generos.isEmpty()) {
			genero = generoService.getAllGeneros();
		} else {
			genero = generos;
		}

		Collection<Plataforma> plataformas = null;

		if (plataforma.isEmpty()) {
			plataformas = plataformaSerice.getAllPlataformas();
		} else {
			plataformas = plataforma;
		}
		Collection<Integer> fechas = null;
		if (years.isEmpty()) {
			fechas = buscarAllYears();
		} else {
			fechas = years;
		}

		Date fechaInicio = null;
		Date fechafinal = null;

		for (Integer year : fechas) {
			fechaInicio = Date.valueOf(year + "-1-1");
			fechafinal = Date.valueOf(year + "-12-31");
			serieFiltra.addAll(serieDao.findByPlataformasInAndGenerosInAndFechaInicioBetween(plataformas, genero,
					fechaInicio, fechafinal));
		}

		return serieFiltra.stream().distinct().collect(Collectors.toList());
	}

	@Override
	public List<Pelicula> busquedaCompletaPelicula(Collection<Genero> generosBuscar, Collection<Integer> years,
			Collection<Plataforma> plataforma) {
		List<Pelicula> peli = new ArrayList<Pelicula>(new HashSet<Pelicula>());
		List<Pelicula> peliFitrada = new ArrayList<Pelicula>(new HashSet<Pelicula>());

		Collection<Genero> genero = null;
		if (generosBuscar.isEmpty() == true) {

			genero = generoService.getAllGeneros();
		} else {

			genero = generosBuscar;
		}

		Collection<Plataforma> plataformas = null;

		if (plataforma.isEmpty()) {
			plataformas = plataformaSerice.getAllPlataformas();
		} else {
			plataformas = plataforma;
		}

		Collection<Integer> fechas = null;
		if (years.isEmpty()) {
			fechas = buscarAllYears();
		} else {
			fechas = years;
		}

		Date fechaInicio = null;
		Date fechafinal = null;

		for (Integer year : fechas) {
			fechaInicio = Date.valueOf(year + "-1-1");
			fechafinal = Date.valueOf(year + "-12-31");
			peli.addAll(peliculaDao.findByGenerosInAndAnioBetween(genero, fechaInicio, fechafinal));

		}
		for (Plataforma plataform : plataformas) {

			for (Pelicula pelicula : peli) {
				if (comprobacionPlataforma(pelicula, plataform) == true) {
					peliFitrada.add(pelicula);
				}
			}

		}

		return peliFitrada.stream().distinct().collect(Collectors.toList());
	}

	public boolean comprobacionPlataforma(Pelicula pelicula, Plataforma plataforma) {
		boolean respuesta = false;

		Set<PeliculaPlataforma> peliculaPlataform = pelicula.getPeliculaPlataformas();

		for (PeliculaPlataforma peliculaPlataforma : peliculaPlataform) {
			if (peliculaPlataforma.getPlataforma().getId() == plataforma.getId()) {
				respuesta = true;
				break;
			}
		}
		return respuesta;
	}

	@Override
	public Actor findByActorid(Integer id) {
		Actor actor = null;

		if (id > 0) {
			actor = null;
		} else {
			actor = actorDao.findById(id).orElse(null);
		}

		return actor;
	}

	@Override
	public Director findByDirectorid(Integer id) {
		Director director = null;

		if (id > 0) {
			director = null;
		} else {
			director = directorDao.findById(id).orElse(null);
		}

		return director;
	}

	@Override
	public FiltroDto busqueda(FiltroDto filtro) {

		List<Serie> series = null;
		List<Pelicula> peli = null;

		if (filtro.getAccionFiltro() == 1) {

			series = busquedaCompletaSerie(filtro.getGeneros(), filtro.getPlataformas(), filtro.getAnios());
			peli = busquedaCompletaPelicula(filtro.getGeneros(), filtro.getAnios(), filtro.getPlataformas());

		} else if (filtro.getAccionFiltro() == 2) {

			series = busquedaCompletaSerie(filtro.getGeneros(), filtro.getPlataformas(), filtro.getAnios());

		} else if (filtro.getAccionFiltro() == 3) {

			peli = busquedaCompletaPelicula(filtro.getGeneros(), filtro.getAnios(), filtro.getPlataformas());

		}

		filtro.setSeries(series);
		filtro.setPelicula(peli);

		return filtro;
	}

}
