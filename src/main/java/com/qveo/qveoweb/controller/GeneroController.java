package com.qveo.qveoweb.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.service.GeneroService;
import com.qveo.qveoweb.validation.GeneroValidator;

@Controller
public class GeneroController {

	@Autowired
	GeneroService generoService;

	@Autowired
	private GeneroValidator validator;

	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}

	@GetMapping("/genero/list")
	public String listaGenero(Model model) {
		List<Genero> generos = generoService.getAllGenero();
		model.addAttribute("generos", generos);
		return "genero/lista";
	}

	@GetMapping("/genero/form")
	public String generoForm(Model model) {

		model.addAttribute("generoNuevo", new Genero());
		return "genero/registro";
	}

	@GetMapping("/genero/edit/{id}")
	public String editarGenero(Model model, @PathVariable("id") Integer id) {
		Genero genero = null;

		if (id > 0) {
			genero = generoService.getGenero(id);
			if (genero == null) {
				return "redirect:/home";
			}
		} else {
			return "redirect:/home";
		}
		model.addAttribute("editar", true);
		model.addAttribute("generoNuevo", genero);

		return "genero/registro";
	}

	@PostMapping("/genero/form")
	public String guardar(@Valid @ModelAttribute("generoNuevo") Genero generoAct, BindingResult br,
			RedirectAttributes redirectAttrs, SessionStatus status) {
		if (br.hasErrors()) {

			return "genero/registro";
		}
		generoService.save(generoAct);
		status.setComplete();

		return "redirect:/genero/list";
	}

	@GetMapping("/genero/delete/{id}")
	public String deleteGnero(@PathVariable("id") Integer id) {

		generoService.deleteGenero(id);
		return "redirect:/genero/list";
	}

}
