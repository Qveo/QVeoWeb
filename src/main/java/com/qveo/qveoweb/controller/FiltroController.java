package com.qveo.qveoweb.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.GeneroService;
import com.qveo.qveoweb.service.SerieService;

@Controller
public class FiltroController {
	
	@Autowired
	SerieService serieService;
	
	@Autowired
	GeneroService generoService;
	
	@GetMapping("/filtro")
	public String buscador( Model model) {
		
		model.addAttribute("seriesBuscar", new Serie());
		
		List<Genero> generos = generoService.getAllGeneros();
		
		model.addAttribute("generos",generos);
		
		return "filtros/filtro";
	}
	
	@PostMapping("/filtros")
	public String filtrar(@ModelAttribute("seriesBuscar") Serie serie, Model model) {

		
		
		List<Serie> series=serieService.buscarSerie(serie.getGeneros());

		
		model.addAttribute("series", series);
		
		return "filtros/filtrado";
	}
	
}
