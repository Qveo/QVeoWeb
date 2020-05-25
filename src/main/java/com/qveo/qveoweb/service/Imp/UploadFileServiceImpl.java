package com.qveo.qveoweb.service.Imp;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.PeliculaService;

import com.qveo.qveoweb.service.UsuarioService;

@Service
public class UploadFileServiceImpl implements IUploadFileService {

	private final static String UPLOADS_FOLDER = "src/main/webapp/resources/img";

	@Autowired
	PeliculaService peliculaService;

	@Autowired
	UsuarioService usuarioService;

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
	public String defaultFoto(Integer accion, String temp) throws IOException {

		String nombreFinal = null;

		switch (accion) {
		case 1:

			break;

		case 2:
			if (!temp.equals("/resources/img/peliculas/defaultFoto.png") && !temp.equals("")) {
				String nombre = temp;
				nombreFinal = nombre.substring(nombre.lastIndexOf('/') + 1);
			} else if (temp.equals("/resources/img/peliculas/defaultFoto.png") || temp.equals("")) {
				nombreFinal = "defaultFoto.png";
			}
			break;
		case 3:
			if (!temp.equals("/resources/img/actores/defaultFoto.png") && !temp.equals("")) {
				String nombre = temp;
				nombreFinal = nombre.substring(nombre.lastIndexOf('/') + 1);
			} else if (temp.equals("/resources/img/actores/defaultFoto.png") || temp.equals("")) {
				nombreFinal = "defaultFoto.png";
			}

			break;
		case 4:

			break;
		case 5:

			break;
		case 6:
			if (!temp.equals("/resources/img/usuarios/defaultFoto.png") && !temp.equals("")) {
				String nombre = temp;
				nombreFinal = nombre.substring(nombre.lastIndexOf('/') + 1);
			} else if (temp.equals("/resources/img/usuarios/defaultFoto.png") || temp.equals("")) {
				nombreFinal = "defaultFoto.png";
			}

			break;
		}

		return nombreFinal;
	}

	@Override
	public boolean delete(String filename, Integer accion) {
		String ruta = filename.substring(filename.lastIndexOf('/') + 1);
		if (!ruta.equals("defaultFoto.png")) {
			Path rootPath = getPath(ruta, accion);
			File archivo = rootPath.toFile();

			if (archivo.exists() && archivo.canRead()) {
				if (archivo.delete()) {
					return true;
				}
			}

		}
		return false;
	}

	public Path getPath(String filename, Integer accion) {
		String ruta = "";

		switch (accion) {
		case 1:
			ruta = UPLOADS_FOLDER + "/serie";
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
