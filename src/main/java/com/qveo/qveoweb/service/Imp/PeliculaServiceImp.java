package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dao.PeliculaDao;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.service.PeliculaService;

@Service
public class PeliculaServiceImp implements PeliculaService {

	@Autowired
	PeliculaDao peliculaDao;

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