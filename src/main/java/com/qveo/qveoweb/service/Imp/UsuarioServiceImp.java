package com.qveo.qveoweb.service.Imp;

import java.util.ArrayList;
import java.util.List;

import com.qveo.qveoweb.dao.ListaDao;
import com.qveo.qveoweb.dao.RolDao;
import com.qveo.qveoweb.dao.UsuarioDao;
import com.qveo.qveoweb.model.Lista;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Rol;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.model.Usuario;
import com.qveo.qveoweb.service.UsuarioService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UsuarioServiceImp implements UsuarioService {

    @Autowired
    UsuarioDao usuarioDao;
    
    @Autowired
    RolDao rolDao;
    
    @Autowired
    ListaDao listaDao;

	@Override
	public List<Usuario> getAllUsuarios() {
		return usuarioDao.findAll();
	}
	
	@Transactional
	public boolean addUsuario(Usuario usuario) {
		
		Rol rol = rolDao.findById(1);
		
		Lista lista = new Lista(usuario, new ArrayList<Pelicula>(), new ArrayList<Serie>());
		
		//lista.setUsuario(usuario);
		
		usuario.setLista(lista);
		
		usuario.setRol(rol);
		
		usuarioDao.save(usuario);
		
		return true;
	}

}