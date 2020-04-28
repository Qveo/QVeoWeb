package com.qveo.qveoweb.service;

import java.util.List;

import com.qveo.qveoweb.model.Usuario;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;

public interface UsuarioService {

    List<Usuario> findAllUsuarios();
    public void saveUser(Usuario usuario);
    public Usuario findById(Integer id);
    public void editUser(Usuario usuario);
    public void deleteUser(Integer id);
    public void saveImg(MultipartFile file, Usuario usuario, boolean actFile) throws IOException;
}