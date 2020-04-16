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
@Transactional
public class UsuarioServiceImp implements UsuarioService {

    @Autowired
    UsuarioDao usuarioDao;
    
    @Autowired
    RolDao rolDao;
    
    @Autowired
    ListaDao listaDao;

	@Override
	public List<Usuario> findAllUsuarios() {
		return usuarioDao.findAll();
	}
	
	public void saveUser(Usuario usuario) {
		
		Rol rol = rolDao.findById(1);
		
		Lista lista = new Lista(usuario, new ArrayList<Pelicula>(), new ArrayList<Serie>());
		
		usuario.setLista(lista);
		
		usuario.setRol(rol);
		
		usuarioDao.save(usuario);
	}

	@Override
	public Usuario findById(Integer id) {
		
		Usuario entity = usuarioDao.findById(id).get();
		return entity;
	}

	@Override
	public void deleteUser(Integer id) {
		usuarioDao.deleteById(id);
		
	}

	@Override
	public void editUser(Usuario usuarioEditado) {
		Usuario entity = usuarioDao.findById(usuarioEditado.getId()).get();
		if(entity != null) {
			entity.setNombre(usuarioEditado.getNombre());
			entity.setApellidos(usuarioEditado.getApellidos());
			entity.setEmail(usuarioEditado.getEmail());
			entity.setPassword(usuarioEditado.getPassword());
			entity.setFoto(usuarioEditado.getFoto());
			entity.setFechaNacimiento(usuarioEditado.getFechaNacimiento());
			entity.setSexo(usuarioEditado.getSexo());
		}
		
	}


}