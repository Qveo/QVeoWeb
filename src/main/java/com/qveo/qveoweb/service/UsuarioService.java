package com.qveo.qveoweb.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.model.Usuario;

public interface UsuarioService {

	List<Usuario> findAllUsuarios();
    public void saveUser(Usuario usuario, MultipartFile foto) throws IOException;
    public Usuario getUsuario(Integer id);
    public void deleteUser(Integer id);
    public List<Usuario> findUsuarioPorNombre(String nombre);
    public boolean usuarioExiste(Integer id);
}