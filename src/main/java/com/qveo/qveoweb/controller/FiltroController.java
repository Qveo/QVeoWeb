package com.qveo.qveoweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.qveo.qveoweb.dto.FiltroDto;
import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.model.Director;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pelicula;
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
	public String buscador(Model model) {

		List<Genero> generos = generoService.getAllGenero();

		List<Plataforma> plataformas = plataformaSerice.getAllPlataformas();

		List<Serie> series = serieService.findAllSerie();

		List<Integer> fecha = filtroService.buscarAllYears();

		List<Pelicula> pelis = peliculaService.findAll();

		model.addAttribute("buscar", new FiltroDto());

		model.addAttribute("fechas", fecha);
		model.addAttribute("plataformas", plataformas);
		model.addAttribute("generos", generos);

		model.addAttribute("serieMostrar", series);
		model.addAttribute("peliculas", pelis);

		return "filtros/filtro";
	}

	/* Filtro Director */
	@GetMapping("/filtro/director/{id}")
	public String filtrDirector(@PathVariable String id, Model model) {

		Director director = filtroService.findByDirectorid(Integer.parseInt(id));

		if (director == null) {
			return "redirect:/filtro";
		}
		model.addAttribute("reparto", director);
		model.addAttribute("pintar", true);

		return "filtros/filtrado";
	}

	/* Filtro Actor */
	@GetMapping("/filtro/actor/{id}")
	public String filtrActor(@PathVariable Integer id, Model model) {
		Actor actor = null;

		actor = filtroService.findByActorid(id);

		if (actor == null)
			return "redirect:/filtro";

		model.addAttribute("pintar", true);
		model.addAttribute("reparto", actor);

		return "filtros/filtrado";
	}

	/*
	 * Post controler para series
	 */
	@PostMapping("/filtros")
	public String filtrar(@ModelAttribute(name = "buscar") FiltroDto filtro, Model model) {
		List<Genero> generos = generoService.getAllGenero();

		List<Plataforma> plataformas = plataformaSerice.getAllPlataformas();
		
		List<Integer> fecha = filtroService.buscarAllYears();
		
		FiltroDto filtrados = filtroService.busqueda(filtro);
		
		model.addAttribute("fechas", fecha);
		model.addAttribute("plataformas", plataformas);
		model.addAttribute("generos", generos);
		model.addAttribute("filtrado", filtrados);

		return "filtros/filtrado";
	}

	@GetMapping("/serie")
	public String serieCatalogo(Model model) {
	
		List<Serie> series = serieService.findAllSerie();
		List<Genero> generos = generoService.getAllGenero();

		List<Plataforma> plataformas = plataformaSerice.getAllPlataformas();

		List<Integer> fecha = filtroService.buscarAllYears();

		model.addAttribute("buscar", new FiltroDto());

		model.addAttribute("fechas", fecha);
		model.addAttribute("plataformas", plataformas);
		model.addAttribute("serieFiltradas", false);
		model.addAttribute("generos", generos);
		model.addAttribute("serieMostrar", series);

		return "series/listaMostrar";
	}

	@PostMapping("/series")
	public String serieCatalogoFiltrado(@ModelAttribute(name = "buscar") FiltroDto filtro, Model model) {

		filtro.setAccionFiltro(2);
		List<Genero> generos = generoService.getAllGenero();
		List<Plataforma> plataformas = plataformaSerice.getAllPlataformas();

		List<Integer> fecha = filtroService.buscarAllYears();
		
		FiltroDto filtros=filtroService.busqueda(filtro);
		
		model.addAttribute("buscar", filtros);
		model.addAttribute("serieFiltradas", true);
		model.addAttribute("fechas", fecha);
		model.addAttribute("plataformas", plataformas);
		model.addAttribute("generos", generos);
		
		return "series/listaMostrar";
	}
	
	@GetMapping("/peliculas")
	public String peliculaCatalogo(Model model) {
		
		List<Pelicula> pelis = peliculaService.findAll();
		List<Genero> generos = generoService.getAllGenero();

		List<Plataforma> plataformas = plataformaSerice.getAllPlataformas();

		List<Integer> fecha = filtroService.buscarAllYears();

		model.addAttribute("buscar", new FiltroDto());

		model.addAttribute("fechas", fecha);
		model.addAttribute("plataformas", plataformas);
		model.addAttribute("serieFiltradas", false);
		model.addAttribute("generos", generos);
		model.addAttribute("peliMostrar", pelis);

		return "peliculas/listadoPelicula";
	}
	
	@PostMapping("/peliculas")
	public String peliculaCatalogoFiltrado(@ModelAttribute(name = "buscar") FiltroDto filtro, Model model) {

		filtro.setAccionFiltro(3);
		List<Genero> generos = generoService.getAllGenero();
		List<Plataforma> plataformas = plataformaSerice.getAllPlataformas();

		List<Integer> fecha = filtroService.buscarAllYears();
		
		FiltroDto filtros=filtroService.busqueda(filtro);
		
		model.addAttribute("buscar", filtros);
		model.addAttribute("pelisFiltradas", true);
		model.addAttribute("fechas", fecha);
		model.addAttribute("plataformas", plataformas);
		model.addAttribute("generos", generos);
		
		return "peliculas/listadoPelicula";
	}
}
