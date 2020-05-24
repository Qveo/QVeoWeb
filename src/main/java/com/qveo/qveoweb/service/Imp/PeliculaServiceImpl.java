package com.qveo.qveoweb.service.Imp;

import com.qveo.qveoweb.dao.PeliculaDao;
import com.qveo.qveoweb.dao.PlataformaDao;

import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.service.PeliculaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PeliculaServiceImpl implements PeliculaService {

	@Autowired
	PeliculaDao peliculaDao;

	@Autowired
	PlataformaDao plataformaDao;

	@Override
	@Transactional(readOnly = true)
	public List<Pelicula> findAll() {
		// TODO Auto-generated method stub
		return (List<Pelicula>) peliculaDao.findAll();
	}

}
