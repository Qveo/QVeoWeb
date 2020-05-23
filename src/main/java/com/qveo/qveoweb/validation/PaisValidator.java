package com.qveo.qveoweb.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.qveo.qveoweb.model.Pais;

@Component
public class PaisValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
	
		return Pais.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
	
		
	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre", "empty");
		
	}

}
