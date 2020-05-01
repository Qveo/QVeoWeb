package com.qveo.qveoweb.service;



import java.io.IOException;
import java.net.MalformedURLException;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface IUploadFileService {

//	public Resource load(String filename) throws MalformedURLException;

	public String copy(MultipartFile file,Integer accion,String titulo) throws IOException;

	public boolean delete(String filename,Integer accion);
}