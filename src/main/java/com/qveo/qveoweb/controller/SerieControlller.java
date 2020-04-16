package com.qveo.qveoweb.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pais;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.GeneroService;
import com.qveo.qveoweb.service.PaisService;
import com.qveo.qveoweb.service.SerieService;


@Controller
public class SerieControlller {
	
	@Autowired
	SerieService serieService;
	
	@Autowired
	GeneroService generoService;
	
	@Autowired
	PaisService paisService;
	
	@GetMapping("/serie/{id}")
	public String Serie(@PathVariable String id, Model model) {
		
		int idI=Integer.parseInt(id);
		
		Serie series=serieService.getSerie(idI).get();
				
		model.addAttribute("series", series);
	
		return "serie";
	}
	
	@GetMapping("/serie/form")
	public String SerieAgregar(Model model) {
		List<Genero> generos=generoService.getAllGenero();
		List<Pais> paises=paisService.getAllPais();
		
		model.addAttribute("serieNueva",new Serie());
		model.addAttribute("generos", generos);
		model.addAttribute("paises", paises);
		
		return "registroSerie";
	}
	
	@PostMapping("/serie/create")
	public String SerieRegistro(@Valid Serie serieNew ,Model model, @RequestParam("poster") MultipartFile file) {
		try {
		
			serieService.save(serieNew, file);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return "redirect:/home";
	}

}
