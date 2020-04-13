package com.qveo.qveoweb.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

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

}
