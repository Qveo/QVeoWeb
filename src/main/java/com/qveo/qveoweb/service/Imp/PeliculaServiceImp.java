package com.qveo.qveoweb.service.Imp;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qveo.qveoweb.dao.PeliculaDao;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.service.PeliculaService;

@Service
public class PeliculaServiceImp implements PeliculaService {
	
	@Autowired
	PeliculaDao peliDao;
	
	@Override
	public Optional<Pelicula> getPelicula(Integer id){
		return peliDao.findById(id);
	}
	

}
