package com.qveo.qveoweb.validation;

import com.qveo.qveoweb.dto.ContrasenaDto;
import com.qveo.qveoweb.dto.PersonalInfoDto;
import com.qveo.qveoweb.model.Usuario;
import com.qveo.qveoweb.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class ContrasenaDtoValidator implements Validator {

    @Autowired
    UsuarioService usuarioService;
    @Override
    public boolean supports(Class<?> clazz) {
        return ContrasenaDto.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {

        ContrasenaDto contrasenaDto = (ContrasenaDto)target;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "actual", "miConfiguracion.personal.actual.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nueva", "miConfiguracion.personal.nueva.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmar", "miConfiguracion.personal.confirmar.empty");

        if(!usuarioService.validarContrasena(contrasenaDto))
            errors.rejectValue("actual", "miConfiguracion.personal.actual.error" );
        if (!contrasenaDto.getNueva().equals(contrasenaDto.getConfirmar()))
            errors.rejectValue("confirmar", "miConfiguracion.personal.confirmar.error");
        else if(contrasenaDto.getNueva().equals(contrasenaDto.getActual()))
            errors.rejectValue("nueva", "miConfiguracion.personal.nueva.error");
    }

}
