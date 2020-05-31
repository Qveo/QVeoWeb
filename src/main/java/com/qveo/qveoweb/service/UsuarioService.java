package com.qveo.qveoweb.service;

import java.io.IOException;
import java.util.List;

import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dto.AddToListDto;
import com.qveo.qveoweb.dto.AjaxResponseBody;
import com.qveo.qveoweb.dto.UsuarioResponseBody;
import com.qveo.qveoweb.model.Usuario;

public interface UsuarioService {

	public List<Usuario> findAllUsuarios();
    public void saveUser(Usuario usuario, MultipartFile foto) throws IOException;
    public Usuario getUsuario(Integer id);
    public void deleteUser(Integer id);
    public List<Usuario> findUsuarioPorNombre(String nombre);
    public boolean usuarioExiste(Integer id);
    public Usuario findUserByEmail(String email);
    public AjaxResponseBody saveSerie(AddToListDto addResource);
    public AjaxResponseBody saveMovie(AddToListDto addResource);
    public UsuarioResponseBody userLogged(String email);
    
}