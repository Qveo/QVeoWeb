package com.qveo.qveoweb.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qveo.qveoweb.dao.PaisDao;
import com.qveo.qveoweb.model.Pais;
import com.qveo.qveoweb.service.PaisService;

@Service
public class PaisServiceImp implements PaisService{
	
	@Autowired
	PaisDao paisDao;

	@Override
	public List<Pais> getAllPais() {
		// TODO Auto-generated method stub
		return paisDao.findAll();
	}

}
