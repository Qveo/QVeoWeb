package com.qveo.qveoweb.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PeliculaController {
	
	
		
	@GetMapping("/peliculas")
	public String home(Model model) {
		
		model.addAttribute("objeto", "Yuriy es una chica");
		
		return "pelicula";
	}

}
