package com.qveo.qveoweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.qveo.qveoweb.model.Usuario;
import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.UsuarioService;

@RestController
public class UsuarioAjaxController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@Autowired
	private IUploadFileService uploadFileService;
	
	@RequestMapping(value = "/ajax/usuario/{id}", method = RequestMethod.GET)
    public ResponseEntity<?> getSearchResultViaAjax(@PathVariable("id") Integer id) {

        Usuario usuario = usuarioService.findById(id);

        return ResponseEntity.ok(usuario);

    }
	
	@RequestMapping(value = "/ajax/usuario/delete/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> deleteUser(@PathVariable("id") Integer id) {
		
		Usuario usuario = usuarioService.findById(id);
		String rutaFoto = usuarioService.findById(id).getFoto();
		String ruta = rutaFoto.substring(rutaFoto.lastIndexOf('/') + 1);
		

		uploadFileService.delete(ruta, 6);
		usuarioService.deleteUser(id);


		return ResponseEntity.ok(usuario);

	}
	
	@RequestMapping(value = "/ajax/usuarios/", method = RequestMethod.POST)
	public ResponseEntity<?> getUsuariosPorNombre(@RequestBody Usuario usuario) {

		List<Usuario> usuarios = usuarioService.findUsuarioPorNombre(usuario.getNombre());

		return ResponseEntity.ok(usuarios);

	}

}
