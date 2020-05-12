package com.qveo.qveoweb.validation;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.qveo.qveoweb.model.Pelicula;

@Component
public class PeliculaValidador implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Pelicula.class.isAssignableFrom(clazz);

	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub

		Pelicula pelicula = (Pelicula) target;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "titulo", "empty");

		if (pelicula.getDuracion() != null) {
			DateFormat format = new SimpleDateFormat("HH:mm:ss");
			String s = format.format(pelicula.getDuracion().getTime());
			System.out.println(s);

			if (!s.matches("[0-9]{2}[:][\\d]{2}[:][\\d]{2}")) {
				errors.rejectValue("duracion", "format");

			}
		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "duracion", "empty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "anio", "empty");

		if (pelicula.getAnio() != null) {
			DateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
			String fecha = format2.format(pelicula.getAnio());
			System.out.println(fecha);

			if (!fecha.matches("[\\d]{4}[-][\\d]{2}[-][\\d]{2}")) {
				errors.rejectValue("anio", "format");

			}
		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "guion", "empty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sinopsis", "empty");

		ValidationUtils.rejectIfEmpty(errors, "pais", "null");

		ValidationUtils.rejectIfEmpty(errors, "directores", "null");

		ValidationUtils.rejectIfEmpty(errors, "actores", "null");

		ValidationUtils.rejectIfEmpty(errors, "generos", "null");

		

	}

}
