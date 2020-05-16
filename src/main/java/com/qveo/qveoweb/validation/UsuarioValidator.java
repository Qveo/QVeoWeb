package com.qveo.qveoweb.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.qveo.qveoweb.model.Usuario;

@Component
public class UsuarioValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return Usuario.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		Usuario usuario = (Usuario)target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre", "empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "apellidos", "empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fechaNacimiento", "empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "empty");
		ValidationUtils.rejectIfEmpty(errors, "sexo", "null");
		ValidationUtils.rejectIfEmpty(errors, "pais", "null");
		ValidationUtils.rejectIfEmpty(errors, "plataformas", "null");
		
	}

}
