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
@RequestMapping("/plataformas")
public class PlataformaController {
	
	
Boolean editar = false;

	
	@Autowired
	private PlataformaValidador validador;
	
	
	@Autowired
	private UploadFileService uploadFileService;
	
	@Autowired
	private PlataformaService platService;
	
	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		binder.setValidator(validador);
	}
	
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String listado(Model mod) {

		mod.addAttribute("titulo", "Listado de plataformas");
		mod.addAttribute("plataformas", platService.findAll());

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
		editar = false;
		Plataforma plataforma = new Plataforma();
		mod.addAttribute("Title", "Registro de Plataforma");
		mod.addAttribute("plataformaNueva", plataforma);

		return "plataformas/registro";

	}

	@RequestMapping(value = "/form/{id}", method = RequestMethod.GET)
	public String editar(Model mod, @PathVariable(value = "id") Integer id) {
		editar = true;
		Plataforma plataforma = null;

		if (id > 0) {
			plataforma = platService.getPlataforma(id);
			if (plataforma == null) {

				return "redirect:/plataformas/listar";
			}
		} else {

			return "redirect:/plataformas/listar";
		}

		mod.addAttribute("edit", true);
		mod.addAttribute("Title", "Editar Plataforma");
		mod.addAttribute("plataformaNueva", plataforma);

		return "plataformas/registro";

	}

	@RequestMapping(value = "/form", method=RequestMethod.POST)
	public String guardar(@Valid @ModelAttribute("plataformaNueva") Plataforma plataforma, BindingResult br, Model mod,
			@RequestParam("retrato") MultipartFile foto, SessionStatus status) {
		

		try {
			if (br.hasErrors()) {
				
				System.out.println("HOLA");
				System.out.println(plataforma.getNombre());
				System.out.println(plataforma.getFoto());

				mod.addAttribute("titulo", "Formulario de Plataforma");
				return "plataformas/registro";

			}

			if (!foto.isEmpty()) {
				if (editar == true) {
					String rutaFoto = platService.getPlataforma(plataforma.getId()).getFoto();
					String ruta = rutaFoto.substring(rutaFoto.lastIndexOf('/') + 1);

					if (plataforma.getId() != null && plataforma.getId() > 0 && ruta != null && ruta.length() > 0) {
					

						uploadFileService.delete(ruta,4);
					}
				}

				String uniqueFilename = null;
				try {
					uniqueFilename = uploadFileService.copy(foto,5,plataforma.getNombre());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println(uniqueFilename);
				plataforma.setFoto("/resources/img/plataforma/" + uniqueFilename);
			}

			if (editar == true) {
				if (foto.isEmpty()) {
					plataforma.setFoto(platService.getPlataforma(plataforma.getId()).getFoto());
				}
			}
			
			if (foto.isEmpty()) {
				System.out.println(plataforma.getNombre());
				System.out.println(plataforma.getFoto());

				mod.addAttribute("titulo", "Formulario de Plataforma");
				mod.addAttribute("fotoerror", "Introduce una foto, por favor");
				return "plataformas/registro";
				
			}
			
			
			System.out.println(plataforma);

			platService.save(plataforma);
			status.setComplete();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}

		return "redirect:/plataformas/listar";

	}

	@RequestMapping(value = "/delete/{id}")
	public String eliminar(@PathVariable(value = "id") Integer id) {
		System.out.println(id);
		if (id > 0) {
			Plataforma plataforma = platService.getPlataforma(id);
			
			System.out.println(plataforma);
			
			String rutaFoto = plataforma.getFoto();
			System.out.println(rutaFoto);
			
			String ruta = rutaFoto.substring(rutaFoto.lastIndexOf('/') + 1);
			System.out.println(ruta);

			uploadFileService.delete(ruta,5);
			platService.delete(id);

		}

		return "redirect:/plataformas/listar";
	}

}


