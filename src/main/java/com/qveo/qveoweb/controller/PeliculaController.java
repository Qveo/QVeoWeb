package com.qveo.qveoweb.controller;

import java.io.IOException;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.model.Director;
import com.qveo.qveoweb.model.Pais;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.service.ActorService;
import com.qveo.qveoweb.service.DirectorService;
import com.qveo.qveoweb.service.GeneroService;
import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.PaisService;
import com.qveo.qveoweb.service.PeliculaService;
import com.qveo.qveoweb.service.PlataformaService;

@Controller
@RequestMapping("/peliculas")
public class PeliculaController {
	
	Boolean editar = false;

	@Autowired
	PeliculaService peliculaService;

	@Autowired
	GeneroService generoService;

	@Autowired
	PaisService paisService;

	@Autowired
	ActorService actorServ;

	@Autowired
	PlataformaService plataformaSerive;

	@Autowired
	DirectorService directorService;

	@Autowired
	private IUploadFileService uploadFileService;

	@GetMapping("/list")
	public String listar(Model mod) {

		mod.addAttribute("titulo", "Listado de clientes");
		mod.addAttribute("peliculas", peliculaService.findAll());

		return "Peliculas/listar";
	}

	@GetMapping("/{id}")
	public String mostrar(Model mod, @PathVariable String id) {

		int idI = Integer.parseInt(id);

		Pelicula pelicula = peliculaService.getPelicula(idI);

		mod.addAttribute("peliculas", pelicula);
		mod.addAttribute("Titulo", "Datos de la pelicula");

		return "Peliculas/mostrar";
	}

	@RequestMapping("/form")
	public String crear(Model mod) {

		List<Genero> genero = generoService.getAllGenero();
		List<Pais> paises = paisService.getAllPais();
		List<Plataforma> plataformas = plataformaSerive.getAllPlataformas();
		List<Director> directores = directorService.getAllDirector();
		List<Actor> actores = actorServ.getAllActor();

		mod.addAttribute("Title", "Registro de pelicula");
		mod.addAttribute("peliculaNueva", new Pelicula());
		mod.addAttribute("directores", directores);
		mod.addAttribute("actores", actores);
		mod.addAttribute("paises", paises);
		mod.addAttribute("generos", genero);
		mod.addAttribute("plataformas", plataformas);

		return "Peliculas/registro";
	}

	@RequestMapping(value = "/form/{id}", method = RequestMethod.GET)
	public String editar(Model mod, @PathVariable(value = "id") Integer id) {

		Pelicula pelicula = null;
		editar=true;

		if (id > 0) {
			pelicula = peliculaService.getPelicula(id);
			if (pelicula == null) {

				return "redirect:/listar";
			}
		} else {

			return "redirect:/listar";
		}

		List<Genero> generos = generoService.getAllGenero();
		List<Pais> paises = paisService.getAllPais();
		List<Plataforma> plataformas = plataformaSerive.getAllPlataformas();
		List<Director> directores = directorService.getAllDirector();
		List<Actor> actores = actorServ.getAllActor();


		mod.addAttribute("edit", true);
		mod.addAttribute("directores", directores);
		mod.addAttribute("actores", actores);
		mod.addAttribute("paises", paises);
		mod.addAttribute("generos", generos);
		mod.addAttribute("plataformas", plataformas);
		mod.addAttribute("peliculaNueva", pelicula);

		mod.addAttribute("title", "Editar Pelicula");

		return "Peliculas/registro";
	}

	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public String guardar(@Valid @ModelAttribute("peliculaNueva") Pelicula pelicula, BindingResult br, Model mod,
			@RequestParam("foto") MultipartFile foto, SessionStatus status) {

		
		try {
			if (br.hasErrors()) {

				List<Genero> peliculas = generoService.getAllGenero();
				List<Pais> paises = paisService.getAllPais();
				List<Plataforma> plataformas = plataformaSerive.getAllPlataformas();
				List<Director> directores = directorService.getAllDirector();
				List<Actor> actores = actorServ.getAllActor();

				mod.addAttribute("Titulo", "Registro de pelicula");
				mod.addAttribute("directores", directores);
				mod.addAttribute("actores", actores);
				mod.addAttribute("paises", paises);
				mod.addAttribute("generos", peliculas);
				mod.addAttribute("plataformas", plataformas);
				mod.addAttribute("peliculaNueva", pelicula);
				return "Peliculas/registro";
			}
			
			System.out.println(pelicula.toString());

			if (!foto.isEmpty()) {
				
				if(editar == true) {	
					String rutaFoto = peliculaService.getPelicula(pelicula.getId()).getPoster();
					String ruta = rutaFoto.substring(rutaFoto.lastIndexOf('/') + 1);
					System.out.println(ruta);
				
				if (pelicula.getId() != null && pelicula.getId() > 0 && ruta != null
						&& ruta.length() > 0) {
					System.out.println("VIVA ESPAÑAAAAAAAAAAAAAAAAA");

					uploadFileService.delete(ruta);
				} 
				}

				String uniqueFilename = null; 
				try {
					uniqueFilename = uploadFileService.copy(foto);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println(uniqueFilename);
				pelicula.setPoster("/resources/img/peliculas/" + uniqueFilename);
			}
			peliculaService.save(pelicula);
			status.setComplete();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:listar";
	}

	@RequestMapping(value = "/eliminar/{id}")
	public String eliminar(@PathVariable(value = "id") Integer id) {

		if (id > 0) {

			Pelicula pelicula = peliculaService.getPelicula(id);

			uploadFileService.delete(pelicula.getPoster());

			peliculaService.delete(id);
		}
		return "redirect:listar";
	}

}
