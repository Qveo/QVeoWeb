package com.qveo.qveoweb.service.Imp;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;
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
	@Transactional(readOnly = true)
	public List<Genero> findAlGeneros() {
		
		return generoDao.findAll();
	}

	@Override
	@Transactional
	public void save(Genero generoNuevo) {
	generoDao.save(generoNuevo);
	}

	@Override
	@Transactional
	public void deleteGenero(Integer id) {
		generoDao.deleteById(id);
	}

	@Override
	@Transactional
	public Genero getGenero(Integer id) {
		return generoDao.findById(id).orElse(null);
	}

}
