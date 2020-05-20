package com.qveo.qveoweb.service.Imp;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.PeliculaService;
import com.qveo.qveoweb.service.SerieService;

@Service
public class UploadFileServiceImpl implements IUploadFileService {

	private final Logger log = LoggerFactory.getLogger(getClass());

	private final static String UPLOADS_FOLDER = "src/main/webapp/resources/img";

	@Autowired
	SerieService serieService;

	@Override
	public String copy(MultipartFile file, Integer accion, Integer id, String titulo) throws IOException {
		String nombre = String.valueOf(id);

		String nombre2 = titulo.trim().toLowerCase().replaceAll("\\s+", "_");

		String uniqueFilename = null;

		uniqueFilename = file.getOriginalFilename();

		String extension = uniqueFilename.substring(uniqueFilename.lastIndexOf(".") + 1);

		String nombreFinal = nombre2 + "_" + nombre + "." + extension;

		Path rootPath = getPath(nombreFinal, accion);

		Files.deleteIfExists(rootPath);

		Files.copy(file.getInputStream(), rootPath);

		return nombreFinal;
	}

	@Override
	public boolean delete(String filename, Integer accion) {

		String ruta = filename.substring(filename.lastIndexOf('/') + 1);

		if (!ruta.equals("defaultFoto.jpg")) {

			Path rootPath = getPath(filename, accion);

			File archivo = rootPath.toFile();

			if (archivo.exists() && archivo.canRead()) {
				if (archivo.delete()) {
					return true;
				}
			}
		}

		return false;
	}

	@Override
	public String defaultFoto(Integer accion, Integer id) throws IOException {
		String nombreFinal = "";

		switch (accion) {
		case 1:

			if (serieService.getSerie(id).getPoster() != null) {
				String nombre = serieService.getSerie(id).getPoster();
				nombreFinal = nombre.substring(nombre.lastIndexOf('/') + 1);
				System.out.println(nombreFinal);
			} else if (serieService.getSerie(id).getPoster() == null
					&& serieService.getSerie(id).getPoster() != "/resources/img/series/defaultFoto.jpg") {
				nombreFinal = "defaultFoto.jpg";
			}

			break;

		case 2:

			break;
		case 3:

			break;
		case 4:

			break;
		case 5:

			break;
		case 6:

			break;

		}
		return nombreFinal;
	}

	public Path getPath(String filename, Integer accion) {
		String ruta = "";
		switch (accion) {
		case 1:
			ruta = UPLOADS_FOLDER + "/series";
			break;
		case 2:
			ruta = UPLOADS_FOLDER + "/peliculas";
			break;
		case 3:
			ruta = UPLOADS_FOLDER + "/actores";
			break;
		case 4:
			ruta = UPLOADS_FOLDER + "/directores";
			break;
		case 5:
			ruta = UPLOADS_FOLDER + "/plataforma";
			break;
		case 6:
			ruta = UPLOADS_FOLDER + "/usuarios";
			break;
		}
		return Paths.get(ruta).resolve(filename).toAbsolutePath();
	}

}
