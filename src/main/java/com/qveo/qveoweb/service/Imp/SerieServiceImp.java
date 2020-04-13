package com.qveo.qveoweb.service.Imp;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dao.SerieDao;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.SerieService;

@Service
public class SerieServiceImp implements SerieService{

	@Autowired
	SerieDao serieDao;
	
	public static String directorioSerie="";
	
	public String rutaguardar;
	
	@Override
	public Optional<Serie> getSerie(Integer id) {
				
		return serieDao.findById(id);
	}

	@Override
	public void save(Serie serieNew, MultipartFile file) throws IOException {
		
	if(file != null) {
		saveImg(file);
		//serieNew.setPoster();
	}
	Serie serie= serieDao.save(serieNew);	
	}

	@Override
	public void saveImg(MultipartFile file) throws IOException {
		try {
			byte[] bytes= file.getBytes();
			rutaguardar=directorioSerie+file.getOriginalFilename();
			Path path= Paths.get(rutaguardar);
			Files.write(path, bytes);
			
		}catch(NoSuchFieldError e) {
			System.err.println("Error de ficheros ---------------------------------");
			e.printStackTrace();
		}
		
	}

}
