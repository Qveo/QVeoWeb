package com.qveo.qveoweb.service.Imp;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.service.UploadFileService;

@Service
public class UploadFileServiceImp implements UploadFileService {

	private final static String UPLOADS_FOLDER = "src/main/webapp/resources/img";

	@Override
	public Resource load(String filename) throws MalformedURLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String copy(MultipartFile file, Integer accion, String titulo) throws IOException {
		String nombre = titulo.trim().toLowerCase().replaceAll("\\s+", "_");

		String uniqueFilename = file.getOriginalFilename();

		String extension = uniqueFilename.substring(uniqueFilename.lastIndexOf(".") + 1);

		String nombreFinal = nombre + "." + extension;

		Path rootPath = getPath(nombreFinal, accion);

		Files.copy(file.getInputStream(), rootPath);

		return nombreFinal;
	}

	@Override
	public boolean delete(String filename, Integer accion) {
		Path rootPath = getPath(filename, accion);

		File archivo = rootPath.toFile();
		
		
		
		if (archivo.exists() && archivo.canRead()) {
			if (archivo.delete()) {
				return true;
			}
		}
		return false;
	}

	public Path getPath(String filename, Integer accion) {
		String ruta = "";

		switch (accion) {
		case 1:
			ruta = UPLOADS_FOLDER + "/peliculas";
			break;
		case 2:
			ruta = UPLOADS_FOLDER + "/serie";
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
