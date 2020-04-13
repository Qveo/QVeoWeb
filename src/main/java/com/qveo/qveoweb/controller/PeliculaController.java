package com.qveo.qveoweb.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.service.PeliculaService;

@Controller
public class PeliculaController {
	
	
	@Autowired
	PeliculaService peliculaService;
	
	
		
	@GetMapping("/peliculas/{id}")
	public String home(Model model, @PathVariable String id ) {
		
		int idI=Integer.parseInt(id);
		
		Pelicula pelicula = peliculaService.getPelicula(idI).get();
		
		model.addAttribute("peliculas", pelicula);
		
		
		return "pelicula";
	}

}
