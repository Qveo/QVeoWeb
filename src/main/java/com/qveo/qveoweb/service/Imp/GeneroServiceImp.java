package com.qveo.qveoweb.service.Imp;

import java.util.List;
import java.util.Optional;

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
	public List<Genero> findAlGeneros() {
		
		return generoDao.findAll();
	}

	@Override
	public void save(Genero generoNuevo) {
	generoDao.save(generoNuevo);
		
	}

	@Override
	public void deleteGenero(Integer id) {
		generoDao.deleteById(id);
	}

	@Override
	public Optional<Genero> getGenero(Integer id) {
		return generoDao.findById(id);
	}

	@Override
	public void editarGenero(Genero generoAct) {
		Genero genero=generoDao.findById(generoAct.getId()).get();
		if(genero != null) {
			genero.setNombre(generoAct.getNombre());
			generoDao.save(genero);
		}
		
	}

}
