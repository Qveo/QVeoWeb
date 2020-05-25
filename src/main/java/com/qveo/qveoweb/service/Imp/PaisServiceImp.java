package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qveo.qveoweb.dao.PaisDao;
import com.qveo.qveoweb.model.Pais;
import com.qveo.qveoweb.service.PaisService;

@Service
public class PaisServiceImp implements PaisService {

	@Autowired
	PaisDao paisDao;

	@Override
	@Transactional(readOnly = true)
	public List<Pais> getAllPais() {

		return (List<Pais>) paisDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Pais getPais(Integer id) {

		return paisDao.findById(id).orElse(null);
	}

	@Override
	public void save(Pais pais) {

		paisDao.save(pais);
	}

	@Override
	public void delete(Integer id) {
		
		
		paisDao.deleteById(id);

	}

}
