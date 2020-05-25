package com.qveo.qveoweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.qveo.qveoweb.service.SerieService;
import com.qveo.qveoweb.model.Serie;

@Controller
public class SerieController {
	
	@Autowired
	SerieService serieService;
	
	@GetMapping("/serie/{id}")
	public String Serie(@PathVariable Integer id, Model model) {

		Serie series=serieService.getSerie(id).get();
				
		model.addAttribute("series", series);
	
		return "series/serie";
	}
}
