package com.qveo.qveoweb.service;

import java.util.List;

import com.qveo.qveoweb.model.Usuario;

public interface UsuarioService {

    List<Usuario> getAllUsuarios();
    public boolean addUsuario(Usuario usuario);
}