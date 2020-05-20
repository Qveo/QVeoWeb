package com.qveo.qveoweb.service;



import java.io.IOException;
import org.springframework.web.multipart.MultipartFile;

public interface UploadFileService {



	public String copy(MultipartFile file, Integer accion, Integer id,  String titulo) throws IOException;
	
	public String defaultFoto(Integer accion, Integer id) throws IOException;

	public boolean delete(String filename , Integer accion);
}
