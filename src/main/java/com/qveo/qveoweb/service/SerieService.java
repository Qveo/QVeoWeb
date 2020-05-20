package com.qveo.qveoweb.service;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.model.Serie;

public interface SerieService {
	List<Serie> findAllSerie();
	Serie getSerie(Integer id);
	void save(Serie serieNew,MultipartFile foto)throws IOException;
	void deleteSerie(Integer id);
		
	
}
