package com.qveo.qveoweb.service;



import java.io.IOException;
import java.net.MalformedURLException;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.model.Pelicula;

public interface IUploadFileService {



	public String copy(MultipartFile file, Integer accion, Integer id, String titulo) throws IOException;
	
	public String defaultFoto(Integer accion, Integer id) throws IOException;

	public boolean delete(String filename,  Integer accion);
}