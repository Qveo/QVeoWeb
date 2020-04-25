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
	public Optional<Pelicula> getPelicula(Integer id) {

		return peliculaDao.findById(id);
	}

	@Override
	@Transactional
	public void save(Pelicula peliculaNew) throws IOException {

		peliculaDao.save(peliculaNew);

		// nombreFichero="";
	}
	
	@Override
	public void saveImg(MultipartFile file, String titulo,boolean ActFile) throws IOException {
		try {
			byte[] bytes = file.getBytes();

			String extension = obtenerExtension(file);

			String fichero = directorioPelicula + titulo.trim().toLowerCase().replaceAll("\\s+", "_") + "." + extension;

			if(ActFile == false) {
			Path path = Paths.get(fichero);

			Files.write(path, bytes);
			}else {
				
				/*Elimina y luego la crea
				 * 
				 * crea de nuevo*/
				 Path path = Paths.get(fichero);

				Files.write(path, bytes);
			}
			
		} catch (NoSuchFieldError e) {
			System.err.println("Error de ficheros ---------------------------------");
			e.printStackTrace();
		}
	}
	
	public String obtenerExtension(MultipartFile file) {
		return file.getOriginalFilename().split("\\.")[1];
		
	}


	@Override
	@Transactional
	public void delete(Integer id) {
		peliculaDao.deleteById(id);

	}

}