package com.qveo.qveoweb.service.Imp;

import com.qveo.qveoweb.dao.PlataformaDao;
import com.qveo.qveoweb.dao.RolDao;
import com.qveo.qveoweb.dao.UsuarioDao;
import com.qveo.qveoweb.dto.ContrasenaDto;
import com.qveo.qveoweb.dto.PersonalInfoDto;
import com.qveo.qveoweb.dto.PlataformaDto;
import com.qveo.qveoweb.dto.UserDetailsDto;
import com.qveo.qveoweb.model.Rol;
import com.qveo.qveoweb.model.Usuario;
import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

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
    PlataformaDao plataformaDao;


    @Override
    public List<Usuario> findAllUsuarios() {
        return usuarioDao.findAll();
    }

    public Usuario saveUser(Usuario usuario, MultipartFile foto) throws IOException {

        Rol rol = rolDao.findById(1);
        usuario.setRol(rol);

        String fotoTemp;

        if (usuario.getId() != null) {
            fotoTemp = getUsuario(usuario.getId()).getFoto();

        } else {
            fotoTemp = "";
        }

        if (Objects.nonNull(foto) && !foto.isEmpty()) {
            try {
                String uniqueFilename = null;

                uniqueFilename = uploadFileService.copy(foto, 6, usuario.getId(), usuario.getNombre());
                usuario.setFoto("/resources/img/usuarios/" + uniqueFilename);
            } catch (IOException e) {
                e.printStackTrace();
            }

        } else if (Objects.nonNull(foto) && foto.isEmpty()) {
            String uniqueFilename = null;
            uniqueFilename = uploadFileService.defaultFoto(6, fotoTemp);
            usuario.setFoto("/resources/img/usuarios/" + uniqueFilename);

        }

        return usuarioDao.save(usuario);
    }

    @Override
    public Usuario getUsuario(Integer id) {
        return usuarioDao.findById(id).orElse(null);
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
    public PersonalInfoDto savePersonalInfo(PersonalInfoDto personalInfoDto, MultipartFile file) {
        Usuario usuario = getUsuario(personalInfoDto.getId());
        usuario.setNombre(personalInfoDto.getNombre());
        usuario.setApellidos(personalInfoDto.getApellidos());
        usuario.setEmail(personalInfoDto.getEmail());
        usuario.setSexo(personalInfoDto.getSexo());
        usuario.setFechaNacimiento(personalInfoDto.getFechaNacimiento());
        try {
            usuario = saveUser(usuario, file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return new PersonalInfoDto(usuario);
    }

    @Override
    public boolean validarContrasena(ContrasenaDto contrasenaDto) {
        Usuario usuario = getUsuario(contrasenaDto.getId());
        return usuario.getPassword().equals(contrasenaDto.getActual());
    }

    @Override
    public ContrasenaDto saveContrasena(ContrasenaDto contrasenaDto) {
        Usuario usuario = getUsuario(contrasenaDto.getId());
        usuario.setPassword(contrasenaDto.getNueva());
        try {
            usuario = saveUser(usuario, null);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return new ContrasenaDto(usuario);
    }

    @Override
    public PlataformaDto savePlataformas(PlataformaDto plataformaDto) {

        Usuario usuario = getUsuario(plataformaDto.getId());
        usuario.setPlataformas(plataformaDao.findByIdIn(plataformaDto.getPlataformas()));
        try {
            usuario = saveUser(usuario, null);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return new PlataformaDto(usuario);
    }

    @Override
    public Usuario getUsuarioLogueado() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        UserDetailsDto userPrincipal = authentication == null || !authentication.isAuthenticated() ?
                null : (UserDetailsDto) authentication.getPrincipal();
        return this.findUserByEmail(Objects.nonNull(userPrincipal) ? userPrincipal.getUsername() : null);
    }
}
