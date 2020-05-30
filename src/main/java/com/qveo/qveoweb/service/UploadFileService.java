package com.qveo.qveoweb.service;



import java.io.IOException;
import java.net.MalformedURLException;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface UploadFileService {



	public String copy(MultipartFile file, Integer accion,Integer id, String titulo) throws IOException;

	public boolean delete(String filename , Integer accion);
	
	public String defaultFoto(Integer accion, String temp) throws IOException;
	
	
}
