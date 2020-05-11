package com.qveo.qveoweb.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.PeliculaPlataforma;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.GeneroService;
import com.qveo.qveoweb.service.PeliculaPlataformaService;
import com.qveo.qveoweb.service.PeliculaService;
import com.qveo.qveoweb.service.PlataformaService;
import com.qveo.qveoweb.service.SerieService;

@Controller
public class FiltroController {

	@Autowired
	SerieService serieService;

	@Autowired
	GeneroService generoService;

	@Autowired
	PeliculaService peliculaService;

	@Autowired
	PlataformaService plataformaSerice;

	@Autowired
	PeliculaPlataformaService peliPlataService;

	/*
	 * Get controller para series
	 */
	@GetMapping("/filtro1")
	public String buscadorSerie(Model model) {

		model.addAttribute("seriesBuscar", new Serie());

		List<Genero> generos = generoService.getAllGeneros();

		List<Plataforma> plataformas = plataformaSerice.getAllPlataformas();

		List<Serie> series = serieService.findAllSerie();

		List<Integer> fecha = serieService.buscarAllYears();

		model.addAttribute("fechas", fecha);
		model.addAttribute("plataformas", plataformas);
		model.addAttribute("serieMostrar", series);

		model.addAttribute("generos", generos);

		return "filtros/filtro";
	}

	/*
	 * Get controller para pelicula
	 */
	@GetMapping("/filtro2")
	public String buscadorPeli(Model model) {

		//model.addAttribute("peliculaBuscar", new Pelicula());
		//List<Genero> generos = generoService.getAllGeneros();
		//List<Integer> fecha = peliculaService.buscarAllYears();
		//model.addAttribute("fechas", fecha);

		//List<PeliculaPlataforma> peliculaPlataformas = peliPlataService.getAllPeliculasPlataformas();
		model.addAttribute("peliculaBuscar", new PeliculaPlataforma());
		
		List<Plataforma> plataformas = plataformaSerice.getAllPlataformas();

		model.addAttribute("plataformas", plataformas);

		//model.addAttribute("generos", generos);

		//List<Pelicula> peliculas = peliculaService.findAll();
		//model.addAttribute("peliculaMostrar", peliculas);

		return "filtros/filtro2";
	}

	
	/*
	 * Post controler para series
	 */
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

		/*if (serie.getGeneros().isEmpty() && dates != null) {
			
			model.addAttribute("cartel", "Condicional years");

		} else if (!serie.getGeneros().isEmpty() && dates == null) {

			model.addAttribute("cartel", "Condicional  generos");

		} else if (!serie.getGeneros().isEmpty() && dates != null) { // List<Serie>

			model.addAttribute("cartel", "Condicional ambas");

		} else {

			return "redirect:/filtro";
		}*/

		//----->Filtrar por genero 
		//List<Serie> series = serieService.buscarSerie(serie.getGeneros());
		
		//------->Filtrar por años
		//List<Serie> series = serieService.buscarPorYear(dates);
		
		//-------->Filtrar por plataforma
		List<Serie> series =serieService.buscarPlataforma(serie.getPlataformas());
		
		//-------->Filtrar por años y generos
		//List<Serie> series = serieService.busquedaGeneroYears(dates, serie.getGeneros());
		
		
		///--------->Filtrar por plataforma y genero
		//List<Serie> series =serieService.buscarGeneroPlataforma(serie.getPlataformas(), serie.getGeneros());
		
		///--------->Filtrar por plataforma y años
		//List<Serie> series =serieService.buscarPlataformaYears(serie.getPlataformas(), dates);
		
		///--------->Filtrar por plataforma y años
		//List<Serie> series =serieService.busquedaCompletaSerie(serie.getGeneros(), serie.getPlataformas(), dates);
		
		model.addAttribute("series", series);
	
		return "filtros/filtrado";
	}

	/*
	 * Post controler para series
	 */
	@PostMapping("/filtrosP")
	public String filtrar(@ModelAttribute(name = "peliculaBuscar") PeliculaPlataforma peliculaPlataforma, Model model) {
/*
		if (br.hasErrors()) {

			model.addAttribute("peliculaBuscar", new Pelicula());
			List<Genero> generos = generoService.getAllGeneros();
			List<Integer> fecha = peliculaService.buscarAllYears();
			model.addAttribute("fechas", fecha);

			List<Plataforma> plataformas = plataformaSerice.getAllPlataformas();

			model.addAttribute("plataformas", plataformas);
			model.addAttribute("generos", generos);

			List<Pelicula> peliculas = peliculaService.findAll();
			model.addAttribute("peliculaMostrar", peliculas);

			return "filtros/filtro";
		}
*/
		//System.out.println(pelicula.getPeliculaPlataformas().isEmpty());
		
		
		//--->Filtro de pelicula por genero
		//List<Pelicula>	peliculas=peliculaService.buscarPeliGenero(pelicula.getPeliculas());
		
		//--->Filtro de pelicula por genero
		//List<Pelicula> peliculas=peliculaService.buscarPeliYears(dates);
		
		//--->Filtro de pelicula por genero y años
		//List<Pelicula> peliculas=peliculaService.buscarPeliGeneroYears(pelicula.getPeliculas(), dates);
		
		//-------->Filtrar por plataforma
		//List<Pelicula> peliculas = peliculaService.buscarPeliPlataforma(pelicula.getPeliculaPlataformas());
		model.addAttribute("peliculas", peliculaPlataforma);

		return "filtros/filtradoP";
	}
}
