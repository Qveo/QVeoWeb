package com.qveo.qveoweb.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qveo.qveoweb.dto.FiltroDto;
import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.model.Director;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.PeliculaPlataforma;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.ActorService;
import com.qveo.qveoweb.service.DirectorService;
import com.qveo.qveoweb.service.FiltroService;
import com.qveo.qveoweb.service.GeneroService;
import com.qveo.qveoweb.service.PeliculaPlataformaService;
import com.qveo.qveoweb.service.PeliculaService;
import com.qveo.qveoweb.service.PlataformaService;
import com.qveo.qveoweb.service.SerieService;

@Controller
public class FiltroController {

	@Autowired
	SerieService serieService;

	@Autowired
	GeneroService generoService;

	@Autowired
	PeliculaService peliculaService;

	@Autowired
	PlataformaService plataformaSerice;

	@Autowired
	PeliculaPlataformaService peliPlataService;

	@Autowired
	FiltroService filtroService;

	@Autowired
	DirectorService directorService;

	@Autowired
	ActorService actorService;

	/*
	 * Get controller para series
	 */
	@GetMapping("/filtro")
	public String buscadorSerie(Model model) {

		model.addAttribute("seriesBuscar", new FiltroDto());

		List<Genero> generos = generoService.getAllGeneros();

		List<Plataforma> plataformas = plataformaSerice.getAllPlataformas();

		List<Serie> series = serieService.findAllSerie();

		List<Integer> fecha = filtroService.buscarAllYears();

		model.addAttribute("fechas", fecha);
		model.addAttribute("plataformas", plataformas);
		model.addAttribute("serieMostrar", series);

		model.addAttribute("generos", generos);

		return "filtros/filtro";
	}

	/* Filtro dreictor y actores */
	@GetMapping("/filtro/{reparto}/{id}")
	public String filtrReparto(@PathVariable String reparto, @PathVariable Integer id, Model model) {

		Director direc = null;
		Actor actor = null;

		if (reparto.equals("director")) {

			direc = directorService.findById(id).get();
			
			model.addAttribute("director", true);
			
			model.addAttribute("actor", false);
			
			

		} else if (reparto.equals("actor")) {

			model.addAttribute("actor", true);
			
			model.addAttribute("director", false);
			
			actor = actorService.findById(id).get();

		}
		
		model.addAttribute("directoInfo", direc);
		model.addAttribute("actorInfo", actor);
		return "filtros/filtrado";
	}

	/*
	 * Post controler para series
	 */
	@PostMapping("/filtros")
	public String filtrar(@ModelAttribute(name = "seriesBuscar") FiltroDto filtro, Model model, BindingResult br) {

		if (br.hasErrors()) {

			model.addAttribute("seriesBuscar", filtro);

			List<Genero> generos = generoService.getAllGeneros();

			List<Serie> series = serieService.findAllSerie();

			List<Integer> fecha = filtroService.buscarAllYears();

			model.addAttribute("fechas", fecha);
			model.addAttribute("serieMostrar", series);

			model.addAttribute("generos", generos);

			return "filtros/filtro";
		}

		List<Serie> series = new ArrayList<Serie>();
		List<Pelicula> peli = new ArrayList<Pelicula>();

		if (filtro.getAccionFiltro() == 1) {
			series.addAll(filtroService.busquedaCompletaSerie(filtro.getGeneros(), filtro.getPlataformas(),
					filtro.getAnios()));
			peli.addAll(filtroService.busquedaCompletaPelicula(filtro.getGeneros(), filtro.getAnios(),
					filtro.getPlataformas()));
			System.out.println("Todos");
		} else if (filtro.getAccionFiltro() == 2) {
			System.out.println("Filtro Series");
			series.addAll(filtroService.busquedaCompletaSerie(filtro.getGeneros(), filtro.getPlataformas(),
					filtro.getAnios()));

		} else if (filtro.getAccionFiltro() == 3) {
			System.out.println("Filtro Pelis");
			peli.addAll(filtroService.busquedaCompletaPelicula(filtro.getGeneros(), filtro.getAnios(),
					filtro.getPlataformas()));

		}

		model.addAttribute("accion", filtro.getAccionFiltro());
		model.addAttribute("series", series);
		model.addAttribute("pelis", peli);

		return "filtros/filtrado";
	}
}
