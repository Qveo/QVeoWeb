package com.qveo.qveoweb.service.Imp;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qveo.qveoweb.dao.SerieDao;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.SerieService;

@Service
public class SerieServiceImp implements SerieService{

	@Autowired
	SerieDao serieDao;
	
	@Override
	public Optional<Serie> getSerie(Integer id) {
				
		return serieDao.findById(id);
	}

}
