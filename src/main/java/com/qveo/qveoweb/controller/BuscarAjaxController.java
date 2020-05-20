package com.qveo.qveoweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.SerieService;

@RestController
public class BuscarAjaxController {
	
	@Autowired
	private SerieService serieService;
	
	@RequestMapping(value = "/ajax/series", method = RequestMethod.GET)
	public ResponseEntity<?> todasSeries(){
		
		List<Serie> series = serieService.findAllSerie();
		
		return ResponseEntity.ok(series);
	}
}
