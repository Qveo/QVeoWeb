package com.qveo.qveoweb.controller;

import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.model.Pais;
import com.qveo.qveoweb.service.ActorService;
import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.PaisService;
import com.qveo.qveoweb.validation.ActorValidator;

@Controller
public class ActorController {

	@Autowired
	ActorService actorService;

	@Autowired
	private ActorValidator validador;

	@Autowired
	PaisService paisService;

	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		binder.setValidator(validador);
	}

	@GetMapping("/actor/list")
	public String listaActor(Model model) {
		List<Actor> actores = actorService.findAllActor();
		model.addAttribute("actores", actores);
		return "actor/lista";
	}

	@GetMapping("/actor/form")
	public String actorForm(Model model) {

		List<Pais> paises = paisService.getAllPais();

		model.addAttribute("actorNuevo", new Actor());
		model.addAttribute("paises", paises);

		return "actor/registro";
	}

	@GetMapping("/actor/edit/{id}")
	public String editarActor(Model model, @PathVariable("id") Integer id) {

		Actor actor = null;

		if (id > 0) {
			actor = actorService.getActor(id);

			if (actor == null) {
				return "redirect:/actor/list";
			}

		} else {
			return "redirect:/actor/list";
		}

		List<Pais> paises = paisService.getAllPais();
		actor = actorService.getActor(id);

		model.addAttribute("editar", true);
		model.addAttribute("actorNuevo", actor);
		model.addAttribute("paises", paises);

		return "actor/registro";
	}

	@PostMapping("/actor/form/")
	public String guardar(@Valid @ModelAttribute("actorNuevo") Actor actorNuevo, BindingResult br, Model model,
			@RequestParam(value = "fotoActor") MultipartFile file, RedirectAttributes redirectAttrs,
			SessionStatus status) {
		try {
			if (br.hasErrors()) {
				List<Pais> paises = paisService.getAllPais();
				model.addAttribute("paises", paises);
				model.addAttribute("actorNuevo", actorNuevo);
				return "actor/registro";
			}

			actorService.save(actorNuevo, file);
			status.setComplete();

		} catch (IOException e) {
			e.printStackTrace();
		}

		return "redirect:/actor/list";
	}

	@GetMapping("/actor/delete/{id}")
	public String deleteActor(@PathVariable("id") Integer id) {

		if (id > 0) {
			actorService.deleteActor(id);
		}

		return "redirect:/actor/list";

	}
}
