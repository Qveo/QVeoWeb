package com.qveo.qveoweb.controller;

import java.io.File;
import java.io.IOException;
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

import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.SerieService;


@Controller
public class SerieControlller {
	
	@Autowired
	SerieService serieService;
	
	@GetMapping("/serie/{id}")
	public String Serie(@PathVariable String id, Model model) {
		
		int idI=Integer.parseInt(id);
		
		Serie series=serieService.getSerie(idI).get();
				
		model.addAttribute("series", series);
	
		return "serie";
	}
	
	@GetMapping("/serie")
	public String SerieAgregar(Model model) {
		model.addAttribute("serie",new Serie());
		
		return "registroSerie";
	}
	
	@PostMapping("/new")
	public String SerieRegistro(@Valid Serie serieNew ,Model model, @RequestParam("poster") MultipartFile file) {
		try {
		
			serieService.save(serieNew, file);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return "redirect:/home";
	}

}
