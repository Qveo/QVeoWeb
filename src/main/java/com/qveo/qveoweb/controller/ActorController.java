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
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.model.Pais;
import com.qveo.qveoweb.service.ActorService;
import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.PaisService;

@Controller
public class ActorController {

	boolean editar=false;
	@Autowired
	ActorService actorService;

	@Autowired
	PaisService paisService;
	
	@Autowired
	IUploadFileService uploadFileService;

	@GetMapping("/actor/list")
	public String listaActor(Model model) {
		List<Actor> actores = actorService.findAllActor();
		model.addAttribute("actores", actores);
		return "actor/lista";
	}

	@GetMapping("/actor/form")
	public String actorForm(Model model) {
		editar=false;
		List<Pais> paises = paisService.getAllPais();

		model.addAttribute("actorNuevo", new Actor());
		model.addAttribute("paises", paises);
		
		return "actor/registro";
	}
	
	@GetMapping("/actor/edit/{id}")
	public String editarActor(Model model, @PathVariable("id") Integer id) {
		editar=true;
		List<Pais> paises = paisService.getAllPais();
		Actor actor = actorService.getActor(id).get();

		model.addAttribute("editar", true);
		model.addAttribute("actorNuevo", actor);
		model.addAttribute("paises", paises);
		
		return "actor/registro";
	}

	@PostMapping("/actor/form/")
	public String guardar(@Valid @ModelAttribute("actorNuevo") Actor actorNuevo, BindingResult br, Model model,
			@RequestParam(value = "fotoActor") MultipartFile file, RedirectAttributes redirectAttrs,
			SessionStatus status) {

		if (br.hasErrors()) {
			List<Pais> paises = paisService.getAllPais();
			model.addAttribute("paises", paises);
			model.addAttribute("actorNuevo", actorNuevo);
			return "actor/registro";
		}
		
		if (!file.isEmpty()) {
			if (editar == true) {
				String rutaFoto = actorService.getActor(actorNuevo.getId()).get().getFoto();
				String ruta = rutaFoto.substring(rutaFoto.lastIndexOf('/') + 1);

				if (actorNuevo.getId() != null && actorNuevo.getId() > 0 && ruta != null && ruta.length() > 0) {

					uploadFileService.delete(ruta, 3);

				}
			}
			
			String uniqueFilename = null;
			try {
				uniqueFilename = uploadFileService.copy(file, 3, actorNuevo.getNombre());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			actorNuevo.setFoto("/resources/img/actores/" + uniqueFilename);
		}

		if (editar == true) {
			if (file.isEmpty()) {
				actorNuevo.setFoto(actorService.getActor(actorNuevo.getId()).get().getFoto());
			}
		}

		actorService.save(actorNuevo);
		status.setComplete();

		return "redirect:/actor/list";
	}
	@GetMapping("/actor/delete/{id}")
	public String deleteActor(@PathVariable("id") Integer id) {

		String rutaFoto = actorService.getActor(id).get().getFoto();
		String ruta = rutaFoto.substring(rutaFoto.lastIndexOf('/') + 1);
		actorService.deleteActor(id);
		uploadFileService.delete(ruta,3);
		
		return "redirect:/actor/list";

	}
}
