package com.qveo.qveoweb.validation;

import com.qveo.qveoweb.dto.PersonalInfoDto;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class PersonalnfoDtoValidator implements Validator {

    @Override
    public boolean supports(Class<?> clazz) {
        return PersonalInfoDto.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre", "miConfiguracion.personal.nombre.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "apellidos", "miConfiguracion.personal.apellidos.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "miConfiguracion.personal.email.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fechaNacimiento", "miConfiguracion.personal.fechaNacimiento.empty");
        ValidationUtils.rejectIfEmpty(errors, "sexo", "miConfiguracion.personal.sexo.empty");
    }

}
