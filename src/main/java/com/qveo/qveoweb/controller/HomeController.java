package com.qveo.qveoweb.controller;


import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.PeliculaService;
import com.qveo.qveoweb.service.PlataformaService;
import com.qveo.qveoweb.service.SerieService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.stream.Stream;

@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    PlataformaService plataformaService;
    
    @Autowired
    PeliculaService peliculaServ;
    
    @Autowired
    SerieService serieServ;

    @GetMapping({"/", "/home"})
    public String home(Model model) {

        //logger.debug("Executing home() method via Get");

        List<Plataforma> plataformas = plataformaService.findAll();
//        List<Serie> series = serieServ.findAllSerie();
//        List<Pelicula> pelicula = peliculaServ.findAll();
//        
//        Stream<Object> combined = Stream.concat(series.stream(), pelicula.stream());

        model.addAttribute("plataformas", plataformas);

        return "index";
    }

}
