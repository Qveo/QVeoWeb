package com.qveo.qveoweb.service.Imp;

import java.util.List;

import com.qveo.qveoweb.dao.RolDao;
import com.qveo.qveoweb.dao.UsuarioDao;
import com.qveo.qveoweb.model.Rol;
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

	@Override
	public List<Usuario> getAllUsuarios() {
		return usuarioDao.findAll();
	}
	
	@Transactional
	public boolean addUsuario(Usuario usuario) {
		
		Rol rol = rolDao.findById(1);
		
		usuario.setRol(rol);
		
		usuarioDao.save(usuario);
		
		return true;
	}

}