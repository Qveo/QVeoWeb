package com.qveo.qveoweb.service.Imp;

import com.qveo.qveoweb.dao.PeliculaDao;
import com.qveo.qveoweb.dao.PlataformaDao;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.service.PeliculaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class PeliculaServiceImpl implements PeliculaService {

    @Autowired
    PeliculaDao peliculaDao;

    @Autowired
    PlataformaDao plataformaDao;

    @Override
    public Map<Plataforma, List<Pelicula>> getPeliculaForCarousel() {
        List<Plataforma> plataformas = plataformaDao.findAll();

        List<Pelicula> peliculas = peliculaDao.findByPlataformasIn(plataformas);

        Map<Plataforma, List<Pelicula>> plataformaListMap = new HashMap<>();

        plataformas.forEach(plataforma ->{
            plataformaListMap.put(plataforma, peliculas.stream()
                    .filter(pelicula -> pelicula.getPlataformas().contains(plataforma))
                    .collect(Collectors.toList()));
        });

        return plataformaListMap;
    }
}
