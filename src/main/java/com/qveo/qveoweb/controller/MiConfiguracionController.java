package com.qveo.qveoweb.controller;

import com.qveo.qveoweb.dto.ContrasenaDto;
import com.qveo.qveoweb.dto.PersonalInfoDto;
import com.qveo.qveoweb.dto.PlataformaDto;
import com.qveo.qveoweb.model.Usuario;
import com.qveo.qveoweb.service.PlataformaService;
import com.qveo.qveoweb.service.UsuarioService;
import com.qveo.qveoweb.validation.ContrasenaDtoValidator;
import com.qveo.qveoweb.validation.PersonalnfoDtoValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;

@Controller
public class MiConfiguracionController {

    @Autowired
    UsuarioService usuarioService;

    @Autowired
    private PersonalnfoDtoValidator personalnfoDtoValidator;

    @Autowired
    private ContrasenaDtoValidator contrasenaDtoValidator;

    @Autowired
    private PlataformaService plataformaService;


    @RequestMapping(value = "/mi-configuracion")
    public String usuario(Model model) {
        Usuario usuario = usuarioService.getUsuarioLogueado();
        model.addAttribute("personalDto", new PersonalInfoDto(usuario));
        model.addAttribute("contrasenaDto", new ContrasenaDto(usuario));
        model.addAttribute("plataformaDto", new PlataformaDto(usuario));
        model.addAttribute("plataformas", plataformaService.getAllPlataformas());
        return "adminUsuario";
    }

    @RequestMapping(value = "/mi-configuracion/editar-personal", method = RequestMethod.POST)
    public String editarUsuario(@Valid @ModelAttribute("personalDto") PersonalInfoDto personalInfoDto,
                                @RequestParam(value = "file") MultipartFile file,
                                BindingResult bindingResult, Model model) {
        Usuario usuario = usuarioService.getUsuarioLogueado();
        personalnfoDtoValidator.validate(personalInfoDto, bindingResult);
        if (bindingResult.hasErrors()) {
            model.addAttribute("personalDto", personalInfoDto);
            model.addAttribute("contrasenaDto", new ContrasenaDto(usuario));
            model.addAttribute("plataformaDto", new PlataformaDto(usuario));
            model.addAttribute("plataformas", plataformaService.getAllPlataformas());
            return "adminUsuario";
        }

        personalInfoDto = usuarioService.savePersonalInfo(personalInfoDto, file);
        model.addAttribute("personalDto", personalInfoDto);
        model.addAttribute("contrasenaDto", new ContrasenaDto(usuario));
        model.addAttribute("plataformaDto", new PlataformaDto(usuario));
        model.addAttribute("plataformas", plataformaService.getAllPlataformas());
        return "adminUsuario";
    }

    @RequestMapping(value = "/mi-configuracion/editar-contrasena", method = RequestMethod.POST)
    public String editarContrasena(@Valid @ModelAttribute("contrasenaDto") ContrasenaDto contrasenaDto,
                                   BindingResult bindingResult, Model model) {
        contrasenaDtoValidator.validate(contrasenaDto, bindingResult);
        Usuario usuario = usuarioService.getUsuarioLogueado();
        if (bindingResult.hasErrors()) {
            model.addAttribute("contrasenaDto", contrasenaDto);
            model.addAttribute("personalDto", new PersonalInfoDto(usuario));
            model.addAttribute("plataformaDto", new PlataformaDto(usuario));
            model.addAttribute("plataformas", plataformaService.getAllPlataformas());
            return "adminUsuario";
        }

        contrasenaDto = usuarioService.saveContrasena(contrasenaDto);
        model.addAttribute("contrasenaDto", contrasenaDto);
        model.addAttribute("personalDto", new PersonalInfoDto(usuarioService.getUsuario(2)));
        model.addAttribute("plataformaDto", new PlataformaDto(usuarioService.getUsuario(2)));
        model.addAttribute("plataformas", plataformaService.getAllPlataformas());
        return "adminUsuario";
    }

    @RequestMapping(value = "/mi-configuracion/editar-plataformas", method = RequestMethod.POST)
    public String editarPlataformas(@ModelAttribute("plataformaDto") PlataformaDto plataformaDto, Model model) {
        Usuario usuario = usuarioService.getUsuarioLogueado();
        plataformaDto = usuarioService.savePlataformas(plataformaDto);

        model.addAttribute("plataformaDto", plataformaDto);
        model.addAttribute("personalDto", new PersonalInfoDto(usuario));
        model.addAttribute("contrasenaDto", new ContrasenaDto(usuario));
        model.addAttribute("plataformas", plataformaService.getAllPlataformas());
        return "adminUsuario";
    }
}
