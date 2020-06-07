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

import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.service.PlataformaService;
import com.qveo.qveoweb.service.UploadFileService;
import com.qveo.qveoweb.validation.PlataformaValidador;

@Controller
@RequestMapping("/admin/plataformas")
public class PlataformaController {

	@Autowired
	private PlataformaValidador validador;

	@Autowired
	private PlataformaService platService;

	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		binder.setValidator(validador);
	}

	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String listado(Model mod) {

		mod.addAttribute("titulo", "Listado de plataformas");
		mod.addAttribute("plataformas", platService.getAllPlataformas());

		return "plataformas/listar";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String mostrar(Model mod, @PathVariable String id) {

		int idI = Integer.parseInt(id);

		Plataforma plataforma = platService.getPlataforma(idI);

		mod.addAttribute("Plataforma", plataforma);
		mod.addAttribute("Titulo", "Datos del Plataforma");

		return "plataformas/mostrar";

	}

	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String crear(Model mod) {

		Plataforma plataforma = new Plataforma();
		mod.addAttribute("Title", "Registro de Plataforma");
		mod.addAttribute("plataformaNueva", plataforma);

		return "plataformas/registro";

	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String editar(Model mod, @PathVariable(value = "id") Integer id) {

		Plataforma plataforma = null;

		if (id > 0) {
			plataforma = platService.getPlataforma(id);
			if (plataforma == null) {

				return "redirect:/admin/plataformas/listar";
			}
		} else {

			return "redirect:/plataformas/listar";
		}

		mod.addAttribute("editar", true);
		mod.addAttribute("Title", "Editar Plataforma");
		mod.addAttribute("plataformaNueva", plataforma);

		return "plataformas/registro";

	}

	@RequestMapping(value = "/form/add", method = RequestMethod.POST)
	public String guardar(@Valid @ModelAttribute("plataformaNueva") Plataforma plataforma, BindingResult br, Model mod,
			@RequestParam("retrato") MultipartFile foto, SessionStatus status) {

		try {
			if (br.hasErrors()) {

				mod.addAttribute("plataformaNueva", plataforma);
				mod.addAttribute("titulo", "Formulario de Plataforma");
				return "plataformas/registro";

			}

			platService.save(plataforma, foto);
			status.setComplete();

		} catch (IOException e) {
		
			e.printStackTrace();

		}

		return "redirect:/admin/plataformas/listar";

	}

	@RequestMapping(value = "/delete/{id}")
	public String eliminar(@PathVariable(value = "id") Integer id) {

		if (id > 0) {

			platService.delete(id);

		}

		return "redirect:/admin/plataformas/listar";
	}

}
