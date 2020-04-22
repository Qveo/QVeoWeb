package com.qveo.qveoweb.service.Imp;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
	public void saveImg(MultipartFile file, String titulo) throws IOException {
		try {
			byte[] bytes = file.getBytes();

			String extension = file.getOriginalFilename().split("\\.")[1];

			String fichero = directorioSerie + titulo.trim().toLowerCase().replaceAll("\\s+", "_") + "." + extension;

			Path path = Paths.get(fichero);

			Files.write(path, bytes);

		} catch (NoSuchFieldError e) {
			System.err.println("Error de ficheros ---------------------------------");
			e.printStackTrace();
		}
	}


}
