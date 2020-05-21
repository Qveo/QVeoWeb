package com.qveo.qveoweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.qveo.qveoweb.dto.ContenidoVisualDto;
import com.qveo.qveoweb.service.PeliculaService;
import com.qveo.qveoweb.service.SerieService;

@RestController
public class BuscarAjaxController {
	
	@Autowired
	private SerieService serieService;
	
	@Autowired
	private PeliculaService peliculaService;
	
	@RequestMapping(value = "/ajax/series", method = RequestMethod.GET)
	public ResponseEntity<?> todasSeries(){	
		ContenidoVisualDto contenidoVisual = new ContenidoVisualDto(serieService.findAllSerie(),peliculaService.findAll());
		return ResponseEntity.ok(contenidoVisual);
	}
}
