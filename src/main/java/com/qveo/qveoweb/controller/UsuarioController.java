package com.qveo.qveoweb.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

import com.qveo.qveoweb.model.Lista;
import com.qveo.qveoweb.model.Usuario;
import com.qveo.qveoweb.service.ListaService;
import com.qveo.qveoweb.service.UsuarioService;



@Controller
public class UsuarioController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping("/usuario/list")
	public String listarUsuarios(Model modelo){

		List<Usuario> usuarios = usuarioService.getAllUsuarios();

		modelo.addAttribute("usuarios", usuarios);

		return "listaUsuarios";
	}
	
	@RequestMapping("/usuario/form")
	public String mostrarFormulario(Model modelo) {
		
		Usuario usuario = new Usuario();
		
		modelo.addAttribute("nuevoUsuario", usuario);
		
		return "registro";
	}
	
	@RequestMapping(value="/usuario/form/add",method=RequestMethod.POST)
	public String addUser(@ModelAttribute("nuevoUsuario") Usuario usuario) {

	
		usuarioService.addUsuario(usuario);
		
		return  "redirect:/usuario/list";
	}
	

}
