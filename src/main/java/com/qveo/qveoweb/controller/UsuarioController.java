package com.qveo.qveoweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

import javax.validation.Valid;
import com.qveo.qveoweb.model.Usuario;
import com.qveo.qveoweb.service.UsuarioService;



@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;

	@RequestMapping(value="/usuario/list", method=RequestMethod.GET)
	public String listarUsuarios(Model modelo){

		List<Usuario> usuarios = usuarioService.findAllUsuarios();

		modelo.addAttribute("usuarios", usuarios);

		return "listaUsuarios";
	}

	@RequestMapping(value="/usuario/form", method=RequestMethod.GET)
	public String mostrarFormulario(Model modelo) {

		modelo.addAttribute("nuevoUsuario", new Usuario());

		return "registro";
	}

	@RequestMapping(value="/usuario/form/add",method=RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("nuevoUsuario") Usuario usuario,
			BindingResult br) {

		if(br.hasErrors()) return "registro";

		usuarioService.saveUser(usuario);

		return  "redirect:/usuario/list";
	}

	@RequestMapping(value="/usuario/edit/{id}", method=RequestMethod.GET)
	public String editUsuario(Model modelo, @PathVariable("id") Integer id) {

		Usuario usuario = usuarioService.findById(id);

		modelo.addAttribute("nuevoUsuario", usuario);
		modelo.addAttribute("edit", true);
		return "registro";	
	}

	@RequestMapping(value="/usuario/update/{id}", method=RequestMethod.POST)
	public String updateUsuario(@Valid @ModelAttribute("nuevoUsuario") Usuario usuario,
			BindingResult br, @PathVariable("id") Integer id) {

		if (br.hasErrors()) {
			return "registro";
		}
		
		usuarioService.editUser(usuario);

		return "redirect:/usuario/list";
	}

	@RequestMapping(value="/usuario/delete/{id}",method=RequestMethod.GET)
	public String deleteUser(@PathVariable("id") Integer id) {

		usuarioService.deleteUser(id);

		return "redirect:/usuario/list";

	}


}
