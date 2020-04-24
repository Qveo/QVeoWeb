package com.qveo.qveoweb.controller;

import java.io.IOException;
import java.util.Collection;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.validation.Valid;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.qveo.qveoweb.model.Director;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pais;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.DirectorService;
import com.qveo.qveoweb.service.GeneroService;
import com.qveo.qveoweb.service.PaisService;
import com.qveo.qveoweb.service.PlataformaService;
import com.qveo.qveoweb.service.SerieService;


@Controller
public class SerieController {
	
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
	
	@GetMapping("/serie/{id}")
	public String Serie(@PathVariable Integer id, Model model) {

		Serie series=serieService.getSerie(id).get();
				
		model.addAttribute("series", series);
	
		return "serie";
	}
	
	@GetMapping("/serie/list")
	public String listaSerie(Model model) {
		List<Serie> series= serieService.findAllSerie();
		model.addAttribute("series", series);
		return "listaSerie";
	}
	
	@GetMapping("/serie/form")
	public String SerieFormulario(Model model) {
		
		List<Genero> generos=generoService.getAllGenero();
		List<Pais> paises=paisService.getAllPais();
		List<Plataforma> plataformas=plataformaSerive.getAllPlataformas();
		List<Director> directores=directorService.getAllDirector();
		
		model.addAttribute("serieNueva",new Serie());
		model.addAttribute("paises", paises);
		model.addAttribute("generos", generos);
		model.addAttribute("plataformas", plataformas);
		model.addAttribute("directores", directores);
		
		return "registroSerie";
	}
	
	@PostMapping("/serie/form/add")
	public String addSerie(@Valid @ModelAttribute("serieNueva") Serie serieNew , BindingResult br , @RequestParam(value="posters") MultipartFile file) {
		try {
		
			if(br.hasErrors()) {
				System.out.println(br.getAllErrors());
				return "redirect:/serie/form";
			}
			String titulo=serieNew.getTitulo();
			
			serieService.save(serieNew);
			serieService.saveImg(file, titulo,false);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return "redirect:/serie/list";
	}
	
	@GetMapping("/serie/edit/{id}")
	public String editarSerie(Model model, @PathVariable("id") Integer id) {
		
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
	
		return "registroSerie";
	}
	
	
	@PostMapping("/serie/update/{id}")
	public String updateSerie(@Valid @ModelAttribute("serieNueva") Serie serieAct, BindingResult br ,@PathVariable("id") Integer id ,@RequestParam(value="posters") MultipartFile file) {
		
		if(br.hasErrors()) {
			System.out.println(br.getAllErrors());
			System.out.println("p");
			return "redirect:/serie/edit/{id}";
		}
		
		try {
		if(file.isEmpty()) {
			String extesion="";
			serieService.editarSerie(serieAct,false,extesion);
			System.out.println("Entras aqui si fiechero vacio");
		}else {
			System.out.println("Entras aqui si no esta vacio");
			String titulo=serieAct.getTitulo();
			String extesion=serieService.obtenerExtension(file);
			serieService.editarSerie(serieAct,true, extesion);
			serieService.saveImg(file, titulo,true);	
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//serieService.actImg(file, titulo);
		
		return "redirect:/serie/list";
	}
	@GetMapping("/serie/delete/{id}")
	public String deleteSerie(@PathVariable("id") Integer id) {
		
		serieService.deleteSerie(id);
		return "redirect:/serie/list";
	}
	
	
}
