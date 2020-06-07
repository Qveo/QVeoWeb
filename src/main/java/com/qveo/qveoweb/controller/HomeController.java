package com.qveo.qveoweb.controller;


import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.service.PlataformaService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    PlataformaService plataformaService;

    @GetMapping({"/", "/home"})
    public String home(Model model) {
        logger.debug("Executing home() method via Get");

        List<Plataforma> plataformas = plataformaService.findPlataformasHome();

        model.addAttribute("plataformas", plataformas);

        return "index";
    }

}
