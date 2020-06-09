package com.qveo.qveoweb.controller;

import java.io.IOException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.model.Director;
import com.qveo.qveoweb.service.DirectorService;
import com.qveo.qveoweb.validation.DirectorValidador;

@Controller
public class DirectorController {



	@Autowired
	private DirectorValidador validador;


	@Autowired
	private DirectorService dirService;

	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		binder.setValidator(validador);
	}

	@RequestMapping(value = "/admin/directores/listar", method = RequestMethod.GET)
	public String listado(Model mod) {

		mod.addAttribute("titulo", "Listado de directores");
		mod.addAttribute("directores", dirService.findAll());

		return "directores/listar";
	}

	@RequestMapping(value = "/admin/directores/{id}", method = RequestMethod.GET)
	public String mostrar(Model mod, @PathVariable String id) {

		int idI = Integer.parseInt(id);

		Director director = dirService.getDirector(idI);

		mod.addAttribute("director", director);
		mod.addAttribute("Titulo", "Datos del director");

		return "directores/mostrar";

	}

	@RequestMapping(value = "/admin/directores/form", method = RequestMethod.GET)
	public String crear(Model mod) {
	
		Director director = new Director();
		mod.addAttribute("Title", "Registro de director");
		mod.addAttribute("directorNuevo", director);

		return "directores/registro";

	}

	@RequestMapping(value = "/admin/directores/edit/{id}", method = RequestMethod.GET)
	public String editar(Model mod, @PathVariable(value = "id") Integer id) {
	
		Director director = null;

		if (id > 0) {
			director = dirService.getDirector(id);
			if (director == null) {

				return "redirect:/admin/directores/listar";
			}
		} else {

			return "redirect:/admin/directores/listar";
		}

		mod.addAttribute("editar", true);
		mod.addAttribute("Title", "Editar director");
		mod.addAttribute("directorNuevo", director);

		return "directores/registro";

	}

	@RequestMapping(value = "/admin/directores/form/add", method = RequestMethod.POST)
	public String guardar(@Valid @ModelAttribute("directorNuevo") Director director, BindingResult br, Model mod,
			@RequestParam("retrato") MultipartFile foto, SessionStatus status) {

		try {
			if (br.hasErrors()) {

		
				mod.addAttribute("directorNuevo", director);
				mod.addAttribute("titulo", "Formulario de Director");
				return "directores/registro";

			} 
			dirService.save(director,foto);
			status.setComplete();

		} catch (IOException e) {
	
			e.printStackTrace();

		}

		return "redirect:/admin/directores/listar";

	}

	@RequestMapping(value = "/admin/directores/delete/{id}")
	public String eliminar(@PathVariable(value = "id") Integer id) {
		if (id > 0) {
			dirService.delete(id);
		}

		return "redirect:/admin/directores/listar";
	}

}
