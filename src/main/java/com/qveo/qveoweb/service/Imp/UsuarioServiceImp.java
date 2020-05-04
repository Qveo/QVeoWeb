package com.qveo.qveoweb.service.Imp;

import java.util.ArrayList;
import java.util.List;

import com.qveo.qveoweb.dao.RolDao;
import com.qveo.qveoweb.dao.UsuarioDao;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Rol;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.model.Usuario;
import com.qveo.qveoweb.service.UsuarioService;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.apache.commons.io.FilenameUtils;

import org.springframework.beans.factory.annotation.Autowired;
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

    private final String rutaGuardar = "src/main/webapp/resources/img/";

    private final String rutaUsuario = "/resources/img/";
    
    private String extension="";
    
    private String nombreImg="";
    

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
    public void editUser(Usuario usuarioEditado) {
        Usuario entity = usuarioDao.findById(usuarioEditado.getId()).get();
        if (entity != null) {
            entity.setNombre(usuarioEditado.getNombre());
            entity.setApellidos(usuarioEditado.getApellidos());
            entity.setEmail(usuarioEditado.getEmail());
            if(usuarioEditado.getPassword() != null) entity.setPassword(usuarioEditado.getPassword());
            if(usuarioEditado.getFoto()!= null) entity.setFoto(usuarioEditado.getFoto());
            entity.setFechaNacimiento(usuarioEditado.getFechaNacimiento());
            entity.setSexo(usuarioEditado.getSexo());
        }

    }

    @Override
    public void saveImg(MultipartFile file, Usuario usuario, boolean actFile) throws IOException {
        try {
            byte[] bytes = file.getBytes();

            extension = FilenameUtils.getExtension(file.getOriginalFilename());
            
            nombreImg = usuario.getNombre().trim().toLowerCase().replaceAll("\\s+", "_") + "." + extension;
            
            String rutaFinal = rutaGuardar + nombreImg;
            
            usuario.setFoto(rutaUsuario+nombreImg);

            if (!actFile) {
                Path path = Paths.get(rutaFinal);

                Files.write(path, bytes);
            } else {

                /*Elimina y luego la crea
				 * 
				 * crea de nuevo*/
                Path path = Paths.get(rutaFinal);

                Files.write(path, bytes);
            }

        } catch (NoSuchFieldError e) {
            System.err.println("Error de ficheros ---------------------------------");
            e.printStackTrace();
        }
    }
    

}
