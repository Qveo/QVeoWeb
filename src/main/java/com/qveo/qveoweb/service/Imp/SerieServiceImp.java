package com.qveo.qveoweb.service.Imp;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.StandardOpenOption;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dao.SerieDao;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.SerieService;

@Service
public class SerieServiceImp implements SerieService {

	@Autowired
	SerieDao serieDao;

	public static String directorioSerie = "src/main/webapp/resources/img/series/";

	public String rutaguardar = "/resources/img/series/";

	public String nombreFichero = "";
	
	@Override
	public List<Serie> findAllSerie() {
		// TODO Auto-generated method stub
		return serieDao.findAll();
	}

	@Override
	public Optional<Serie> getSerie(Integer id) {

		return serieDao.findById(id);
	}

	@Override
	public void save(Serie serieNew) {

		nombreFichero = rutaguardar + serieNew.getTitulo().trim().toLowerCase().replaceAll("\\s+", "_");

		serieNew.setPoster(nombreFichero);

		serieDao.save(serieNew);

		nombreFichero = "";
	}

	@Override
	public void saveImg(MultipartFile file, String titulo,boolean ActFile) throws IOException {
		try {
			byte[] bytes = file.getBytes();

			String extension = obtenerExtension(file);

			String fichero = directorioSerie + titulo.trim().toLowerCase().replaceAll("\\s+", "_") + "." + extension;

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

	@Override
	public void editarSerie(Serie serieAct, boolean actPoster,String extension) {
		Serie serieModificar=serieDao.findById(serieAct.getId()).get();
		if(serieModificar != null) {
			serieModificar.setTitulo(serieAct.getTitulo());
			serieModificar.setFechaInicio(serieAct.getFechaInicio());
			serieModificar.setSinopsis(serieAct.getSinopsis());
			serieModificar.setTemporadas(serieAct.getTemporadas());
			serieModificar.setCapitulos(serieAct.getCapitulos());
			serieModificar.setActores(serieAct.getActores());
			serieModificar.setDirectores(serieAct.getDirectores());
			serieModificar.setGeneros(serieAct.getGeneros());
			serieModificar.setPais(serieAct.getPais());
			serieModificar.setPlataformas(serieAct.getPlataformas());
//			if(actPoster== true) {
//			nombreFichero = rutaguardar + serieAct.getTitulo().trim().toLowerCase().replaceAll("\\s+", "_")+ "." + extension;
//			serieModificar.setPoster(nombreFichero);
//			nombreFichero = "";
//			serieDao.save(serieModificar);
//			}
		}
		
	}
	
	public String obtenerExtension(MultipartFile file) {
		return file.getOriginalFilename().split("\\.")[1];
		
	}

	@Override
	public void deleteSerie(Integer id) {
		serieDao.deleteById(id);
		
	}



}
