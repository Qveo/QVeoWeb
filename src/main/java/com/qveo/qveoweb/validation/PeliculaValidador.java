package com.qveo.qveoweb.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.qveo.qveoweb.dto.PeliculaDto;

@Component
public class PeliculaValidador implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {

		return PeliculaDto.class.isAssignableFrom(clazz);

	}

	@Override
	public void validate(Object target, Errors errors) {

		PeliculaDto pelicula = (PeliculaDto) target;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "titulo", "empty");

		if (!pelicula.getDuracion().isEmpty()) {
			if (!pelicula.getDuracion().matches("[0-9]{2}[:][\\d]{2}[:][\\d]{2}")) {
				errors.rejectValue("duracion", "format");

			}
		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "duracion", "empty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "anio", "empty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "guion", "empty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sinopsis", "empty");

		ValidationUtils.rejectIfEmpty(errors, "pais", "null");

		ValidationUtils.rejectIfEmpty(errors, "directores", "null");

		ValidationUtils.rejectIfEmpty(errors, "actores", "null");

		ValidationUtils.rejectIfEmpty(errors, "generos", "null");

		ValidationUtils.rejectIfEmpty(errors, "plataformas", "null");

	}

}
