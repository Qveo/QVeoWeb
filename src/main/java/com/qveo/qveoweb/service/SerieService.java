package com.qveo.qveoweb.service;

import java.io.File;
import java.io.IOException;
import java.util.Optional;

import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.model.Serie;

public interface SerieService {
	Optional<Serie> getSerie(Integer id);
	public void save(Serie serieNew);
	public void saveImg(MultipartFile file,String titulo) throws IOException;
	
	
}
