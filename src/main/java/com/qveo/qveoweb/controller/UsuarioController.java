package com.qveo.qveoweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.InitBinder;

import javax.validation.Valid;

import com.qveo.qveoweb.model.Usuario;
import com.qveo.qveoweb.service.PaisService;
import com.qveo.qveoweb.service.PlataformaService;
import com.qveo.qveoweb.service.UsuarioService;
import com.qveo.qveoweb.validation.UsuarioValidator;

import java.io.IOException;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;

	@Autowired
	private PaisService paisService;

	@Autowired
	private PlataformaService plataformaService;
	
	@Autowired
	private UsuarioValidator validador;
	
	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		binder.setValidator(validador);
	}

	@RequestMapping(value = "/admin/usuario/list", method = RequestMethod.GET)
	public String listarUsuarios(Model modelo) {

		modelo.addAttribute("titulo", "Lista de usuarios");
		modelo.addAttribute("usuarios", usuarioService.findAllUsuarios());

		return "usuario/lista";
	}

	@RequestMapping(value = "/usuario/form", method = RequestMethod.GET)
	public String mostrarFormulario(Model model) {
		
		model.addAttribute("titulo", "Registro de Usuario");
		model.addAttribute("nuevoUsuario", new Usuario());
		model.addAttribute("paises", paisService.getAllPais());
		model.addAttribute("plataformas", plataformaService.getAllPlataformas());

		return "usuario/registro";
	}

	@RequestMapping(value = "/usuario/form/add", method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("nuevoUsuario") Usuario usuario, BindingResult br,
			@RequestParam(value = "file") MultipartFile file, Model model) {
		try {
			if (br.hasErrors()) {
				model.addAttribute("nuevoUsuario", usuario);
				model.addAttribute("paises", paisService.getAllPais());
				model.addAttribute("plataformas", plataformaService.getAllPlataformas());

				return "usuario/registro";
			}
			
			usuarioService.saveUser(usuario,file);

		} catch (IOException e) {

			e.printStackTrace();
		}

		return "redirect:/home";
	}

	@RequestMapping(value = "/admin/usuario/edit/{id}", method = RequestMethod.GET)
	public String editUsuario(Model modelo, @PathVariable("id") Integer id, Model model) {

		Usuario usuario = usuarioService.getUsuario(id);
		model.addAttribute("paises", paisService.getAllPais());
		model.addAttribute("plataformas", plataformaService.getAllPlataformas());

		modelo.addAttribute("nuevoUsuario", usuario);
		modelo.addAttribute("edit", true);
		model.addAttribute("titulo", "Editar Usuario");
		
		return "usuario/registro";
	}

}
