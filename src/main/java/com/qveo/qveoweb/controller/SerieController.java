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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qveo.qveoweb.model.Director;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pais;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.DirectorService;
import com.qveo.qveoweb.service.GeneroService;
import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.PaisService;
import com.qveo.qveoweb.service.PlataformaService;
import com.qveo.qveoweb.service.SerieService;


@Controller
public class SerieController {
	Boolean editar = false;
	
	@Autowired
	SerieService serieService;
	
	@Autowired
	GeneroService generoService;
	
	@Autowired
	PaisService paisService;
	
	@Autowired
	PlataformaService plataformaSerive;
	
	@Autowired
	DirectorService directorService;
	
	@Autowired
	IUploadFileService uploadFileService;
	
	@GetMapping("/serie/{id}")
	public String Serie(@PathVariable Integer id, Model model) {

		Serie series=serieService.getSerie(id).get();
				
		model.addAttribute("series", series);
	
		return "series/serie";
	}
	
	@GetMapping("/serie/listar")
	public String listaSerie(Model model) {
		List<Serie> series= serieService.findAllSerie();
		model.addAttribute("series", series);
		return "series/listaSerie";
	}
	
	@GetMapping("/serie/form")
	public String SerieFormulario(Model model) {
		editar=false;
		List<Genero> generos=generoService.getAllGenero();
		List<Pais> paises=paisService.getAllPais();
		List<Plataforma> plataformas=plataformaSerive.getAllPlataformas();
		List<Director> directores=directorService.getAllDirector();
		
		model.addAttribute("serieNueva",new Serie());
		model.addAttribute("paises", paises);
		model.addAttribute("generos", generos);
		model.addAttribute("plataformas", plataformas);
		model.addAttribute("directores", directores);
		
		return "series/registroSerie";
	}
	
	@GetMapping("/serie/edit/{id}")
	public String editarSerie(Model model, @PathVariable("id") Integer id) {
		editar=true;		
		List<Genero> generos=generoService.getAllGenero();
		List<Pais> paises=paisService.getAllPais();
		List<Plataforma> plataformas=plataformaSerive.getAllPlataformas();
		List<Director> directores=directorService.getAllDirector();	
		Serie serieEditar=serieService.getSerie(id).get();
		
		model.addAttribute("editar", true);
		model.addAttribute("serieNueva", serieEditar);
		model.addAttribute("paises", paises);
		model.addAttribute("generos", generos);
		model.addAttribute("plataformas", plataformas);
		model.addAttribute("directores", directores);
	
		return "series/registroSerie";
	}
	
	@PostMapping("/serie/form")
	public String guardar(@Valid @ModelAttribute("serieNueva") Serie serieNueva, BindingResult br ,Model model,
			@RequestParam("posters") MultipartFile file, RedirectAttributes redirectAttrs,SessionStatus status) {
		
		if(br.hasErrors()) {
			
			List<Genero> generos=generoService.getAllGenero();
			List<Pais> paises=paisService.getAllPais();
			List<Plataforma> plataformas=plataformaSerive.getAllPlataformas();
			List<Director> directores=directorService.getAllDirector();	
			
			model.addAttribute("editar", true);
			model.addAttribute("serieNueva", serieNueva);
			model.addAttribute("paises", paises);
			model.addAttribute("generos", generos);
			model.addAttribute("plataformas", plataformas);
			model.addAttribute("directores", directores);
		
			return "series/registroSerie";
		}
		
		if(!file.isEmpty()) {
			if(editar==true) {
				String rutaFoto = serieService.getSerie(serieNueva.getId()).get().getPoster();
				String ruta = rutaFoto.substring(rutaFoto.lastIndexOf('/') + 1);

				if (serieNueva.getId() != null && serieNueva.getId() > 0 && ruta != null && ruta.length() > 0) {

					uploadFileService.delete(ruta, 1);

				}
			}
			
			String uniqueFilename = null; 
			
			try {
				uniqueFilename = uploadFileService.copy(file,1,serieNueva.getTitulo());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			serieNueva.setPoster("/resources/img/series/" +uniqueFilename);
			
		}
		
		if(file.isEmpty() && editar==true) {
				serieNueva.setPoster(serieService.getSerie(serieNueva.getId()).get().getPoster());
		}
		
		serieService.save(serieNueva);
		status.setComplete();
		
		return "redirect:/serie/listar";
	}
	
	@GetMapping("/serie/delete/{id}")
	public String deleteSerie(@PathVariable("id") Integer id) {
		
		serieService.deleteSerie(id);
		return "redirect:/serie/listar";
	}
	
	
}
