package com.qveo.qveoweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qveo.qveoweb.model.Usuario;

@Controller
@RequestMapping("/user")
public class RegistroController {
	
	@GetMapping("/new")
	public String mostrarFormulario(Model modelo) {
		
		Usuario usuario = new Usuario();
		
		modelo.addAttribute("nuevoUsuario", usuario);
		
		return "registro";
	}

}
