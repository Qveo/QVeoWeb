package com.qveo.qveoweb.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qveo.qveoweb.dao.DirectorDao;
import com.qveo.qveoweb.model.Director;
import com.qveo.qveoweb.service.DirectorService;

@Service
public class DirectorServiceImp implements 	DirectorService{

	@Autowired
	DirectorDao directorDao;
	
	@Override
	public List<Director> getAllDirector() {
		// TODO Auto-generated method stub
		return directorDao.findAll();
	}

}
