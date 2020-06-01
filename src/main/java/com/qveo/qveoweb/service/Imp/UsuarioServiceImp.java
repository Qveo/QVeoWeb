package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.qveo.qveoweb.dao.PeliculaDao;
import com.qveo.qveoweb.dao.RolDao;
import com.qveo.qveoweb.dao.SerieDao;
import com.qveo.qveoweb.dao.UsuarioDao;
import com.qveo.qveoweb.dto.AddToListDto;
import com.qveo.qveoweb.dto.AjaxResponseBody;
import com.qveo.qveoweb.dto.UsuarioResponseBody;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Rol;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.model.Usuario;
import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.PeliculaService;
import com.qveo.qveoweb.service.SerieService;
import com.qveo.qveoweb.service.UsuarioService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Service
@Transactional
public class UsuarioServiceImp implements UsuarioService {

    @Autowired
    UsuarioDao usuarioDao;

    @Autowired
    RolDao rolDao;
    
    @Autowired
	IUploadFileService uploadFileService;
    
    @Autowired
    SerieService serieService;
    
    @Autowired
    PeliculaService peliculaService;

    @Override
    public List<Usuario> findAllUsuarios() {
        return usuarioDao.findAll();
    }

    public void saveUser(Usuario usuario, MultipartFile foto) throws IOException {

        Rol rol = rolDao.findById(1);
        usuario.setRol(rol);
        
    	String fotoTemp;

		if (usuario.getId() != null) {
			fotoTemp = getUsuario(usuario.getId()).getFoto();
			
		} else {
			fotoTemp = "";
		}
        usuarioDao.save(usuario);

		if (!foto.isEmpty()) {
			try {
				String uniqueFilename = null;

				uniqueFilename = uploadFileService.copy(foto, 6, usuario.getId(), usuario.getNombre());
				usuario.setFoto("/resources/img/usuarios/" + uniqueFilename);
			} catch (IOException e) {
				e.printStackTrace();
			}

		} else if (foto.isEmpty()) {
			String uniqueFilename = null;
			uniqueFilename = uploadFileService.defaultFoto(6, fotoTemp);
			usuario.setFoto("/resources/img/usuarios/" + uniqueFilename);

		}

		usuarioDao.save(usuario);
    }

    @Override
    public Usuario getUsuario(Integer id) {
        return usuarioDao.findById(id).get();
    }

    @Override
    public void deleteUser(Integer id) {
        usuarioDao.deleteById(id);

    }

	@Override
	public List<Usuario> findUsuarioPorNombre(String nombre) {
		return usuarioDao.findByNombreStartingWith(nombre);
	}

	@Override
	public boolean usuarioExiste(Integer id) {
		return usuarioDao.existsById(id);
	}

	@Override
	public Usuario findUserByEmail(String email) {
		return usuarioDao.findByEmail(email);
	}

	@Override
	public AjaxResponseBody saveSerie(AddToListDto addResource) {
		Usuario usuario = getUsuario(addResource.getIdUser());
		List<Serie> series = new ArrayList<Serie>(usuario.getSeries());
		AjaxResponseBody result = new AjaxResponseBody();
		if(series.contains(serieService.getSerie(addResource.getIdResource()))) {
			series.remove(serieService.getSerie(addResource.getIdResource()));
			usuario.setSeries(series);
			result.setMsg("eliminado");
			result.setSeries(series);
			return result;
		}
		series.add(serieService.getSerie(addResource.getIdResource()));
		usuario.setSeries(series);
		result.setMsg("agregado");
		result.setSeries(series);
		return result;
	}

	@Override
	public AjaxResponseBody saveMovie(AddToListDto addResource) {
		Usuario usuario = getUsuario(addResource.getIdUser());
		List<Pelicula> peliculas = new ArrayList<Pelicula>(usuario.getPeliculas());
		AjaxResponseBody result = new AjaxResponseBody();
		if(peliculas.contains(peliculaService.getPelicula(addResource.getIdResource()))) {
			peliculas.remove(peliculaService.getPelicula(addResource.getIdResource()));
			usuario.setPeliculas(peliculas);
			result.setMsg("eliminado");
			result.setPeliculas(peliculas);
			return result;
		}
		peliculas.add(peliculaService.getPelicula(addResource.getIdResource()));
		usuario.setPeliculas(peliculas);
		result.setMsg("agregado");
		result.setPeliculas(peliculas);
		return result;
	}
	
	public UsuarioResponseBody userLogged(String email) {
		Usuario usuario = findUserByEmail(email);
		UsuarioResponseBody userLogged = new UsuarioResponseBody(
				usuario.getId(), 
				usuario.getEmail(), 
				usuario.getFoto(),
				usuario.getPeliculas(),
				usuario.getSeries());
		return userLogged;
	}

}
