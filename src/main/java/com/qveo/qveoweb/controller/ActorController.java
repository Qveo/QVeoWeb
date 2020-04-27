package com.qveo.qveoweb.controller;

import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.model.Pais;
import com.qveo.qveoweb.service.ActorService;
import com.qveo.qveoweb.service.PaisService;

@Controller
public class ActorController {

	@Autowired
	ActorService actorService;

	@Autowired
	PaisService paisService;

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

	@PostMapping("/actor/form/add")
	public String addActor(@Valid @ModelAttribute("actorNuevo") Actor actorNuevo, BindingResult br,
			@RequestParam(value = "fotoActor") MultipartFile file) throws IOException {
		if (br.hasErrors()) {
			return "actor/registro";
		}

		actorService.save(actorNuevo);
		actorService.saveImg(file, actorNuevo.getNombre());

		return "redirect:/actor/list";
	}

	@GetMapping("/actor/edit/{id}")
	public String editarActor(Model model, @PathVariable("id") Integer id) {
		List<Pais> paises = paisService.getAllPais();
		Actor actor = actorService.getActor(id).get();

		model.addAttribute("editar", true);
		model.addAttribute("actorNuevo", actor);
		model.addAttribute("paises", paises);
		
		return "actor/registro";
	}

	@PostMapping("/actor/update/{id}")
	public String updateActor(@Valid @ModelAttribute("actorNuevo") Actor actorAct, BindingResult br, Model model) {
		if (br.hasErrors()) {
			
			List<Pais> paises = paisService.getAllPais();
		
			model.addAttribute("editar", true);
			model.addAttribute("paises", paises);
						
			return "actor/registro";
		}

		actorService.editarActor(actorAct);
		
		return "redirect:/actor/list";
	}

	@GetMapping("/actor/delete/{id}")
	public String deleteActor(@PathVariable("id") Integer id) {

		actorService.deleteActor(id);
		
		return "redirect:/actor/list";

	}
}
