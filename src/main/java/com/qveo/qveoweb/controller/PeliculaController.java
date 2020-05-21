package com.qveo.qveoweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.PeliculaService;

@Controller
@RequestMapping("/peliculas")
public class PeliculaController {
	
	@Autowired
	PeliculaService peliculaService;
	
	@GetMapping("/{id}")
	public String mostrar(Model mod, @PathVariable String id) {

		int idI = Integer.parseInt(id);

		Pelicula pelicula = peliculaService.getPelicula(idI);

		mod.addAttribute("peliculas", pelicula);
		mod.addAttribute("Titulo", "Datos de la pelicula");

		return "peliculas/mostrar";
	}
}
