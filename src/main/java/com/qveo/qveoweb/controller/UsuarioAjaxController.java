package com.qveo.qveoweb.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.qveo.qveoweb.dto.AddToListDto;
import com.qveo.qveoweb.dto.AjaxResponseBody;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.model.Usuario;
import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.PeliculaService;
import com.qveo.qveoweb.service.SerieService;
import com.qveo.qveoweb.service.UsuarioService;

@RestController
public class UsuarioAjaxController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@Autowired
	private IUploadFileService uploadFileService;
	
	@Autowired
	private SerieService serieService;
	
	@Autowired
	private PeliculaService peliculaService;
	
	@RequestMapping(value = "/ajax/usuario/{id}", method = RequestMethod.GET)
    public ResponseEntity<?> getSearchResultViaAjax(@PathVariable("id") Integer id) {

        Usuario usuario = usuarioService.getUsuario(id);

        return ResponseEntity.ok(usuario);

    }
	
	@RequestMapping(value = "/ajax/usuario/delete/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> deleteUser(@PathVariable("id") Integer id) {
		
		Usuario usuario = usuarioService.getUsuario(id);
		String rutaFoto = usuarioService.getUsuario(id).getFoto();
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
	
	@RequestMapping(value = "/ajax/add/serie", method = RequestMethod.POST)
	@Transactional
	public ResponseEntity<?> addSerieToUserList(@RequestBody AddToListDto addResource){
		return ResponseEntity.ok(usuarioService.saveSerie(addResource));
	}
	
	@RequestMapping(value = "/ajax/add/movie", method = RequestMethod.POST)
	@Transactional
	public ResponseEntity<?> addMovieToUserList(@RequestBody AddToListDto addResource){
		return ResponseEntity.ok(usuarioService.saveMovie(addResource));
	}

}
