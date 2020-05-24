package com.qveo.qveoweb.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qveo.qveoweb.dao.GeneroDao;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.service.GeneroService;

@Service
public class GeneroServiceImp implements GeneroService{
	
	@Autowired
	GeneroDao generoDao;

	@Override
	public List<Genero> getAllGenero() {
		
		return generoDao.findAll();
	}
	
}
