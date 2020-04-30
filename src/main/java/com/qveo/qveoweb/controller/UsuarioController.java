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

import com.qveo.qveoweb.model.Pais;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Usuario;
import com.qveo.qveoweb.service.PaisService;
import com.qveo.qveoweb.service.PlataformaService;
import com.qveo.qveoweb.service.UsuarioService;
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

	@RequestMapping(value="/usuario/list", method=RequestMethod.GET)
	public String listarUsuarios(Model modelo){

		List<Usuario> usuarios = usuarioService.findAllUsuarios();

		modelo.addAttribute("usuarios", usuarios);

		return "usuario/listaUsuarios";
	}

	@RequestMapping(value="/usuario/form", method=RequestMethod.GET)
	public String mostrarFormulario(Model modelo) {

		modelo.addAttribute("nuevoUsuario", new Usuario());
		
		List<Pais> paises = paisService.getAllPais();
		modelo.addAttribute("paises", paises);
		
		List<Plataforma> plataformas = plataformaService.getAllPlataformas();
		modelo.addAttribute("plataformas", plataformas);

		return "usuario/registro";
	}

	@RequestMapping(value="/usuario/form/add", method=RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("nuevoUsuario") Usuario usuario,
			BindingResult br, @RequestParam(value="file") MultipartFile file){
            try {
               if(br.hasErrors()) {
            	   System.out.println(br.getAllErrors());
            	   return "usuario/registro";
               }
             
               usuarioService.saveUser(usuario);
               usuarioService.saveImg(file, usuario ,false);
               
            
            } catch (IOException e) {
                
                e.printStackTrace();
            }
		
		return  "redirect:/usuario/list";
	}

	@RequestMapping(value="/usuario/edit/{id}", method=RequestMethod.GET)
	public String editUsuario(Model modelo, @PathVariable("id") Integer id) {

		Usuario usuario = usuarioService.findById(id);

		modelo.addAttribute("nuevoUsuario", usuario);
		modelo.addAttribute("edit", true);
		return "usuario/registro";
	}

	@RequestMapping(value="/usuario/update/{id}", method=RequestMethod.POST)
	public String updateUsuario(@Valid @ModelAttribute("nuevoUsuario") Usuario usuario,
			BindingResult br, @PathVariable("id") Integer id) {

		if (br.hasErrors()) {
			return "usuario/registro";
		}
		
        //usuarioService.saveUser(usuario);
		usuarioService.editUser(usuario);

		return "redirect:/usuario/list";
	}

	@RequestMapping(value="/usuario/delete/{id}",method=RequestMethod.GET)
	public String deleteUser(@PathVariable("id") Integer id) {

		usuarioService.deleteUser(id);

		return "redirect:/usuario/list";

	}

}
