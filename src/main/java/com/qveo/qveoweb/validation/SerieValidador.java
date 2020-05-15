package com.qveo.qveoweb.validation;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.qveo.qveoweb.model.Serie;

@Component
public class SerieValidador implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Serie.class.isAssignableFrom(clazz);

	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub

		Serie serie = (Serie) target;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "titulo", "empty");
		System.out.println("Hola");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fechaInicio", "empty");

	

//		if (serie.getFechaInicio() != null) {
//			DateFormat format2 = new SimpleDateFormat("dd-MM-yyyy");
//			String fecha = format2.format(serie.getFechaInicio());
//			System.out.println(fecha);
//
//			if (!fecha.matches("[\\d]{2}[-][\\d]{2}[-][\\d]{4}")) {
//				throw new IllegalArgumentException("El formato no es correcto, introduce la f);
//
//			}
//		}
		

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sinopsis", "empty");

		ValidationUtils.rejectIfEmpty(errors, "pais", "null");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "capitulos", "empty");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "temporadas", "empty");

		ValidationUtils.rejectIfEmpty(errors, "directores", "null");

		//ValidationUtils.rejectIfEmpty(errors, "actores", "null");

		ValidationUtils.rejectIfEmpty(errors, "generos", "null");
		ValidationUtils.rejectIfEmpty(errors, "plataformas", "null");

		

	}

}
