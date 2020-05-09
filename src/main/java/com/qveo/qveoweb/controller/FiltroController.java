package com.qveo.qveoweb.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.GeneroService;
import com.qveo.qveoweb.service.SerieService;

@Controller
public class FiltroController {

	@Autowired
	SerieService serieService;

	@Autowired
	GeneroService generoService;

	@GetMapping("/filtro")
	public String buscador(Model model) {

		model.addAttribute("seriesBuscar", new Serie());

		List<Genero> generos = generoService.getAllGeneros();

		List<Serie> series = serieService.findAllSerie();

		List<Integer> fecha = serieService.buscarAllYears();

		model.addAttribute("fechas", fecha);
		model.addAttribute("serieMostrar", series);

		model.addAttribute("generos", generos);

		return "filtros/filtro";
	}

	@PostMapping("/filtros")
	public String filtrar(@ModelAttribute(name = "seriesBuscar") Serie serie,
			@RequestParam(name = "years", required = false) String[] dates, Model model, BindingResult br) {

		if (br.hasErrors()) {

			model.addAttribute("seriesBuscar", new Serie());

			List<Genero> generos = generoService.getAllGeneros();

			List<Serie> series = serieService.findAllSerie();

			List<Integer> fecha = serieService.buscarAllYears();

			model.addAttribute("fechas", fecha);
			model.addAttribute("serieMostrar", series);

			model.addAttribute("generos", generos);

			return "filtros/filtro";
		}

		if (serie.getGeneros().isEmpty() && dates != null) {
			List<Serie> series = serieService.buscarPorYear(dates);
			model.addAttribute("series", series);
			model.addAttribute("cartel", "Condicional years");

		} else if (!serie.getGeneros().isEmpty() && dates == null) {
			List<Serie> series = serieService.buscarSerie(serie.getGeneros());

			model.addAttribute("series", series);

			model.addAttribute("cartel", "Condicional  generos");

		} else if (!serie.getGeneros().isEmpty() && dates != null) {
			List<Serie> series = serieService.busquedaCompleta(dates, serie.getGeneros());

			model.addAttribute("series", series);

			model.addAttribute("cartel", "Condicional ambas");

		} else {

			return "redirect:/filtro";
		}

		return "filtros/filtrado";
	}

}
