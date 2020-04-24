package com.qveo.qveoweb.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.qveo.qveoweb.dao.GeneroDao;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.service.GeneroService;

@Controller
public class GeneroController {

	@Autowired
	GeneroService generoService;
	
	@GetMapping("/genero/list")
	public String listaGenero(Model model) {
		List<Genero> generos= generoService.findAlGeneros();
		model.addAttribute("generos", generos);
		return "genero/lista";
	}
	
	@GetMapping("/genero/form")
	public String generoForm(Model model) {
		
		model.addAttribute("generoNuevo", new Genero());
		return "genero/registro";
	}
	
	@PostMapping("/genero/form/add")
	public String addGenero(@Valid @ModelAttribute("generoNuevo") Genero generoNuevo, BindingResult br) {
		
		if (br.hasErrors()) {
			return "redirect:/genero/form";
		}

		generoService.save(generoNuevo);
		
		return "redirect:/genero/list";
	}
	
	@GetMapping("/genero/edit/{id}")
	public String editarGenero(Model model,@PathVariable("id") Integer id) {
		Genero genero=generoService.getGenero(id).get();
		
		model.addAttribute("editar", true);
		model.addAttribute("generoNuevo", genero);
		return "genero/registro";
	}
	
	@PostMapping("/genero/update/{id}")
	public String updateGenero(@Valid @ModelAttribute("generoNuevo") Genero generoAct,BindingResult br) {
	
		
		if (br.hasErrors()) {
			System.out.println("Aqui");
			return "redirect:/genero/edit/"+generoAct.getId();
		}
		System.out.println("LOp");
		generoService.editarGenero(generoAct);
		
		return "redirect:/genero/list";
	}
	
	
	@GetMapping("/genero/delete/{id}")
	public String deleteGnero(@PathVariable("id") Integer id) {
		
		generoService.deleteGenero(id);
		return "redirect:/genero/list";
	}
	
}
