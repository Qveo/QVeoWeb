package com.qveo.qveoweb.service;

import java.util.List;

import com.qveo.qveoweb.model.Usuario;

public interface UsuarioService {

    List<Usuario> findAllUsuarios();
    public void saveUser(Usuario usuario);
    public Usuario findById(Integer id);
    public void editUser(Usuario usuario);
	public void deleteUser(Integer id);
}