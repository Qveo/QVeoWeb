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

	@Override
	public List<Pelicula> buscarPeliGenero(Collection<Genero> generos) {
		List<Pelicula> peliculas = peliculaDao.findByPeliculasIn(generos);
		return peliculas;
	}

	@Override
	public List<Integer> buscarAllYears() {
		List<Pelicula> peliculasAll = peliculaDao.findAll();

		ArrayList<Integer> fechas = new ArrayList<Integer>();

		peliculasAll.forEach(pelicula -> fechas.add(getYear(pelicula.getAnio())));

		fechas.stream().distinct().collect(Collectors.toList());

		List<Integer> listaLimplia = new ArrayList<Integer>(new HashSet<>(fechas));

		Collections.sort(listaLimplia);

		return listaLimplia;
	}

	public int getYear(Date date) {

		Calendar cal = Calendar.getInstance();

		cal.setTime(date);

		int year = cal.get(Calendar.YEAR);

		return year;

	}

	@Override
	public List<Pelicula> buscarPeliYears(String[] years) {

		List<Pelicula> peliculaFiltrada = new ArrayList<Pelicula>();

		Date fechaInferior = null;
		Date fechaSuperior = null;

		if (years.length == 1) {
			fechaInferior = Date.valueOf(years[0] + "-1-1");
			fechaSuperior = Date.valueOf(years[0] + "-12-31");

			peliculaFiltrada.addAll(peliculaDao.findByAnioBetween(fechaInferior, fechaSuperior));
		}

		if (years.length >= 2) {
			for (String year : years) {
				fechaInferior = Date.valueOf(year + "-1-1");
				fechaSuperior = Date.valueOf(year + "-12-31");

				peliculaFiltrada.addAll(peliculaDao.findByAnioBetween(fechaInferior, fechaSuperior));
			}

		}

		return peliculaFiltrada;
	}

	/*
	 * @Override public List<Pelicula> buscarPeliPlataforma(Collection<Plataforma>
	 * plataformas) { List<Pelicula> peliculas=
	 * peliculaDao.findByPeliculaPlataformasIn(plataformas); return peliculas; }
	 */

	@Override
	public List<Pelicula> buscarPeliGeneroYears(Collection<Genero> generos, String[] years) {

		List<Pelicula> peliculaFiltrada = new ArrayList<Pelicula>();

		Date fechaInferior = null;
		Date fechaSuperior = null;

		if (years.length == 1) {
			fechaInferior = Date.valueOf(years[0] + "-1-1");
			fechaSuperior = Date.valueOf(years[0] + "-12-31");

			peliculaFiltrada.addAll(peliculaDao.findByPeliculasInAndAnioBetween(generos, fechaInferior, fechaSuperior));
		}

		if (years.length >= 2) {
			for (String year : years) {
				fechaInferior = Date.valueOf(year + "-1-1");
				fechaSuperior = Date.valueOf(year + "-12-31");

				peliculaFiltrada
						.addAll(peliculaDao.findByPeliculasInAndAnioBetween(generos, fechaInferior, fechaSuperior));
			}

		}
		List<Pelicula> borradoList = peliculaFiltrada;
		peliculaFiltrada = null;
		borradoList.stream().distinct().collect(Collectors.toList());
		peliculaFiltrada = new ArrayList<Pelicula>(new HashSet<>(borradoList));

		return peliculaFiltrada;
	}

	@Override
	public List<Pelicula> buscarPeliPlataforma(Collection<PeliculaPlataforma> peliculaPlataformas) {
		
		return peliculaDao.findByPeliculaPlataformasIn(peliculaPlataformas);
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
