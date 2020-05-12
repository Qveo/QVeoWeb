package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dao.PeliculaDao;
import com.qveo.qveoweb.dao.PlataformaDao;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.service.PeliculaService;

@Service
public class PeliculaServiceImp implements PeliculaService {

	@Autowired
	PeliculaDao peliculaDao;
	
	@Autowired
    PlataformaDao plataformaDao;

	public static String directorioPelicula = "src/main/webapp/resources/img/";

	public String rutaguardar = "/resources/img/pelicula/";

	public String nombreFichero = "";

	@Override
	@Transactional(readOnly = true)
	public List<Pelicula> findAll() {
		// TODO Auto-generated method stub
		return (List<Pelicula>) peliculaDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Pelicula getPelicula(Integer id) {

		return peliculaDao.findById(id).orElse(null);
	}
	
//	 @Override
//	    public Map<Plataforma, List<Pelicula>> getPeliculaForCarousel() {
//	        List<Plataforma> plataformas = plataformaDao.findAll();
//
//	        List<Pelicula> peliculas = peliculaDao.findByPlataformasIn(plataformas);
//
//	        Map<Plataforma, List<Pelicula>> plataformaListMap = new HashMap<>();
//
//	        plataformas.forEach(plataforma ->{
//	            plataformaListMap.put(plataforma, peliculas.stream()
//	                    .filter(pelicula -> pelicula.getPlataformas().contains(plataforma))
//	                    .collect(Collectors.toList()));
//	        });
//
//	        return plataformaListMap;
//	    }

	@Override
	@Transactional
	public void save(Pelicula peliculaNew) throws IOException {

		peliculaDao.save(peliculaNew);

		// nombreFichero="";
	}
	

	@Override
	@Transactional
	public void delete(Integer id) {
		peliculaDao.deleteById(id);

	}

}