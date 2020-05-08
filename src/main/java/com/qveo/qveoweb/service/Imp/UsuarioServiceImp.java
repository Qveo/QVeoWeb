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
@Transactional
public class UsuarioServiceImp implements UsuarioService {

    @Autowired
    UsuarioDao usuarioDao;

    @Autowired
    RolDao rolDao;

    @Override
    public List<Usuario> findAllUsuarios() {
        return usuarioDao.findAll();
    }

    public void saveUser(Usuario usuario) {

        Rol rol = rolDao.findById(1);
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
	public List<Usuario> findUsuarioPorNombre(String nombre) {
		
		List<Usuario> usuarios = usuarioDao.findByNombreStartingWith(nombre);
		
		return usuarios;
	}

	@Override
	public boolean usuarioExiste(Integer id) {
		
		return usuarioDao.existsById(id);
	}
    

}
