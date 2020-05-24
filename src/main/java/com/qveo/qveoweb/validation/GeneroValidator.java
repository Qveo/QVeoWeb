package com.qveo.qveoweb.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.qveo.qveoweb.model.Genero;

@Component
public class GeneroValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		
		return Genero.class.isAssignableFrom(clazz);				
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		Genero genero=(Genero) target;
		ValidationUtils.rejectIfEmpty(errors, "nombre", "empty");
	}

	
}
