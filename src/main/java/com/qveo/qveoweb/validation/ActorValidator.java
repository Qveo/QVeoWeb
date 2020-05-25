package com.qveo.qveoweb.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.qveo.qveoweb.model.Actor;

@Component
public class ActorValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {

		return Actor.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {

		Actor actor = (Actor) target;

		ValidationUtils.rejectIfEmpty(errors, "nombre", "empty");

		ValidationUtils.rejectIfEmpty(errors, "sexo", "null");

		ValidationUtils.rejectIfEmpty(errors, "pais", "null");

	}

}
