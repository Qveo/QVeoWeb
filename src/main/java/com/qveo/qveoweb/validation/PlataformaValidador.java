package com.qveo.qveoweb.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.qveo.qveoweb.model.Plataforma;

@Component
public class PlataformaValidador implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Plataforma.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		
		
		Plataforma plataforma = (Plataforma)target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre", "error");
		
		
	}

}
