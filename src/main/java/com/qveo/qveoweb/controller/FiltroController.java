package com.qveo.qveoweb.controller;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		
		List<Genero> generos=generoService.getAllGenero();
		
		model.addAttribute("generos", generos);
		
		return "filtros/filtro";
	}
	
	@PostMapping("/filtros")
	public String filtrar(@RequestParam("generosBuscar")List<Genero> generos,Model model) {
		
		
		generos.forEach(gen->System.out.println(gen.getNombre()+" "+gen.getId()));
		//@ModelAttribute("generosBuscar")
		
		List<Serie> series=serieService.buscarSerie(generos);

		series.forEach(serie->System.out.println(serie.getFechaInicio()+" "+serie.getTitulo()));
		model.addAttribute("series", series);
		
		return "filtros/filtrado";
	}
	
}
