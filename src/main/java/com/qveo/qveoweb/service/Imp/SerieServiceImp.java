package com.qveo.qveoweb.service.Imp;

import java.util.Collection;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qveo.qveoweb.dao.SerieDao;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.SerieService;

@Service
public class SerieServiceImp implements SerieService {

	@Autowired
	SerieDao serieDao;
	
	@Override
	@Transactional(readOnly = true)
	public List<Serie> findAllSerie() {
		// TODO Auto-generated method stub
		return serieDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Optional<Serie> getSerie(Integer id) {

		return serieDao.findById(id);
	}

	@Override
	@Transactional
	public void save(Serie serieNew) {
		serieDao.save(serieNew);
	}

	@Override
	@Transactional
	public void deleteSerie(Integer id) {
		serieDao.deleteById(id);
		
	}

	//@Transactional(readOnly = true)
	public List<Serie> buscarSerie(Collection<Genero> generos) {
		List<Serie> serie=serieDao.findByGenerosIn(generos);		return serie;
	}

}
