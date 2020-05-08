package com.qveo.qveoweb.service.Imp;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.qveo.qveoweb.service.IUploadFileService;

@Service
public class UploadFileServiceImpl implements IUploadFileService {

	private final Logger log = LoggerFactory.getLogger(getClass());

	private final static String UPLOADS_FOLDER = "src/main/webapp/resources/img";
//
//	@Override
//	public Resource load(String filename) throws MalformedURLException {
//		Path pathFoto = getPath(filename);
//		log.info("pathFoto: " + pathFoto);
//
//		Resource recurso = new UrlResource(pathFoto.toUri());
//
//		if (!recurso.exists() || !recurso.isReadable()) {
//			throw new RuntimeException("Error: no se puede cargar la imagen: " + pathFoto.toString());
//		}
//		return recurso;
//	}
//	



	@Override
	public String copy(MultipartFile file,Integer accion,String titulo) throws IOException {
		String nombre=titulo.trim().toLowerCase().replaceAll("\\s+", "_");
		
		String uniqueFilename = file.getOriginalFilename();
		
		String extension=uniqueFilename.substring(uniqueFilename.lastIndexOf(".") + 1);
		
		String nombreFinal=nombre+"."+extension;
		
		Path rootPath = getPath(nombreFinal,accion);

		log.info("rootPath: " + rootPath);

		Files.copy(file.getInputStream(), rootPath);

		return nombreFinal;
	}
	

	@Override
	public boolean delete(String filename,Integer accion) {
		
		Path rootPath = getPath(filename,accion);
		
		log.info("pathBorrar1: " + rootPath);
		
		File archivo = rootPath.toFile();
		
		log.info("pathBorrar2: " + rootPath);

		if (archivo.exists() && archivo.canRead()) {
			if (archivo.delete()) {
				return true;
			}
		}
		return false;
	}

	public Path getPath(String filename,Integer accion) {
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
