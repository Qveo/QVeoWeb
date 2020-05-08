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
import com.qveo.qveoweb.service.UploadFileService;
import com.qveo.qveoweb.validation.DirectorValidador;

@Controller
@RequestMapping("/directores")
public class DirectorController {

	Boolean editar = false;

	@Autowired
	private DirectorValidador validador;
	
	@Autowired
	UploadFileService uploadFileService;
	
	@Autowired
	DirectorService dirService;
	
	
	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		binder.setValidator(validador);
	}
	

	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String listado(Model mod) {

		mod.addAttribute("titulo", "Listado de directores");
		mod.addAttribute("directores", dirService.findAll());

		return "directores/listar";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String mostrar(Model mod, @PathVariable String id) {

		int idI = Integer.parseInt(id);

		Director director = dirService.getDirector(idI);

		mod.addAttribute("director", director);
		mod.addAttribute("Titulo", "Datos del director");

		return "directores/mostrar";

	}

	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String crear(Model mod) {
		editar = false;
		Director director = new Director();
		mod.addAttribute("Title", "Registro de director");
		mod.addAttribute("directorNuevo", director);

		return "directores/registro";

	}

	@RequestMapping(value = "/form/{id}", method = RequestMethod.GET)
	public String editar(Model mod, @PathVariable(value = "id") Integer id) {
		editar = true;
		Director director = null;

		if (id > 0) {
			director = dirService.getDirector(id);
			if (director == null) {

				return "redirect:/directores/listar";
			}
		} else {

			return "redirect:/directores/listar";
		}

		mod.addAttribute("edit", true);
		mod.addAttribute("Title", "Editar director");
		mod.addAttribute("directorNuevo", director);

		return "directores/registro";

	}

	@RequestMapping(value = "/form", method=RequestMethod.POST)
	public String guardar(@Valid @ModelAttribute("directorNuevo") Director director, BindingResult br, Model mod,
			@RequestParam("retrato") MultipartFile foto, SessionStatus status) {

		try {
			if (br.hasErrors()) {
				
				System.out.println("HOLA");
				System.out.println(director.getNombre());
				System.out.println(director.getFoto());

				mod.addAttribute("titulo", "Formulario de Director");
				return "directores/registro";

			}

			if (!foto.isEmpty()) {
				if (editar == true) {
					String rutaFoto = dirService.getDirector(director.getId()).getFoto();
					String ruta = rutaFoto.substring(rutaFoto.lastIndexOf('/') + 1);

					if (director.getId() != null && director.getId() > 0 && ruta != null && ruta.length() > 0) {
					

						uploadFileService.delete(ruta,4);
					}
				}

				String uniqueFilename = null;
				try {
					uniqueFilename = uploadFileService.copy(foto,4,director.getNombre());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println(uniqueFilename);
				director.setFoto("/resources/img/directores/" + uniqueFilename);
			}

			if (editar == true) {
				if (foto.isEmpty()) {
					director.setFoto(dirService.getDirector(director.getId()).getFoto());
				}
			}
			
			if (foto.isEmpty()) {
				System.out.println(director.getNombre());
				System.out.println(director.getFoto());

				mod.addAttribute("titulo", "Formulario del director");
				mod.addAttribute("fotoerror", "Introduce una foto, por favor");
				return "directores/registro";
				
			}
			System.out.println(director);

			dirService.save(director);
			status.setComplete();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}

		return "redirect:/directores/listar";

	}

	@RequestMapping(value = "/delete/{id}")
	public String eliminar(@PathVariable(value = "id") Integer id) {
		if (id > 0) {
			Director director = dirService.getDirector(id);
			
			String rutaFoto = director.getFoto();
			System.out.println(rutaFoto);
			
			String ruta = rutaFoto.substring(rutaFoto.lastIndexOf('/') + 1);

			uploadFileService.delete(ruta,4);
			dirService.delete(id);

		}

		return "redirect:/directores/listar";
	}

}
